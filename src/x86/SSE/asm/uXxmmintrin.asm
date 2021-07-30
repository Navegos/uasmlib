
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

option casemap:none
include macrolib.inc
include uXasm.inc

ifndef __MIC__

.xmm
option arch:sse
option evex:0

alignstackfieldproc

.data?

.data

.const

    _m128cvteltfltjmptable label size_t
    isize_t _m128cvteltflt_0, _m128cvteltflt_1, _m128cvteltflt_2, _m128cvteltflt_3
        
    _m128seteltpsjmptable label size_t
    isize_t _m128seteltps_0, _m128seteltps_1, _m128seteltps_2, _m128seteltps_3
    
    _m128prefetchjmptable label size_t
    isize_t _m128prefetch_0, _m128prefetch_1, _m128prefetch_2, _m128prefetch_3

ifdef __x32__
    _m64pextrwjmptable label size_t
    isize_t _m64pextrw_0, _m64pextrw_1, _m64pextrw_2, _m64pextrw_3
    
    _m64pinsrwjmptable label size_t
    isize_t _m64pinsrw_0, _m64pinsrw_1, _m64pinsrw_2, _m64pinsrw_3
endif ;!__x32__

externdef __m128_true:__m128i
externdef __m128_false:__m128i
externdef __m128_0:__m128f
externdef __m128_sign:__m128i

externdef __m128_0e_true:__m128i
externdef __m128_0e_false:__m128i
externdef __m128_0e_0:__m128f
externdef __m128_0e_sign:__m128i

.code

callconvopt
alignxmmfieldproc

    ;ifdef __x32__
        ;externdef intrin_has_SSE2:byte
    ;endif

;******************
; Externs
;******************
    ;extern uXveccall _uX_intrin_CPUFeatures:proc

;************************************
; FP, arithmetic
;************************************
procstart _uX_mm_add_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        addss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_add_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        addps           xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_sub_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        subss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sub_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        subps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_mul_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mulss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_mul_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mulps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_div_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        divss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_div_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        divps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_scale_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal8_B:real8
        mulss          xmm0,           xmm1
        ret
procend

procstart _uX_mm_scale_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal8_B:real8
        shufps         xmm1,           xmm1,           0
        mulps          xmm0,           xmm1
        ret
procend

procstart _uX_mm_square_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mulss          xmm0,           xmm0
        ret
procend

procstart _uX_mm_square_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mulps          xmm0,           xmm0
        ret
procend

procstart _uX_mm_sqrt_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        sqrtss          xmm0,           xmm0
        ret
procend

procstart _uX_mm_sqrt_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        sqrtps          xmm0,           xmm0
        ret
procend

procstart _uX_mm_rcp_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        rcpss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_rcp_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        rcpps           xmm0,           xmm0
        ret
procend

procstart _uX_mm_rsqrt_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        rsqrtss         xmm0,           xmm0
        ret
procend

procstart _uX_mm_rsqrt_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        rsqrtps         xmm0,           xmm0
        ret
procend

procstart _uX_mm_min_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        minss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_min_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        minps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_max_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        maxss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_max_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        maxps           xmm0,           xmm1
        ret
procend

;******************
; FP, logical
;******************
procstart _uX_mm_and_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        andps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_andnot_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        andnps          xmm0,           xmm1
        ret
procend

procstart _uX_mm_or_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        orps            xmm0,           xmm1
        ret
procend

procstart _uX_mm_xor_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xorps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_not_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           __m128_true
        xorps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_negate_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           __m128_sign
        xorps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_and_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        andps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_andnot_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        andnps          xmm0,           xmm1
        ret
procend

procstart _uX_mm_or_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        orps            xmm0,           xmm1
        ret
procend

procstart _uX_mm_xor_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xorps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_not_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           __m128_0e_true
        xorps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_negate_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           __m128_0e_sign
        xorps           xmm0,           xmm1
        ret
procend

ifdef __unix32__
    rpdcmp textequ <ecx>
else
    rpdcmp textequ <rp0()>
endif
procstart _uX_mm_iand_ps, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        andps           xmm0,          xmm1
        movmskps        rpdcmp,        xmm0
        cmp             rpdcmp,        0xf
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_iandnot_ps, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        andnps          xmm0,          xmm1
        movmskps        rpdcmp,        xmm0
        cmp             rpdcmp,        0xf
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_ior_ps, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        orps            xmm0,          xmm1
        movmskps        rpdcmp,        xmm0
        cmp             rpdcmp,        0x0
        cmovne          rret(),        true
        ret
procend

procstart _uX_mm_inot_ps, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        movaps          xmm1,           __m128_false
        cmpps           xmm0,          xmm1,           CMPP_EQ
        movmskps        rpdcmp,        xmm0
        cmp             rpdcmp,        0xf
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_iand_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        andps           xmm0,          xmm1
        movmskps        rpdcmp,        xmm0
        and             rpdcmp,        0x1
        cmp             rpdcmp,        0x1
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_iandnot_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        andnps          xmm0,          xmm1
        movmskps        rpdcmp,        xmm0
        and             rpdcmp,        0x1
        cmp             rpdcmp,        0x1
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_ior_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        orps            xmm0,          xmm1
        movmskps        rpdcmp,        xmm0
        and             rpdcmp,        0x1
        cmp             rpdcmp,        0x0
        cmovne          rret(),        true
        ret
procend

procstart _uX_mm_inot_ss, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        movaps          xmm1,          __m128_0e_false
        cmpss           xmm0,          xmm1,           CMPP_EQ
        movmskps        rpdcmp,        xmm0
        and             rpdcmp,        0x1
        cmp             rpdcmp,        0x1
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_ihand_ps, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        ;andps           xmm0,          xmm0
        movmskps        rpdcmp,        xmm0
        cmp             rpdcmp,        0xf
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_ihor_ps, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        ;orps            xmm0,          xmm0
        movmskps        rpdcmp,        xmm0
        cmp             rpdcmp,        0x0
        cmovne          rret(),        true
        ret
procend

;******************
; FP, comparison
;******************
procstart _uX_mm_cmpeq_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_EQ
        ret
procend

procstart _uX_mm_cmpeq_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_EQ
        ret
procend

procstart _uX_mm_cmplt_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_LT
        ret
procend

procstart _uX_mm_cmplt_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_LT
        ret
procend

procstart _uX_mm_cmple_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_LE
        ret
procend

procstart _uX_mm_cmple_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_LE
        ret
procend

procstart _uX_mm_cmpgt_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_NLE
        ret
procend

procstart _uX_mm_cmpgt_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_NLE
        ret
procend

procstart _uX_mm_cmpge_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_NLT
        ret
procend

procstart _uX_mm_cmpge_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_NLT
        ret
procend

procstart _uX_mm_cmpneq_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_NEQ
        ret
procend

procstart _uX_mm_cmpneq_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_NEQ
        ret
procend

procstart _uX_mm_cmpnlt_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_NLT
        ret
procend

procstart _uX_mm_cmpnlt_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_NLT
        ret
procend

procstart _uX_mm_cmpnle_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_NLE
        ret
procend

procstart _uX_mm_cmpnle_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_NLE
        ret
procend

procstart _uX_mm_cmpngt_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_LE
        ret
procend

procstart _uX_mm_cmpngt_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_LE
        ret
procend

procstart _uX_mm_cmpnge_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_LT
        ret
procend

procstart _uX_mm_cmpnge_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_LT
        ret
procend

procstart _uX_mm_cmpord_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_ORD
        ret
procend

procstart _uX_mm_cmpord_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_ORD
        ret
procend

procstart _uX_mm_cmpunord_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpss           xmm0,           xmm1,           CMPP_UNORD
        ret
procend

procstart _uX_mm_cmpunord_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpps           xmm0,           xmm1,           CMPP_UNORD
        ret
procend

;******************
; FP, comparison return int
;******************
procstart _uX_mm_comieq_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmove           rret(),            true
        ret
procend

procstart _uX_mm_comilt_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmovb           rret(),            true
        ret
procend

procstart _uX_mm_comile_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmovbe          rret(),            true
        ret
procend

procstart _uX_mm_comigt_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmova           rret(),            true
        ret
procend

procstart _uX_mm_comige_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmovae          rret(),            true
        ret
procend

procstart _uX_mm_comineq_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmovne          rret(),            true
        ret
procend

procstart _uX_mm_cominlt_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmovnb          rret(),            true
        ret
procend

procstart _uX_mm_cominle_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmovnbe         rret(),            true
        ret
procend

procstart _uX_mm_comingt_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmovna          rret(),            true
        ret
procend

procstart _uX_mm_cominge_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        comiss          xmm0,           xmm1
        cmovnae         rret(),            true
        ret
procend

procstart _uX_mm_ucomieq_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmove           rret(),            true
        ret
procend

procstart _uX_mm_ucomilt_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmovb           rret(),            true
        ret
procend

procstart _uX_mm_ucomile_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmovbe          rret(),            true
        ret
procend

procstart _uX_mm_ucomigt_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmova           rret(),            true
        ret
procend

procstart _uX_mm_ucomige_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmovae          rret(),            true
        ret
procend

procstart _uX_mm_ucomineq_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmovne          rret(),            true
        ret
procend

procstart _uX_mm_ucominlt_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmovnb          rret(),            true
        ret
procend

procstart _uX_mm_ucominle_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmovnbe         rret(),            true
        ret
procend

procstart _uX_mm_ucomingt_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmovna          rret(),            true
        ret
procend

procstart _uX_mm_ucominge_ss, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),            rret()
        ucomiss         xmm0,           xmm1
        cmovnae         rret(),            true
        ret
procend

;******************
; FP, conversions
;******************
procstart _uX_mm_cvt_ss2si, callconv, dword, < >, < >, Inxmm_A:xmmword
        cvtss2si            dret(),            xmm0
        ret
procend

procstart _uX_mm_cvtt_ss2si, callconv, dword, < >, < >, Inxmm_A:xmmword
        cvttss2si           dret(),            xmm0
        ret
procend

procstart _uX_mm_cvt_si2ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_B:dword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov     rpdisp,    InInt_B
    else
        rpdisp textequ <dp1()>
    endif
        cvtsi2ss            xmm0,           rpdisp
        ret
procend

procstart _uX_mm_cvtss_flt, callconv, real4, < >, < >, Inxmm_A:xmmword
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvt0s_flt, callconv, real4, < >, < >, Inxmm_A:xmmword
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvt1s_flt, callconv, real4, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           shuffler4(1,1,1,1)
        ret
procend

procstart _uX_mm_cvt2s_flt, callconv, real4, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           shuffler4(2,2,2,2)
        ret
procend

procstart _uX_mm_cvt3s_flt, callconv, real4, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           shuffler4(3,3,3,3)
        ret
procend

procstart _uX_mm_cvtps_flt, callconv, real4, < >, < >, Inxmm_A:xmmword, InInt_BSel:count_t
        push         rbase()
    ifdef __unix32__
        rpdisp textequ <ecx>
        bpdisp textequ <cl>
        mov     rpdisp,     InInt_BSel
    else
        rpdisp textequ <rp1()>
        bpdisp textequ <bp1()>
    endif
    .if((rpdisp < 0) || (rpdisp > 3))
        jmp         _m128cvteltflt_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bpdisp
        jmp     dword ptr [_m128cvteltfltjmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128cvteltfltjmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbase()
    endif

        _m128cvteltflt_0 label size_t
        movss           xmm0,           xmm0
        jmp         _m128cvteltflt_end
        _m128cvteltflt_1 label size_t
        shufps          xmm0,           xmm0,           shuffler4(1,1,1,1)
        movss           xmm0,           xmm0
        jmp         _m128cvteltflt_end
        _m128cvteltflt_2 label size_t
        shufps          xmm0,           xmm0,           shuffler4(2,2,2,2)
        jmp         _m128cvteltflt_end
        _m128cvteltflt_3 label size_t
        shufps          xmm0,           xmm0,           shuffler4(3,3,3,3)
        ;jmp         _m128cvteltflt_end

        _m128cvteltflt_end:
        pop         rbase()
        ret
procend

ifdef __x32__
    alignmmfieldproc
procstart _uX_mm_cvt_ps2pi, callconv, mmword, < >, < >, Inxmm_A:xmmword
        cvtps2pi            mm0,            xmm0
        ret
procend

procstart _uX_mm_cvtt_ps2pi, callconv, mmword, < >, < >, Inxmm_A:xmmword
        cvttps2pi           mm0,            xmm0
        ret
procend

procstart _uX_mm_cvt_pi2ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inmm_B:mmword
        cvtpi2ps            xmm0,           mm1
        ret
procend
    alignxmmfieldproc
endif ;__x32__

ifdef __X64__
;******************
; FP, conversions, 64-bit intrinsics
;******************
procstart _uX_mm_cvtss_si64, callconv, qword, < >, < >, Inxmm_A:xmmword
        cvtss2si            rret(),            xmm0
        ret
procend

procstart _uX_mm_cvttss_si64, callconv, qword, < >, < >, Inxmm_A:xmmword
        cvttss2si           rret(),            xmm0
        ret
procend

procstart _uX_mm_cvtsi64_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_B:qword
        cvtsi2ss            xmm0,           rp1()
        ret
procend
endif ;__X64__

;******************
; FP, misc
;******************
procstart _uX_mm_transpose4_ps, callconv, void, < >, < >, Inxmm_row0:xmmword, Inxmm_row1:xmmword, Inxmm_row2:xmmword, Inxmm_row3:xmmword
    ;ifdef __unix32__
    ;    define rpdisprow0, ecx, text
    ;    define rpdisprow1, edx, text
    ;    define rpdisprow2, edi, text
    ;    define rpdisprow0, esi, text
    ;    push edi
    ;    push esi
    ;    mov             rpdisprow0,     Inxmm_row0
    ;    mov             rpdisprow1,     Inxmm_row1
    ;    mov             rpdisprow2,     Inxmm_row2
    ;    mov             rpdisprow3,     Inxmm_row3
    ;else
    ;    define rpdisprow0, rp0(), text
    ;    define rpdisprow1, rp1(), text
    ;    define rpdisprow2, rp2(), text
    ;    define rpdisprow3, rp0(), text
    ;endif
        ;movaps          xmm0,           xmmword ptr [rpdisprow0()]
        ;movaps          xmm1,           xmmword ptr [rpdisprow1()]
        ;movaps          xmm2,           xmmword ptr [rpdisprow2()]
        ;movaps          xmm3,           xmmword ptr [rpdisprow3()]

        movaps          xmm4,           xmm0
        movaps          xmm5,           xmm2
        shufps          xmm0,           xmm1,           shuffler4(0,1,0,1) ; 044h
        shufps          xmm4,           xmm1,           shuffler4(2,3,2,3) ; 0eeh
        shufps          xmm2,           xmm3,           shuffler4(0,1,0,1) ; 044h
        shufps          xmm5,           xmm3,           shuffler4(2,3,2,3) ; 0eeh
        movaps          xmm1,           xmm0
        movaps          xmm3,           xmm4
        shufps          xmm0,           xmm2,           shuffler4(0,2,0,2) ; 088h
        shufps          xmm1,           xmm2,           shuffler4(1,3,1,3) ; 0ddh
        shufps          xmm4,           xmm5,           shuffler4(0,2,0,2) ; 088h
        shufps          xmm3,           xmm5,           shuffler4(1,3,1,3) ; 0ddh
        movaps          xmm2,           xmm4

    ;    movaps          xmmword ptr [rpdisprow0()],           xmm0
    ;    movaps          xmmword ptr [rpdisprow1()],           xmm1
    ;    movaps          xmmword ptr [rpdisprow2()],           xmm2
    ;    movaps          xmmword ptr [rpdisprow3()],           xmm3
    ;ifdef __unix32__
    ;    mov             Inxmm_row3,     rpdisprow3
    ;    mov             Inxmm_row2,     rpdisprow2
    ;    mov             Inxmm_row1,     rpdisprow1
    ;    mov             Inxmm_row0,     rpdisprow0
    ;    pop esi
    ;    pop edi
    ;endif
        ret
procend

procstart _uX_mm_unpackhi_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        unpckhps            xmm0,           xmm1
        ret
procend

procstart _uX_mm_unpacklo_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        unpcklps            xmm0,           xmm1
        ret
procend

procstart _uX_mm_movehl_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movhlps             xmm0,           xmm1
        ret
procend

procstart _uX_mm_movelh_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movlhps             xmm0,           xmm1
        ret
procend

procstart _uX_mm_loadh_pi, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InPmm_B:ptr mmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,     InPmm_B
    else
        rpdisp textequ <rp1()>
    endif
        movhps          xmm0,   mmword ptr [rpdisp]
        ret
procend

procstart _uX_mm_loadl_pi, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InPmm_B:ptr mmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,     InPmm_B
    else
        rpdisp textequ <rp1()>
    endif
        movlps          xmm0,   mmword ptr [rpdisp]
        ret
procend

procstart _uX_mm_storeh_pi, callconv, void, < >, < >, OutPmm_A:ptr mmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,     OutPmm_A
    else
        rpdisp textequ <rp0()>
    endif
        movhps      mmword ptr [rpdisp],           xmm1
    ifdef __unix32__
        mov         OutPmm_A,     rpdisp
    endif
        ret
procend

procstart _uX_mm_storel_pi, callconv, void, < >, < >, OutPmm_A:ptr mmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,     OutPmm_A
    else
        rpdisp textequ <rp0()>
    endif
        movlps      mmword ptr [rpdisp],           xmm1
    ifdef __unix32__
        mov         OutPmm_A,     rpdisp
    endif
        ret
procend

procstart _uX_mm_movemask_ps, callconv, dword, < >, < >, Inxmm_A:xmmword
        movmskps            dret(),                xmm0
        ret
procend

ifdef __x32__
;******************
; Integer (MMX) extensions
;******************
    alignmmfieldproc
procstart _uX_mm_pextrw_0, callconv, dword, < >, < >, Inmm_A:mmword
        pextrw          rret(),            mm0,            0
        ret
procend

procstart _uX_mm_pextrw_1, callconv, dword, < >, < >, Inmm_A:mmword
        pextrw          rret(),            mm0,            1
        ret
procend

procstart _uX_mm_pextrw_2, callconv, dword, < >, < >, Inmm_A:mmword
        pextrw          rret(),            mm0,            2
        ret
procend

procstart _uX_mm_pextrw_3, callconv, dword, < >, < >, Inmm_A:mmword
        pextrw          rret(),            mm0,            3
        ret
procend

procstart _uX_mm_pextrw, callconv, dword, < >, < >, Inmm_A:mmword, _Imm8:count_t
        push         rbase()
    ifdef __unix32__
        rpdisp textequ <ecx>
        bpdisp textequ <cl>
        mov             rpdisp,          _Imm8
    else
        rpdisp textequ <rp1()>
        bpdisp textequ <bp1()>
    endif
    .if((rpdisp < 0) || (rpdisp > 3))
        jmp         _m64pextrw_end
    .endif
        movzx           rbase(),        bpdisp
        jmp     dword ptr [_m64pextrwjmptable+rbase()*size_t_size]

        _m64pextrw_0 label size_t
        pextrw          rret(),            mm0,            0
        jmp         _m64pextrw_end
        _m64pextrw_1 label size_t
        pextrw          rret(),            mm0,            1
        jmp         _m64pextrw_end
        _m64pextrw_2 label size_t
        pextrw          rret(),            mm0,            2
        jmp         _m64pextrw_end
        _m64pextrw_3 label size_t
        pextrw          rret(),            mm0,            3
        ;jmp         _m64pextrw_end

        _m64pextrw_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_pinsrw_0, callconv, mmword, < >, < >, Inmm_A:mmword, InInt_B:dword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov             rpdisp,          InInt_B
    else
        rpdisp textequ <rp1()>
    endif
        pinsrw          mm0,            rpdisp,            0
        ret
procend

procstart _uX_mm_pinsrw_1, callconv, mmword, < >, < >, Inmm_A:mmword, InInt_B:dword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov             rpdisp,          InInt_B
    else
        rpdisp textequ <rp1()>
    endif
        pinsrw          mm0,            rpdisp,            1
        ret
procend

procstart _uX_mm_pinsrw_2, callconv, mmword, < >, < >, Inmm_A:mmword, InInt_B:dword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov             rpdisp,          InInt_B
    else
        rpdisp textequ <rp1()>
    endif
        pinsrw          mm0,            rpdisp,            2
        ret
procend

procstart _uX_mm_pinsrw_3, callconv, mmword, < >, < >, Inmm_A:mmword, InInt_B:dword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov             rpdisp,          InInt_B
    else
        rpdisp textequ <rp1()>
    endif
        pinsrw          mm0,            rpdisp,            3
        ret
procend

procstart _uX_mm_pinsrw, callconv, mmword, < >, < >, Inmm_A:mmword, InInt_B:dword,  _Imm8:count_t
        push         rbase()
    ifdef __unix32__
        rpdisp textequ <ecx>
        rpdisp1 textequ <edx>
        bpdisp1 textequ <dl>
        mov     rpdisp,     InInt_B
        mov     rpdisp1,    _Imm8
    else
        rpdisp textequ <rp1()>
        rpdisp1 textequ <rp2()>
        bpdisp1 textequ <bp2()>
    endif
    .if((rpdisp1 < 0) || (rpdisp1 > 3))
        jmp         _m64pinsrw_end
    .endif
        movzx           rbase(),        bpdisp1
        jmp     dword ptr [_m64pinsrwjmptable+rbase()*size_t_size]
                
        _m64pinsrw_0 label size_t
        pinsrw          mm0,            rpdisp,            0
        jmp         _m64pinsrw_end
        _m64pinsrw_1 label size_t
        pinsrw          mm0,            rpdisp,            1
        jmp         _m64pinsrw_end
        _m64pinsrw_2 label size_t
        pinsrw          mm0,            rpdisp,            2
        jmp         _m64pinsrw_end
        _m64pinsrw_3 label size_t
        pinsrw          mm0,            rpdisp,            3
        ;jmp         _m64pinsrw_end

        _m64pinsrw_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_pmaxsw, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        pmaxsw          mm0,            mm1
        ret
procend

procstart _uX_mm_pmaxub, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        pmaxub          mm0,            mm1
        ret
procend

procstart _uX_mm_pminsw, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        pminsw          mm0,            mm1
        ret
procend

procstart _uX_mm_pminub, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        pminub          mm0,            mm1
        ret
procend

procstart _uX_mm_pmovmskb, callconv, dword, < >, < >, Inmm_A:mmword
        pmovmskb        rret(),            mm0
        ret
procend

procstart _uX_mm_pmulhuw, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        pmulhuw         mm0,            mm1
        ret
procend

procstart _uX_mm_maskmovq, callconv, void, < >, < >, Inmm_A:mmword, Inmm_B:mmword, OutInt8_C:ptr byte
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov             rpdisp,          OutInt8_C
    else
        rpdisp textequ <rp2()>
    endif
        push            rdidx()
        mov             rdidx(),  byte ptr [rpdisp]
        maskmovq        mm0,            mm1
        pop             rdidx()
        ret
procend

procstart _uX_mm_pavgb, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        pavgb           mm0,            mm1
        ret
procend

procstart _uX_mm_pavgw, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        pavgw           mm0,            mm1
        ret
procend

procstart _uX_mm_psadbw, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        psadbw          mm0,            mm1
        ret
procend
    alignxmmfieldproc
endif ;__x32__

;******************
; FP, sets
;******************
procstart _uX_mm_set_ss, callconv, xmmword, < >, < >, Inreal4_A:real4
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_set_ps1, callconv, xmmword, < >, < >, Inreal4_A:real4
        movss           xmm0,           xmm0
        shufps          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_cvtflt_0s, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal4_B:real4
        movss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_cvtflt_1s, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal4_B:real4
        shufps          xmm0,           xmm0,           shuffler4(0,0,2,3)
        movss           xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffler4(1,0,2,3)
        ret
procend

procstart _uX_mm_cvtflt_2s, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal4_B:real4
        shufps          xmm0,           xmm0,           shuffler4(0,1,0,3)
        movss           xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffler4(2,1,0,3)
        ret
procend

procstart _uX_mm_cvtflt_3s, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal4_B:real4
        shufps          xmm0,           xmm0,           shuffler4(0,1,2,0)
        movss           xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffler4(3,1,2,0)
        ret
procend

procstart _uX_mm_cvtflt_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal4_B:real4, InInt_BSel:count_t
        push         rbase()
    ifdef __unix32__
        rpdisp textequ <ecx>
        bpdisp textequ <cl>
        mov         rpdisp,        InInt_BSel
    else
        rpdisp textequ <rp2()>
        bpdisp textequ <bp2()>
    endif
    .if((rpdisp < 0) || (rpdisp > 3))
        jmp         _m128seteltps_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bpdisp
        jmp     dword ptr [_m128seteltpsjmptable+rbase()*size_t_size]
    else
        lea             rbase(),    qword ptr [_m128seteltpsjmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbase()
    endif

        _m128seteltps_0 label size_t
        movss           xmm0,           xmm1
        jmp         _m128seteltps_end
        _m128seteltps_1 label size_t
        shufps          xmm0,           xmm0,           shuffler4(0,0,2,3)
        movss           xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffler4(1,0,2,3)
        jmp         _m128seteltps_end
        _m128seteltps_2 label size_t
        shufps          xmm0,           xmm0,           shuffler4(0,1,0,3)
        movss           xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffler4(2,1,0,3)
        jmp         _m128seteltps_end
        _m128seteltps_3 label size_t
        shufps          xmm0,           xmm0,           shuffler4(0,1,2,0)
        movss           xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffler4(3,1,2,0)
        ;jmp         _m128seteltps_end

        _m128seteltps_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_set_ps, callconv, xmmword, < >, < >, Inreal4_D:real4, Inreal4_C:real4, Inreal4_B:real4, Inreal4_A:real4
    ifdef __unix32__
        movss           xmm3,       Inreal4_A
    endif
        shufps          xmm0,           xmm0,           shuffle4(0,0,0,0)
        movss           xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffle4(3,0,0,0)
        movss           xmm0,           xmm2
        shufps          xmm0,           xmm0,           shuffle4(3,2,0,0)
        movss           xmm0,           xmm3
        ret
procend

procstart _uX_mm_setr_ps, callconv, xmmword, < >, < >, Inreal4_A:real4, Inreal4_B:real4, Inreal4_C:real4, Inreal4_D:real4
        shufps          xmm0,           xmm0,           shuffler4(0,0,0,0)
        movss           xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffler4(0,0,0,3)
        movss           xmm0,           xmm2
        shufps          xmm0,           xmm0,           shuffler4(0,0,2,3)
        movss           xmm0,           xmm3
        shufps          xmm0,           xmm0,           shuffler4(3,2,1,0)
        ret
procend

procstart _uX_mm_setzero_ps, callconv, xmmword, < >, < >, < >
        xorps           xmm0,           xmm0
        ret
procend

procstart _uX_mm_iszero_ps, callconv, dword, < >, < >, Inxmm_A:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
    else
        rpdisp textequ <rp0()>
    endif
        xor             rret(),        rret()
        movaps          xmm1,          __m128_0
        cmpps           xmm0,           xmm1,           CMPP_EQ
        movmskps        rpdisp,        xmm0
        cmp             rpdisp,        0xf
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_iszero_ss, callconv, dword, < >, < >, Inxmm_A:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
    else
        rpdisp textequ <rp0()>
    endif
        xor             rret(),        rret()
        movaps          xmm1,          __m128_0e_0
        cmpss           xmm0,           xmm1,           CMPP_EQ
        movmskps        rpdisp,        xmm0
        cmp             rpdisp,        0x1
        cmove           rret(),        true
        ret
procend

;******************
; FP, loads
;******************
procstart _uX_mm_load_ss, callconv, xmmword, < >, < >, InPreal4_A:ptr real4
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movss           xmm0,       real4 ptr [rpdisp]
        ret
procend

procstart _uX_mm_load_ps1, callconv, xmmword, < >, < >, InPreal4_A:ptr real4
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movss           xmm0,       real4 ptr [rpdisp]
        shufps          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_load_ps, callconv, xmmword, < >, < >, InPreal4_A:ptr xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movaps          xmm0,       xmmword ptr [rpdisp]
        ret
procend

procstart _uX_mm_loadr_ps, callconv, xmmword, < >, < >, InPreal4_A:ptr xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movaps          xmm0,       xmmword ptr [rpdisp]
        shufps          xmm0,           xmm0,           shuffler4(3,2,1,0)
        ret
procend

procstart _uX_mm_loadu_ps, callconv, xmmword, < >, < >, InPreal4_A:ptr xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movups          xmm0,       xmmword ptr [rpdisp]
        ret
procend

procstart _uX_mm_loadur_ps, callconv, xmmword, < >, < >, InPreal4_A:ptr xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movups          xmm0,       xmmword ptr [rpdisp]
        shufps          xmm0,           xmm0,           shuffler4(3,2,1,0)
        ret
procend

procstart _uX_mm_loadh_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InPreal4_B:ptr mmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPreal4_B
    else
        rpdisp textequ <rp1()>
    endif
        movhps          xmm0,           mmword ptr [rpdisp]
        ret
procend

procstart _uX_mm_loadl_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InPreal4_B:ptr mmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPreal4_B
    else
        rpdisp textequ <rp1()>
    endif
        movlps          xmm0,       mmword ptr [rpdisp]
        ret
procend

;******************
; FP, stores
;******************
procstart _uX_mm_store_ss, callconv, void, < >, < >, OutPreal4_A:ptr real4, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movss       real4 ptr [rpdisp],            xmm1
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_store_ps1, callconv, void, < >, < >, OutPreal4_A:ptr real4, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movaps          xmm0,           xmm1
        shufps          xmm0,           xmm0,           0
        movaps      xmmword ptr [rpdisp],          xmm0
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_storeu_ps1, callconv, void, < >, < >, OutPreal4_A:ptr real4, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movaps          xmm0,           xmm1
        shufps          xmm0,           xmm0,           0
        movups      xmmword ptr [rpdisp],          xmm1
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_store_ps, callconv, void, < >, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movaps      xmmword ptr [rpdisp],          xmm1
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_storeu_ps, callconv, void, < >, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movups      xmmword ptr [rpdisp],          xmm1
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_storer_ps, callconv, void, < >, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movaps          xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffler4(3,2,1,0)
        movaps      xmmword ptr [rpdisp],          xmm0
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_storeur_ps, callconv, void, < >, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movaps          xmm0,           xmm1
        shufps          xmm0,           xmm0,           shuffler4(3,2,1,0)
        movups      xmmword ptr [rpdisp],          xmm0
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_storeh_ps, callconv, void, < >, < >, OutPreal4_A:ptr mmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movhps      mmword ptr [rpdisp],           xmm1
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_storel_ps, callconv, void, < >, < >, OutPreal4_A:ptr mmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movlps      mmword ptr [rpdisp],           xmm1
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_store_mm_ps, callconv, void, < >, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPreal4_A
    else
        rpdisp textequ <rp0()>
    endif
        movaps      xmmword ptr [rpdisp],          xmm1
    ifdef __unix32__
        mov         OutPreal4_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_store_pfloat_ps, callconv, void, < >, < >, OutPxmmword_A:ptr xmmword, InPreal4_B:ptr xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        rpdisp1 textequ <edx>
        mov         rpdisp1,        InPreal4_B
        mov         rpdisp,        OutPxmmword_A
    else
        rpdisp textequ <rp0()>
        rpdisp1 textequ <rp1()>
    endif
        movaps          xmm1,           xmmword ptr [rpdisp1]
        movaps      xmmword ptr [rpdisp],          xmm1
    ifdef __unix32__
        mov         OutPxmmword_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_storeu_pfloat_ps, callconv, void, < >, < >, OutPxmmword_A:ptr xmmword, InPreal4_B:ptr xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        rpdisp1 textequ <edx>
        mov         rpdisp1,        InPreal4_B
        mov         rpdisp,        OutPxmmword_A
    else
        rpdisp textequ <rp0()>
        rpdisp1 textequ <rp1()>
    endif
        movups          xmm1,           xmmword ptr [rpdisp1]
        movups      xmmword ptr [rpdisp],          xmm1
    ifdef __unix32__
        mov         OutPxmmword_A,        rpdisp
    endif
        ret
procend

;******************
; FP, moves
;******************
procstart _uX_mm_move_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movaps          xmm0,           xmm0
        movss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_move_ps1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movaps          xmm0,           xmm0
        shufps          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_move_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movaps          xmm0,           xmm0
        ret
procend

procstart _uX_mm_mover_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movaps          xmm0,           xmm0
        shufps          xmm0,           xmm0,           shuffler4(3,2,1,0)
        ret
procend

procstart _uX_ptr_move_mm_ss, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movaps          xmm0,           xmm0
        movss           xmm0,           xmm1
        movaps      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_move_mm_ps1, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movaps          xmm0,           xmm0
        shufps          xmm0,           xmm0,           0
        movaps      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_move_mm_ps, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movaps          xmm0,           xmm0
        movaps      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_mover_mm_ps, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movaps          xmm0,           xmm0
        shufps          xmm0,           xmm0,           shuffler4(3,2,1,0)
        movaps      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu_mm_ss, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movaps          xmm0,           xmm0
        movss           xmm0,           xmm1
        movups      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu_mm_ps1, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movaps          xmm0,           xmm0
        shufps          xmm0,           xmm0,           0
        movups      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu_mm_ps, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movaps          xmm0,           xmm0
        movups      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveur_mm_ps, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movaps          xmm0,           xmm0
        shufps          xmm0,           xmm0,           shuffler4(3,2,1,0)
        movups      xmmword ptr [rret()],          xmm0
        ret
procend

;******************
; Cacheability support
;******************
procstart _uX_mm_prefetch_0, callconv, void, < >, < >, InPInt8_A:ptr byte
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPInt8_A
    else
        rpdisp textequ <rp0()>
    endif
        prefetchnta         byte ptr [rpdisp]
        ret
procend

procstart _uX_mm_prefetch_1, callconv, void, < >, < >, InPInt8_A:ptr byte
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPInt8_A
    else
        rpdisp textequ <rp0()>
    endif
        prefetcht0          byte ptr [rpdisp]
        ret
procend

procstart _uX_mm_prefetch_2, callconv, void, < >, < >, InPInt8_A:ptr byte
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPInt8_A
    else
        rpdisp textequ <rp0()>
    endif
        prefetcht1          byte ptr [rpdisp]
        ret
procend

procstart _uX_mm_prefetch_3, callconv, void, < >, < >, InPInt8_A:ptr byte
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        InPInt8_A
    else
        rpdisp textequ <rp0()>
    endif
        prefetcht2          byte ptr [rpdisp]
        ret
procend

procstart _uX_mm_prefetch, callconv, void, < >, < >, InPInt8_A:ptr byte, InInt_BSel:count_t
        push         rbase()
    ifdef __unix32__
        rpdisp textequ <ecx>
        rpdisp1 textequ <edx>
        bpdisp1 textequ <dl>
        mov         rpdisp,       InPInt8_A
        mov         rpdisp1,      InInt_BSel
    else
        rpdisp textequ <rp0()>
        rpdisp1 textequ <rp1()>
        bpdisp1 textequ <bp1()>
    endif
    .if((rpdisp1 < 0) || (rpdisp1 > 3))
        jmp         _m128prefetch_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bpdisp1
        jmp     dword ptr [_m128prefetchjmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128prefetchjmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbase()
    endif

        _m128prefetch_0 label size_t
        prefetchnta         byte ptr [rpdisp]
        jmp         _m128prefetch_end
        _m128prefetch_1 label size_t
        prefetcht0          byte ptr [rpdisp]
        jmp         _m128prefetch_end
        _m128prefetch_2 label size_t
        prefetcht1          byte ptr [rpdisp]
        jmp         _m128prefetch_end
        _m128prefetch_3 label size_t
        prefetcht2          byte ptr [rpdisp]
        jmp         _m128prefetch_end

        _m128prefetch_end:
        pop         rbase()
        ret
procend

ifdef __x32__
    alignmmfieldproc
procstart _uX_mm_stream_pi, callconv, void, < >, < >, OutPmm_A:ptr mmword, Inmm_B:mmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov         rpdisp,        OutPmm_A
    else
        rpdisp textequ <rp0()>
    endif
        movntq      mmword ptr [rpdisp],           mm1
    ifdef __unix32__
        mov         OutPmm_A,        rpdisp
    endif
        ret
procend
    alignxmmfieldproc
endif ;__x32__

procstart _uX_mm_stream_ps, callconv, void, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov        rpdisp,       OutPxmm_A
    else
        rpdisp textequ <rp0()>
    endif
        movntps         xmmword ptr [rpdisp],          xmm1
    ifdef __unix32__
        mov         OutPxmm_A,        rpdisp
    endif
        ret
procend

procstart _uX_mm_sfence, callconv, void, < >, < >, < >
        sfence
        ret
procend

procstart _uX_mm_getcsr, callconv, dword, < >, < >, < >
        stmxcsr         dword ptr [rret()]
        ret
procend

procstart _uX_mm_setcsr, callconv, void, < >, < >, InInt_A:dword
    ifdef __unix32__
        rpdisp textequ <ecx>
        mov        rpdisp,       InInt_A
    else
        rpdisp textequ <rp0()>
    endif
        ldmxcsr         dword ptr [rpdisp]
        ret
procend

endif ;__MIC__

end
