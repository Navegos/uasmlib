
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

#ifndef uX_XMM_VECUQWORD1_H
#define uX_XMM_VECUQWORD1_H 1

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
/** \class vecuqword1
  *
  * \brief SSE SIMD class with the size of 1 uint64_t element.
  *
  * The %vecuqword1 class is an 1 element wide 64bit integer.
  * It provides interoperability between %vecdouble1 and steel return different integer type.
  *
  */
typedef class uX_API vecuqword1
{
public:
    vecuqword1()uX_default;
    ~vecuqword1()uX_default;

    vecuqword1(const vecuqword1&)uX_default;
    vecuqword1& uX_ABI operator=(const vecuqword1&)uX_default;

    vecuqword1(vecuqword1&&)uX_default;
    vecuqword1& uX_ABI operator=(vecuqword1&&)uX_default;

    /**
     * \brief Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecuqword1(const __m128i Inxmmi) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i64_select10, Inxmmi, __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecuqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecuqword1(const vecuqword4 InHxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i64_select10, InHxmmi_a.get_xmmi_0(), __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecuqword3.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecuqword1(const vecuqword3 InHxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i64_select10, InHxmmi_a.get_xmmi_0(), __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecuqword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecuqword1(const vecuqword2 Inxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i64_select10, Inxmmi_a, __m128i_i64_false)) {}

    /**
     * \brief Constructor initialization from type vecqword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecuqword1(const vecqword1 Inxmmi_a) uX_noexcept : m128_xmmi(Inxmmi_a) {}

    /**
     * \brief Constructor initialization from type vecdouble1.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecuqword1(const vecdouble1 Inxmmd_a) uX_noexcept : m128_xmmi(_uX_mm_castpd_si128(Inxmmd_a)) {}

    /**
     * \brief Constructor initialization from type vecfloat2.
     *
     * @param Inxmm_a value to copy from.
     */
    uX_constexpr vecuqword1(const vecfloat2 Inxmm_a) uX_noexcept : m128_xmmi(_uX_mm_castps_si128(Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecudword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecuqword1(const vecudword2 Inxmmi_a) uX_noexcept : m128_xmmi(Inxmmi_a) {}

    /**
     * \brief Constructor to broadcast the same uint64_t value into all elements.
     *
     * \param Inint_a uint64_t value to copy from.
     */
    /*uX_explicit uX_constexpr vecuqword1(const uint64_t Inint_a) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inint_a, 0)) {}*/

    /**
     * \brief Constructor initialization from 1 type uint64_t.
     *
     * \param Inint_X value to copy from.
     */
    uX_constexpr vecuqword1(const uint64_t Inint_X) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inint_X, 0)) {}

    /**
     * \brief Constructor to broadcast the same bool_t value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    /*uX_explicit uX_constexpr vecuqword1(const bool_t Inbool_a) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inbool_a.to_trueint(), 0)) {}*/

    /**
     * \brief Constructor initialization from 1 type bool_t.
     *
     * \param Inbool_X value to copy from.
     */
    uX_constexpr vecuqword1(const bool_t Inbool_X) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inbool_X.to_trueint(), 0)) {}

    /**
     * \brief Constructor initialization from 1 type bool.
     *
     * \param Inbool_X value to copy from.
     */
    uX_constexpr vecuqword1(const bool Inbool_X) uX_noexcept : m128_xmmi(vecuqword1(bool_t(Inbool_X))) {}

    /**
     * \brief Constructor initialization from type uint64_t*.
     *
     * @param Inpint64 value to copy from.
     */
    /*uX_explicit uX_constexpr vecuqword1(uX_InReads(1) const uint64_t* Inpint64) uX_noexcept : m128_xmmi(_uX_mm_setr_epi64x(Inpint64[0], 0)) {}*/

    /** \brief __m128i type cast operator.
     *
     * To convert to __m128i.
     */
    uX_constexpr operator __m128i() const uX_noexcept { return m128_xmmi; }

    /** Type cast operator to convert to uint64_t*. */
    /*operator uint64_t*() const;*/ //security undesired

    /**
     * \brief Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecuqword1& uX_ABI operator=(const __m128i Inxmmi) uX_noexcept;

    /**
     * \brief vecuqword4 assignment operator.
     *
     * To convert from type vecuqword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecuqword1& uX_ABI operator=(const vecuqword4 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecuqword3 assignment operator.
     *
     * To convert from type vecuqword3.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecuqword1& uX_ABI operator=(const vecuqword3 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecuqword2 assignment operator.
     *
     * To convert from type vecuqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecuqword1& uX_ABI operator=(const vecuqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecqword1 assignment operator.
     *
     * To convert from type vecqword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecuqword1& uX_ABI operator=(const vecqword1 Inxmmi_a) uX_noexcept;

    /**
     * \brief vecdouble1 assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    vecuqword1& uX_ABI operator=(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief vecfloat2 assignment operator.
     *
     * To convert from type vecfloat2.
     *
     * \param Inxmm_a value to copy from.
     */
    vecuqword1& uX_ABI operator=(const vecfloat2 Inxmm_a) uX_noexcept;

    /**
     * \brief vecudword2 assignment operator.
     *
     * To convert from type vecudword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    vecuqword1& uX_ABI operator=(const vecudword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief uint64_t assignment operator
     *
     * To broadcast the same uint64_t value into all elements.
     *
     * \param Inint_a uint64_t value to copy from.
     */
    vecuqword1& uX_ABI operator=(const uint64_t Inint_a) uX_noexcept;

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool_t value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecuqword1& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept;

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    vecuqword1& uX_ABI operator=(const bool Inbool_a) uX_noexcept;

    /**
     * Assignment operator to convert from type uint64_t*.
     *
     * @param Inpint64 value to copy from.
     */
     /*vecuqword1& uX_ABI operator=(uX_InReads(1) const uint64_t* Inpint64);*/ //security undesired

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    __m128i uX_ABI get() const uX_noexcept;

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    __m128i& uX_ABI ref() uX_noexcept;

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param Inxmmi.
     */
    void uX_ABI set(const __m128i Inxmmi) uX_noexcept;

    /**
     * \brief Generate a constant vector of 1 integer at compile time.
     *
     * Generate a constant vector of 1 integer at compile time stored in memory.
     *
     */
    template <uint64_t i0>
    uX_constexpr vecuqword1 const uX_ABI constant(void) const uX_noexcept
    {
        return vecuqword1(i0);
    }

protected:

private:
    union
    {
        __m128i          m128_xmmi;
        struct
        {
            uint64_t     _qw_x;
        };
        struct
        {
            uint32_t     _dw_0, _dw_1;
        };
        struct
        {
            uint16_t     _w_0, _w_1, _w_2, _w_3;
        };
        struct
        {
            uint8_t      _b_0, _b_1, _b_2, _b_3, _b_4, _b_5, _b_6, _b_7;
        };
        uint32_t         m128_dw[2];
        uint16_t          m128_w[4];
        uint8_t           m128_b[8];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_size           () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_i64_elements   () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_xmm_i32_elements   () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_xmm_i16_elements   () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_xmm_i8_elements    () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_i32_ptr_lenght     () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_i16_ptr_lenght     () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_i8_ptr_lenght      () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i32_ptr_size       () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i16_ptr_size       () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i8_ptr_size        () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i64_size           () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i32_size           () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_i16_size           () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_i8_size            () const uX_noexcept { return 1; }

}vecuqword1_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECUQWORD4_H
#include "uXxmmvecuqword4.h"
#endif  /* uX_XMM_VECUQWORD4_H */

#ifndef uX_XMM_VECUQWORD3_H
#include "uXxmmvecuqword3.h"
#endif  /* uX_XMM_VECUQWORD3_H */

#ifndef uX_XMM_VECUQWORD2_H
#include "uXxmmvecuqword2.h"
#endif  /* uX_XMM_VECUQWORD2_H */

#ifndef uX_XMM_VECQWORD1_H
#include "uXxmmvecqword1.h"
#endif  /* uX_XMM_VECQWORD1_H */

#ifndef uX_XMM_VECUDWORD2_H
#include "uXxmmvecudword2.h"
#endif  /* uX_XMM_VECUDWORD2_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECUQWORD1_H
