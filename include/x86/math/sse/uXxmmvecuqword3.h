
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

#ifndef uX_XMM_VECUQWORD3_H
#define uX_XMM_VECUQWORD3_H 1

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

#ifndef uX_SMM_INTRIN_H
#include "uXsmmintrin.h"
#endif  /* uX_SMM_INTRIN_H */

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

#ifdef uX_SSE2
/** \class vecuqword3
  *
  * \brief SSE SIMD class with the size of 3 uint64_t elements.
  *
  * The %vecuqword3 class is an 3 elements wide 32bit integer.
  * It provides interoperability between %vecdouble3 and steel return different integer types.
  *
  */
typedef class uX_API vecuqword3
{
public:
    vecuqword3()uX_default;
    ~vecuqword3()uX_default;

    vecuqword3(const vecuqword3&)uX_default;
    vecuqword3& uX_ABI operator=(const vecuqword3&)uX_default;

    vecuqword3(vecuqword3&&)uX_default;
    vecuqword3& uX_ABI operator=(vecuqword3&&)uX_default;

    /**
     * \brief Constructor initialization from 1 type __m128i.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecuqword3(const __m128i Inxmmi_a) uX_noexcept : m128_xmmi_0(Inxmmi_a) {}

    /**
     * \brief Constructor initialization from 2 type __m128i.
     *
     * @param Inxmmi_0 value to copy from.
     * @param Inxmmi_1 value to copy from.
     */
    uX_constexpr vecuqword3(const __m128i Inxmmi_0, const __m128i Inxmmi_1) uX_noexcept : m128_xmmi_0(Inxmmi_0), m128_xmmi_1(_uX_mm_select_si128(__m128i_i64_select10, Inxmmi_1, __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecuqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecuqword3(const vecuqword4 InHxmmi_a) uX_noexcept : m128_xmmi_0(InHxmmi_a.get_xmmi_0()), m128_xmmi_1(_uX_mm_select_si128(__m128i_i64_select10, InHxmmi_a.get_xmmi_1(), __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecuqword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecuqword3(const vecuqword2 Inxmmi_a) uX_noexcept : m128_xmmi_0(Inxmmi_a) {}

    /**
     * \brief Constructor initialization from type vecuqword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecuqword3(const vecuqword1 Inxmmi_a) uX_noexcept : m128_xmmi_0(_uX_mm_select_si128(__m128i_i64_select10, Inxmmi_a, m128_xmmi_0)) {}

    /**
     * \brief Constructor initialization from type vecqword3.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecuqword3(const vecqword3 InHxmmi_a) uX_noexcept : m128_xmmi_0(InHxmmi_a.get_xmmi_0()), m128_xmmi_1(InHxmmi_a.get_xmmi_1()) {}

    /**
     * \brief Constructor initialization from type vecdouble3.
     *
     * @param InxHmmd_a value to copy from.
     */
    uX_constexpr vecuqword3(const vecdouble3 InxHmmd_a) uX_noexcept : m128_xmmi_0(_uX_mm_castpd_si128(InxHmmd_a.get_xmmd_0())), m128_xmmi_1(_uX_mm_castpd_si128(InxHmmd_a.get_xmmd_1())) {}

    /**
     * \brief Constructor to broadcast the same uint64_t value into all elements.
     *
     * \param Inint_a uint64_t value to copy from.
     */
    uX_explicit uX_constexpr vecuqword3(const uint64_t Inint_a) uX_noexcept : m128_xmmi_0(_uX_mm_setr_epi64x(Inint_a, Inint_a)), m128_xmmi_1(_uX_mm_setr_epi64x(Inint_a, 0)) {}

    /**
     * \brief Constructor initialization from 3 type uint64_t.
     *
     * \param Inint_X value to copy from.
     * \param Inint_Y value to copy from.
     * \param Inint_Z value to copy from.
     */
    uX_constexpr vecuqword3(const uint64_t Inint_X, const uint64_t Inint_Y, const uint64_t Inint_Z) uX_noexcept : m128_xmmi_0(_uX_mm_setr_epi64x(Inint_X, Inint_Y)), m128_xmmi_1(_uX_mm_setr_epi64x(Inint_Z, 0)) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecuqword3(const bool_t Inbool_a) uX_noexcept : m128_xmmi_0(_uX_mm_set1_epi64x(Inbool_a.to_trueint())), m128_xmmi_1(_uX_mm_setr_epi64x(Inbool_a.to_trueint(), 0)) {}

    /**
     * \brief Constructor initialization from 3 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     */
    uX_constexpr vecuqword3(const bool_t Inbool_X, const bool_t Inbool_Y, const bool_t Inbool_Z) uX_noexcept
                          : m128_xmmi_0(_uX_mm_setr_epi64x(Inbool_X.to_trueint(), Inbool_Y.to_trueint())), m128_xmmi_1(_uX_mm_setr_epi64x(Inbool_Z.to_trueint(), 0)) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecuqword3(const bool Inbool_a) uX_noexcept : m128_xmmi_0(vecuqword2(bool_t(Inbool_a))), m128_xmmi_1(_uX_mm_setr_epi64x(bool_t(Inbool_a).to_trueint(), 0)) {}

    /**
     * \brief Constructor initialization from 3 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     */
    uX_constexpr vecuqword3(const bool Inbool_X, const bool Inbool_Y, const bool Inbool_Z) uX_noexcept : m128_xmmi_0(vecuqword2(bool_t(Inbool_X), bool_t(Inbool_Y))), m128_xmmi_1(_uX_mm_setr_epi64x(bool_t(Inbool_Z).to_trueint(), 0)) {}

    /**
     * \brief Constructor initialization from type uint64_t*.
     *
     * @param Inpint32 value to copy from.
     */
    uX_explicit uX_constexpr vecuqword3(uX_InReads(3) const uint64_t* Inpint32) uX_noexcept : m128_xmmi_0(_uX_mm_setr_epi64x(Inpint32[0], Inpint32[1])), m128_xmmi_1(_uX_mm_setr_epi64x(Inpint32[2], 0)) {}

    /** \brief __m128i type cast operator.
     *
     * To convert to __m128i.
     */
    /*uX_constexpr operator __m128i() const uX_noexcept { return m128_xmmi; }*/

    /** Type cast operator to convert to uint64_t*. */
    /*operator uint64_t*() const;*/ //security undesired

    /**
     * \brief Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecuqword3& uX_ABI operator=(const __m128i Inxmmi) uX_noexcept;

    /**
     * \brief vecuqword4 assignment operator.
     *
     * To convert from type vecuqword4.
     *
     * \param InHxmmi_a value to copy from.
     */
    vecuqword3& uX_ABI operator=(const vecuqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief vecuqword2 assignment operator.
     *
     * To convert from type vecuqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecuqword3& uX_ABI operator=(const vecuqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecuqword1 assignment operator.
     *
     * To convert from type vecuqword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecuqword3& uX_ABI operator=(const vecuqword1 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecqword3 assignment operator.
     *
     * To convert from type vecqword3.
     *
     * \param InHxmmi_a value to copy from.
     */
    vecuqword3& uX_ABI operator=(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief vecdouble3 assignment operator.
     *
     * To convert from type vecdouble3.
     *
     * \param InHxmm_a value to copy from.
     */
    vecuqword3& uX_ABI operator=(const vecdouble3 InHxmm_a) uX_noexcept;

    /**
     * \brief uint64_t assignment operator
     *
     * To broadcast the same uint64_t value into all elements.
     *
     * \param Inint_a uint64_t value to copy from.
     */
    vecuqword3& uX_ABI operator=(const uint64_t Inint_a) uX_noexcept;

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecuqword3& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept;

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecuqword3& uX_ABI operator=(const bool Inbool_a) uX_noexcept;

    /**
     * Assignment operator to convert from type uint64_t*.
     *
     * @param Inpint32 value to copy from.
     */
     /*vecuqword3& uX_ABI operator=(uX_InReads(3) const uint64_t* Inpint32);*/ //security undesired

    /**
     * \brief Get vector 0.
     *
     * Gets vector 0.
     * \return vector 0.
     */
    __m128i uX_ABI get_xmmi_0() const uX_noexcept;

    /**
     * \brief Get vector 1.
     *
     * Gets vector 1.
     * \return vector 1.
     */
    __m128i uX_ABI get_xmmi_1() const uX_noexcept;

    /**
     * \brief Get reference to vector 0.
     *
     * Gets reference to vector 0.
     * \return vector 0.
     */
    __m128i& uX_ABI ref_xmmi_0() uX_noexcept;

    /**
     * \brief Get reference to vector 1.
     *
     * Gets reference to vector 1.
     * \return vector 1.
     */
    __m128i& uX_ABI ref_xmmi_1() uX_noexcept;

    /**
     * \brief Set the vector 0.
     *
     * Sets vector 0 element.
     *
     * \param Inxmmi.
     */
    void uX_ABI set_xmmi_0(const __m128i Inxmmi) uX_noexcept;

    /**
     * \brief Set the vector 1.
     *
     * Sets vector 1 element.
     *
     * \param Inxmmi.
     */
    void uX_ABI set_xmmi_1(const __m128i Inxmmi) uX_noexcept;

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    vecuqword3 uX_ABI get() const uX_noexcept;

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    vecuqword3& uX_ABI ref() uX_noexcept;

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param InHxmmi.
     */
    vecuqword3 uX_ABI set(const vecuqword3 InHxmmi) uX_noexcept;


    vecuqword2 uX_ABI get_xy() const uX_noexcept;

    uint64_t uX_ABI get_z() const uX_noexcept;

    /**
     * \brief Generate a constant vector of 3 integers at compile time.
     *
     * Generate a constant vector of 3 integers at compile time stored in memory.
     *
     */
    template <uint64_t i0, uint64_t i1, uint64_t i2>
    uX_constexpr vecuqword3 const uX_ABI constant() const
    {
        return vecuqword3(i0, i1, i2);
    }

protected:

private:
    union
    {
        struct
        {
            __m128i      m128_xmmi_0, m128_xmmi_1;
        };
        struct
        {
            uint64_t     _qw_x, _qw_y, _qw_z;
        };
        struct
        {
            uint32_t     _dw0_0, _dw0_1,
                         _dw1_0, _dw1_1,
                         _dw2_0, _dw2_1;
        };
        struct
        {
            uint16_t     _w0_0, _w0_1, _w0_2, _w0_3,
                         _w1_0, _w1_1, _w1_2, _w1_3,
                         _w2_0, _w2_1, _w2_2, _w2_3;
        };
        struct
        {
            uint8_t      _b0_0, _b0_1, _b0_2, _b0_3, _b0_4, _b0_5, _b0_6, _b0_7,
                         _b1_0, _b1_1, _b1_2, _b1_3, _b1_4, _b1_5, _b1_6, _b1_7,
                         _b2_0, _b2_1, _b2_2, _b2_3, _b2_4, _b2_5, _b2_6, _b2_7;
        };
        __m128i          m128_xmmi[2];
        uint64_t           m128_qw[3];
        uint32_t           m128_dw[6];
        uint16_t           m128_w[12];
        uint8_t            m128_b[24];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_ptr_lenght     () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_xmm_ptr_size       () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_xmm_size           () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_i64_elements   () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_xmm_i32_elements   () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_xmm_i16_elements   () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_xmm_i8_elements    () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_i64_ptr_lenght     () const uX_noexcept { return 3; }
    uX_const uint32_t uX_ABI m128_i32_ptr_lenght     () const uX_noexcept { return 6; }
    uX_const uint32_t uX_ABI m128_i16_ptr_lenght     () const uX_noexcept { return 12;}
    uX_const uint32_t uX_ABI m128_i8_ptr_lenght      () const uX_noexcept { return 24; }
    uX_const uint32_t uX_ABI m128_i64_ptr_size       () const uX_noexcept { return 24; }
    uX_const uint32_t uX_ABI m128_i32_ptr_size       () const uX_noexcept { return 24; }
    uX_const uint32_t uX_ABI m128_i16_ptr_size       () const uX_noexcept { return 24; }
    uX_const uint32_t uX_ABI m128_i8_ptr_size        () const uX_noexcept { return 24; }
    uX_const uint32_t uX_ABI m128_i64_size           () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i32_size           () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_i16_size           () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_i8_size            () const uX_noexcept { return 1; }

}vecuqword3_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECDOUBLE3_H
#include "uXxmmvecdouble3.h"
#endif  /* uX_XMM_VECDOUBLE3_H */

#ifndef uX_XMM_VECUQWORD4_H
#include "uXxmmvecuqword4.h"
#endif  /* uX_XMM_VECUQWORD4_H */

#ifndef uX_XMM_VECUQWORD2_H
#include "uXxmmvecuqword2.h"
#endif  /* uX_XMM_VECUQWORD2_H */

#ifndef uX_XMM_VECUQWORD1_H
#include "uXxmmvecuqword1.h"
#endif  /* uX_XMM_VECUQWORD1_H */

#ifndef uX_XMM_VECQWORD3_H
#include "uXxmmvecqword3.h"
#endif  /* uX_XMM_VECQWORD3_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECUQWORD3_H
