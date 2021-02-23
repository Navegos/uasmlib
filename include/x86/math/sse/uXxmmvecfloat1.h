
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
    it provides interoperability between \p vecdword1 and \p vecudword1 class's
 */
typedef class uX_API vecfloat1
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
    uX_constexpr vecfloat1(bool_t const Inbool) uX_noexcept : m128_xmm(vecfloat1(vecdword1(Inbool))) {}

    /**
     * \fn uX::xmm::vecfloat1::vecfloat1(bool const Inbool) uX_noexcept
     * \brief Constructor initialization from type bool
     * \details Constructor copies bool to low _x element
     * \param[in] Inbool - bool Read only
     * \Note Sets the _x  float element
     */
    uX_constexpr vecfloat1(bool const Inbool) uX_noexcept : m128_xmm(vecfloat1(vecdword1(Inbool))) {}

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
        m128_xmm = _uX_mm_move_ss(__m128_false, Inxmm);
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
     * \details Gets reference to __m128d vector
     * \returns __m128d
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
        m128_xmm = _uX_mm_move_ss(__m128_false, Inxmm);
    }

    /**
     * \brief Set the vector _x
     * \details Sets the vector _x element
     * \param[in] Infloat_a - float Read only
     * \warning Only sets the lower _x float element, higher elements gets cleared
     */
    uX_constexpr void uX_ABI set_x(float Infloat_a) uX_noexcept
    {
        m128_xmm = _uX_MM_SETFLT_IM_PS(__m128_false, Infloat_a, 0);
    }

protected:

private:
    union
    {
        __m128 m128_xmm;
        float        _x;
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_size          () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_flt_elements  () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_flt_size          () const uX_noexcept { return 4; }

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

#ifndef uX_XMM_VECDWORD1_H
#include "uXxmmvecdword1.h"
#endif  /* uX_XMM_VECDWORD1_H */

#ifndef uX_XMM_VECUDWORD1_H
#include "uXxmmvecudword1.h"
#endif  /* uX_XMM_VECUDWORD1_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECFLOAT1_H
