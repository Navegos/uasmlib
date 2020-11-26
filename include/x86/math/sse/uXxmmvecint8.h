
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

#ifndef uX_XMM_VECINT8_H
#define uX_XMM_VECINT8_H 1

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

namespace_uX
namespace_XMM
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
class vecint8;
class vecuint8;
class vecint16;
class vecuint16;
class vecint32;
class vecuint32;
class vecint64;
class vecuint64;
class vecdouble;
class vecdouble1;
class vecdouble2;
class vecdouble3;
class vecdouble4;
class vecdouble3x3;
class vecdouble4x3;
class vecdouble4x4;
#endif

#ifdef uX_SSE2
typedef class uX_API vecint8
{
public:
    vecint8()uX_default;
    ~vecint8()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecint8(const vecint8&)uX_default;
    vecint8& uX_callconv operator=(const vecint8&)uX_default;

    vecint8(vecint8&&)uX_default;
    vecint8& uX_callconv operator=(vecint8&&)uX_default;
#else
    vecint8(const vecint8& Invecint8);
    vecint8& uX_callconv operator=(const vecint8& Invecint8);

    vecint8(vecint8&& Invecint8);
    vecint8& uX_callconv operator=(vecint8&& Invecint8);
#endif
    /**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecint8(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inpint8 value to copy from.
     */
    uX_explicit vecint8(uX_InReads(16) const __int8* Inpint8);

    /** Type cast operator to convert to __m128i. */
    operator __m128i() const;

    /**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecint8& uX_callconv operator=(const __m128i Inxmmi);

    /**
     * Constructor initialization from 16 type byte.
     *
     * @param Inpint8_0 to Inpint8_15 value to copy from.
     */
    uX_explicit vecint8(const __int8 Inpint8_0, const __int8 Inpint8_1, const __int8 Inpint8_2, const __int8 Inpint8_3, 
                        const __int8 Inpint8_4, const __int8 Inpint8_5, const __int8 Inpint8_6, const __int8 Inpint8_7, 
                        const __int8 Inpint8_8, const __int8 Inpint8_9, const __int8 Inpint8_10, const __int8 Inpint8_11, 
                        const __int8 Inpint8_12, const __int8 Inpint8_13, const __int8 Inpint8_14, const __int8 Inpint8_15);

    /** Type cast operator to convert to __int8*. */
    /*operator __int8*() const;*/

    /**
     * Assignment operator to convert from type __int8*.
     *
     * @param Inpint8 value to copy from.
     */
    vecint8& uX_callconv operator=(uX_InReads(16) const __int8* Inpint8);

    /* Logical Operators */
    friend vecint8 uX_callconv andnot(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator&(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator|(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator^(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator~(const vecint8 Inxmm_a);

    friend unsigned int uX_callconv iandnot(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend unsigned int uX_callconv operator&&(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend unsigned int uX_callconv operator||(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend unsigned int uX_callconv operator!(const vecint8 Inxmm_a);

    friend unsigned int uX_callconv horizontal_and(const vecint8 Inxmm_a);
    friend unsigned int uX_callconv horizontal_or(const vecint8 Inxmm_a);

    vecint8& uX_callconv operator&=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator|=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator^=(const vecint8 Inxmm_b);

    /* Arithmetic Operators */
    friend vecint8 uX_callconv operator+(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator-(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator*(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator/(const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    vecint8& uX_callconv operator+=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator-=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator*=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator/=(const vecint8 Inxmm_b);

    /* Unary Operators */
    friend vecint8 uX_callconv operator++(const vecint8 Inxmm_a);
    friend vecint8 uX_callconv operator--(const vecint8 Inxmm_a);

    friend vecint8 uX_callconv operator++(const vecint8 Inxmm_a, int);
    friend vecint8 uX_callconv operator--(const vecint8 Inxmm_a, int);

    friend vecint8 uX_callconv operator-(const vecint8 Inxmm_a);

    /* Comparison Operators */
    friend vecint8 uX_callconv operator==(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator<(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator<=(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator>(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator>=(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator!=(const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    /* Shift Operators */
    friend vecint8 uX_callconv operator<<(const vecint8 Inxmm_a, int InIntCount);
    friend vecint8 uX_callconv operator<<(const vecint8 Inxmm_a, const vecint8 Inxmm_Count);

    friend vecint8 uX_callconv operator>>(const vecint8 Inxmm_a, int InIntCount);
    friend vecint8 uX_callconv operator>>(const vecint8 Inxmm_a, const vecint8 Inxmm_Count);

    vecint8& uX_callconv operator<<=(int InIntCount);
    vecint8& uX_callconv operator<<=(const vecint8 Inxmm_Count);

    vecint8& uX_callconv operator>>=(int InIntCount);
    vecint8& uX_callconv operator>>=(const vecint8 Inxmm_Count);

    /* Element Access Only, no modifications to elements*/
    const __int8& uX_callconv operator[](int index) const;

    /* Element Access and Modification*/
    __int8& uX_callconv operator[](int index);

    /**
     * Load function to load from type __int8* unaligned.
     *
     * @param Inpint8 value to copy from.
     */
    vecint8& uX_callconv load(uX_InReads(16) const __int8* Inpint8);

    /**
     * Load function to load from type __int8* aligned by 16.
     *
     * @param Inpint8 value to copy from.
     */
    vecint8& uX_callconv load_a(uX_InReads(16) const __int8* Inpint8);

    /**
     * Store function to store to type __int8* unaligned.
     *
     * @param Outpint8 value to store to.
     */
    void uX_callconv store(uX_OutWrites(16) __int8* Outpint8) const;

    /**
     * Store function to store to type __int8* aligned by 16.
     *
     * @param Outpint8 value to store to.
     */
    void uX_callconv store_a(uX_OutWrites(16) __int8* Outpfloat) const;

    /**
     * Insert function to insert from type __int8 on the mask index.
     *
     * @param value __int8 to copy from.
     * @param index element to set.
     */
    const vecint8 uX_callconv insert(__int8 value, const unsigned int index);

    /**
     * Extract function to extract element from mask index.
     *
     * @param index element to get.
     */
    __int8 uX_callconv extract(const unsigned int index) const;

    // Select between two operands. Corresponds to this pseudo code:
    // for (int i = 0; i < 4; i++) result[i] = s[i] ? a[i] : b[i];
    friend vecint8 uX_callconv select(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    // Conditional add: For all vector elements i: result[i] = f[i] ? (a[i] + b[i]) : a[i]
    friend vecint8 uX_callconv if_add(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    // Conditional subtract: For all vector elements i: result[i] = f[i] ? (a[i] - b[i]) : a[i]
    friend vecint8 uX_callconv if_sub(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    // Conditional multiply: For all vector elements i: result[i] = f[i] ? (a[i] * b[i]) : a[i]
    friend vecint8 uX_callconv if_mul(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    // Conditional divide: For all vector elements i: result[i] = f[i] ? (a[i] / b[i]) : a[i]
    friend vecint8 uX_callconv if_div(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    friend vecint8 uX_callconv compress(const vecint16 Inxmm_low, const vecint16 Inxmm_high);

    friend vecint8 uX_callconv compress_saturated(const vecint16 Inxmm_low, const vecint16 Inxmm_high);

protected:

private:
    union
    {
        __m128i             m128_xmmi;
        struct
        {
            __int8     _0, _1, _2, _3,
                       _4, _5, _6, _7,
                     _8, _9, _10, _11,
                   _12, _13, _14, _15;
        };
        __int8            m128_ib[16];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_i8_ptr_lenght = 16;
    static uX_const uint32_t m128_i8_ptr_size = 16;
    static uX_const uint32_t m128_i8_size = 1;

}vecint8_t;

#ifndef uX_XMM_VECINT16_H
#include "uXxmmvecint16.h"
#endif  /* uX_XMM_VECINT16_H */

#endif // uX_SSE2

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECINT8_H
