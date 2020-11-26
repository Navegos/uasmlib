
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

#ifndef uX_XMM_VECFLOAT1_H
#define uX_XMM_VECFLOAT1_H 1

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

/** \class vecfloat1
  *
  * \brief SSE SIMD class with the size of 1 float element.
  *
  * The %vecfloat2 class is an 1 element wide 32bit float.
  * It provides interoperability between %vecdword1 and %vecudword1.
  *
  */
typedef class uX_API vecfloat1
{
public:
    vecfloat1()uX_default;
    ~vecfloat1()uX_default;

    vecfloat1(const vecfloat1&)uX_default;
    vecfloat1& uX_ABI operator=(const vecfloat1&)uX_default;

    vecfloat1(vecfloat1&&)uX_default;
    vecfloat1& uX_ABI operator=(vecfloat1&&)uX_default;

    /**
     * \brief Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     * @warning Only sets the lower _x float element, higher elements gets cleared
     */
    uX_constexpr vecfloat1(const __m128 Inxmm) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm)) {}

    /**
     * \brief Constructor initialization from type vecfloat4.
     *
     * @param Inxmm_a value to copy from.
     * @warning Only sets the lower _x float element, higher elements gets cleared
     */
    uX_constexpr vecfloat1(const vecfloat4 Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecfloat3.
     *
     * @param Inxmm_a value to copy from.
     * @warning Only sets the lower _x float element, higher elements gets cleared
     */
    uX_constexpr vecfloat1(const vecfloat3 Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecfloat2.
     *
     * @param Inxmm_a value to copy from.
     * @warning Only sets the lower _x float element, higher elements gets cleared
     */
    uX_constexpr vecfloat1(const vecfloat2 Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecdword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat1(const vecdword1 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecudword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat1(const vecudword1 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type float.
     *
     * @param Infloat value to copy from.
     * @warning Only sets the lower _x float element, higher elements gets cleared
     */
    uX_constexpr vecfloat1(float Infloat) uX_noexcept : m128_xmm(_uX_mm_move_ss(__m128_false, _uX_mm_set_ss(Infloat))) {}

    /**
     * \brief Constructor initialization from 1 type bool_t.
     *
     * \param Inbool_X value to copy from.
     */
    uX_constexpr vecfloat1(const bool_t Inbool_a) uX_noexcept : m128_xmm(vecfloat1(vecdword1(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 1 type bool.
     *
     * \param Inbool_X value to copy from.
     */
    uX_constexpr vecfloat1(const bool Inbool_a) uX_noexcept : m128_xmm(vecfloat1(vecdword1(Inbool_a))) {}

    /** \brief __m128 type cast operator.
     *
     * To convert to __m128.
     */
    uX_constexpr operator __m128() const uX_noexcept { return m128_xmm; }

    /** Type cast operator to convert the lower _x element to float. */
    /*operator float() const uX_noexcept;*/ //undesired results

    /**
     * \brief __m128 assignment operator.
     *
     * To convert from type __m128.
     *
     * \param Inxmm value to copy from.
     */
    vecfloat1& uX_ABI operator=(const __m128 Inxmm) uX_noexcept;

    /**
     * \brief vecfloat4 assignment operator.
     *
     * To convert from type vecfloat4.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat1& uX_ABI operator=(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief vecfloat3 assignment operator.
     *
     * To convert from type vecfloat3.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat1& uX_ABI operator=(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief vecfloat2 assignment operator.
     *
     * To convert from type vecfloat2.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat1& uX_ABI operator=(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief vecdword1 assignment operator.
     *
     * To convert from type vecdword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat1& uX_ABI operator=(const vecdword1 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecudword1 assignment operator.
     *
     * To convert from type vecudword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat1& uX_ABI operator=(const vecudword1 Inxmmi_a) uX_noexcept;

    /**
     * \brief float assignment operator
     *
     * To convert from type float.
     *
     * \param Infloat_a float value to copy from.
     */
    vecfloat1& uX_ABI operator=(float Infloat_a) uX_noexcept;

    /**
     * \brief bool_t assignment operator.
     *
     * To convert from type bool_t.
     *
     * \param Inbool_a value to copy from.
     */
    vecfloat1& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept;

    /**
     * \brief bool assignment operator.
     *
     * To convert from type bool.
     *
     * \param Inbool_a value to copy from.
     */
    vecfloat1& uX_ABI operator=(const bool Inbool_a) uX_noexcept;

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    __m128 uX_ABI get() const uX_noexcept;

    /**
     * \brief Get _x.
     *
     * Gets _x element from vector.
     * \return float.
     */
    float uX_ABI get_x() const uX_noexcept;

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    __m128& uX_ABI ref() uX_noexcept;

    /**
     * \brief Get reference to _x.
     *
     * Gets reference to _x element from vector.
     * \return float.
     */
    float& uX_ABI ref_x() uX_noexcept;

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param Inxmm.
     */
    void uX_ABI set(const __m128 Inxmm) uX_noexcept;

    /**
     * \brief Set the vector _x.
     *
     * Sets the vector _x element.
     *
     * \param Infloat_a.
     */
    void uX_ABI set_x(float Infloat_a) uX_noexcept;

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
