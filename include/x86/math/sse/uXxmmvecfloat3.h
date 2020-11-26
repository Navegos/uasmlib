
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

#ifndef uX_XMM_VECFLOAT3_H
#define uX_XMM_VECFLOAT3_H 1

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

/** \class vecfloat3
  *
  * \brief SSE SIMD class with the size of 3 float elements.
  *
  * The %vecfloat3 class is an 3 elements wide 32bit float.
  * It provides interoperability between %vecdword3 and %vecudword3.
  *
  */
typedef class uX_API vecfloat3
{
public:
    vecfloat3()uX_default;
    ~vecfloat3()uX_default;

    vecfloat3(const vecfloat3&)uX_default;
    vecfloat3& uX_ABI operator=(const vecfloat3&)uX_default;

    vecfloat3(vecfloat3&&)uX_default;
    vecfloat3& uX_ABI operator=(vecfloat3&&)uX_default;

    /**
     * \brief Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat3(const __m128 Inxmm) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm, _uX_MM_SHUFFLER_IM_PS(Inxmm, __m128_false, 2, 2, 3, 3), 0, 1, 0, 3)) {}

    /**
     * \brief Constructor initialization from type vecfloat4.
     *
     * @param Inxmm_a value to copy from.
     */
    uX_constexpr vecfloat3(const vecfloat4 Inxmm_a) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm_a, _uX_MM_SHUFFLER_IM_PS(Inxmm_a, __m128_false, 2, 2, 3, 3), 0, 1, 0, 3)) {}

    /**
     * \brief Constructor initialization from type vecfloat2.
     *
     * @param Inxmm_a value to copy from.
     */
    uX_constexpr vecfloat3(const vecfloat2 Inxmm_a) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm_a, m128_xmm, 0, 1, 2, 3)) {}

    /**
     * \brief Constructor initialization from type vecfloat1.
     *
     * @param Inxmm_a value to copy from.
     */
    uX_constexpr vecfloat3(const vecfloat1 Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(m128_xmm, Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecdword3.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat3(const vecdword3 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecudword3.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecfloat3(const vecudword3 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

    /**
     * \brief Constructor to broadcast the same float value into all elements.
     *
     * @param Infloat_a float value to copy from.
     */
    uX_explicit uX_constexpr vecfloat3(float Infloat_a) uX_noexcept : m128_xmm(_uX_mm_set_ps(0.0f, Infloat_a, Infloat_a, Infloat_a)) {}

    /**
     * \brief Constructor initialization from 3 type float.
     *
     * @param Infloat_X value to copy from.
     * @param Infloat_Y value to copy from.
     * @param Infloat_Z value to copy from.
     */
    uX_constexpr vecfloat3(float Infloat_X, float Infloat_Y, float Infloat_Z) uX_noexcept : m128_xmm(_uX_mm_set_ps(0.0f, Infloat_Z, Infloat_Y, Infloat_X)) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecfloat3(const bool_t Inbool_a) uX_noexcept : m128_xmm(vecfloat3(vecdword3(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 3 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     */
    uX_constexpr vecfloat3(const bool_t Inbool_X, const bool_t Inbool_Y, const bool_t Inbool_Z) uX_noexcept : m128_xmm(vecfloat3(vecdword3(Inbool_X, Inbool_Y, Inbool_Z))) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecfloat3(const bool Inbool_a) uX_noexcept : m128_xmm(vecfloat3(vecdword3(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 3 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     */
    uX_constexpr vecfloat3(const bool Inbool_X, const bool Inbool_Y, const bool Inbool_Z) uX_noexcept : m128_xmm(vecfloat3(vecdword3(Inbool_X, Inbool_Y, Inbool_Z))) {}

    /**
     * \brief Constructor initialization from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    uX_explicit uX_constexpr vecfloat3(uX_InReads(3) const float* Inpfloat) uX_noexcept : m128_xmm(_uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0])) {}

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
    vecfloat3& uX_ABI operator=(const __m128 Inxmm) uX_noexcept;

    /**
     * \brief vecfloat4 assignment operator.
     *
     * To convert from type vecfloat4.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat3& uX_ABI operator=(const vecfloat4 Inxmm_a) uX_noexcept;

    /**
     * \brief vecfloat2 assignment operator.
     *
     * To convert from type vecfloat2.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat3& uX_ABI operator=(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief vecfloat1 assignment operator.
     *
     * To convert from type vecfloat1.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat3& uX_ABI operator=(const vecfloat1 Inxmm_a) uX_noexcept;

    /**
     * \brief vecdword3 assignment operator.
     *
     * To convert from type vecdword3.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat3& uX_ABI operator=(const vecdword3 Inxmm_a) uX_noexcept;

    /**
     * \brief vecudword3 assignment operator.
     *
     * To convert from type vecudword3.
     *
     * \param Inxmm_a value to copy from.
     */
    vecfloat3& uX_ABI operator=(const vecudword3 Inxmm_a) uX_noexcept;

    /**
     * \brief float assignment operator
     *
     * To broadcast the same float value into all elements.
     *
     * \param Infloat_a float value to copy from.
     */
    vecfloat3& uX_ABI operator=(float Infloat_a) uX_noexcept;

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecfloat3& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept;

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecfloat3& uX_ABI operator=(const bool Inbool_a) uX_noexcept;

    /**
     * \brief Assignment operator to convert from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    /*vecfloat3& uX_ABI operator=(uX_InReads(3) const float* Inpfloat) uX_noexcept;*/ //security undesired

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
     * \brief Get _x _y _z.
     *
     * Gets _x _y _z elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_xyz() const uX_noexcept;

    /**
     * \brief Get _x _z.
     *
     * Gets _x _z elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_xz() const uX_noexcept;

    /**
     * \brief Get _x _z _y.
     *
     * Gets _x _z _y elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_xzy() const uX_noexcept;

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
     * \brief Get _y _x _z.
     *
     * Gets _y _x _z elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_yxz() const uX_noexcept;

    /**
     * \brief Get _y _z.
     *
     * Gets _y _z elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_yz() const uX_noexcept;

    /**
     * \brief Get _y _z _x.
     *
     * Gets _y _z _x elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_yzx() const uX_noexcept;

    /**
     * \brief Get _z.
     *
     * Gets _z element from vector.
     * \return float.
     */
    float uX_ABI get_z() const uX_noexcept;

    /**
     * \brief Get _z _x.
     *
     * Gets _z _x elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_zx() const uX_noexcept;

    /**
     * \brief Get _z _x _y.
     *
     * Gets _z _x _y elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_zxy() const uX_noexcept;

    /**
     * \brief Get _z _y.
     *
     * Gets _z _y elements from vector.
     * \return vector.
     */
    vecfloat2 uX_ABI get_zy() const uX_noexcept;

    /**
     * \brief Get _z _y _x.
     *
     * Gets _z _y _x elements from vector.
     * \return vector.
     */
    vecfloat3 uX_ABI get_zyx() const uX_noexcept;

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
     * \brief Get reference to _x _y _z.
     *
     * Gets reference to _x _y _z elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_xyz() uX_noexcept;

    /**
     * \brief Get reference to _x _z.
     *
     * Gets reference to _x _z elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_xz() uX_noexcept;

    /**
     * \brief Get reference to _x _z _y.
     *
     * Gets reference to _x _z _y elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_xzy() uX_noexcept;

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
     * \brief Get reference to _y _x _z.
     *
     * Gets reference to _y _x _z elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_yxz() uX_noexcept;

    /**
     * \brief Get reference to _y _z.
     *
     * Gets reference to _y _z elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_yz() uX_noexcept;

    /**
     * \brief Get reference to _y _z _x.
     *
     * Gets reference to _y _z _x elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_yzx() uX_noexcept;

    /**
     * \brief Get reference to _z.
     *
     * Gets reference to _z element from vector.
     * \return float.
     */
    float& uX_ABI ref_z() uX_noexcept;

    /**
     * \brief Get reference to _z _x.
     *
     * Gets reference to _z _x elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_zx() uX_noexcept;

    /**
     * \brief Get reference to _z _x _y.
     *
     * Gets reference to _z _x _y elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_zxy() uX_noexcept;

    /**
     * \brief Get reference to _z _y.
     *
     * Gets reference to _z _y elements from vector.
     * \return vector.
     */
    vecfloat2& uX_ABI ref_zy() uX_noexcept;

    /**
     * \brief Get reference to _z _y _x.
     *
     * Gets reference to _z _y _x elements from vector.
     * \return vector.
     */
    vecfloat3& uX_ABI ref_zyx() uX_noexcept;

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
     * \brief Set the vector _x _y _z.
     *
     * Sets the vector _x _y _z elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xyz(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z.
     *
     * Sets the vector _x _z elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xz(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _y.
     *
     * Sets the vector _x _z _y elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_xzy(const vecfloat3 Inxmm_a) uX_noexcept;

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

    /**
     * \brief Set the vector _y _x _z.
     *
     * Sets the vector _y _x _z elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yxz(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z.
     *
     * Sets the vector _y _z elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yz(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _x.
     *
     * Sets the vector _y _z _x elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_yzx(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z.
     *
     * Sets the vector _z element.
     *
     * \param Infloat_a.
     */
    void uX_ABI set_z(float Infloat_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x.
     *
     * Sets the vector _z _x elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zx(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _y.
     *
     * Sets the vector _z _x _y elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zxy(const vecfloat3 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y.
     *
     * Sets the vector _z _y elements with vecfloat2(_x,_y).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zy(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _x.
     *
     * Sets the vector _z _y _x elements with vecfloat3(_x,_y,_z).
     *
     * \param Inxmm_a.
     */
    void uX_ABI set_zyx(const vecfloat3 Inxmm_a) uX_noexcept;

protected:

private:
    union
    {
        __m128      m128_xmm;
        struct
        {
            float _x, _y, _z;
        };
        float      m128_f[3];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_size          () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_flt_elements  () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_flt_ptr_lenght    () const uX_noexcept { return 3; }
    uX_const uint32_t uX_ABI m128_flt_ptr_size      () const uX_noexcept { return 12; }
    uX_const uint32_t uX_ABI m128_flt_size          () const uX_noexcept { return 4; }

}vecfloat3_t;

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECFLOAT4_H
#include "uXxmmvecfloat4.h"
#endif  /* uX_XMM_VECFLOAT4_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECFLOAT1_H
#include "uXxmmvecfloat1.h"
#endif  /* uX_XMM_VECFLOAT1_H */

#ifndef uX_XMM_VECDWORD3_H
#include "uXxmmvecdword3.h"
#endif  /* uX_XMM_VECDWORD3_H */

#ifndef uX_XMM_VECUDWORD3_H
#include "uXxmmvecudword3.h"
#endif  /* uX_XMM_VECUDWORD3_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECFLOAT3_H
