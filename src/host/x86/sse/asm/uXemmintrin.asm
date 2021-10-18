
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

alignxmmfieldproc

    m128_setepi8_hi1 xmmword ?
    m128_setepi8_hi0 xmmword ?
    m128_setrepi8_hi1 xmmword ?
    m128_setrepi8_hi0 xmmword ?

.data

.const

alignstackfieldproc

    _m128cvteltdbljmptable label size_t
    isize_t _m128cvteltdbl_0, _m128cvteltdbl_1

    _m128seteltpdjmptable label size_t
    isize_t _m128seteltpd_0, _m128seteltpd_1

externdef __m128i_i8_true:__m128b
externdef __m128i_i8_false:__m128b

externdef __m128i_i16_true:__m128w
externdef __m128i_i16_false:__m128w

externdef __m128i_i32_true:__m128i
externdef __m128i_i32_false:__m128i
externdef __m128i_i32_0:__m128i
externdef __m128i_i32_select0101:__m128i

externdef __m128i_i64_true:__m128q
externdef __m128i_i64_false:__m128q
externdef __m128i_i64_rolmax:__m128q

externdef __m128i_i64_0e_true:__m128q
externdef __m128i_i64_0e_false:__m128q

externdef __m128d_true:__m128q
externdef __m128d_false:__m128q
externdef __m128d_0:__m128d
externdef __m128d_1:__m128d
externdef __m128d_sign:__m128q

externdef __m128d_0e_true:__m128q
externdef __m128d_0e_false:__m128q
externdef __m128d_0e_0:__m128d
externdef __m128d_0e_1:__m128d
externdef __m128d_0e_sign:__m128q

externdef __uX_CPUFeatures_SSE41:dword
externdef __uX_CPUFeatures_FMA:dword

externdef __uX_CPUFeatures_SSE41:dword
externdef __uX_CPUFeatures_SSE42:dword

externdef __uX_CPUFeatures_XOP:dword

.code
    
;******************
; Externs
;******************
    ;extern _uX_CPUFeatures_is_inited:proc
    ;extern _uX_CPUFeatures_init:proc

    ;externdef callconv _uX_CPUFeatures_has_SSE41:proc
    ;externdef callconv _uX_CPUFeatures_has_SSE42:proc

    ;_uX_CPUFeatures_has_SSE41 proto callconv (dword)
    ;_uX_CPUFeatures_has_SSE42 proto callconv (dword)

callconvopt
alignxmmfieldproc

;******************
; DP, arithmetic
;******************
procstart _uX_mm_add_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        addsd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_add_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        addpd           xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_sub_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        subsd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sub_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        subpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_mul_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mulsd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_mul_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mulpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_div_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        divsd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_div_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        divpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_scale_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal8_B:real8
        mulsd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_scale_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal8_B:real8
        shufpd          xmm1,           xmm1,           0
        mulpd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_square_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mulsd          xmm0,           xmm0
        ret
procend

procstart _uX_mm_square_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mulpd          xmm0,           xmm0
        ret
procend

procstart _uX_mm_sqrt_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        sqrtsd          xmm0,           xmm0
        ret
procend

procstart _uX_mm_sqrt_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        sqrtpd          xmm0,           xmm0
        ret
procend

procstart _uX_mm_rcp_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_0e_1
        divsd           xmm1,           xmm0
        movapd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_rcp_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_1
        divpd           xmm1,           xmm0
        movapd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_rsqrt_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_0e_1
        sqrtsd          xmm0,           xmm0
        divsd           xmm1,           xmm0
        movapd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_rsqrt_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_1
        sqrtpd          xmm0,           xmm0
        divpd           xmm1,           xmm0
        movapd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_min_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        minsd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_min_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        minpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_max_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        maxsd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_max_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        maxpd           xmm0,           xmm1
        ret
procend

;******************
; DP, logicals
;******************
procstart _uX_mm_and_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        andpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_andnot_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        andnpd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_or_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        orpd            xmm0,           xmm1
        ret
procend

procstart _uX_mm_xor_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xorpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_not_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_true
        xorpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_negate_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_sign
        xorpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_and_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        andpd           xmm0,           xmm1
        movq           xmm0,           xmm0
        ret
procend

procstart _uX_mm_andnot_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        andnpd          xmm0,           xmm1
        movq           xmm0,           xmm0
        ret
procend

procstart _uX_mm_or_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        orpd            xmm0,           xmm1
        movq           xmm0,           xmm0
        ret
procend

procstart _uX_mm_xor_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xorpd           xmm0,           xmm1
        movq           xmm0,           xmm0
        ret
procend

procstart _uX_mm_not_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_0e_true
        xorpd           xmm0,           xmm1
        movq           xmm0,           xmm0
        ret
procend

procstart _uX_mm_negate_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_0e_sign
        xorpd           xmm0,           xmm1
        movq           xmm0,           xmm0
        ret
procend

procstart _uX_mm_iand_pd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        andpd           xmm0,           xmm1
        movmskpd        rp0(),        xmm0
        cmp             rp0(),        0x3
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_iandnot_pd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        andnpd          xmm0,           xmm1
        movmskpd        rp0(),        xmm0
        cmp             rp0(),        0x3
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_ior_pd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),       rret()
        orpd            xmm0,         xmm1
        movmskpd        rp0(),        xmm0
        cmp             rp0(),        0x0
        cmovne          rret(),       true
        ret
procend

procstart _uX_mm_inot_pd, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),       rret()
        movapd          xmm1,         __m128d_false
        cmppd           xmm0,         xmm1,           CMPP_EQ
        movmskpd        rp0(),        xmm0
        cmp             rp0(),        0x3
        cmove           rret(),       true
        ret
procend

procstart _uX_mm_iand_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),       rret()
        andpd           xmm0,         xmm1
        movmskpd        rp0(),        xmm0
        and             rp0(),        0x1
        cmp             rp0(),        0x1
        cmove           rret(),       true
        ret
procend

procstart _uX_mm_iandnot_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),       rret()
        andnpd          xmm0,         xmm1
        movmskpd        rp0(),        xmm0
        and             rp0(),        0x1
        cmp             rp0(),        0x1
        cmove           rret(),       true
        ret
procend

procstart _uX_mm_ior_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),       rret()
        orpd            xmm0,         xmm1
        movmskpd        rp0(),        xmm0
        and             rp0(),        0x1
        cmp             rp0(),        0x0
        cmovne          rret(),       true
        ret
procend

procstart _uX_mm_inot_sd, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),       rret()
        movapd          xmm1,         __m128d_0e_false
        cmpsd           xmm0,         xmm1,           CMPP_EQ
        movmskpd        rp0(),        xmm0
        and             rp0(),        0x1
        cmp             rp0(),        0x1
        cmove           rret(),       true
        ret
procend

procstart _uX_mm_ihand_pd, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        ;andps           xmm0,           xmm0
        movmskpd        rp0(),        xmm0
        cmp             rp0(),        0x3
        cmove           rret(),       true
        ret
procend

procstart _uX_mm_ihor_pd, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),       rret()
        ;orps            xmm0,           xmm0
        movmskpd        rp0(),        xmm0
        cmp             rp0(),        0x0
        cmovne          rret(),       true
        ret
procend

;******************
; DP, comparison
;******************
procstart _uX_mm_cmpeq_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_EQ
        ret
procend

procstart _uX_mm_cmpeq_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_EQ
        ret
procend

procstart _uX_mm_cmplt_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_LT
        ret
procend

procstart _uX_mm_cmplt_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_LT
        ret
procend

procstart _uX_mm_cmple_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_LE
        ret
procend

procstart _uX_mm_cmple_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_LE
        ret
procend

procstart _uX_mm_cmpgt_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_NLE
        ret
procend

procstart _uX_mm_cmpgt_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_NLE
        ret
procend

procstart _uX_mm_cmpge_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_NLT
        ret
procend

procstart _uX_mm_cmpge_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_NLT
        ret
procend

procstart _uX_mm_cmpneq_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_NEQ
        ret
procend

procstart _uX_mm_cmpneq_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_NEQ
        ret
procend

procstart _uX_mm_cmpnlt_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_NLT
        ret
procend

procstart _uX_mm_cmpnlt_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_NLT
        ret
procend

procstart _uX_mm_cmpnle_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_NLE
        ret
procend

procstart _uX_mm_cmpnle_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_NLE
        ret
procend

procstart _uX_mm_cmpngt_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_LE
        ret
procend

procstart _uX_mm_cmpngt_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_LE
        ret
procend

procstart _uX_mm_cmpnge_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_LT
        ret
procend

procstart _uX_mm_cmpnge_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_LT
        ret
procend

procstart _uX_mm_cmpord_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_ORD
        ret
procend

procstart _uX_mm_cmpord_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_ORD
        ret
procend

procstart _uX_mm_cmpunord_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmpsd           xmm0,           xmm1,           CMPP_UNORD
        ret
procend

procstart _uX_mm_cmpunord_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cmppd           xmm0,           xmm1,           CMPP_UNORD
        ret
procend

;******************
; DP, comparison return int
;******************
procstart _uX_mm_comieq_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmove           rret(),         true
        ret
procend

procstart _uX_mm_comilt_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmovb           rret(),         true
        ret
procend

procstart _uX_mm_comile_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmovbe          rret(),         true
        ret
procend

procstart _uX_mm_comigt_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmova           rret(),         true
        ret
procend

procstart _uX_mm_comige_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmovae          rret(),         true
        ret
procend

procstart _uX_mm_comineq_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmovne          rret(),         true
        ret
procend

procstart _uX_mm_cominlt_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmovnb          rret(),         true
        ret
procend

procstart _uX_mm_cominle_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmovnbe         rret(),         true
        ret
procend

procstart _uX_mm_comingt_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmovna          rret(),         true
        ret
procend

procstart _uX_mm_cominge_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        comisd          xmm0,           xmm1
        cmovnae         rret(),         true
        ret
procend

procstart _uX_mm_ucomieq_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmove           rret(),         true
        ret
procend

procstart _uX_mm_ucomilt_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmovb           rret(),         true
        ret
procend

procstart _uX_mm_ucomile_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmovbe          rret(),         true
        ret
procend

procstart _uX_mm_ucomigt_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmova           rret(),         true
        ret
procend

procstart _uX_mm_ucomige_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmovae          rret(),         true
        ret
procend

procstart _uX_mm_ucomineq_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmovne          rret(),         true
        ret
procend

procstart _uX_mm_ucominlt_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmovnb          rret(),         true
        ret
procend

procstart _uX_mm_ucominle_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmovnbe         rret(),         true
        ret
procend

procstart _uX_mm_ucomingt_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmovna          rret(),         true
        ret
procend

procstart _uX_mm_ucominge_sd, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),         rret()
        ucomisd         xmm0,           xmm1
        cmovnae         rret(),         true
        ret
procend

;******************
; DP, conversions
;******************
procstart _uX_mm_cvtepi32_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cvtdq2pd            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtpd_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cvtpd2dq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvttpd_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cvttpd2dq           xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepi32_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cvtdq2ps            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtps_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cvtps2dq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvttps_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cvttps2dq           xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtpd_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cvtpd2ps            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtps_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cvtps2pd            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtsd_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cvtsd2ss            xmm0,           xmm1
        ret
procend

procstart _uX_mm_cvtss_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        cvtss2sd            xmm0,           xmm1
        ret
procend

procstart _uX_mm_cvtsd_si32, callconv, dword, < >, < >, Inxmm_A:xmmword
        cvtsd2si            dret(),            xmm0
        ret
procend

procstart _uX_mm_cvttsd_si32, callconv, dword, < >, < >, Inxmm_A:xmmword
        cvttsd2si           dret(),            xmm0
        ret
procend

procstart _uX_mm_cvtsi32_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        cvtsi2sd            xmm0,           dp1()
        ret
procend

ifdef __x32__
;******************
; DP, conversions, Support for MMX extension intrinsics
;******************
procstart _uX_mm_cvtpd_pi32, callconv, mmword, < >, < >, Inxmm_A:xmmword
        cvtpd2pi            mm0,            xmm0
        ret
procend

procstart _uX_mm_cvttpd_pi32, callconv, mmword, < >, < >, Inxmm_A:xmmword
        cvttpd2pi           mm0,            xmm0
        ret
procend

procstart _uX_mm_cvtpi32_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inmm_A:mmword
        cvtpi2pd            xmm0,           mm1
        ret
procend
endif ;__x32__

ifdef __x64__
procstart _uX_mm_cvtsd_si64, callconv, qword, < >, < >, Inxmm_A:xmmword
        cvtsd2si            rret(),            xmm0
        ret
procend

procstart _uX_mm_cvttsd_si64, callconv, qword, < >, < >, Inxmm_A:xmmword
        cvttsd2si           rret(),            xmm0
        ret
procend

procstart _uX_mm_cvtsi64_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:qword
        cvtsi2sd            xmm0,           rp1()
        ret
procend
endif ;__x64__

procstart _uX_mm_cvtsd_dbl, callconv, real8, < >, < >, Inxmm_A:xmmword            
        movsd           xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvt0d_dbl, callconv, real8, < >, < >, Inxmm_A:xmmword            
        movsd           xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvt1d_dbl, callconv, real8, < >, < >, Inxmm_A:xmmword            
        shufpd          xmm0,           xmm0,           shuffler2(1,1)
        movsd           xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtpd_dbl, callconv, real8, < >, < >, Inxmm_A:xmmword, Inint_BSel:dword
        push         rbase()
        .if((rp1() < 0) || (rp1() > 1))
        jmp         _m128cvteltdbl_end
        .endif

        ifdef __x32__
        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [_m128cvteltdbljmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128cvteltdbljmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
        endif

        _m128cvteltdbl_0 label size_t
        movsd           xmm0,           xmm0
        jmp         _m128cvteltdbl_end
        _m128cvteltdbl_1 label size_t
        shufpd          xmm0,           xmm0,           shuffler2(1,1)
        movsd           xmm0,           xmm0
        ;jmp         _m128cvteltdbl_end

        _m128cvteltdbl_end:
        pop         rbase()
        ret
procend

;******************
; DP, Misc
;******************
procstart _uX_mm_unpackhi_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword            
        unpckhpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_unpacklo_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        unpcklpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_movemask_pd, callconv, dword, < >, < >, Inxmm_A:xmmword
        movmskpd            dret(),            xmm0
        ret
procend

;******************
; DP, sets
;******************
procstart _uX_mm_set_sd, callconv, xmmword, < >, < >, Inreal8_B:real8
        movsd           xmm0,           xmm0
        ret
procend

procstart _uX_mm_set_pd1, callconv, xmmword, < >, < >, Inreal8_B:real8
        shufpd          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_cvtdbl_0d, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal8_B:real8
        movsd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_cvtdbl_1d, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal8_B:real8
        shufpd          xmm0,           xmm0,           shuffler2(0,0)
        movsd           xmm0,           xmm1
        shufpd          xmm0,           xmm0,           shuffler2(1,0)
        ret
procend

procstart _uX_mm_cvtdbl_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inreal8_B:real8, Inint_BSel:dword
        push         rbase()
        .if((rp2() < 0) || (rp2() > 1))
        jmp         _m128seteltpd_end
        .endif

        ifdef __x32__
        movzx           rbase(),    byte ptr [rp2()]
        jmp     dword ptr [_m128seteltpdjmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128seteltpdjmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbx
        endif

        _m128seteltpd_0 label size_t
        movsd           xmm0,           xmm1
        jmp         _m128seteltpd_end
        _m128seteltpd_1 label size_t
        shufpd          xmm0,           xmm0,           shuffler2(0,0)
        movsd           xmm0,           xmm1
        shufpd          xmm0,           xmm0,           shuffler2(1,0)
        ;jmp         _m128seteltpd_end

        _m128seteltpd_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_set_pd, callconv, xmmword, < >, < >, Inreal8_B:real8, Inreal8_A:real8
        shufpd          xmm0,           xmm0,           shuffle2(0,0)
        movsd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_setr_pd, callconv, xmmword, < >, < >, Inreal8_A:real8, Inreal8_B:real8
        shufpd          xmm0,           xmm1,           shuffler2(0,0)
        ret
procend

procstart _uX_mm_setzero_pd, callconv, xmmword, < >, < >, < >
        xorpd           xmm0,           xmm0
        ret
procend

procstart _uX_mm_iszero_pd, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        movapd          xmm1,          __m128d_0
        cmppd           xmm0,          xmm1,           CMPP_EQ
        movmskpd        rp0(),        xmm0
        cmp             rp0(),        0x3
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_iszero_sd, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        movapd          xmm1,          __m128d_0e_0
        cmpsd           xmm0,          xmm1,           CMPP_EQ
        movmskpd        rp0(),        xmm0
        cmp             rp0(),        0x1
        cmove           rret(),        true
        ret
procend

;******************
; DP, loads
;******************
procstart _uX_mm_load_sd, callconv, xmmword, < >, < >, Inpreal8_A:ptr real8
        movsd           xmm0,       real8 ptr [rp0()]
        ret
procend

procstart _uX_mm_load_pd1, callconv, xmmword, < >, < >, Inpreal8_A:ptr real8
        movsd           xmm0,       real8 ptr [rp0()]
        shufpd          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_load_pd, callconv, xmmword, < >, < >, Inpreal8_A:ptr xmmword
        movapd          xmm0,       xmmword ptr [rp0()]
        ret
procend

procstart _uX_mm_loadr_pd, callconv, xmmword, < >, < >, Inpreal8_A:ptr xmmword
        movapd          xmm0,       xmmword ptr [rp0()]
        shufpd          xmm0,           xmm0,           shuffler2(1,0)
        ret
procend

procstart _uX_mm_loadu_pd, callconv, xmmword, < >, < >, Inpreal8_A:ptr xmmword
        movupd          xmm0,       xmmword ptr [rp0()]
        ret
procend

procstart _uX_mm_loadur_pd, callconv, xmmword, < >, < >, Inpreal8_A:ptr xmmword
        movupd          xmm0,       xmmword ptr [rp0()]
        shufpd          xmm0,           xmm0,           shuffler2(1,0)
        ret
procend

procstart _uX_mm_loadh_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inpreal8_A:ptr mmword
        movhpd          xmm0,       mmword ptr [rp1()]
        ret
procend

procstart _uX_mm_loadl_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inpreal8_A:ptr mmword
        movlpd          xmm0,       mmword ptr [rp1()]
        ret
procend

;******************
; DP, stores
;******************
procstart _uX_mm_store_sd, callconv, voidarg, < >, < >, OutPreal8_A:ptr real8, Inxmm_B:xmmword
        movsd       real8 ptr [rp0()],            xmm1
        ret
procend

procstart _uX_mm_store_pd1, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inxmm_B:xmmword
        movapd          xmm0,           xmm1
        shufpd          xmm0,           xmm0,           0
        movapd      xmmword ptr [rp0()],          xmm0
        ret
procend

procstart _uX_mm_storeu_pd1, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inxmm_B:xmmword
        movapd          xmm0,           xmm1
        shufpd          xmm0,           xmm0,           0
        movupd      xmmword ptr [rp0()],          xmm0
        ret
procend

procstart _uX_mm_store_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inxmm_B:xmmword
        movapd      xmmword ptr [rp0()],          xmm1
        ret
procend

procstart _uX_mm_storeu_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inxmm_B:xmmword
        movupd      xmmword ptr [rp0()],          xmm1
        ret
procend

procstart _uX_mm_storer_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inxmm_B:xmmword
        movapd          xmm0,           xmm1
        shufpd          xmm0,           xmm0,           shuffler2(1,0)
        movapd      xmmword ptr [rp0()],          xmm0
        ret
procend

procstart _uX_mm_storeur_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inxmm_B:xmmword
        movapd          xmm0,           xmm1
        shufpd          xmm0,           xmm0,           shuffler2(1,0)
        movupd      xmmword ptr [rp0()],          xmm0
        ret
procend

procstart _uX_mm_storeh_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr mmword, Inxmm_B:xmmword
        movhpd      mmword ptr [rp0()],           xmm1
        ret
procend

procstart _uX_mm_storel_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr mmword, Inxmm_B:xmmword
        movlpd      mmword ptr [rp0()],           xmm1
        ret
procend

procstart _uX_mm_store_mm_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inxmm_B:xmmword
        movapd      xmmword ptr [rp0()],          xmm1
        ret
procend

procstart _uX_mm_store_pdouble_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inpreal8_B:ptr xmmword
        movapd          xmm1,           xmmword ptr [rp1()]
        movapd      xmmword ptr [rp0()],          xmm1
        ret
procend

procstart _uX_mm_storeu_pdouble_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inpreal8_B:ptr xmmword
        movupd          xmm1,           xmmword ptr [rp1()]
        movupd      xmmword ptr [rp0()],          xmm1
        ret
procend

;******************
; DP, moves
;******************
procstart _uX_mm_move_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movsd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_move_pd1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_move_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm0,           xmm0
        ret
procend

procstart _uX_mm_mover_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           shuffler2(1,0)
        ret
procend

procstart _uX_ptr_move_mm_sd, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movsd           xmm0,           xmm1
        movapd      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_move_mm_pd1, callconv, ptr, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           0
        movapd      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_move_mm_pd, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movapd          xmm0,           xmm0
        movapd      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_mover_mm_pd, callconv, ptr, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           shuffler2(1,0)
        movapd      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu_mm_sd, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movsd           xmm0,           xmm1
        movupd      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu_mm_pd1, callconv, ptr, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           0
        movupd      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu_mm_pd, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movapd          xmm0,           xmm0
        movupd      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveur_mm_pd, callconv, ptr, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           shuffler2(1,0)
        movupd      xmmword ptr [rret()],          xmm0
        ret
procend

;******************
; Integer, arithmetic
;******************
procstart _uX_mm_add_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        paddb           xmm0,           xmm1
        ret
procend

procstart _uX_mm_add_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        paddw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_add_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        paddd           xmm0,           xmm1
        ret
procend

ifdef __x32__
    alignmmfieldproc

procstart _uX_mm_add_si64, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        paddq           mm0,            mm1
        ret
procend

    alignxmmfieldproc
endif ;__x32__

procstart _uX_mm_add_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        paddq           xmm0,           xmm1
        ret
procend

procstart _uX_mm_add_sepi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        paddq           xmm0,           xmm1
        movq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_adds_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        paddsb           xmm0,           xmm1
        ret
procend

procstart _uX_mm_adds_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        paddsw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_adds_epu8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        paddusb           xmm0,           xmm1
        ret
procend

procstart _uX_mm_adds_epu16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        paddusw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_avg_epu8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pavgb           xmm0,           xmm1
        ret
procend

procstart _uX_mm_avg_epu16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pavgw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_madd_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmaddwd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_max_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmaxsw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_max_epu8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmaxub           xmm0,           xmm1
        ret
procend

procstart _uX_mm_min_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pminsw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_min_epu8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pminub           xmm0,           xmm1
        ret
procend

procstart _uX_mm_mulhi_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmulhw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_mulhi_epu16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmulhuw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_mullo_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmullw           xmm0,           xmm1
        ret
procend

ifdef __x32__
    alignmmfieldproc

procstart _uX_mm_mul_su32, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        pmuludq           mm0,            mm1
        ret
procend

    alignxmmfieldproc
endif ;__x32__

procstart _uX_mm_mul_epu32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmuludq           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sad_epu8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psadbw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sub_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psubb           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sub_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psubw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sub_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psubd           xmm0,           xmm1
        ret
procend

ifdef __x32__
    alignmmfieldproc

procstart _uX_mm_sub_si64, callconv, mmword, < >, < >, Inmm_A:mmword, Inmm_B:mmword
        psubq           mm0,            mm1
        ret
procend

    alignxmmfieldproc
endif ;__x32__

procstart _uX_mm_sub_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psubq           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sub_sepi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psubq           xmm0,           xmm1
        movq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_subs_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psubsb           xmm0,           xmm1
        ret
procend

procstart _uX_mm_subs_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psubsw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_subs_epu8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psubusb           xmm0,           xmm1
        ret
procend

procstart _uX_mm_subs_epu16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        psubusw           xmm0,           xmm1
        ret
procend

;******************
; Integer, logicals
;******************
;******************
procstart _uX_mm_and_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pand           xmm0,           xmm1
        ret
procend

procstart _uX_mm_andnot_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pandn           xmm0,           xmm1
        ret
procend

procstart _uX_mm_or_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        por           xmm0,           xmm1
        ret
procend

procstart _uX_mm_xor_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pxor           xmm0,           xmm1
        ret
procend

procstart _uX_mm_and_sepi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pand           xmm0,           xmm1
        movq           xmm0,          xmm0
        ret
procend

procstart _uX_mm_andnot_sepi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pandn           xmm0,           xmm1
        movq           xmm0,          xmm0
        ret
procend

procstart _uX_mm_or_sepi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        por           xmm0,           xmm1
        movq           xmm0,          xmm0
        ret
procend

procstart _uX_mm_xor_sepi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pxor           xmm0,           xmm1
        movq           xmm0,          xmm0
        ret
procend

procstart _uX_mm_not_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           __m128i_i8_true
        pxor            xmm0,           xmm1
        ret
procend

procstart _uX_mm_not_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           __m128i_i16_true
        pxor            xmm0,           xmm1
        ret
procend

procstart _uX_mm_not_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           __m128i_i32_true
        pxor            xmm0,           xmm1
        ret
procend

procstart _uX_mm_not_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           __m128i_i64_true
        pxor            xmm0,           xmm1
        ret
procend

procstart _uX_mm_not_sepi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           __m128i_i64_0e_true
        pxor            xmm0,           xmm1
        movq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_negate_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           xmm0
        movdqa          xmm0,           __m128i_i8_false
        psubb           xmm0,           xmm1
        ret
procend

procstart _uX_mm_negate_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           xmm0
        movdqa          xmm0,           __m128i_i16_false
        psubw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_negate_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           xmm0
        movdqa          xmm0,           __m128i_i32_false
        psubd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_negate_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           xmm0
        movdqa          xmm0,           __m128i_i64_false
        psubq           xmm0,           xmm1
        ret
procend

procstart _uX_mm_negate_sepi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           xmm0
        movdqa          xmm0,           __m128i_i64_0e_false
        psubq           xmm0,           xmm1
        ret
procend

procstart _uX_mm_iand_si128, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        pand            xmm0,          xmm1
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0xffff
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_iandnot_si128, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        pandn           xmm0,          xmm1
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0xffff
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_ior_si128, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        por             xmm0,          xmm1
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0x0
        cmovne          rret(),        true
        ret
procend

procstart _uX_mm_iand_sepi64, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        pand            xmm0,          xmm1
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0xffff
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_iandnot_sepi64, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        pandn           xmm0,          xmm1
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0xffff
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_ior_sepi64, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor             rret(),        rret()
        por             xmm0,          xmm1
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0x0
        cmovne          rret(),        true
        ret
procend

procstart _uX_mm_inot_epi8, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        movdqa          xmm1,          __m128i_i8_false
        pcmpeqb         xmm0,          xmm1
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0xffff
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_inot_epi16, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        movdqa          xmm1,          __m128i_i16_false
        pcmpeqw         xmm0,          xmm1
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0xffff
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_inot_epi32, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        movdqa          xmm1,          __m128i_i32_false
        pcmpeqd         xmm0,          xmm1
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0xffff
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_inot_epi64, callconv, dword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           __m128i_i64_false
        .if(__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm1
        .else
        pcmpeqd         xmm0,           xmm1                                ;_mm_cmpeq_epi32(a,b);           // 32 bit compares
        pshufd          xmm2,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm2                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        mov             rret(),        false
        pmovmskb        rp0(),         xmm0
        cmp             rp0(),         0xffff
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_ihand_si128, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        ;pand            xmm0,           xmm0
        pmovmskb        rp0(),        xmm0
        cmp             rp0(),        0xffff
        cmove           rret(),        true
        ret
procend

procstart _uX_mm_ihor_si128, callconv, dword, < >, < >, Inxmm_A:xmmword
        xor             rret(),        rret()
        ;por             xmm0,           xmm0
        pmovmskb        rp0(),        xmm0
        cmp             rp0(),        0x0
        cmovne          rret(),        true
        ret
procend

;******************
; Integer, shifts
;******************
procstart _uX_mm_sll_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        psllw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sll_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        pslld           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sll_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        psllq           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sra_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        psraw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sra_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        psrad           xmm0,           xmm1
        ret
procend

procstart _uX_mm_sra_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        movdqa      xmm4,       xmm0
        movq       rp0(),       xmm1
        pshufd      xmm1,       xmm1,       shuffler4(2,3,0,1)
        pshufd      xmm4,       xmm4,       shuffler4(2,3,0,1)
        movq       rp1(),       xmm1
    .if(rp0() <= 32)
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp0()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .else
        movdqa      xmm1,       xmm0
        sub        rp0(),       32
        movd        xmm2,       rp0()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .endif
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
    .if(rp1() <= 32)
        movdqa      xmm1,       xmm4
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm4,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .else
        movdqa      xmm1,       xmm4
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm4,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm4,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .endif
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm4,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm4
        movdqa      xmm4,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm4,       xmm1
        por         xmm4,       xmm3
    .endif
        punpcklqdq  xmm0,       xmm4
        ret
procend

procstart _uX_mm_srl_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        psrlw           xmm0,           xmm1
        ret
procend

procstart _uX_mm_srl_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        psrld           xmm0,           xmm1
        ret
procend

procstart _uX_mm_srl_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        psrlq           xmm0,           xmm1
        ret
procend

procstart _uX_mm_rot_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B_Count:xmmword
        .if(__uX_CPUFeatures_XOP == true)
        vprotq          xmm0,           xmm1
        .else
        movdqa          xmm2,           xmm0
        movdqa          xmm3,           xmm1
        movdqa          xmm4,           __m128i_i64_rolmax
        pand            xmm3,           xmm4
        psllq           xmm0,           xmm3            ;__m128i left = _mm_sll_epi64(a, _mm_cvtsi32_si128(b & 0x3F));    // a << b
        movdqa          xmm5,           __m128i_i64_false
        psubq           xmm5,           xmm1
        pand            xmm5,           xmm4
        psrlq           xmm2,           xmm5            ;__m128i right = _mm_srl_epi64(a, _mm_cvtsi32_si128((-b) & 0x3F));// a >> (64 - b)
        por             xmm0,           xmm2            ;__m128i rot = _mm_or_si128(left, right);                         // or
        .endif
        ret
procend

procstart _uX_mm_roti_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Count:dword
        movq            xmm1,           rp1()
        punpcklqdq      xmm1,           xmm1        ;shuffle2(0,0)
        .if(__uX_CPUFeatures_XOP == true)
        vprotq          xmm0,           xmm1
        .else
        movdqa          xmm2,           xmm0
        movdqa          xmm3,           xmm1
        movdqa          xmm4,           __m128i_i64_rolmax
        pand            xmm3,           xmm4
        psllq           xmm0,           xmm3            ;__m128i left = _mm_sll_epi64(a, _mm_cvtsi32_si128(b & 0x3F));    // a << b
        movdqa          xmm5,           __m128i_i64_false
        psubq           xmm5,           xmm1
        pand            xmm5,           xmm4
        psrlq           xmm2,           xmm5            ;__m128i right = _mm_srl_epi64(a, _mm_cvtsi32_si128((-b) & 0x3F));// a >> (64 - b)
        por             xmm0,           xmm2            ;__m128i rot = _mm_or_si128(left, right);                         // or
        .endif
        ret
procend

;******************
; Integer, comparisons
;******************
;//byte//
procstart _uX_mm_cmpeq_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpeqb         xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmplt_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtb         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmple_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtb         xmm0,           xmm1
        movdqa          xmm2,           __m128i_i8_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpgt_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtb         xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmpge_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtb         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        movdqa          xmm2,           __m128i_i8_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpneq_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpeqb         xmm0,           xmm1
        movdqa          xmm2,           __m128i_i8_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnlt_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtb         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        movdqa          xmm2,           __m128i_i8_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnle_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtb         xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmpngt_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtb         xmm0,           xmm1
        movdqa          xmm2,           __m128i_i8_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnge_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtb         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        ret
procend

;//word//
procstart _uX_mm_cmpeq_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpeqw         xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmplt_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtw         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmple_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtw         xmm0,           xmm1
        movdqa          xmm2,           __m128i_i16_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpgt_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtw         xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmpge_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtw         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        movdqa          xmm2,           __m128i_i16_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpneq_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpeqw         xmm0,           xmm1
        movdqa          xmm2,           __m128i_i16_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnlt_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtw         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        movdqa          xmm2,           __m128i_i16_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnle_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtw         xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmpngt_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtw         xmm0,           xmm1
        movdqa          xmm2,           __m128i_i16_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnge_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtw         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        ret
procend

;//dword//
procstart _uX_mm_cmpeq_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpeqd         xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmplt_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtd         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmple_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtd         xmm0,           xmm1
        movdqa          xmm2,           __m128i_i32_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpgt_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtd         xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmpge_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtd         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        movdqa          xmm2,           __m128i_i32_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpneq_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpeqd         xmm0,           xmm1
        movdqa          xmm2,           __m128i_i32_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnlt_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtd         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        movdqa          xmm2,           __m128i_i32_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnle_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtd         xmm0,           xmm1
        ret
procend

procstart _uX_mm_cmpngt_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtd         xmm0,           xmm1
        movdqa          xmm2,           __m128i_i32_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnge_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pcmpgtd         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        ret
procend

;//qword//
procstart _uX_mm_cmpeq_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE41 == true)
        pcmpeqq             xmm0,           xmm1
        .else
        pcmpeqd             xmm0,           xmm1                                ;_mm_cmpeq_epi32(a,b);           // 32 bit compares
        pshufd              xmm2,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand                xmm0,           xmm2                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad               xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd              xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        ret
procend

procstart _uX_mm_cmplt_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE42 == true)
        pcmpgtq             xmm1,           xmm0
        movdqa              xmm0,           xmm1
        .else
        ;// no 64 compare instruction. Subtract
        movdqa           xmm2,           xmm0
        movdqa           xmm3,           xmm0
        movdqa           xmm4,           xmm0
        psubq            xmm2,           xmm1                                   ;__m128i s      = _mm_sub_epi64(a,b);                   // a-b
        pxor             xmm3,           xmm1                                   ;__m128i axb    = _mm_xor_si128(a,b);                   // a ^ b
        movdqa           xmm0,           xmm1
        pandn            xmm0,           xmm4                                   ;__m128i anb    = _mm_andnot_si128(b,a);                // a & ~b
        pandn            xmm3,           xmm2                                   ;__m128i snaxb  = _mm_andnot_si128(axb,s);              // s & ~(a ^ b)
        por              xmm0,           xmm3                                   ;__m128i or1    = _mm_or_si128(anb,snaxb);              // (a & ~b) | (s & ~(a ^ b))
        psrad            xmm0,           31                                     ;__m128i teste  = _mm_srai_epi32(or1,31);               // extend sign bit to 32 bits
        pshufd           xmm0,           xmm0,           shuffle4(3,3,1,1)      ;__m128i testee = _mm_shuffle_epi32(teste,0xF5);        // extend sign bit to 64 bits
        .endif
        ret
procend

procstart _uX_mm_cmple_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE42 == true)
        pcmpgtq             xmm0,           xmm1
        .else
        ;// no 64 compare instruction. Subtract
        movdqa           xmm2,           xmm1
        movdqa           xmm3,           xmm1
        psubq            xmm2,           xmm0                                   ;__m128i s      = _mm_sub_epi64(a,b);                   // a-b
        pxor             xmm3,           xmm0                                   ;__m128i axb    = _mm_xor_si128(a,b);                   // a ^ b
        pandn            xmm0,           xmm1                                   ;__m128i anb    = _mm_andnot_si128(b,a);                // a & ~b
        pandn            xmm3,           xmm2                                   ;__m128i snaxb  = _mm_andnot_si128(axb,s);              // s & ~(a ^ b)
        por              xmm0,           xmm3                                   ;__m128i or1    = _mm_or_si128(anb,snaxb);              // (a & ~b) | (s & ~(a ^ b))
        psrad            xmm0,           31                                     ;__m128i teste  = _mm_srai_epi32(or1,31);               // extend sign bit to 32 bits
        pshufd           xmm0,           xmm0,           shuffle4(3,3,1,1)      ;__m128i testee = _mm_shuffle_epi32(teste,0xF5);        // extend sign bit to 64 bits
        .endif
        movdqa           xmm2,           __m128i_i64_true
        pxor             xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpgt_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE42 == true)
        pcmpgtq             xmm0,           xmm1
        .else
        ;// no 64 compare instruction. Subtract
        movdqa           xmm2,           xmm1
        movdqa           xmm3,           xmm1
        psubq            xmm2,           xmm0                                   ;__m128i s      = _mm_sub_epi64(a,b);                   // a-b
        pxor             xmm3,           xmm0                                   ;__m128i axb    = _mm_xor_si128(a,b);                   // a ^ b
        pandn            xmm0,           xmm1                                   ;__m128i anb    = _mm_andnot_si128(b,a);                // a & ~b
        pandn            xmm3,           xmm2                                   ;__m128i snaxb  = _mm_andnot_si128(axb,s);              // s & ~(a ^ b)
        por              xmm0,           xmm3                                   ;__m128i or1    = _mm_or_si128(anb,snaxb);              // (a & ~b) | (s & ~(a ^ b))
        psrad            xmm0,           31                                     ;__m128i teste  = _mm_srai_epi32(or1,31);               // extend sign bit to 32 bits
        pshufd           xmm0,           xmm0,           shuffle4(3,3,1,1)      ;__m128i testee = _mm_shuffle_epi32(teste,0xF5);        // extend sign bit to 64 bits
        .endif
        ret
procend

procstart _uX_mm_cmpge_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE42 == true)
        pcmpgtq         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        .else
        ;// no 64 compare instruction. Subtract
        movdqa          xmm2,           xmm0
        movdqa          xmm3,           xmm0
        movdqa          xmm4,           xmm0
        psubq           xmm2,           xmm1           ;__m128i s      = _mm_sub_epi64(a,b);             // a-b
        pxor            xmm3,           xmm1           ;__m128i axb    = _mm_xor_si128(a,b);             // a ^ b
        movdqa          xmm0,           xmm1
        pandn           xmm0,           xmm4           ;__m128i anb    = _mm_andnot_si128(b,a);           // a & ~b
        pandn           xmm3,           xmm2           ;__m128i snaxb  = _mm_andnot_si128(axb,s);           // s & ~(a ^ b)
        por             xmm0,           xmm3           ;__m128i or1    = _mm_or_si128(anb,snaxb);           // (a & ~b) | (s & ~(a ^ b))
        psrad           xmm0,           31            ;__m128i teste  = _mm_srai_epi32(or1,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;__m128i testee = _mm_shuffle_epi32(teste,0xF5);        // extend sign bit to 64 bits
        .endif
        movdqa          xmm2,           __m128i_i64_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpneq_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm1
        .else
        pcmpeqd         xmm0,           xmm1                     ;_mm_cmpeq_epi32(a,b);           // 32 bit compares
        pshufd          xmm2,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm2                     ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                   ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        movdqa          xmm2,           __m128i_i64_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnlt_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE42 == true)
        pcmpgtq         xmm1,           xmm0
        movdqa          xmm0,           xmm1
        .else
        ;// no 64 compare instruction. Subtract
        movdqa          xmm2,           xmm0
        movdqa          xmm3,           xmm0
        movdqa          xmm4,           xmm0
        psubq           xmm2,           xmm1           ;__m128i s      = _mm_sub_epi64(a,b);             // a-b
        pxor            xmm3,           xmm1           ;__m128i axb    = _mm_xor_si128(a,b);             // a ^ b
        movdqa          xmm0,           xmm1
        pandn           xmm0,           xmm4           ;__m128i anb    = _mm_andnot_si128(b,a);           // a & ~b
        pandn           xmm3,           xmm2           ;__m128i snaxb  = _mm_andnot_si128(axb,s);           // s & ~(a ^ b)
        por             xmm0,           xmm3           ;__m128i or1    = _mm_or_si128(anb,snaxb);           // (a & ~b) | (s & ~(a ^ b))
        psrad           xmm0,           31            ;__m128i teste  = _mm_srai_epi32(or1,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;__m128i testee = _mm_shuffle_epi32(teste,0xF5);        // extend sign bit to 64 bits
        .endif
        movdqa          xmm2,           __m128i_i64_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnle_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE42 == true)
        pcmpgtq         xmm0,           xmm1
        .else
        ;// no 64 compare instruction. Subtract
        movdqa          xmm2,           xmm1
        movdqa          xmm3,           xmm1
        psubq           xmm2,           xmm0           ;__m128i s      = _mm_sub_epi64(a,b);             // a-b
        pxor            xmm3,           xmm0           ;__m128i axb    = _mm_xor_si128(a,b);             // a ^ b
        pandn           xmm0,           xmm1           ;__m128i anb    = _mm_andnot_si128(b,a);           // a & ~b
        pandn           xmm3,           xmm2           ;__m128i snaxb  = _mm_andnot_si128(axb,s);           // s & ~(a ^ b)
        por             xmm0,           xmm3           ;__m128i or1    = _mm_or_si128(anb,snaxb);           // (a & ~b) | (s & ~(a ^ b))
        psrad           xmm0,           31            ;__m128i teste  = _mm_srai_epi32(or1,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;__m128i testee = _mm_shuffle_epi32(teste,0xF5);        // extend sign bit to 64 bits
        .endif
        ret
procend

procstart _uX_mm_cmpngt_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE42 == true)
        pcmpgtq         xmm0,           xmm1
        .else
        ;// no 64 compare instruction. Subtract
        movdqa          xmm2,           xmm1
        movdqa          xmm3,           xmm1
        psubq           xmm2,           xmm0           ;__m128i s      = _mm_sub_epi64(a,b);             // a-b
        pxor            xmm3,           xmm0           ;__m128i axb    = _mm_xor_si128(a,b);             // a ^ b
        pandn           xmm0,           xmm1           ;__m128i anb    = _mm_andnot_si128(b,a);           // a & ~b
        pandn           xmm3,           xmm2           ;__m128i snaxb  = _mm_andnot_si128(axb,s);           // s & ~(a ^ b)
        por             xmm0,           xmm3           ;__m128i or1    = _mm_or_si128(anb,snaxb);           // (a & ~b) | (s & ~(a ^ b))
        psrad           xmm0,           31            ;__m128i teste  = _mm_srai_epi32(or1,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;__m128i testee = _mm_shuffle_epi32(teste,0xF5);        // extend sign bit to 64 bits
        .endif
        movdqa          xmm2,           __m128i_i64_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_cmpnge_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if(__uX_CPUFeatures_SSE42 == true)
        pcmpgtq          xmm1,           xmm0
        movdqa           xmm0,           xmm1
        .else
        ;// no 64 compare instruction. Subtract
        movdqa           xmm2,           xmm0
        movdqa           xmm3,           xmm0
        movdqa           xmm4,           xmm0
        psubq            xmm2,           xmm1           ;__m128i s      = _mm_sub_epi64(a,b);             // a-b
        pxor             xmm3,           xmm1           ;__m128i axb    = _mm_xor_si128(a,b);             // a ^ b
        movdqa           xmm0,           xmm1
        pandn            xmm0,           xmm4           ;__m128i anb    = _mm_andnot_si128(b,a);           // a & ~b
        pandn            xmm3,           xmm2           ;__m128i snaxb  = _mm_andnot_si128(axb,s);           // s & ~(a ^ b)
        por              xmm0,           xmm3           ;__m128i or1    = _mm_or_si128(anb,snaxb);           // (a & ~b) | (s & ~(a ^ b))
        psrad            xmm0,           31            ;__m128i teste  = _mm_srai_epi32(or1,31);           // extend sign bit to 32 bits
        pshufd           xmm0,           xmm0,           shuffle4(3,3,1,1)   ;__m128i testee = _mm_shuffle_epi32(teste,0xF5);        // extend sign bit to 64 bits
        .endif
        ret
procend

;******************
; Integer, converts
;******************
procstart _uX_mm_cvtsi32_si128, callconv, xmmword, < >, < >, Inint_A:dword
        movd            xmm0,           rp0()
        ret
procend

procstart _uX_mm_cvtsi128_si32, callconv, dword, < >, < >, Inxmm_A:xmmword
        movd            dret(),            xmm0
        ret
procend

ifdef __x64__
procstart _uX_mm_cvtsi64_si128, callconv, xmmword, < >, < >, Inint_A:qword
        movq            xmm0,           rp0()
        ret
procend

procstart _uX_mm_cvtsi128_si64, callconv, qword, < >, < >, Inxmm_A:xmmword
        movq            rret(),            xmm0
        ret
procend
endif

;******************
; Integer, misc
;******************
procstart _uX_mm_packs_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        packsswb        xmm0,           xmm1
        ret
procend

procstart _uX_mm_packs_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        packssdw        xmm0,           xmm1
        ret
procend

procstart _uX_mm_packus_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        packuswb        xmm0,           xmm1
        ret
procend

procstart _uX_mm_movemask_epi8, callconv, dword, < >, < >, Inxmm_A:xmmword
        pmovmskb        dret(),            xmm0
        ret
procend

procstart _uX_mm_unpackhi_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpckhbw       xmm0,           xmm1
        ret
procend

procstart _uX_mm_unpackhi_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpckhwd       xmm0,           xmm1
        ret
procend

procstart _uX_mm_unpackhi_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpckhdq       xmm0,           xmm1
        ret
procend

procstart _uX_mm_unpackhi_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpckhqdq      xmm0,           xmm1
        ret
procend

procstart _uX_mm_unpacklo_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpcklbw       xmm0,           xmm1
        ret
procend

procstart _uX_mm_unpacklo_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpcklwd       xmm0,           xmm1
        ret
procend

procstart _uX_mm_unpacklo_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpckldq       xmm0,           xmm1
        ret
procend

procstart _uX_mm_unpacklo_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpcklqdq      xmm0,           xmm1
        ret
procend

;******************
; Integer, loads
;******************
procstart _uX_mm_load1_epi64, callconv, xmmword, < >, < >, Inpqword_A:ptr qword
        movq            xmm0,       qword ptr [rp0()]
        pshufd          xmm0,           xmm0,           shuffler4(0,1,0,1)
        ret
procend

procstart _uX_mm_load1_epi32, callconv, xmmword, < >, < >, Inpdword_A:ptr dword
        movd            xmm0,       dword ptr [rp0()]
        pshufd          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_load_si128, callconv, xmmword, < >, < >, Inpxmm_A:ptr xmmword
        movdqa          xmm0,       xmmword ptr [rp0()]
        ret
procend

procstart _uX_mm_loadr_epi64, callconv, xmmword, < >, < >, Inpxmm_A:ptr xmmword
        movdqa          xmm0,       xmmword ptr [rp0()]
        pshufd          xmm0,           xmm0,           shuffler4(2,3,0,1)
        ret
procend

procstart _uX_mm_loadr_epi32, callconv, xmmword, < >, < >, Inpxmm_A:ptr xmmword
        movdqa          xmm0,       xmmword ptr [rp0()]
        pshufd          xmm0,           xmm0,           shuffler4(3,2,1,0)
        ret
procend

procstart _uX_mm_loadu_si128, callconv, xmmword, < >, < >, Inpxmm_A:ptr xmmword
        movdqu          xmm0,       xmmword ptr [rp0()]
        ret
procend

procstart _uX_mm_loadur_epi64, callconv, xmmword, < >, < >, Inpxmm_A:ptr xmmword
        movdqu          xmm0,       xmmword ptr [rp0()]
        pshufd          xmm0,           xmm0,           shuffler4(2,3,0,1)
        ret
procend

procstart _uX_mm_loadur_epi32, callconv, xmmword, < >, < >, Inpxmm_A:ptr xmmword
        movdqu          xmm0,       xmmword ptr [rp0()]
        pshufd          xmm0,           xmm0,           shuffler4(3,2,1,0)
        ret
procend

procstart _uX_mm_loadh_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inpint_B:ptr qword
        movq            xmm0,       qword ptr [rp1()]
        pshufd          xmm0,           xmm0,           shuffler4(2,3,0,1)
        ;punpcklqdq      xmm0,           xmm1            ;shuffle2(1,0)
        ret
procend

procstart _uX_mm_loadl_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inpint_B:ptr qword
        movq            xmm0,       qword ptr [rp1()]
        ;punpcklqdq      xmm1,           xmm0        ;shuffler2(0,1) (0:0,1|1:2,3)
        ;movdqa          xmm0,           xmm1
        ret
procend

procstart _uX_mm_loadh_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inpint_B:ptr dword
        movd            xmm0,       dword ptr [rp1()]
        pshufd          xmm0,           xmm0,           shuffler4(3,1,2,0)
        ;movdqa          xmm2,           xmm0
        ;pshufd          xmm2,           xmm2,           shuffler4(2,1,2,3)
        ;punpckldq       xmm2,           xmm1        ;shuffler4(2,3,2,3)
        ;punpcklqdq      xmm0,           xmm2        ;shuffler2(0,1) (0:0,1|1:2,3)
        ret
procend

procstart _uX_mm_loadl_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inpint_B:ptr dword
        movd            xmm0,       dword ptr [rp1()]         
        ;movdqa          xmm2,           xmm0
        ;pshufd          xmm2,           xmm2,           shuffler4(1,1,2,3)
        ;punpckldq       xmm1,           xmm2        ;shuffler4(0,1,0,1)
        ;punpcklqdq      xmm1,           xmm0        ;shuffler2(0,1) (0:0,1|1:2,3)
        ;movdqa          xmm0,           xmm1
        ret
procend

;******************
; Integer, sets
;******************
ifdef __x32__
procstart _uX_mm_set_pi64, callconv, xmmword, < >, < >, Inmm_Q1:mmword, Inmm_Q0:mmword
        movq            xmm3,           mm0
        movq            xmm2,           mm1
        punpcklqdq      xmm2,           xmm3            ;shuffle2(1,0)
        movdqa          xmm0,           xmm2
        ret
procend

procstart _uX_mm_setr_pi64, callconv, xmmword, < >, < >, Inmm_Q0:mmword, Inmm_Q1:mmword
        movq            xmm2,           mm0
        movq            xmm3,           mm1
        punpcklqdq      xmm2,           xmm3            ;shuffler2(0,1)
        movdqa          xmm0,           xmm2
        ret
procend

procstart _uX_mm_set1_pi64, callconv, xmmword, < >, < >, Inmm_Q:mmword
        movq            xmm1,           mm0
        punpcklqdq      xmm1,           xmm1        ;shuffle2(0,0)
        movdqa          xmm0,           xmm1
        ret
procend
endif ;__x32__

procstart _uX_mm_set_epi64, callconv, xmmword, < >, < >, Inxmm_Q1:xmmword, Inxmm_Q0:xmmword
        punpcklqdq      xmm1,           xmm0            ;shuffle2(1,0)
        movdqa          xmm0,           xmm1
        ret
procend

ifdef __x64__
procstart _uX_mm_set_epi64x, callconv, xmmword, < >, < >, Inint_Q1:qword, Inint_Q0:qword
        movq            xmm1,           rp0()
        movq            xmm0,           rp1()
        punpcklqdq      xmm0,           xmm1            ;shuffle2(1,0)
        ret
procend
endif

procstart _uX_mm_setr_epi64, callconv, xmmword, < >, < >, Inxmm_Q0:xmmword, Inxmm_Q1:xmmword
        punpcklqdq      xmm0,           xmm1            ;shuffler2(0,1)
        ret
procend

ifdef __x64__
procstart _uX_mm_setr_epi64x, callconv, xmmword, < >, < >, Inint_Q0:qword, Inint_Q1:qword
        movq            xmm0,           rp0()
        movq            xmm1,           rp1()
        punpcklqdq      xmm0,           xmm1            ;shuffler2(0,1)
        ret
procend
endif

procstart _uX_mm_set1_epi64, callconv, xmmword, < >, < >, Inxmm_Q:xmmword
        punpcklqdq      xmm0,           xmm0        ;shuffle2(0,0)
        ret
procend

ifdef __x64__
procstart _uX_mm_set1_epi64x, callconv, xmmword, < >, < >, Inint_Q:qword
        movq            xmm0,           rp0()
        punpcklqdq      xmm0,           xmm0        ;shuffle2(0,0)
        ret
procend
endif

procstart _uX_mm_set_epi32, callconv, xmmword, < >, < >, Inint_D3:dword, Inint_D2:dword, Inint_D1:dword, Inint_D0:dword
        movd            xmm3,           rp0()
        movd            xmm2,           rp1()
        movd            xmm1,           rp2()
        movd            xmm0,           rp3()
        punpckldq       xmm2,           xmm3        ;shuffle4(3,2,3,2)
        punpckldq       xmm0,           xmm1        ;shuffle4(1,0,1,0)
        punpcklqdq      xmm0,           xmm2        ;shuffle2(1,0) (1:3,2|0:1,0)
        ret
procend

procstart _uX_mm_setr_epi32, callconv, xmmword, < >, < >, Inint_D0:dword, Inint_D1:dword, Inint_D2:dword, Inint_D3:dword
        movd            xmm0,           rp0()
        movd            xmm1,           rp1()
        movd            xmm2,           rp2()
        movd            xmm3,           rp3()
        punpckldq       xmm2,           xmm3        ;shuffler4(2,3,2,3)
        punpckldq       xmm0,           xmm1        ;shuffler4(0,1,0,1)
        punpcklqdq      xmm0,           xmm2        ;shuffler2(0,1) (0:0,1|1:2,3)
        ret
procend

procstart _uX_mm_set1_epi32, callconv, xmmword, < >, < >, Inint_D:dword
        movd            xmm0,           rp0()
        pshufd          xmm0,           xmm0,           0
        ret
procend

ifdef __x64__
    ifdef __windows__
        xmmsetepi16uses textequ <uses xmm6 xmm7>
    else
        xmmsetepi16uses textequ < >
    endif
endif ;__x64__

procstart _uX_mm_set_epi16, callconv, xmmword, < >, xmmsetepi16uses, Inint_W7:word, Inint_W6:word, Inint_W5:word, Inint_W4:word, Inint_W3:word, Inint_W2:word, Inint_W1:word, Inint_W0:word
ifdef __x64__
    ifdef __windows__
        movd            xmm7,           rp0()
        movd            xmm6,           rp1()
        movd            xmm5,           rp2()
        movd            xmm4,           rp3()
        movd            xmm3,   dword ptr [rp4()+32]
        movd            xmm2,   dword ptr [rp5()+40]
        movd            xmm1,   dword ptr [rp6()+48]
        movd            xmm0,   dword ptr [rp7()+56]
    else
        movd            xmm7,           rp0()
        movd            xmm6,           rp1()
        movd            xmm5,           rp2()
        movd            xmm4,           rp3()
        movd            xmm3,           rp4()
        movd            xmm2,           rp5()
        movd            xmm1,   dword ptr [rp6()]   ;rsp+0
        movd            xmm0,   dword ptr [rp7()+8] ;rsp+8
    endif
endif ;__x64__
        punpcklwd       xmm6,           xmm7        ;shufflehi4(3,2,3,2)
        punpcklwd       xmm4,           xmm5        ;shufflehi4(1,0,1,0)
        punpcklwd       xmm2,           xmm3        ;shufflelo4(3,2,3,2)
        punpcklwd       xmm0,           xmm1        ;shufflelo4(1,0,1,0)
        punpckldq       xmm4,           xmm6        ;shuffle4(3,2,3,2)
        punpckldq       xmm0,           xmm2        ;shuffle4(1,0,1,0)
        punpcklqdq      xmm0,           xmm4        ;shuffle2(1,0) (1:3,2|0:1,0)
        ret
procend

ifdef __x64__
    ifdef __windows__
        xmmsetrepi16uses textequ <uses xmm6 xmm7>
    else
        xmmsetrepi16uses textequ < >
    endif
endif ;__x64__

procstart _uX_mm_setr_epi16, callconv, xmmword, < >, xmmsetrepi16uses, Inint_W0:word, Inint_W1:word, Inint_W2:word, Inint_W3:word, Inint_W4:word, Inint_W5:word, Inint_W6:word, Inint_W7:word
ifdef __x64__
    ifdef __windows__
        movd            xmm0,           rp0()
        movd            xmm1,           rp1()
        movd            xmm2,           rp2()
        movd            xmm3,           rp3()
        movd            xmm4,   dword ptr [rp4()+32]
        movd            xmm5,   dword ptr [rp5()+40]
        movd            xmm6,   dword ptr [rp6()+48]
        movd            xmm7,   dword ptr [rp7()+56]
    else
        movd            xmm0,           rp0()
        movd            xmm1,           rp1()
        movd            xmm2,           rp2()
        movd            xmm3,           rp3()
        movd            xmm4,           rp4()
        movd            xmm5,           rp5()
        movd            xmm6,   dword ptr [rp6()]   ;rsp+0
        movd            xmm7,   dword ptr [rp7()+8] ;rsp+8
    endif
endif ;__x64__
        punpcklwd       xmm6,           xmm7        ;shufflerhi4(2,3,2,3)
        punpcklwd       xmm4,           xmm5        ;shufflerhi4(0,1,0,1)
        punpcklwd       xmm2,           xmm3        ;shufflerlo4(2,3,2,3)
        punpcklwd       xmm0,           xmm1        ;shufflerlo4(0,1,0,1)
        punpckldq       xmm4,           xmm6        ;shuffler4(2,3,2,3)
        punpckldq       xmm0,           xmm2        ;shuffler4(0,1,0,1)
        punpcklqdq      xmm0,           xmm4        ;shuffler2(0,1) (0:0,1|1:2,3)
        ret
procend

procstart _uX_mm_set1_epi16, callconv, xmmword, < >, < >, Inint_D:word
        movd            xmm0,           rp0()
        punpcklwd       xmm0,           xmm0        ;shufflerlo4(0,1,0,1)
        punpckldq       xmm0,           xmm0        ;shuffler4(0,1,0,1)         
        punpcklqdq      xmm0,           xmm0        ;shuffler2(0,1) (0:0,1|1:2,3)
        ret
procend

ifdef __x64__
    ifdef __windows__
        xmmsetepi8uses textequ <uses xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15>
    else
        xmmsetepi8uses textequ <uses xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15>
    endif
endif ;__x64__

procstart _uX_mm_set_epi8, callconv, xmmword, < >, xmmsetepi8uses, Inint_W15:byte, Inint_W14:byte, Inint_W13:byte, Inint_W12:byte, Inint_W11:byte, Inint_W10:byte, Inint_W9:byte, Inint_W8:byte, Inint_W7:byte, Inint_W6:byte, Inint_W5:byte, Inint_W4:byte, Inint_W3:byte, Inint_W2:byte, Inint_W1:byte, Inint_W0:byte
ifdef __x64__
    ifdef __windows__
        movd            xmm15,          rp0()
        movd            xmm14,          rp1()
        movd            xmm13,          rp2()
        movd            xmm12,          rp3()
        movd            xmm11,  dword ptr [rp4()+32]
        movd            xmm10,  dword ptr [rp5()+40]
        movd            xmm9,   dword ptr [rp6()+48]
        movd            xmm8,   dword ptr [rp7()+56]
        movd            xmm7,   dword ptr [rp8()+64]
        movd            xmm6,   dword ptr [rp9()+72]
        movd            xmm5,   dword ptr [rp10()+80]
        movd            xmm4,   dword ptr [rp11()+88]
        movd            xmm3,   dword ptr [rp12()+96]
        movd            xmm2,   dword ptr [rp13()+104]
        movd            xmm1,   dword ptr [rp14()+112]
        movd            xmm0,   dword ptr [rp15()+120]
    else
        movd            xmm15,          rp0()
        movd            xmm14,          rp1()
        movd            xmm13,          rp2()
        movd            xmm12,          rp3()
        movd            xmm11,          rp4()
        movd            xmm10,          rp5()
        movd            xmm9,   dword ptr [rp6()]   ;rsp+0
        movd            xmm8,   dword ptr [rp7()+8] ;rsp+8
        movd            xmm7,   dword ptr [rp8()+16]
        movd            xmm6,   dword ptr [rp9()+24]
        movd            xmm5,   dword ptr [rp10()+32]
        movd            xmm4,   dword ptr [rp11()+40]
        movd            xmm3,   dword ptr [rp12()+48]
        movd            xmm2,   dword ptr [rp13()+56]
        movd            xmm1,   dword ptr [rp14()+64]
        movd            xmm0,   dword ptr [rp15()+72]
    endif
endif ;__x64__
        punpcklbw       xmm14,          xmm15       ;shufflehi4(3,2,3,2)
        punpcklbw       xmm12,          xmm13       ;shufflehi4(1,0,1,0)
        punpcklbw       xmm10,          xmm11       ;shufflelo4(3,2,3,2)
        punpcklbw       xmm8,           xmm9        ;shufflelo4(1,0,1,0)
        punpcklbw       xmm6,           xmm7        ;shufflehi4(3,2,3,2)
        punpcklbw       xmm4,           xmm5        ;shufflehi4(1,0,1,0)
        punpcklbw       xmm2,           xmm3        ;shufflelo4(3,2,3,2)
        punpcklbw       xmm0,           xmm1        ;shufflelo4(1,0,1,0)
        punpcklwd       xmm12,          xmm14       ;shufflehi4(3,2,3,2)
        punpcklwd       xmm8,           xmm10       ;shufflehi4(1,0,1,0)
        punpcklwd       xmm4,           xmm6        ;shufflelo4(3,2,3,2)
        punpcklwd       xmm0,           xmm2        ;shufflelo4(1,0,1,0)
        punpckldq       xmm8,           xmm12       ;shuffle4(3,2,3,2)
        punpckldq       xmm0,           xmm4        ;shuffle4(1,0,1,0)
        punpcklqdq      xmm0,           xmm8        ;shuffle2(1,0) (1:3,2|0:1,0)
        ret
procend

ifdef __x64__
    ifdef __windows__
        xmmsetrepi8uses textequ <uses xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15>
    else
        xmmsetrepi8uses textequ <uses xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15>
    endif
endif ;__x64__

procstart _uX_mm_setr_epi8, callconv, xmmword, < >, xmmsetrepi8uses, Inint_W0:byte, Inint_W1:byte, Inint_W2:byte, Inint_W3:byte, Inint_W4:byte, Inint_W5:byte, Inint_W6:byte, Inint_W7:byte, Inint_W8:byte, Inint_W9:byte, Inint_W10:byte, Inint_W11:byte, Inint_W12:byte, Inint_W13:byte, Inint_W14:byte, Inint_W15:byte
ifdef __x64__
    ifdef __windows__
        movd            xmm0,           rp0()
        movd            xmm1,           rp1()
        movd            xmm2,           rp2()
        movd            xmm3,           rp3()
        movd            xmm4,  dword ptr [rp4()+32]
        movd            xmm5,  dword ptr [rp5()+40]
        movd            xmm6,  dword ptr [rp6()+48]
        movd            xmm7,  dword ptr [rp7()+56]
        movd            xmm8,  dword ptr [rp8()+64]
        movd            xmm9,  dword ptr [rp9()+72]
        movd            xmm10, dword ptr [rp10()+80]
        movd            xmm11, dword ptr [rp11()+88]
        movd            xmm12, dword ptr [rp12()+96]
        movd            xmm13, dword ptr [rp13()+104]
        movd            xmm14, dword ptr [rp14()+112]
        movd            xmm15, dword ptr [rp15()+120]
    else
        movd            xmm0,           rp0()
        movd            xmm1,           rp1()
        movd            xmm2,           rp2()
        movd            xmm3,           rp3()
        movd            xmm4,           rp4()
        movd            xmm5,           rp5()
        movd            xmm6,   dword ptr [rp6()]   ;rsp+0
        movd            xmm7,   dword ptr [rp7()+8] ;rsp+8
        movd            xmm8,   dword ptr [rp8()+16]
        movd            xmm9,   dword ptr [rp9()+24]
        movd            xmm10,  dword ptr [rp10()+32]
        movd            xmm11,  dword ptr [rp11()+40]
        movd            xmm12,  dword ptr [rp12()+48]
        movd            xmm13,  dword ptr [rp13()+56]
        movd            xmm14,  dword ptr [rp14()+64]
        movd            xmm15,  dword ptr [rp15()+72]
    endif
endif ;__x64__
        punpcklbw       xmm14,          xmm15       ;shufflehi4(3,2,3,2)
        punpcklbw       xmm12,          xmm13       ;shufflehi4(1,0,1,0)
        punpcklbw       xmm10,          xmm11       ;shufflelo4(3,2,3,2)
        punpcklbw       xmm8,           xmm9        ;shufflelo4(1,0,1,0)
        punpcklbw       xmm6,           xmm7        ;shufflehi4(3,2,3,2)
        punpcklbw       xmm4,           xmm5        ;shufflehi4(1,0,1,0)
        punpcklbw       xmm2,           xmm3        ;shufflelo4(3,2,3,2)
        punpcklbw       xmm0,           xmm1        ;shufflelo4(1,0,1,0)
        punpcklwd       xmm12,          xmm14       ;shufflehi4(3,2,3,2)
        punpcklwd       xmm8,           xmm10       ;shufflehi4(1,0,1,0)
        punpcklwd       xmm4,           xmm6        ;shufflelo4(3,2,3,2)
        punpcklwd       xmm0,           xmm2        ;shufflelo4(1,0,1,0)
        punpckldq       xmm8,           xmm12       ;shuffle4(3,2,3,2)
        punpckldq       xmm0,           xmm4        ;shuffle4(1,0,1,0)
        punpcklqdq      xmm0,           xmm8        ;shuffle2(1,0) (1:3,2|0:1,0)
        ret
procend

procstart _uX_mm_set1_epi8, callconv, xmmword, < >, < >, Inint_D:byte
        movd            xmm0,           rp0()
        punpcklbw       xmm0,           xmm0        ;shufflelo4(1,0,1,0)            
        punpcklwd       xmm0,           xmm0        ;shufflehi4(1,0,1,0)            
        punpckldq       xmm0,           xmm0        ;shuffle4(1,0,1,0)          
        punpcklqdq      xmm0,           xmm0        ;shuffle2(1,0) (1:3,2|0:1,0)
        ret
procend

procstart _uX_mm_seth_epi64, callconv, xmmword, < >, < >, Inxmm_Q:xmmword
        movq            xmm0,           xmm0
        pshufd          xmm0,           xmm0,           shuffler4(2,3,0,1)
        ret
procend

ifdef __x64__
procstart _uX_mm_seth_epi64x, callconv, xmmword, < >, < >, Inint_Q:qword
        movq            xmm0,           rp0()
        pshufd          xmm0,           xmm0,           shuffler4(2,3,0,1)
        ret
procend
endif

procstart _uX_mm_setl_epi64, callconv, xmmword, < >, < >, Inxmm_Q:xmmword
        movq            xmm0,           xmm0
        ret
procend

ifdef __x64__
procstart _uX_mm_setl_epi64x, callconv, xmmword, < >, < >, Inint_Q:qword
        movq            xmm0,           rp0()
        ret
procend
endif

procstart _uX_mm_seth_epi32, callconv, xmmword, < >, < >, Inint_Q:dword
        movd            xmm1,           dp0()
        pshufd          xmm0,           xmm1,           shuffler4(3,1,2,0)
        ret
procend

procstart _uX_mm_setl_epi32, callconv, xmmword, < >, < >, Inint_Q:dword
        movd            xmm0,           dp0()
        ret
procend

procstart _uX_mm_setzero_si128, callconv, xmmword, < >, < >, < >
        pxor            xmm0,           xmm0
        ret
procend

;******************
; Integer, stores
;******************
procstart _uX_mm_store1_epi64, callconv, voidarg, < >, < >, OutPxmm_A:ptr qword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm1,           shuffler4(0,1,0,1)
        movq    qword ptr [rp0()],    xmm0
        ret
procend

procstart _uX_mm_store1_epi32, callconv, voidarg, < >, < >, OutPxmm_A:ptr dword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm1,           shuffler4(0,0,0,0)
        movd    dword ptr [rp0()],    xmm0
        ret
procend

procstart _uX_mm_store_si128, callconv, voidarg, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword
        movdqa  xmmword ptr [rp0()],  xmm1
        ret
procend

procstart _uX_mm_storer_epi64, callconv, voidarg, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm1,           shuffler4(2,3,0,1)
        movdqa  xmmword ptr [rp0()],  xmm0
        ret
procend

procstart _uX_mm_storer_epi32, callconv, voidarg, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm1,           shuffler4(3,2,1,0)
        movdqa  xmmword ptr [rp0()],  xmm0
        ret
procend

procstart _uX_mm_storeu_si128, callconv, voidarg, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword
        movdqu  xmmword ptr [rp0()],  xmm1
        ret
procend

procstart _uX_mm_storeur_epi64, callconv, voidarg, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm1,           shuffler4(2,3,0,1)
        movdqu  xmmword ptr [rp0()],  xmm0
        ret
procend

procstart _uX_mm_storeur_epi32, callconv, voidarg, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm1,           shuffler4(3,2,1,0)
        movdqu  xmmword ptr [rp0()],  xmm0
        ret
procend


procstart _uX_mm_storeh_epi64, callconv, voidarg, < >, < >, OutPxmm_A:ptr qword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm1,           shuffler4(2,3,2,3)
        movq    qword ptr [rp0()],    xmm0
        ret
procend

procstart _uX_mm_storel_epi64, callconv, voidarg, < >, < >, OutPxmm_A:ptr qword, Inxmm_B:xmmword
        movq    qword ptr [rp0()],    xmm1
        ret
procend

procstart _uX_mm_storeh_epi32, callconv, voidarg, < >, < >, OutPxmm_A:ptr dword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm1,           shuffler4(3,3,3,3)
        movd    dword ptr [rp0()],    xmm0
        ret
procend

procstart _uX_mm_storel_epi32, callconv, voidarg, < >, < >, OutPxmm_A:ptr dword, Inxmm_B:xmmword
        movd    dword ptr [rp0()],    xmm1
        ret
procend

procstart _uX_mm_maskmoveu_si128, callconv, voidarg, < >, < >, Inxmm_B:xmmword, Inxmm_N:xmmword, OutPint_P:ptr byte
        push            rdidx()
        mov             bdidx(),  byte ptr [rp2()]
        maskmovdqu      xmm0,           xmm1
        pop             rdidx()
        ret
procend

procstart _uX_mm_store_psi128, callconv, voidarg, < >, < >, OutPxmmword_A:ptr xmmword, Inpxmm_B:ptr xmmword
        movdqa          xmm1,           xmmword ptr [rp1()]
        movdqa      xmmword ptr [rp0()],          xmm1
        ret
procend

procstart _uX_mm_storeu_psi128, callconv, voidarg, < >, < >, OutPxmmword_A:ptr xmmword, Inpxmm_B:ptr xmmword
        movdqu          xmm1,           xmmword ptr [rp1()]
        movdqu      xmmword ptr [rp0()],          xmm1
        ret
procend

;******************
; Integer, moves
;******************
ifdef __x64__
procstart _uX_mm_move_epi64x, callconv, qword, < >, < >, Inxmm_A:xmmword
        movq            rret(),            xmm0
        ret
procend
endif

procstart _uX_mm_move_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_mover_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movq            xmm0,           xmm0
        pshufd          xmm0,           xmm0,           shuffler4(2,3,0,1)
        ret
procend

procstart _uX_mm_move_epi32x, callconv, dword, < >, < >, Inxmm_A:xmmword
        movd            dret(),            xmm0
        ret
procend

procstart _uX_mm_move_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movd            dret(),            xmm0
        movd            xmm0,           dret()
        ret
procend

procstart _uX_mm_mover_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movd            dret(),            xmm0
        movd            xmm0,           dret()
        pshufd          xmm0,           xmm0,           shuffler4(3,2,1,0)
        ret
procend

procstart _uX_mm_move1_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd          xmm0,           xmm0,           shuffler4(0,1,0,1)
        ret
procend

procstart _uX_mm_move1_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_move_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm0,           xmm0
        ret
procend

procstart _uX_mm_move_si128_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm0,           shuffler4(2,3,2,3)
        punpcklqdq      xmm1,           xmm0            ;shuffle2(1,0)
        movdqa          xmm0,           xmm1
        ret
procend

ifdef __x64__
procstart _uX_mm_move_si128_epi64x, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_D:qword
        movq            xmm1,           rp1()
        pshufd          xmm0,           xmm0,           shuffler4(2,3,2,3)
        punpcklqdq      xmm1,           xmm0            ;shuffle2(1,0)
        movdqa          xmm0,           xmm1
        ret
procend
endif

procstart _uX_mm_mover_si128_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pshufd          xmm1,           xmm1,           shuffler4(2,3,2,3)
        punpcklqdq      xmm0,           xmm1            ;shuffle2(1,0)
        ret
procend

ifdef __x64__
procstart _uX_mm_mover_si128_epi64x, callconv, xmmword, < >, < >, Inint_D:qword, Inxmm_B:xmmword
        pshufd          xmm1,           xmm1,           shuffler4(2,3,2,3)
        movq            xmm0,           rp0()
        punpcklqdq      xmm0,           xmm1            ;shuffle2(1,0)
        ret
procend
endif

procstart _uX_mm_move_si128_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pshufd          xmm0,           xmm0,           shuffler4(1,1,2,3)
        punpckldq       xmm1,           xmm0        ;shuffler4(0,0,1,1)
        pshufd          xmm0,           xmm0,           shuffler4(2,3,2,3)
        punpcklqdq      xmm1,           xmm0        ;shuffler2(0,0) (0:0,0|1:0,0)
        movdqa          xmm0,           xmm1
        ret
procend

procstart _uX_mm_move_si128_epi32x, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_D:dword
        pshufd          xmm0,           xmm0,           shuffler4(1,1,2,3)
        movd            xmm1,           dp1()
        punpckldq       xmm1,           xmm0        ;shuffler4(0,0,1,1)
        pshufd          xmm0,           xmm0,           shuffler4(2,3,2,3)
        punpcklqdq      xmm1,           xmm0        ;shuffler2(0,0) (0:0,0|1:0,0)
        movdqa          xmm0,           xmm1
        ret
procend

procstart _uX_mm_mover_si128_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pshufd          xmm1,           xmm1,           shuffler4(1,1,2,3)
        punpckldq       xmm0,           xmm1        ;shuffler4(0,0,1,1)
        pshufd          xmm1,           xmm1,           shuffler4(2,3,2,3)
        punpcklqdq      xmm0,           xmm1        ;shuffler2(0,0) (0:0,0|1:0,0)
        ret
procend

procstart _uX_mm_mover_si128_epi32x, callconv, xmmword, < >, < >, Inint_D:qword, Inxmm_B:xmmword
        pshufd          xmm1,           xmm1,           shuffler4(1,1,2,3)
        movd            xmm0,           dp0()
        punpckldq       xmm0,           xmm1        ;shuffler4(0,0,1,1)
        pshufd          xmm1,           xmm1,           shuffler4(2,3,2,3)
        punpcklqdq      xmm0,           xmm1        ;shuffler2(0,0) (0:0,0|1:0,0)
        ret
procend

ifdef __x32__
procstart _uX_mm_movpi64_epi64, callconv, xmmword, < >, < >, Inmm_A:mmword
        movq2dq         xmm0,           mm0
        ret
procend

procstart _uX_mm_movepi64_pi64, callconv, mmword, < >, < >, Inxmm_A:xmmword
        movdq2q         mm0,            xmm0
        ret
procend
endif ;__x32__

procstart _uX_ptr_move_mm_epi64, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movq            xmm2,           xmm1
        punpcklqdq      xmm2,           xmm0            ;shuffle2(1,0)
        movdqa      xmmword ptr [rret()],          xmm2
        ret
procend

procstart _uX_ptr_mover_mm_epi64, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpcklqdq      xmm0,           xmm1            ;shuffle2(1,0)
        movdqa      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_move1_mm_epi64, callconv, ptr, < >, < >, Inxmm_A:xmmword
        pshufd          xmm0,           xmm0,           shuffler4(0,1,0,1)
        movdqa      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu_mm_epi64, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movq            xmm2,           xmm1
        punpcklqdq      xmm2,           xmm0            ;shuffle2(1,0)
        movdqu      xmmword ptr [rret()],          xmm2
        ret
procend

procstart _uX_ptr_moveur_mm_epi64, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        punpcklqdq      xmm0,           xmm1            ;shuffle2(1,0)
        movdqu      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu1_mm_epi64, callconv, ptr, < >, < >, Inxmm_A:xmmword
        pshufd          xmm0,           xmm0,           shuffler4(0,1,0,1)
        movdqu      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_move_mm_epi32, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movq            xmm2,           xmm1
        movdqa          xmm3,           xmm0
        pshufd          xmm3,           xmm3,           shuffler4(1,1,2,3)
        punpckldq       xmm2,           xmm3        ;shuffler4(0,1,0,1)
        punpcklqdq      xmm2,           xmm0        ;shuffler2(0,1) (0:0,1|1:2,3)
        movdqa      xmmword ptr [rret()],          xmm2
        ret
procend

procstart _uX_ptr_mover_mm_epi32, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movdqa          xmm2,           xmm0
        pshufd          xmm2,           xmm2,           shuffler4(2,1,2,3)
        punpckldq       xmm2,           xmm1        ;shuffler4(2,3,2,3)
        punpcklqdq      xmm0,           xmm2        ;shuffler2(0,1) (0:0,1|1:2,3)
        movdqa      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_move1_mm_epi32, callconv, ptr, < >, < >, Inxmm_A:xmmword

        pshufd          xmm0,           xmm0,           0
        movdqa      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu_mm_epi32, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movq            xmm2,           xmm1
        movdqa          xmm3,           xmm0
        pshufd          xmm3,           xmm3,           shuffler4(1,1,2,3)
        punpckldq       xmm2,           xmm3        ;shuffler4(0,1,0,1)
        punpcklqdq      xmm2,           xmm0        ;shuffler2(0,1) (0:0,1|1:2,3)
        movdqu      xmmword ptr [rret()],          xmm2
        ret
procend

procstart _uX_ptr_moveur_mm_epi32, callconv, ptr, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movdqa          xmm2,           xmm0
        pshufd          xmm2,           xmm2,           shuffler4(2,1,2,3)
        punpckldq       xmm2,           xmm1        ;shuffler4(2,3,2,3)
        punpcklqdq      xmm0,           xmm2        ;shuffler2(0,1) (0:0,1|1:2,3)
        movdqu      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu1_mm_epi32, callconv, ptr, < >, < >, Inxmm_A:xmmword
        pshufd          xmm0,           xmm0,           0
        movdqu      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_move_mm_si128, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movdqa      xmmword ptr [rret()],          xmm0
        ret
procend

procstart _uX_ptr_moveu_mm_si128, callconv, ptr, < >, < >, Inxmm_A:xmmword
        movdqu      xmmword ptr [rret()],          xmm0
        ret
procend

;******************
; Cacheability support
;******************
procstart _uX_mm_stream_pd, callconv, voidarg, < >, < >, OutPreal8_A:ptr xmmword, Inxmm_B:xmmword
        movntpd     xmmword ptr [rp0()],          xmm1
        ret
procend

procstart _uX_mm_stream_si128, callconv, voidarg, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword
        movntdq     xmmword ptr [rp0()],          xmm1
        ret
procend

procstart _uX_mm_clflush, callconv, voidarg, < >, < >, Inpbyte:ptr byte
        clflush     byte ptr [rp0()]
        ret
procend

procstart _uX_mm_lfence, callconv, voidarg, < >, < >, < >
        lfence
        ret
procend

procstart _uX_mm_mfence, callconv, voidarg, < >, < >, < >
        mfence
        ret
procend

procstart _uX_mm_stream_si32, callconv, voidarg, < >, < >, OutPint:ptr dword, Inint:dword
        movnti      dword ptr [rp0()],            dp1()
        ret
procend

procstart _uX_mm_stream_si64, callconv, voidarg, < >, < >, OutPint:ptr qword, Inint:qword
        movnti      qword ptr [rp0()],            rp1()
        ret
procend

procstart _uX_mm_pause, callconv, voidarg, < >, < >, < >
        pause
        ret
procend

;******************
; Casting
;******************
procstart _uX_mm_castpd_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        ret
procend

procstart _uX_mm_castpd_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        ret
procend

procstart _uX_mm_castps_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        ret
procend

procstart _uX_mm_castps_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        ret
procend

procstart _uX_mm_castsi128_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        ret
procend

procstart _uX_mm_castsi128_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        ret
procend

;******************
; Undefined
;******************
procstart _uX_mm_undefined_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xorps           xmm0,           xmm0
        ret
procend

procstart _uX_mm_undefined_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xorpd           xmm0,           xmm0
        ret
procend

procstart _uX_mm_undefined_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pxor            xmm0,           xmm0
        ret
procend

endif ;__MIC__

end
