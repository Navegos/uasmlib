
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

#ifndef uX_XMM_VECFLOAT2_H
#define uX_XMM_VECFLOAT2_H 1

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

/** \class vecfloat2
  *
  * \brief SSE SIMD class with the size of 2 float elements.
  *
  * The %vecfloat2 class is an 2 elements wide 32bit float.
  * It provides interoperability between %vecdouble1, %vecdword2 and %vecudword2.
  *
  */
typedef class uX_API vecfloat2
{
public:
    vecfloat2()uX_default;
    ~vecfloat2()uX_default;

    vecfloat2(const vecfloat2&)uX_default;
    vecfloat2& uX_ABI operator=(const vecfloat2&)uX_default;

    vecfloat2(vecfloat2&&)uX_default;
    vecfloat2& uX_ABI operator=(vecfloat2&&)uX_default;

    /**
     * \brief Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     * @warning Only sets the lower _x and _y float element, higher elements gets cleared
     */
    uX_constexpr vecfloat2(const __m128 Inxmm) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm, __m128_false, 0, 1, 2, 3)) {}
    
    /**
     * \brief Constructor initialization from type vecfloat4.
     *
     * @param Inxmm_a value to copy from.
     * @warning Only sets the lower _x and _y float element, higher elements gets cleared
     */
    uX_constexpr vecfloat2(const vecfloat4 Inxmm_a) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm_a, __m128_false, 0, 1, 2, 3)) {}

    /**
     * \brief Constructor initialization from type vecfloat3.
     *
     * @param Inxmm_a value to copy from.
     * @warning Only sets the lower _x and _y float element, higher elements gets cleared
     */
    uX_constexpr vecfloat2(const vecfloat3 Inxmm_a) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm_a, __m128_false, 0, 1, 2, 3)) {}

    /**
     * \brief Constructor initialization from type vecfloat1.
     *
     * @param Inxmm_a value to copy from.
     */
    uX_constexpr vecfloat2(const vecfloat1 Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(m128_xmm, Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecdouble1.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecfloat2(const vecdouble1 Inxmmd_a) uX_noexcept : m128_xmm(_uX_mm_castpd_ps(Inxmmd_a)) {}

    /**
     * \brief Constructor initialization from type vecdword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat2(const vecdword2 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecudword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat2(const vecudword2 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecqword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat2(const vecqword1 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecuqword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat2(const vecuqword1 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor to broadcast the same float value into all elements.
     *
     * @param Infloat_a float value to copy from.
     */
    uX_explicit uX_constexpr vecfloat2(float Infloat_a) uX_noexcept : m128_xmm(_uX_mm_set_ps(0.0f, 0.0f, Infloat_a, Infloat_a)) {}

    /**
     * \brief Constructor initialization from 2 type float.
     *
     * @param Infloat_X value to copy from.
     * @param Infloat_Y value to copy from.
     */
    uX_constexpr vecfloat2(float Infloat_X, float Infloat_Y) uX_noexcept : m128_xmm(_uX_mm_set_ps(0.0f, 0.0f, Infloat_Y, Infloat_X)) {}

    /**
     * \brief Constructor to broadcast the same bool_t value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecfloat2(const bool_t Inbool_a) uX_noexcept : m128_xmm(vecfloat2(vecdword2(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 2 type bool_t.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     */
    uX_constexpr vecfloat2(const bool_t Inbool_X, const bool_t Inbool_Y) uX_noexcept : m128_xmm(vecfloat2(vecdword2(Inbool_X, Inbool_Y))) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecfloat2(const bool Inbool_a) uX_noexcept : m128_xmm(vecfloat2(vecdword2(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 2 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     */
    uX_constexpr vecfloat2(const bool Inbool_X, const bool Inbool_Y) uX_noexcept : m128_xmm(vecfloat2(vecdword2(Inbool_X, Inbool_Y))) {}

    /**
     * \brief Constructor initialization from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    uX_explicit uX_constexpr vecfloat2(uX_InReads(2) const float* Inpfloat) uX_noexcept : m128_xmm(_uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0])) {}

    /** \brief __m128 type cast operator.
     *
     * To convert to __m128.
     */
    uX_constexpr operator __m128() const uX_noexcept { return m128_xmm; }

    /** Type cast operator to convert to float*. */
    /*operator float*() const uX_noexcept;*/ //security undesired

    /**
     * \brief __m128 assignment operator.
     *
     * To convert from type __m128.
     *
     * \param Inxmm value to copy from.
     */
    vecfloat2& uX_ABI operator=(const __m128 Inxmm) uX_noexcept;

    /**
     * \brief vecfloat4 assignment operator.
     *
     * To convert from type vecfloat4.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief vecfloat3 assignment operator.
     *
     * To convert from type vecfloat3.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief vecfloat1 assignment operator.
     *
     * To convert from type vecfloat1.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const vecfloat1 Inxmm_a) uX_noexcept;

    /**
     * \brief vecdouble1 assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief vecdword2 assignment operator.
     *
     * To convert from type vecdword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const vecdword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecudword2 assignment operator.
     *
     * To convert from type vecudword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const vecudword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecqword1 assignment operator.
     *
     * To convert from type vecqword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const vecqword1 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecuqword1 assignment operator.
     *
     * To convert from type vecuqword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const vecuqword1 Inxmmi_a) uX_noexcept;

    /**
     * \brief float assignment operator
     *
     * To broadcast the same float value into all elements.
     *
     * \param Infloat_a float value to copy from.
     */
    vecfloat2& uX_ABI operator=(float Infloat_a) uX_noexcept;

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept;

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecfloat2& uX_ABI operator=(const bool Inbool_a) uX_noexcept;

    /**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    /*vecfloat2& uX_ABI operator=(uX_InReads(2) const float* Inpfloat) uX_noexcept;*/ //security undesired

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
     * \brief Get _x _y.
     *
     * Gets _x _y elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_xy() const uX_noexcept;

    /**
     * \brief Get _y.
     *
     * Gets _y element from vector.
     * \return float.
     */
    float uX_ABI get_y() const uX_noexcept;

    /**
     * \brief Get _y _x.
     *
     * Gets _y _x elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_yx() const uX_noexcept;

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
     * \brief Get reference to _x _y.
     *
     * Gets reference to _x _y elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_xy() uX_noexcept;

    /**
     * \brief Get reference to _y.
     *
     * Gets reference to _y elements from vector.
     * \return float.
     */
    float& uX_ABI ref_y() uX_noexcept;

    /**
     * \brief Get reference to _y _x.
     *
     * Gets reference to _y _x elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_yx() uX_noexcept;

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

    /**
     * \brief Set the vector _x _y.
     *
     * Sets the vector _x _y elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xy(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y.
     *
     * Sets the vector _y element.
     *
     * \param Infloat_a.
     */
    void uX_ABI set_y(float Infloat_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x.
     *
     * Sets the vector _y _x elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yx(const vecfloat2 Inxmm_a) uX_noexcept;

protected:

private:
    union
    {
        __m128  m128_xmm;
        struct
        {
            float _x, _y;
        };
        float  m128_f[2];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_size          () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_flt_elements  () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_flt_ptr_lenght    () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_flt_ptr_size      () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_flt_size          () const uX_noexcept { return 4; }

}vecfloat2_t;

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

#ifndef uX_XMM_VECFLOAT1_H
#include "uXxmmvecfloat1.h"
#endif  /* uX_XMM_VECFLOAT1_H */

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECDWORD2_H
#include "uXxmmvecdword2.h"
#endif  /* uX_XMM_VECDWORD2_H */

#ifndef uX_XMM_VECUDWORD2_H
#include "uXxmmvecudword2.h"
#endif  /* uX_XMM_VECUDWORD2_H */

#ifndef uX_XMM_VECQWORD1_H
#include "uXxmmvecqword1.h"
#endif  /* uX_XMM_VECQWORD1_H */

#ifndef uX_XMM_VECUQWORD1_H
#include "uXxmmvecuqword1.h"
#endif  /* uX_XMM_VECUQWORD1_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECFLOAT2_H
