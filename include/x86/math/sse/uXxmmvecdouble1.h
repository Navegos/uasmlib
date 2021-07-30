
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2021 (c) Navegos QA - optimized library                 / /
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

/**
 * \defgroup uX_XMM_VECDOUBLE1 1 Double Precision SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecdouble1.h
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
 * \defgroup uX_XMM_VECDOUBLE1_CLASS 1 Double Precision SSE SIMD Vector Class
 * \ingroup uX_XMM_VECDOUBLE1
 * To use these class include the header file \p uXxmmvecdouble1.h in your program
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
 * \ingroup uX_XMM_VECDOUBLE1_CLASS
 * \class vecdouble1
 * \brief SSE SIMD class with the size of 1 double element
 * \details The \p vecdouble1 class is an 1 element wide 64bit double element where
    it provides interoperability between \p vecqword1, \p vecuqword1, \p vecfloat2, \p vecdword2 and \p vecudword2 class's
 */
typedef class vecdouble1
{
public:
    vecdouble1()uX_default;
    ~vecdouble1()uX_default;

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecdouble1 const& Inxmmd_a) uX_noexcept
     * \brief Default constructor initialization from vecdouble1
     * \details Default constructor copies /p vecdouble1
     * \param[in] Inxmmd_a - vecdouble1 Read only
     */
    uX_constexpr vecdouble1(vecdouble1 const& Inxmmd_a) uX_noexcept : m128_xmmd(Inxmmd_a.m128_xmmd) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecdouble1&& Inxmmd_a) uX_noexcept
     * \brief Default constructor initialization from vecdouble1
     * \details Default constructor copies /p vecdouble1
     * \param[in] Inxmmd_a - vecdouble1 Read only
     */
    uX_constexpr vecdouble1(vecdouble1&& Inxmmd_a) uX_noexcept : m128_xmmd(Inxmmd_a.m128_xmmd) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(__m128d const Inxmmd) uX_noexcept
     * \brief Constructor initialization from type __m128d
     * \details Constructor copies low _x element from /p __m128d and clears high _y element
     * \param[in] Inxmmd - __m128d Read only
     * \warning Only sets the lower _x double element, higher elements gets cleared
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(__m128d const Inxmmd) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, Inxmmd)) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecdouble4 const& InHxmmd_a) uX_noexcept
     * \brief Constructor initialization from type vecdouble4
     * \details Constructor copies low _x element from /p vecdouble4 and clears high _y element
     * \param[in] InHxmmd_a - vecdouble4 Read only
     * \warning Only sets the lower _x double element, higher elements gets cleared
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(vecdouble4 const& InHxmmd_a) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, InHxmmd_a.get_xmmd_0())) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecdouble3 const& InHxmmd_a) uX_noexcept
     * \brief Constructor initialization from type vecdouble3
     * \details Constructor copies low _x element from /p vecdouble3 and clears high _y element
     * \param[in] InHxmmd_a - vecdouble3 Read only
     * \warning Only sets the lower _x double element, higher elements gets cleared
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(vecdouble3 const& InHxmmd_a) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, InHxmmd_a.get_xmmd_0())) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecdouble2 const Inxmmd_a) uX_noexcept
     * \brief Constructor initialization from type vecdouble2
     * \details Constructor copies low _x element from /p vecdouble2 and clears high _y element
     * \param[in] Inxmmd_a - vecdouble2 Read only
     * \warning Only sets the lower _x double element, higher elements gets cleared
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(vecdouble2 const Inxmmd_a) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, Inxmmd_a)) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecfloat2 const Inxmm_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat2
     * \details Constructor copies float _x _y elements from /p vecfloat2 to low _x element
     * \param[in] Inxmm_a - vecfloat2 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(vecfloat2 const Inxmm_a) uX_noexcept : m128_xmmd(_uX_mm_castps_pd(Inxmm_a)) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecfloat1 const Inxmm_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat1
     * \details Constructor converts low float _x element from /p vecfloat1 to low double _x element
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \warning Converts the value from float to double
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(vecfloat1 const Inxmm_a) uX_noexcept : m128_xmmd(_uX_mm_cvtss_sd(m128_xmmd, Inxmm_a)) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecqword1 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecqword1
     * \details Constructor copies int64 _x element from /p vecqword1 to low _x element
     * \param[in] Inxmmi_a - vecqword1 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(vecqword1 const Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecuqword1 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecuqword1
     * \details Constructor copies uint64 _x element from /p vecuqword1 to low _x element
     * \param[in] Inxmmi_a - vecuqword1 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(vecuqword1 const Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecdword2 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecdword2
     * \details Constructor copies int32 _x _y elements from /p vecdword2 to low _x element
     * \param[in] Inxmmi_a - vecdword2 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(vecdword2 const Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(vecudword2 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecudword2
     * \details Constructor copies uint32 _x _y elements from /p vecudword2 to low _x element
     * \param[in] Inxmmi_a - vecudword2 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(vecudword2 const Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(double Indouble) uX_noexcept
     * \brief Constructor initialization from type double
     * \details Constructor copies double to low _x element and clears high _y element
     * \param[in] Indouble - double Read only
     * \warning Only sets the lower _x double element, higher elements gets cleared
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(double Indouble) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, _uX_mm_set_sd(Indouble))) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(bool_t const Inbool) uX_noexcept
     * \brief Constructor initialization from type bool_t
     * \details Constructor copies bool_t to low _x element
     * \param[in] Inbool - bool_t Read only
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(bool_t const Inbool) uX_noexcept : m128_xmmd(vecdouble1(vecuqword1(Inbool))) {}

    /**
     * \fn uX::xmm::vecdouble1::vecdouble1(bool const Inbool) uX_noexcept
     * \brief Constructor initialization from type bool
     * \details Constructor copies bool to low _x element
     * \param[in] Inbool - bool Read only
     * \Note Sets the _x  double element
     */
    uX_constexpr vecdouble1(bool const Inbool) uX_noexcept : m128_xmmd(vecdouble1(vecuqword1(Inbool))) {}

    /**
     * \brief __m128d type cast operator
     * \details To convert to __m128d
     * \returns __m128d
     */
    uX_constexpr operator __m128d() const uX_noexcept
    {
        return m128_xmmd;
    }

    /** Type cast operator to convert the lower _x element to double */
    /*operator double() const uX_noexcept;*/ //undesired results

    /**
     * \brief vecdouble1 default assignment operator
     * \details To convert from type vecdouble1
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecdouble1 const& Inxmmd_a) uX_noexcept
    {
        m128_xmmd = Inxmmd_a;
        return *this;
    }
    
    /**
     * \brief vecdouble1 default assignment operator
     * \details To convert from type vecdouble1
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecdouble1&& Inxmmd_a) uX_noexcept
    {
        m128_xmmd = Inxmmd_a;
        return *this;
    }

    /**
     * \brief __m128d assignment operator
     * \details To convert from type __m128d
     * \param[in] Inxmmd - __m128d Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(__m128d const Inxmmd) uX_noexcept
    {
        m128_xmmd = _uX_mm_move_sd(__m128d_false, Inxmmd);
        return *this;
    }

    /**
     * \brief vecdouble4 assignment operator
     * \details To convert from type vecdouble4
     * \param[in] InHxmmd_a - vecdouble4 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecdouble4 const& InHxmmd_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(InHxmmd_a);
        return *this;
    }

    /**
     * \brief vecdouble3 assignment operator
     * \details To convert from type vecdouble3
     * \param[in] InHxmmd_a - vecdouble3 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecdouble3 const& InHxmmd_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(InHxmmd_a);
        return *this;
    }

    /**
     * \brief vecdouble2 assignment operator
     * \details To convert from type vecdouble2
     * \param[in] Inxmmd_a - vecdouble2 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inxmmd_a);
        return *this;
    }

    /**
     * \brief vecfloat2 assignment operator
     * \details To convert from type vecfloat2
     * \param[in] Inxmm_a - vecfloat2 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecfloat2 const Inxmm_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inxmm_a);
        return *this;
    }

    /**
     * \brief vecfloat1 assignment operator
     * \details To convert from type vecfloat1
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecfloat1 const Inxmm_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inxmm_a);
        return *this;
    }

    /**
     * \brief vecqword1 assignment operator
     * \details To convert from type vecqword1
     * \param[in] Inxmmi_a - vecqword1 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecqword1 const Inxmmi_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inxmmi_a);
        return *this;
    }

    /**
     * \brief vecuqword1 assignment operator
     * \details To convert from type vecuqword1
     * \param[in] Inxmmi_a - vecuqword1 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecuqword1 const Inxmmi_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inxmmi_a);
        return *this;
    }

    /**
     * \brief vecdword2 assignment operator
     * \details To convert from type vecdword2
     * \param[in] Inxmmi_a - vecdword2 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecdword2 const Inxmmi_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inxmmi_a);
        return *this;
    }

    /**
     * \brief vecudword2 assignment operator
     * \details To convert from type vecudword2
     * \param[in] Inxmmi_a - vecudword2 Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecudword2 const Inxmmi_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inxmmi_a);
        return *this;
    }

    /**
     * \brief double assignment operator
     * \details To convert from type double
     * \param[in] Indouble_a - double Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(double Indouble_a) uX_noexcept
    {
        m128_xmmd = vecdouble1(Indouble_a);
        return *this;
    }

    /**
     * \brief bool_t assignment operator
     * \details To convert from type bool_t
     * \param[in] Inbool - bool_t Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(bool_t const Inbool) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inbool);
        return *this;
    }

    /**
     * \brief bool assignment operator
     * \details To convert from type bool
     * \param[in] Inbool - bool Read only
     * \returns vecdouble1
     */
    uX_constexpr vecdouble1& uX_ABI operator=(bool const Inbool) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inbool);
        return *this;
    }

    /**
     * \brief Get vector
     * \details Gets __m128d vector
     * \returns __m128d
     */
    uX_constexpr __m128d uX_ABI get(void) const uX_noexcept
    {
        return m128_xmmd;
    }

    /**
     * \brief Get _x
     * \details Gets _x element from vector
     * \returns double
     */
    uX_constexpr double uX_ABI get_x(void) const uX_noexcept
    {
        return _x;
    }

    /**
     * \brief Get reference to vector
     * \details Gets reference to __m128d vector
     * \returns __m128d
     */
    uX_constexpr __m128d& uX_ABI ref(void) uX_noexcept
    {
        return m128_xmmd;
    }

    /**
     * \brief Get reference to _x
     * \details Gets reference to _x element from vector
     * \returns double
     */
    uX_constexpr double& uX_ABI ref_x(void) uX_noexcept
    {
        return _x;
    }

    /**
     * \brief Set the vector
     * \details Sets the vector elements
     * \param[in] Inxmmd - __m128d Read only
     * \warning Only sets the lower _x double element, higher elements gets cleared
     */
    uX_constexpr void uX_ABI set(__m128d const Inxmmd) uX_noexcept
    {
        m128_xmmd = vecdouble1(Inxmmd);
    }

    /**
     * \brief Set the vector _x
     * \details Sets the vector _x element
     * \param[in] Indouble_a - double Read only
     * \warning Only sets the lower _x double element, higher elements gets cleared
     */
    uX_constexpr void uX_ABI set_x(double Indouble_a) uX_noexcept
    {
        m128_xmmd = _uX_MM_SETDBL_IM_PD(__m128d_false, Indouble_a, 0);
    }

    /* Bitwise Operators */

    /**
     * \brief Bitwise function ANDNOT
     * \details Performs the compute and not from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a andnot \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI andnot(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_andnot_sd(Inxmmd_b, Inxmmd_a));
    }

    /**
     * \brief Bitwise operator AND
     * \details Performs the compute and from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a and \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator&(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_and_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Bitwise operator OR
     * \details Performs the compute or from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a or \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator|(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_or_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Bitwise operator XOR
     * \details Performs the compute xor from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a xor \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator^(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_xor_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Bitwise operator NOT
     * \details Performs the compute not from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a not \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator~(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_not_sd(Inxmmd_a));
    }

    /* Logical Operators */

    /**
     * \brief Logical function ANDNOT
     * \details Performs the compute and not from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns bool_t
     * \retval the computed boolean \p Inxmmd_a andnot \p Inxmmd_b
     */
    friend uX_constexpr bool_t uX_ABI bandnot(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return _uX_mm_iandnot_sd(Inxmmd_b, Inxmmd_a);
    }

    /**
     * \brief Logical operator AND
     * \details Performs the compute and from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns bool_t
     * \retval the computed boolean \p Inxmmd_a && \p Inxmmd_b
     */
    friend uX_constexpr bool_t uX_ABI operator&&(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return _uX_mm_iand_sd(Inxmmd_a, Inxmmd_b);
    }

    /**
     * \brief Logical operator OR
     * \details Performs the compute OR from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns bool_t
     * \retval the computed boolean \p Inxmmd_a || \p Inxmmd_b
     */
    friend uX_constexpr bool_t uX_ABI operator||(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return _uX_mm_ior_sd(Inxmmd_a, Inxmmd_b);
    }

    /**
     * \brief Logical operator NOT
     * \details Performs the compute not from the 1 parameter
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns bool_t
     * \retval the computed boolean not \p Inxmmd_a
     */
    friend uX_constexpr bool_t uX_ABI operator!(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_inot_sd(Inxmmd_a);
    }

    /**
     * \brief Logical operator assignment AND
     * \details Performs the compute and from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a &= \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1& uX_ABI operator&=(vecdouble1& Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble1(_uX_mm_and_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Logical operator assignment OR
     * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a |= \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1& uX_ABI operator|=(vecdouble1& Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble1(_uX_mm_or_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Logical operator assignment XOR
     * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a ^= \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1& uX_ABI operator^=(vecdouble1& Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble1(_uX_mm_xor_sd(Inxmmd_a, Inxmmd_b));
    }

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Indouble_b - double broadcast same value to all elements
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a + \p Indouble_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator+(vecdouble1 const Inxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_add_sd(Inxmmd_a, _uX_mm_set_sd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Indouble_a - double broadcast same value to all elements
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Indouble_a + \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator+(double Indouble_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_add_sd(_uX_mm_set_sd(Indouble_a), Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - __m128d Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a + \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator+(vecdouble1 const Inxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_add_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Inxmmd_a - __m128d Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a + \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator+(__m128d const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_add_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a + \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator+(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_add_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Indouble_b - double broadcast same value to all elements
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a - \p Indouble_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator-(vecdouble1 const Inxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_sub_sd(Inxmmd_a, _uX_mm_set_sd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Indouble_a - double broadcast same value to all elements
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Indouble_a - \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator-(double Indouble_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_sub_sd(_uX_mm_set_sd(Indouble_a), Inxmmd_b));
    }
    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - __m128d Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a - \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator-(vecdouble1 const Inxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_sub_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Inxmmd_a - __m128d Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a - \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator-(__m128d const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_sub_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a - \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator-(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_sub_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Indouble_b - double broadcast same value to all elements
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a * \p Indouble_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator*(vecdouble1 const Inxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_mul_sd(Inxmmd_a, _uX_mm_set_sd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Indouble_a - double broadcast same value to all elements
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Indouble_a * \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator*(double Indouble_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_mul_sd(_uX_mm_set_sd(Indouble_a), Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - __m128d Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a * \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator*(vecdouble1 const Inxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_mul_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Inxmmd_a - __m128d Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a * \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator*(__m128d const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_mul_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a * \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator*(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_mul_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Indouble_b - double broadcast same value to all elements
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a / \p Indouble_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator/(vecdouble1 const Inxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_div_sd(Inxmmd_a, _uX_mm_set_sd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Indouble_a - double broadcast same value to all elements
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Indouble_a / \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator/(double Indouble_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_div_sd(_uX_mm_set_sd(Indouble_a), Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - __m128d Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a / \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator/(vecdouble1 const Inxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_div_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Inxmmd_a - __m128d Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a / \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator/(__m128d const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_div_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a / \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator/(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_div_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator assignment addition
     * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a += \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1& uX_ABI operator+=(vecdouble1& Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble1(_uX_mm_add_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator assignment subtraction
     * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a -= \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1& uX_ABI operator-=(vecdouble1& Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble1(_uX_mm_sub_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator assignment multiplication
     * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a *= \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1& uX_ABI operator*=(vecdouble1& Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble1(_uX_mm_mul_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator assignment division
     * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a /= \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1& uX_ABI operator/=(vecdouble1& Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble1(_uX_mm_div_sd(Inxmmd_a, Inxmmd_b));
    }

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator
     * \details Performs the compute prefix increment
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed prefix increment \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1& uX_ABI operator++(vecdouble1& Inxmmd_a) uX_noexcept
    {
        Inxmmd_a = Inxmmd_a + __m128d_0e_1;
        return Inxmmd_a;
    }

    /**
     * \brief Unary prefix decrement operator
     * \details Performs the compute prefix decrement
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed prefix decrement \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1& uX_ABI operator--(vecdouble1& Inxmmd_a) uX_noexcept
    {
        Inxmmd_a = Inxmmd_a - __m128d_0e_1;
        return Inxmmd_a;
    }

    /**
     * \brief Unary postfix increment operator
     * \details Performs the compute postfix increment
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed postfix increment \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI operator++(vecdouble1& Inxmmd_a, int) uX_noexcept
    {
        vecdouble1 tmpxmm_a0 = Inxmmd_a;
        Inxmmd_a = Inxmmd_a + __m128d_0e_1;
        return tmpxmm_a0;
    }

    /**
     * \brief Unary postfix decrement operator
     * \details Performs the compute postfix decrement
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed postfix decrement \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI operator--(vecdouble1& Inxmmd_a, int) uX_noexcept
    {
        vecdouble1 tmpxmm_a0 = Inxmmd_a;
        Inxmmd_a = Inxmmd_a - __m128d_0e_1;
        return tmpxmm_a0;
    }

    /**
     * \brief Unary minus operator
     * \details Performs the compute minus change sign bit, even for 0, INF and NAN
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed minus \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI operator-(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_negate_sd(Inxmmd_a));
    }

    /* Comparison Operators */

    /**
     * \brief Comparison operator equal
     * \details Performs the compute equality from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a == \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator==(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_cmpeq_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator less than
     * \details Performs the compute less than from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a < \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator<(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_cmplt_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator less than or equal
     * \details Performs the compute less than or equal from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a <= \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator<=(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_cmple_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator greater than
     * \details Performs the compute greater than from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a > \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator>(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_cmpgt_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator greater than or equal
     * \details Performs the compute greater than or equal from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a >= \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator>=(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_cmpge_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator not equal
     * \details Performs the compute not equal from the 2 parameters
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a != \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI operator!=(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_cmpneq_sd(Inxmmd_a, Inxmmd_b));
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
     * \brief Insert function.
     *
     * Performs insert from type double on the mask index.
     *
     * \param value double to copy from.
     * \param index element to set.
     * \return vector
     */
    uX_constexpr vecdouble1 const uX_ABI insert(double value, count_t index) uX_noexcept
    {
        if (index > 0) return *this;
        m128_xmmd = _uX_mm_move_sd(__m128d_false, _uX_mm_set_sd(value));
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
        if (index > 0) return 0.0;
        return _uX_mm_cvtsd_dbl(m128_xmmd);
    }

    /**
     * \brief Set all elements to zero
     * \details Performs the compute xor from the object vector member
     * \returns vecdouble1
     * \retval the computed \p object ^ \p object
     */
    uX_constexpr vecdouble1& uX_ABI zero(void) uX_noexcept
    {
        m128_xmmd = _uX_mm_setzero_pd();
        return *this;
    }

    /**
     * \brief Flip Sign function
     * \details Performs the flip sign off vector on all elements
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a ^ \p m128d_sign
     */
    friend uX_constexpr vecdouble1 uX_ABI flip_sign(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_xor_sd(Inxmmd_a, __m128d_sign));
    }

    /**
     * \brief Test if all elements if is zero
     * \details Performs the test if all elements are zero
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a == 0.0
     */
    friend uX_constexpr vecdouble1 uX_ABI is_zero(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_cmpeq_sd(Inxmmd_a, __m128d_0e_0);
    }

    /**
     * \brief Test if all elements if is zero
     * \details Performs the test if all elements are zero
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns bool_t
     * \retval the computed boolean \p Inxmmd_a == 0.0
     */
    friend uX_constexpr bool_t uX_ABI bis_zero(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_iszero_sd(Inxmmd_a);
    }

    /**
     * \brief Select between two operands
     * \details Performs the selection between two operands
        The first vector is boolean vector mask that chooses between the elements of the second and the third vector
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return s[i] ? a[i] : b[i];
     * \param[in] Inxmmd_f - vecdouble1 Read only the boolean vector mask
     * \param[in] Inxmmd_a - vecdouble1 Read only the a vector
     * \param[in] Inxmmd_b - vecdouble1 Read only the b vector
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_f ? \p Inxmmd_a : \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI select(vecdouble1 const Inxmmd_f, vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_select_pd(Inxmmd_f, Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Conditional add
     * \details Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
     * \param[in] Inxmmd_f - vecdouble1 Read only the boolean vector mask
     * \param[in] Inxmmd_a - vecdouble1 Read only the a vector
     * \param[in] Inxmmd_b - vecdouble1 Read only the b vector
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_f ? \p Inxmmd_a + Inxmmd_b: \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI if_add(vecdouble1 const Inxmmd_f, vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a + (Inxmmd_f & Inxmmd_b);
    }

    /**
     * \brief Conditional subtract
     * \details Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
     * \param[in] Inxmmd_f - vecdouble1 Read only the boolean vector mask
     * \param[in] Inxmmd_a - vecdouble1 Read only the a vector
     * \param[in] Inxmmd_b - vecdouble1 Read only the b vector
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_f ? \p Inxmmd_a - Inxmmd_b: \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI if_sub(vecdouble1 const Inxmmd_f, vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a - (Inxmmd_f & Inxmmd_b);
    }

    /**
     * \brief Conditional multiply
     * \details Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
     * \param[in] Inxmmd_f - vecdouble1 Read only the boolean vector mask
     * \param[in] Inxmmd_a - vecdouble1 Read only the a vector
     * \param[in] Inxmmd_b - vecdouble1 Read only the b vector
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_f ? \p Inxmmd_a * Inxmmd_b: \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI if_mul(vecdouble1 const Inxmmd_f, vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a * select(Inxmmd_f, Inxmmd_b, vecdouble1(__m128d_0e_1));
    }

    /**
     * \brief Conditional division
     * \details Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
     * \param[in] Inxmmd_f - vecdouble1 Read only the boolean vector mask
     * \param[in] Inxmmd_a - vecdouble1 Read only the a vector
     * \param[in] Inxmmd_b - vecdouble1 Read only the b vector
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_f ? \p Inxmmd_a / Inxmmd_b: \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI if_div(vecdouble1 const Inxmmd_f, vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a / select(Inxmmd_f, Inxmmd_b, vecdouble1(__m128d_0e_1));
    }

    /**
     * \brief Change signs on vector at compile time
     * \details Generate a constant vector at compile time stored in memory, and changes the sign of parameter
        Each index i0 is 1 for changing sign on the corresponding element, 0 for no change
     * \param[in] i0 - int
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p i0 ? \p Inxmmd_a ^ 0x8000000000000000: \p Inxmmd_a
     *
     */
    template <int i0>
    friend uX_constexpr vecdouble1 uX_ABI change_sign(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        if (i0 == 0) return Inxmmd_a;
        return Inxmmd_a ^ vecdouble1(vecuqword1::constant<i0 ? 0x8000000000000000 : 0>);
    }

    /**
     * \brief Sign bit
     * \details Gives true for elements that have the sign bit set even for -0.0, -INF and -NAN
        Note that sign_bit(vecdouble1(-00f)) gives true, while vecdouble1(-00f) < vecdouble1(00f) gives false
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed sign_bit(Inxmmd_a)
     */
    friend uX_constexpr vecdouble1 uX_ABI sign_bit(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_signbit_sd(Inxmmd_a));
    }

    /**
     * \brief Sign combine
     * \details Changes the sign of a when b has the sign bit set
        Same as select(sign_bit(b), -a, a)
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p sign_bit(Inxmmd_b) ? \p -Inxmmd_a: \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI sign_combine(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_signcombine_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Is finite
     * \details Gives true for elements that are normal, denormal or zero, false for INF and NAN
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed isfinite \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI is_finite(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_isfinite_sd(Inxmmd_a));
    }

    /**
     * \brief Is inf
     * \details Gives true for elements that are +INF or -INF, false for finite numbers and NAN
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed isinf \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI is_inf(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_isinf_sd(Inxmmd_a));
    }

    /**
     * \brief Is nan
     * \details Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed isnan \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI is_nan(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_isnan_sd(Inxmmd_a));
    }

    /**
     * \brief Is subnormal
     * \details Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed issubnormal \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI is_subnormal(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_issubnormal_sd(Inxmmd_a));
    }

    /**
     * \brief Is zero or subnormal
     * \details Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed iszeroorsubnormal \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI is_zero_or_subnormal(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_iszeroorsubnormal_sd(Inxmmd_a));
    }

    /**
     * \brief Infinite vector
     * \details A vector where all elements are +INF
     * \returns vecdouble1
     * \retval +INF
     */
    uX_constexpr vecdouble1& uX_ABI infinite(void) uX_noexcept
    {
        m128_xmmd = _uX_mm_infinite_sd();
        return *this;
    }

    /**
     * \brief Nan vector
     * \details A vector where all elements are NAN (quiet)
     * \returns vecdouble1
     * \retval NAN (quiet)
     */
    uX_constexpr vecdouble1& uX_ABI nan(void) uX_noexcept
    {
        m128_xmmd = _uX_mm_nan_sd();
        return *this;
    }

    /**
     * \brief Max vector
     * \details Computes the max a > b ? a : b
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed max \p Inxmmd_a > Inxmmd_b ? \p Inxmmd_a: \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI max(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_max_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Min vector
     * \details Computes the min a < b ? a : b
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Inxmmd_b - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed min \p Inxmmd_a < Inxmmd_b ? \p Inxmmd_a: \p Inxmmd_b
     */
    friend uX_constexpr vecdouble1 uX_ABI min(vecdouble1 const Inxmmd_a, vecdouble1 const Inxmmd_b) uX_noexcept
    {
        return vecdouble1(_uX_mm_min_sd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Abs vector
     * \details Computes the absolute value
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed abs \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI abs(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_abs_sd(Inxmmd_a));
    }

    /**
     * \brief Square vector
     * \details Computes the a * a
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a * \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI square(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_square_sd(Inxmmd_a));
    }

    /**
     * \brief Scale vector
     * \details Computes the a * s
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \param[in] Indouble_s - double Read only
     * \returns vecdouble1
     * \retval the computed \p Inxmmd_a * \p Indouble_s
     */
    friend uX_constexpr vecdouble1 uX_ABI scale(vecdouble1 const Inxmmd_a, double Indouble_s) uX_noexcept
    {
        return vecdouble1(_uX_mm_scale_sd(Inxmmd_a, Indouble_s));
    }

    /**
     * \brief rcp vector
     * \details Computes the reciprocal
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed rcp \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI rcp(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_rcp_sd(Inxmmd_a));
    }

    /**
     * \brief sqrt vector
     * \details Computes the square root
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed sqrt \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI sqrt(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_sqrt_sd(Inxmmd_a));
    }

    /**
     * \brief rsqrt vector
     * \details Computes the reciprocal square root
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \returns vecdouble1
     * \retval the computed rsqrt \p Inxmmd_a
     */
    friend uX_constexpr vecdouble1 uX_ABI rsqrt(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        return vecdouble1(_uX_mm_rsqrt_sd(Inxmmd_a));
    }

protected:

private:
    union
    {
        __m128d           m128_xmmd;
        double                   _x;
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
        return 1;
    }

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

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECFLOAT1_H
#include "uXxmmvecfloat1.h"
#endif  /* uX_XMM_VECFLOAT1_H */

#ifndef uX_XMM_VECQWORD1_H
#include "uXxmmvecqword1.h"
#endif  /* uX_XMM_VECQWORD1_H */

#ifndef uX_XMM_VECUQWORD1_H
#include "uXxmmvecuqword1.h"
#endif  /* uX_XMM_VECUQWORD1_H */

#ifndef uX_XMM_VECDWORD2_H
#include "uXxmmvecdword2.h"
#endif  /* uX_XMM_VECDWORD2_H */

#ifndef uX_XMM_VECUDWORD2_H
#include "uXxmmvecudword2.h"
#endif  /* uX_XMM_VECUDWORD2_H */

/*
#ifdef uX_SSE2
#include "./inline/uXxmmvecdouble1.inl"
#endif // uX_SSE2*/

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE1_H
