
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
/*

#ifndef uX_XMM_VECDOUBLE_H
#define uX_XMM_VECDOUBLE_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  / * uX_TYPES_H * /

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

#ifdef uX_SSE2

#ifndef __cplusplus
#error ERROR: This file is only supported in C++ compilations!
#endif / * !__cplusplus * /

#ifndef _INCLUDED_MM2
#include <xmmintrin.h>
#endif  / * _INCLUDED_MM2 * /

#ifdef uX_SSE2
#ifndef _INCLUDED_EMM
#include <emmintrin.h>
#endif  / * _INCLUDED_EMM * /
#endif // uX_SSE2

#ifndef uX_XMM_INTRIN_H
#include "uXxmmintrin.h"
#endif  / * uX_XMM_INTRIN_H * /

#ifndef uX_EMM_INTRIN_H
#include "uXemmintrin.h"
#endif  / * uX_EMM_INTRIN_H * /

namespace_uX
namespace_XMM
uX_PACK_PUSH_XMM

// VECTORS'S

/ *class vecfloat;* /
/ *
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
#endif* /

/ *
typedef class uX_API vecdouble
{
public:
    vecdouble() uX_default;
    ~vecdouble() uX_default;

    vecdouble(const vecdouble&) uX_default;
    vecdouble& uX_callconv operator=(const vecdouble&) uX_default;

    vecdouble(vecdouble&&) uX_default;
    vecdouble& uX_callconv operator=(vecdouble&&) uX_default;

    / **
     * Constructor initialization from type __m128d.
     *
     * @param Inxmmd value to copy from.
     * /
    uX_constexpr vecdouble(const __m128d Inxmmd) uX_noexcept : m128_xmmd(Inxmmd) {}

    / **
     * Constructor initialization from type vecdouble1.
     *
     * @param Inxmmd value to copy from.
     * /
    uX_constexpr vecdouble(const vecdouble1 Inxmmd) uX_noexcept : m128_xmmd(Inxmmd) {}

    / **
     * Constructor initialization from type vecdouble2.
     *
     * @param Inxmmd value to copy from.
     * /
    uX_constexpr vecdouble(const vecdouble2 Inxmmd) uX_noexcept : m128_xmmd(Inxmmd) {}

    / **
     * Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     * /
    uX_explicit vecdouble(const double* Inpdouble) uX_noexcept;

    / ** Type cast operator to convert to __m128d. * /
    operator __m128d() const uX_noexcept;

    / ** Type cast operator to convert to double*. * /
    / *operator double*() const;* / //security undesired

    / **
     * Assignment operator to convert from type __m128d.
     *
     * @param Inxmmd value to copy from.
     * /
    vecdouble& uX_callconv operator=(const __m128d Inxmmd) uX_noexcept;

    / **
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     * /
    / *vecdouble& uX_callconv operator=(const double* Inpdouble);* / //security undesired

protected:

private:
    union
    {
        __m128d m128_xmmd;
        struct
        {
            double _x, _y;
        };
        double  m128_d[2];
    };

    static uX_const uint32_t m128_xmm_size          = 16;
    static uX_const uint32_t m128_xmmd_elements     = 2;
    static uX_const uint32_t m128_dbl_ptr_lenght    = 2;
    static uX_const uint32_t m128_dbl_ptr_size      = 16;
    static uX_const uint32_t m128_dbl_size          = 8;

}vecdouble_t;* /

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  / * uX_XMM_VECDOUBLE1_H * /

#ifndef uX_XMM_VECDOUBLE2_H
#include "uXxmmvecdouble2.h"
#endif  / * uX_XMM_VECDOUBLE2_H * /

#endif // uX_SSE2

#endif // uX_SSE

#endif / *defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)* /

#endif // uX_XMM_VECDOUBLE_H
*/
