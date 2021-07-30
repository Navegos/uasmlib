
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

#ifndef uX_XMM_VECFLOAT1_H
#define uX_XMM_VECFLOAT1_H 1

/**
 * \defgroup uX_XMM_VECFLOAT1 1 Single Precision SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecfloat1.h
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
  * \defgroup uX_XMM_VECFLOAT1_CLASS 1 Single Precision SSE SIMD Vector Class
  * \ingroup uX_XMM_VECFLOAT1
  * To use these class include the header file \p uXxmmvecfloat1.h in your program
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

/**
 * \ingroup uX_XMM_VECFLOAT1_CLASS
 * \class vecfloat1
 * \brief SSE SIMD class with the size of 1 float element
 * \details The \p vecfloat1 class is an 1 element wide 32bit float element where
    it provides interoperability between \p vecdword1 \p vecudword1 \p vecdouble1 class's
 */
typedef class vecfloat1
{
public:
    vecfloat1()uX_default;
    ~vecfloat1()uX_default;

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(vecfloat1 const& Inxmm_a) uX_noexcept
     * \brief Default constructor initialization from vecfloat1
     * \details Default constructor copies /p vecfloat1
     * \param[in] Inxmm_a - vecfloat1 Read only
     */
    uX_constexpr vecfloat1(vecfloat1 const& Inxmm_a) uX_noexcept : m128_xmm(Inxmm_a.m128_xmm) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(vecfloat1&& Inxmm_a) uX_noexcept
     * \brief Default constructor initialization from vecfloat1
     * \details Default constructor copies /p vecfloat1
     * \param[in] Inxmm_a - vecfloat1 Read only
     */
    uX_constexpr vecfloat1(vecfloat1&& Inxmm_a) uX_noexcept : m128_xmm(Inxmm_a.m128_xmm) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(__m128 const Inxmm) uX_noexcept
     * \brief Constructor initialization from type __m128
     * \details Constructor copies low _x element from /p __m128 and clears high elements
     * \param[in] Inxmm - __m128 Read only
     * \warning Only sets the lower _x float element, higher elements gets cleared
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(__m128 const Inxmm) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm)) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(vecfloat4 const& Inxmm_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat4
     * \details Constructor copies low _x element from /p vecfloat4 and clears high elements
     * \param[in] Inxmm_a - vecfloat4 Read only
     * \warning Only sets the lower _x float element, higher elements gets cleared
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(vecfloat4 const Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm_a)) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(vecfloat3 const& Inxmm_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat3
     * \details Constructor copies low _x element from /p vecfloat3 and clears high elements
     * \param[in] Inxmm_a - vecfloat3 Read only
     * \warning Only sets the lower _x float element, higher elements gets cleared
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(vecfloat3 const Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm_a)) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(vecfloat2 const Inxmm_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat2
     * \details Constructor copies low _x element from /p vecfloat2 and clears high elements
     * \param[in] Inxmm_a - vecfloat2 Read only
     * \warning Only sets the lower _x float element, higher elements gets cleared
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(vecfloat2 const Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm_a)) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(vecdouble1 const Inxmmd_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat1
     * \details Constructor converts low double _x element from /p vecdouble1 to low _x element
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \warning Converts the value from double to float
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(vecdouble1 const Inxmmd_a) uX_noexcept : m128_xmm(_uX_mm_cvtsd_ss(m128_xmm, Inxmmd_a)) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(vecdword1 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecdword1
     * \details Constructor copies int32 _x element from /p vecdword1 to low _x element
     * \param[in] Inxmmi_a - vecdword1 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(vecdword1 const Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(vecudword1 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecudword1
     * \details Constructor copies uint32 _x element from /p vecudword1 to low _x element
     * \param[in] Inxmmi_a - vecudword1 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(vecudword1 const Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(float Infloat) uX_noexcept
     * \brief Constructor initialization from type float
     * \details Constructor copies float to low _x element and clears high _y element
     * \param[in] Infloat - float Read only
     * \warning Only sets the lower _x float element, higher elements gets cleared
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(float Infloat) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, _uX_mm_set_ss(Infloat))) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(bool_t const Inbool) uX_noexcept
     * \brief Constructor initialization from type bool_t
     * \details Constructor copies bool_t to low _x element
     * \param[in] Inbool - bool_t Read only
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(bool_t const Inbool) uX_noexcept : m128_xmm(vecfloat1(vecudword1(Inbool))) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(bool const Inbool) uX_noexcept
     * \brief Constructor initialization from type bool
     * \details Constructor copies bool to low _x element
     * \param[in] Inbool - bool Read only
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(bool const Inbool) uX_noexcept : m128_xmm(vecfloat1(vecudword1(Inbool))) {}

    /**
     * \brief __m128 type cast operator
     * \details To convert to __m128
     * \returns __m128
     */
    uX_constexpr operator __m128() const uX_noexcept
    {
        return m128_xmm;
    }

    /** Type cast operator to convert the lower _x element to float. */
    /*operator float() const uX_noexcept;*/ //undesired results

    /**
     * \brief vecfloat1 default assignment operator
     * \details To convert from type vecfloat1
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(vecfloat1 const& Inxmm_a) uX_noexcept
    {
        m128_xmm = Inxmm_a;
        return *this;
    }

    /**
     * \brief vecfloat1 default assignment operator
     * \details To convert from type vecfloat1
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(vecfloat1&& Inxmm_a) uX_noexcept
    {
        m128_xmm = Inxmm_a;
        return *this;
    }

    /**
     * \brief __m128 assignment operator
     * \details To convert from type __m128
     * \param[in] Inxmm - __m128 Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(__m128 const Inxmm) uX_noexcept
    {
        m128_xmm = vecfloat1(Inxmm);
        return *this;
    }

    /**
     * \brief vecfloat4 assignment operator
     * \details To convert from type vecfloat4
     * \param[in] Inxmm_a - vecfloat4 Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(vecfloat4 const Inxmm_a) uX_noexcept
    {
        m128_xmm = vecfloat1(Inxmm_a);
        return *this;
    }

    /**
     * \brief vecfloat3 assignment operator
     * \details To convert from type vecfloat3
     * \param[in] Inxmm_a - vecfloat3 Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(vecfloat3 const Inxmm_a) uX_noexcept
    {
        m128_xmm = vecfloat1(Inxmm_a);
        return *this;
    }

    /**
     * \brief vecfloat2 assignment operator
     * \details To convert from type vecfloat2
     * \param[in] Inxmm_a - vecfloat2 Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(vecfloat2 const Inxmm_a) uX_noexcept
    {
        m128_xmm = vecfloat1(Inxmm_a);
        return *this;
    }

    /**
     * \brief vecdouble1 assignment operator
     * \details To convert from type vecdouble1
     * \param[in] Inxmm_a - vecdouble1 Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        m128_xmm = vecfloat1(Inxmmd_a);
        return *this;
    }

    /**
     * \brief vecdword1 assignment operator
     * \details To convert from type vecdword1
     * \param[in] Inxmmi_a - vecdword1 Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(vecdword1 const Inxmmi_a) uX_noexcept
    {
        m128_xmm = vecfloat1(Inxmmi_a);
        return *this;
    }

    /**
     * \brief vecudword1 assignment operator
     * \details To convert from type vecudword1
     * \param[in] Inxmmi_a - vecudword1 Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(vecudword1 const Inxmmi_a) uX_noexcept
    {
        m128_xmm = vecfloat1(Inxmmi_a);
        return *this;
    }

    /**
     * \brief float assignment operator
     * \details To convert from type float
     * \param[in] Infloat_a - float Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(float Infloat_a) uX_noexcept
    {
        m128_xmm = vecfloat1(Infloat_a);
        return *this;
    }

    /**
     * \brief bool_t assignment operator
     * \details To convert from type bool_t
     * \param[in] Inbool - bool_t Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(bool_t const Inbool) uX_noexcept
    {
        m128_xmm = vecfloat1(Inbool);
        return *this;
    }

    /**
     * \brief bool assignment operator
     * \details To convert from type bool
     * \param[in] Inbool - bool Read only
     * \returns vecfloat1
     */
    uX_constexpr vecfloat1& uX_ABI operator=(bool const Inbool) uX_noexcept
    {
        m128_xmm = vecfloat1(Inbool);
        return *this;
    }

    /**
     * \brief Get vector
     * \details Gets __m128 vector
     * \returns __m128
     */
    uX_constexpr __m128 uX_ABI get() const uX_noexcept
    {
        return m128_xmm;
    }

    /**
     * \brief Get _x
     * \details Gets _x element from vector
     * \returns float
     */
    uX_constexpr float uX_ABI get_x() const uX_noexcept
    {
        return _x;
    }

    /**
     * \brief Get reference to vector
     * \details Gets reference to __m128 vector
     * \returns __m128
     */
    uX_constexpr __m128& uX_ABI ref() uX_noexcept
    {
        return m128_xmm;
    }

    /**
     * \brief Get reference to _x
     * \details Gets reference to _x element from vector
     * \returns float
     */
    uX_constexpr float& uX_ABI ref_x() uX_noexcept
    {
        return _x;
    }

    /**
     * \brief Set the vector
     * \details Sets the vector elements
     * \param[in] Inxmm - __m128 Read only
     * \warning Only sets the lower _x float element, higher elements gets cleared
     */
    uX_constexpr void uX_ABI set(__m128 const Inxmm) uX_noexcept
    {
        m128_xmm = vecfloat1(Inxmm);
    }

    /**
     * \brief Set the vector _x
     * \details Sets the vector _x element
     * \param[in] Infloat_a - float Read only
     * \warning Only sets the lower _x float element, higher elements gets cleared
     */
    uX_constexpr void uX_ABI set_x(float Infloat_a) uX_noexcept
    {
        m128_xmm = _uX_MM_SETFLT_IM_PS(m128_xmm, Infloat_a, 0);
    }

    /* Bitwise Operators */

    /**
     * \brief Bitwise function ANDNOT
     * \details Performs the compute and not from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a andnot \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI andnot(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_andnot_ss(Inxmm_b, Inxmm_a));
    }

    /**
     * \brief Bitwise operator AND
     * \details Performs the compute and from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a and \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator&(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_and_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Bitwise operator OR
     * \details Performs the compute or from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a or \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator|(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_or_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Bitwise operator XOR
     * \details Performs the compute xor from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a xor \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator^(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_xor_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Bitwise operator NOT
     * \details Performs the compute not from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a not \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator~(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_not_ss(Inxmm_a));
    }

    /* Logical Operators */

    /**
     * \brief Logical function ANDNOT
     * \details Performs the compute and not from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns bool_t
     * \retval the computed boolean \p Inxmm_a andnot \p Inxmm_b
     */
    friend uX_constexpr bool_t uX_ABI bandnot(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return _uX_mm_iandnot_ss(Inxmm_b, Inxmm_a);
    }

    /**
     * \brief Logical operator AND
     * \details Performs the compute and from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns bool_t
     * \retval the computed boolean \p Inxmm_a && \p Inxmm_b
     */
    friend uX_constexpr bool_t uX_ABI operator&&(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return _uX_mm_iand_ss(Inxmm_a, Inxmm_b);
    }

    /**
     * \brief Logical operator OR
     * \details Performs the compute OR from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns bool_t
     * \retval the computed boolean \p Inxmm_a || \p Inxmm_b
     */
    friend uX_constexpr bool_t uX_ABI operator||(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return _uX_mm_ior_ss(Inxmm_a, Inxmm_b);
    }

    /**
     * \brief Logical operator NOT
     * \details Performs the compute not from the 1 parameter
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns bool_t
     * \retval the computed boolean not \p Inxmm_a
     */
    friend uX_constexpr bool_t uX_ABI operator!(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return _uX_mm_inot_ss(Inxmm_a);
    }

    /**
     * \brief Logical operator assignment AND
     * \details Performs the compute and from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a &= \p Inxmm_b
     */
    friend uX_constexpr vecfloat1& uX_ABI operator&=(vecfloat1& Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a = vecfloat1(_uX_mm_and_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Logical operator assignment OR
     * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a |= \p Inxmm_b
     */
    friend uX_constexpr vecfloat1& uX_ABI operator|=(vecfloat1& Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a = vecfloat1(_uX_mm_or_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Logical operator assignment XOR
     * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a ^= \p Inxmm_b
     */
    friend uX_constexpr vecfloat1& uX_ABI operator^=(vecfloat1& Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a = vecfloat1(_uX_mm_xor_ss(Inxmm_a, Inxmm_b));
    }

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Infloat_b - float broadcast same value to all elements
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a + \p Infloat_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator+(vecfloat1 const Inxmm_a, float Infloat_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_add_ss(Inxmm_a, _uX_mm_set_ss(Infloat_b)));
    }

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Infloat_a - float broadcast same value to all elements
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Infloat_a + \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator+(float Infloat_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_add_ss(_uX_mm_set_ss(Infloat_a), Inxmm_b));
    }

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - __m128 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a + \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator+(vecfloat1 const Inxmm_a, __m128 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_add_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Inxmm_a - __m128 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a + \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator+(__m128 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_add_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator addition
     * \details Performs the compute addition from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a + \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator+(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_add_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Infloat_b - float broadcast same value to all elements
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a - \p Infloat_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator-(vecfloat1 const Inxmm_a, float Infloat_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_sub_ss(Inxmm_a, _uX_mm_set_ss(Infloat_b)));
    }

    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Infloat_a - float broadcast same value to all elements
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Infloat_a - \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator-(float Infloat_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_sub_ss(_uX_mm_set_ss(Infloat_a), Inxmm_b));
    }
    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - __m128 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a - \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator-(vecfloat1 const Inxmm_a, __m128 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_sub_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Inxmm_a - __m128 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a - \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator-(__m128 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_sub_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator subtraction
     * \details Performs the compute subtraction from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a - \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator-(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_sub_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Infloat_b - float broadcast same value to all elements
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a * \p Infloat_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator*(vecfloat1 const Inxmm_a, float Infloat_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_mul_ss(Inxmm_a, _uX_mm_set_ss(Infloat_b)));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Infloat_a - float broadcast same value to all elements
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Infloat_a * \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator*(float Infloat_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_mul_ss(_uX_mm_set_ss(Infloat_a), Inxmm_b));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - __m128 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a * \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator*(vecfloat1 const Inxmm_a, __m128 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_mul_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Inxmm_a - __m128 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a * \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator*(__m128 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_mul_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator multiplication
     * \details Performs the compute multiplication from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a * \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator*(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_mul_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Infloat_b - float broadcast same value to all elements
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a / \p Infloat_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator/(vecfloat1 const Inxmm_a, float Infloat_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_div_ss(Inxmm_a, _uX_mm_set_ss(Infloat_b)));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Infloat_a - float broadcast same value to all elements
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Infloat_a / \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator/(float Infloat_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_div_ss(_uX_mm_set_ss(Infloat_a), Inxmm_b));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - __m128 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a / \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator/(vecfloat1 const Inxmm_a, __m128 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_div_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Inxmm_a - __m128 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a / \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator/(__m128 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_div_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator division
     * \details Performs the compute division from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a / \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator/(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_div_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator assignment addition
     * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a += \p Inxmm_b
     */
    friend uX_constexpr vecfloat1& uX_ABI operator+=(vecfloat1& Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a = vecfloat1(_uX_mm_add_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator assignment subtraction
     * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a -= \p Inxmm_b
     */
    friend uX_constexpr vecfloat1& uX_ABI operator-=(vecfloat1& Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a = vecfloat1(_uX_mm_sub_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator assignment multiplication
     * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a *= \p Inxmm_b
     */
    friend uX_constexpr vecfloat1& uX_ABI operator*=(vecfloat1& Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a = vecfloat1(_uX_mm_mul_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Arithmetic operator assignment division
     * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a /= \p Inxmm_b
     */
    friend uX_constexpr vecfloat1& uX_ABI operator/=(vecfloat1& Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a = vecfloat1(_uX_mm_div_ss(Inxmm_a, Inxmm_b));
    }

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator
     * \details Performs the compute prefix increment
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed prefix increment \p Inxmm_a
     */
    friend uX_constexpr vecfloat1& uX_ABI operator++(vecfloat1& Inxmm_a) uX_noexcept
    {
        Inxmm_a = Inxmm_a + __m128_0e_1;
        return Inxmm_a;
    }

    /**
     * \brief Unary prefix decrement operator
     * \details Performs the compute prefix decrement
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed prefix decrement \p Inxmm_a
     */
    friend uX_constexpr vecfloat1& uX_ABI operator--(vecfloat1& Inxmm_a) uX_noexcept
    {
        Inxmm_a = Inxmm_a - __m128_0e_1;
        return Inxmm_a;
    }

    /**
     * \brief Unary postfix increment operator
     * \details Performs the compute postfix increment
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed postfix increment \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI operator++(vecfloat1& Inxmm_a, int) uX_noexcept
    {
        vecfloat1 tmpxmm_a0 = Inxmm_a;
        Inxmm_a = Inxmm_a + __m128_0e_1;
        return tmpxmm_a0;
    }

    /**
     * \brief Unary postfix decrement operator
     * \details Performs the compute postfix decrement
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed postfix decrement \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI operator--(vecfloat1& Inxmm_a, int) uX_noexcept
    {
        vecfloat1 tmpxmm_a0 = Inxmm_a;
        Inxmm_a = Inxmm_a - __m128_0e_1;
        return tmpxmm_a0;
    }

    /**
     * \brief Unary minus operator
     * \details Performs the compute minus change sign bit, even for 0, INF and NAN
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed minus \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI operator-(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_negate_ss(Inxmm_a));
    }

    /* Comparison Operators */

    /**
     * \brief Comparison operator equal
     * \details Performs the compute equality from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a == \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator==(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_cmpeq_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Comparison operator less than
     * \details Performs the compute less than from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a < \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator<(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_cmplt_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Comparison operator less than or equal
     * \details Performs the compute less than or equal from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a <= \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator<=(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_cmple_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Comparison operator greater than
     * \details Performs the compute greater than from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a > \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator>(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_cmpgt_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Comparison operator greater than or equal
     * \details Performs the compute greater than or equal from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a >= \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator>=(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_cmpge_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Comparison operator not equal
     * \details Performs the compute not equal from the 2 parameters
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a != \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI operator!=(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_cmpneq_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Index operator
     * \details Element Access Only, no modifications to elements
     * \param[in] index element to get
     * \returns float
     * \retval the float index element
     */
    uX_constexpr float const& uX_ABI operator[](count_t index) const uX_noexcept
    {
        return extract(index);
    }

    /**
     * \brief Index operator
     * \details Element Access and Modification
     * \param[in] index element to get
     * \returns float
     * \retval the float index element
     */
    uX_constexpr float& uX_ABI operator[](count_t index) uX_noexcept
    {
        fltrettype = extract(index);
        return fltrettype;
    }

    /**
     * \brief Insert function.
     * \details Performs insert from type float on the mask index
     * \param[in] value float to copy from
     * \param[in] index element to set
     * \returns vecfloat1
     * \retval the vecfloat1
     */
    uX_constexpr vecfloat1 const uX_ABI insert(float value, count_t index) uX_noexcept
    {
        if (index > 0) return *this;
        m128_xmm = _uX_mm_move_ss(__m128_false, _uX_mm_set_ss(value));
        return *this;
    }

    /**
     * \brief Extract function.
     * \details Performs extract element from mask index.
     * \param[in] index element to get
     * \returns float
     * \retval the float index element
     */
    uX_constexpr float uX_ABI extract(count_t index) const uX_noexcept
    {
        if (index > 0) return 0.0f;
        return _uX_mm_cvtss_flt(m128_xmm);
    }

    /**
     * \brief Set all elements to zero
     * \details Performs the compute xor from the object vector member
     * \returns vecfloat1
     * \retval the computed \p object ^ \p object
     */
    uX_constexpr vecfloat1& uX_ABI zero(void) uX_noexcept
    {
        m128_xmm = _uX_mm_setzero_ps();
        return *this;
    }

    /**
     * \brief Flip Sign function
     * \details Performs the flip sign off vector on all elements
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a ^ \p m128d_sign
     */
    friend uX_constexpr vecfloat1 uX_ABI flip_sign(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_xor_ss(Inxmm_a, __m128_sign));
    }

    /**
     * \brief Test if all elements if is zero
     * \details Performs the test if all elements are zero
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a == 0.0
     */
    friend uX_constexpr vecfloat1 uX_ABI is_zero(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return _uX_mm_cmpeq_ss(Inxmm_a, __m128_0e_0);
    }

    /**
     * \brief Test if all elements if is zero
     * \details Performs the test if all elements are zero
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns bool_t
     * \retval the computed boolean \p Inxmm_a == 0.0
     */
    friend uX_constexpr bool_t uX_ABI bis_zero(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return _uX_mm_iszero_ss(Inxmm_a);
    }

    /**
     * \brief Select between two operands
     * \details Performs the selection between two operands
        The first vector is boolean vector mask that chooses between the elements of the second and the third vector
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return s[i] ? a[i] : b[i];
     * \param[in] Inxmm_f - vecfloat1 Read only the boolean vector mask
     * \param[in] Inxmm_a - vecfloat1 Read only the a vector
     * \param[in] Inxmm_b - vecfloat1 Read only the b vector
     * \returns vecfloat1
     * \retval the computed \p Inxmm_f ? \p Inxmm_a : \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI select(vecfloat1 const Inxmm_f, vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_select_ps(Inxmm_f, Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Conditional add
     * \details Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
     * \param[in] Inxmm_f - vecfloat1 Read only the boolean vector mask
     * \param[in] Inxmm_a - vecfloat1 Read only the a vector
     * \param[in] Inxmm_b - vecfloat1 Read only the b vector
     * \returns vecfloat1
     * \retval the computed \p Inxmm_f ? \p Inxmm_a + Inxmm_b: \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI if_add(vecfloat1 const Inxmm_f, vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a + (Inxmm_f & Inxmm_b);
    }

    /**
     * \brief Conditional subtract
     * \details Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
     * \param[in] Inxmm_f - vecfloat1 Read only the boolean vector mask
     * \param[in] Inxmm_a - vecfloat1 Read only the a vector
     * \param[in] Inxmm_b - vecfloat1 Read only the b vector
     * \returns vecfloat1
     * \retval the computed \p Inxmm_f ? \p Inxmm_a - Inxmm_b: \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI if_sub(vecfloat1 const Inxmm_f, vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a - (Inxmm_f & Inxmm_b);
    }

    /**
     * \brief Conditional multiply
     * \details Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
     * \param[in] Inxmm_f - vecfloat1 Read only the boolean vector mask
     * \param[in] Inxmm_a - vecfloat1 Read only the a vector
     * \param[in] Inxmm_b - vecfloat1 Read only the b vector
     * \returns vecfloat1
     * \retval the computed \p Inxmm_f ? \p Inxmm_a * Inxmm_b: \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI if_mul(vecfloat1 const Inxmm_f, vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a * select(Inxmm_f, Inxmm_b, vecfloat1(__m128_0e_1));
    }

    /**
     * \brief Conditional division
     * \details Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements
        Corresponds to this pseudo code:
         for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
     * \param[in] Inxmm_f - vecfloat1 Read only the boolean vector mask
     * \param[in] Inxmm_a - vecfloat1 Read only the a vector
     * \param[in] Inxmm_b - vecfloat1 Read only the b vector
     * \returns vecfloat1
     * \retval the computed \p Inxmm_f ? \p Inxmm_a / Inxmm_b: \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI if_div(vecfloat1 const Inxmm_f, vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return Inxmm_a / select(Inxmm_f, Inxmm_b, vecfloat1(__m128_0e_1));
    }

    /**
     * \brief Change signs on vector at compile time
     * \details Generate a constant vector at compile time stored in memory, and changes the sign of parameter
        Each index i0 is 1 for changing sign on the corresponding element, 0 for no change
     * \param[in] i0 - int
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p i0 ? \p Inxmm_a ^ 0x8000000000000000: \p Inxmm_a
     *
     */
    template <int i0>
    friend uX_constexpr vecfloat1 uX_ABI change_sign(vecfloat1 const Inxmm_a) uX_noexcept
    {
        if (i0 == 0) return Inxmm_a;
        return Inxmm_a ^ vecfloat1(vecudword1::constant<i0 ? 0x80000000 : 0>);
    }

    /**
     * \brief Sign bit
     * \details Gives true for elements that have the sign bit set even for -0.0, -INF and -NAN
        Note that sign_bit(vecfloat1(-00f)) gives true, while vecfloat1(-00f) < vecfloat1(00f) gives false
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed sign_bit(Inxmm_a)
     */
    friend uX_constexpr vecfloat1 uX_ABI sign_bit(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_signbit_ss(Inxmm_a));
    }

    /**
     * \brief Sign combine
     * \details Changes the sign of a when b has the sign bit set
        Same as select(sign_bit(b), -a, a)
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p sign_bit(Inxmm_b) ? \p -Inxmm_a: \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI sign_combine(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_signcombine_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Is finite
     * \details Gives true for elements that are normal, denormal or zero, false for INF and NAN
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed isfinite \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI is_finite(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_isfinite_ss(Inxmm_a));
    }

    /**
     * \brief Is inf
     * \details Gives true for elements that are +INF or -INF, false for finite numbers and NAN
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed isinf \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI is_inf(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_isinf_ss(Inxmm_a));
    }

    /**
     * \brief Is nan
     * \details Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed isnan \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI is_nan(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_isnan_ss(Inxmm_a));
    }

    /**
     * \brief Is subnormal
     * \details Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed issubnormal \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI is_subnormal(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_issubnormal_ss(Inxmm_a));
    }

    /**
     * \brief Is zero or subnormal
     * \details Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed iszeroorsubnormal \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI is_zero_or_subnormal(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_iszeroorsubnormal_ss(Inxmm_a));
    }

    /**
     * \brief Infinite vector
     * \details A vector where all elements are +INF
     * \returns vecfloat1
     * \retval +INF
     */
    uX_constexpr vecfloat1& uX_ABI infinite(void) uX_noexcept
    {
        m128_xmm = _uX_mm_infinite_ss();
        return *this;
    }

    /**
     * \brief Nan vector
     * \details A vector where all elements are NAN (quiet)
     * \returns vecfloat1
     * \retval NAN (quiet)
     */
    uX_constexpr vecfloat1& uX_ABI nan(void) uX_noexcept
    {
        m128_xmm = _uX_mm_nan_ss();
        return *this;
    }

    /**
     * \brief Max vector
     * \details Computes the max a > b ? a : b
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed max \p Inxmm_a > Inxmm_b ? \p Inxmm_a: \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI max(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_max_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Min vector
     * \details Computes the min a < b ? a : b
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Inxmm_b - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed min \p Inxmm_a < Inxmm_b ? \p Inxmm_a: \p Inxmm_b
     */
    friend uX_constexpr vecfloat1 uX_ABI min(vecfloat1 const Inxmm_a, vecfloat1 const Inxmm_b) uX_noexcept
    {
        return vecfloat1(_uX_mm_min_ss(Inxmm_a, Inxmm_b));
    }

    /**
     * \brief Abs vector
     * \details Computes the absolute value
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed abs \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI abs(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_abs_ss(Inxmm_a));
    }

    /**
     * \brief Square vector
     * \details Computes the a * a
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a * \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI square(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_square_ss(Inxmm_a));
    }

    /**
     * \brief Scale vector
     * \details Computes the a * s
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \param[in] Infloat_s - float Read only
     * \returns vecfloat1
     * \retval the computed \p Inxmm_a * \p Infloat_s
     */
    friend uX_constexpr vecfloat1 uX_ABI scale(vecfloat1 const Inxmm_a, float Infloat_s) uX_noexcept
    {
        return vecfloat1(_uX_mm_scale_ss(Inxmm_a, Infloat_s));
    }

    /**
     * \brief rcp vector
     * \details Computes the reciprocal
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed rcp \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI rcp(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_rcp_ss(Inxmm_a));
    }

    /**
     * \brief sqrt vector
     * \details Computes the square root
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed sqrt \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI sqrt(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_sqrt_ss(Inxmm_a));
    }

    /**
     * \brief rsqrt vector
     * \details Computes the reciprocal square root
     * \param[in] Inxmm_a - vecfloat1 Read only
     * \returns vecfloat1
     * \retval the computed rsqrt \p Inxmm_a
     */
    friend uX_constexpr vecfloat1 uX_ABI rsqrt(vecfloat1 const Inxmm_a) uX_noexcept
    {
        return vecfloat1(_uX_mm_rsqrt_ss(Inxmm_a));
    }

protected:

private:
    union
    {
        __m128             m128_xmm;
        float                    _x;
    };
    float                fltrettype;

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
     * \brief xmm float elements
     * \details Gets the quantity of xmm vector float elements
     * \returns count_t
     * \retval the quantity of xmm float elements
     */
    uX_constexpr count_t const uX_ABI xmm_flt_elements(void) const uX_noexcept
    {
        return 4;
    }

    /**
     * \brief float size
     * \details Gets the float size
     * \returns count_t
     * \retval the xmm float size
     */
    uX_constexpr count_t const uX_ABI flt_size(void) const uX_noexcept
    {
        return 4;
    }

    /**
     * \brief float elements
     * \details Gets the quantity of float elements
     * \returns count_t
     * \retval the quantity of float elements
     */
    uX_constexpr count_t const uX_ABI flt_elements(void) const uX_noexcept
    {
        return 1;
    }

}vecfloat1_t;

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECFLOAT4_H
#include "uXxmmvecfloat4.h"
#endif  /* uX_XMM_VECFLOAT4_H */

#ifndef uX_XMM_VECFLOAT3_H
#include "uXxmmvecfloat3.h"
#endif  /* uX_XMM_VECFLOAT3_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECDWORD1_H
#include "uXxmmvecdword1.h"
#endif  /* uX_XMM_VECDWORD1_H */

#ifndef uX_XMM_VECUDWORD1_H
#include "uXxmmvecudword1.h"
#endif  /* uX_XMM_VECUDWORD1_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECFLOAT1_H
