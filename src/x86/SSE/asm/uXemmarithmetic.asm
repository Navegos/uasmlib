
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

alignxmmfieldproc

    v4ci m128_sincostmpps_x1,                  __m128f, flt_false
    v4ci m128_sincostmpps_xa,                  __m128f, flt_false
    v4ci m128_sincostmpps_y,                   __m128f, flt_false
    v4ci m128_sincostmpps_q,                   __m128i, flt_false
    v4ci m128_sincostmpps_x2,                  __m128f, flt_false
    v4ci m128_sincostmpps_s,                   __m128f, flt_false
    v4ci m128_sincostmpps_c,                   __m128f, flt_false
    v4ci m128_sincostmpps_swap,                __m128f, flt_false
    v4ci m128_sincostmpps_overflow,            __m128f, flt_false
    v4ci m128_sincostmpps_sin1,                __m128f, flt_false
    v4ci m128_sincostmpps_cos1,                __m128f, flt_false

.const

    v2ci xmmword_190,                           __m128q, 0x4338000000000000
    v2ci xmmword_1A0,                           __m128q, 0x4000000000000000
    v2ci xmmword_180,                           __m128q, 0x4000000000000200
    v2ci xmmword_220,                           __m128q, 0x0

externdef __m128_true:__m128i
externdef __m128_false:__m128i
externdef __m128_sign:__m128i
externdef __m128_inf:__m128i
externdef __m128_fin:__m128i
externdef __m128_qnan:__m128i
externdef __m128_abs:__m128i
externdef __m128_2divpi:__m128f
externdef __m128_DP1F:__m128f
externdef __m128_DP2F:__m128f
externdef __m128_DP3F:__m128f
externdef __m128_P0sinf:__m128f
externdef __m128_P1sinf:__m128f
externdef __m128_P2sinf:__m128f
externdef __m128_P0cosf:__m128f
externdef __m128_P1cosf:__m128f
externdef __m128_P2cosf:__m128f
externdef __m128_0:__m128f
externdef __m128_0d5:__m128f
externdef __m128_1:__m128f

externdef __m128i_flt_bigoverflow:__m128i
externdef __m128i_flt_bytevtbl:__m128i

externdef __m128_0e_sign:__m128i
externdef __m128_0e_inf:__m128i
externdef __m128_0e_fin:__m128i
externdef __m128_0e_qnan:__m128i
externdef __m128_0e_abs:__m128i
externdef __m128_0e_1:__m128f
externdef __m128_0e_2divpi:__m128f
externdef __m128_0e_DP1F:__m128f
externdef __m128_0e_DP2F:__m128f
externdef __m128_0e_DP3F:__m128f
externdef __m128_0e_P0sinf:__m128f
externdef __m128_0e_P1sinf:__m128f
externdef __m128_0e_P2sinf:__m128f
externdef __m128_0e_P0cosf:__m128f
externdef __m128_0e_P1cosf:__m128f
externdef __m128_0e_P2cosf:__m128f
externdef __m128_0e_0:__m128f
externdef __m128_0e_0d5:__m128f
externdef __m128_0e_1:__m128f
    
externdef __m128i_flt_0e_bigoverflow:__m128i

externdef __m128d_true:__m128q
externdef __m128d_false:__m128q
externdef __m128d_sign:__m128q
externdef __m128d_inf:__m128q
externdef __m128d_fin:__m128q
externdef __m128d_qnan:__m128q
externdef __m128d_abs:__m128q
    
externdef __m128d_0e_true:__m128q
externdef __m128d_0e_false:__m128q
externdef __m128d_0e_sign:__m128q
externdef __m128d_0e_inf:__m128q
externdef __m128d_0e_fin:__m128q
externdef __m128d_0e_qnan:__m128q
externdef __m128d_0e_abs:__m128q

externdef __m128d_0:__m128d
externdef __m128d_1:__m128d

externdef __m128d_0e_0:__m128d
externdef __m128d_0e_1:__m128d

externdef __m128i_dbl_true:__m128q
externdef __m128i_dbl_false:__m128q
externdef __m128i_dbl_sign:__m128q
externdef __m128i_dbl_inf:__m128q
externdef __m128i_dbl_fin:__m128q
externdef __m128i_dbl_qnan:__m128q
externdef __m128i_dbl_abs:__m128q
    
externdef __m128i_dbl_0e_true:__m128q
externdef __m128i_dbl_0e_false:__m128q
externdef __m128i_dbl_0e_sign:__m128q
externdef __m128i_dbl_0e_inf:__m128q
externdef __m128i_dbl_0e_fin:__m128q
externdef __m128i_dbl_0e_qnan:__m128q
externdef __m128i_dbl_0e_abs:__m128q

externdef __m128i_dbl_0:__m128q
externdef __m128d_dbl_1:__m128q

externdef __m128d_dbl_0e_0:__m128q
externdef __m128d_dbl_0e_1:__m128q

externdef __m128i_dbl_maxi64:__m128q
    
externdef __m128i_i8_true:__m128b
externdef __m128i_i8_false:__m128b
externdef __m128i_flt_maxu8:__m128b

externdef __m128i_i16_true:__m128w
externdef __m128i_i16_false:__m128w

externdef __m128i_i32_true:__m128i
externdef __m128i_i32_false:__m128i
externdef __m128i_i32_0:__m128i
externdef __m128i_i32_1:__m128i
externdef __m128i_i32_2:__m128i
    
externdef __m128i_i32_0e_true:__m128i
externdef __m128i_i32_0e_false:__m128i
externdef __m128i_i32_0e_0:__m128i
externdef __m128i_i32_0e_1:__m128i
externdef __m128i_i32_0e_2:__m128i

externdef __m128i_i64_true:__m128q
externdef __m128i_i64_false:__m128q
externdef __m128i_i64_0:__m128q
externdef __m128i_i64_1:__m128q
externdef __m128i_i64_2:__m128q

externdef __m128i_i64_0e_true:__m128q
externdef __m128i_i64_0e_false:__m128q
externdef __m128i_i64_0e_0:__m128q
externdef __m128i_i64_0e_1:__m128q
externdef __m128i_i64_0e_2:__m128q

externdef __uX_CPUFeatures_SSE41:dword
externdef __uX_CPUFeatures_SSE42:dword
externdef __uX_CPUFeatures_FMA:dword
externdef __uX_CPUFeatures_AVX512VL:dword
externdef __uX_CPUFeatures_AVX512DQ_VL:dword

.code

;******************
; Externs
;******************

callconvopt
alignxmmfieldproc
    
;******************
; Integer Division
;******************

;.ERR <"TODO: Fix'me high pseudo">
procstart _uX_mm_div_epi8, callconv, xmmword, < >, <uses xmm11 xmm13 xmm14 xmm15>, Inxmm_A:xmmword, Inxmm_B:xmmword
        movdqa          xmm5,           xmm0
        movdqa          xmm14,          xmm1
        movdqa          xmm4,           xmm14
        movdqa          xmm0,           xmm14
        movdqa          xmm13,          xmm14
        pslld           xmm4,           18h
        pslld           xmm0,           10h
        pslld           xmm13,          8
        movdqa          xmm15,          xmm14
        psrad           xmm4,           18h
        psrad           xmm0,           18h
        psrad           xmm13,          18h
        psrad           xmm15,          18h
        cvtdq2ps        xmm4,           xmm4
        cvtdq2ps        xmm1,           xmm0
        cvtdq2ps        xmm2,           xmm13
        cvtdq2ps        xmm3,           xmm15
        rcpps           xmm4,           xmm4
        rcpps           xmm1,           xmm1
        rcpps           xmm15,          xmm2
        rcpps           xmm3,           xmm3
        movdqa          xmm0,           xmm5
        movdqa          xmm13,          xmm5
        movdqa          xmm11,          xmm5
        pslld           xmm0,           18h
        pslld           xmm13,          10h
        pslld           xmm11,          8
        psrad           xmm0,           18h
        psrad           xmm13,          18h
        psrad           xmm11,          18h
        psrad           xmm5,           18h
        movaps          xmm2,           __m128i_flt_bytevtbl
        cvtdq2ps        xmm0,           xmm0
        cvtdq2ps        xmm13,          xmm13
        cvtdq2ps        xmm11,          xmm11
        cvtdq2ps        xmm5,           xmm5
        mulps           xmm4,           xmm2
        mulps           xmm1,           xmm2
        mulps           xmm15,          xmm2
        mulps           xmm3,           xmm2
        mulps           xmm0,           xmm4
        mulps           xmm13,          xmm1
        mulps           xmm11,          xmm15
        mulps           xmm5,           xmm3
        movdqa          xmm4,           __m128i_i8_false
        pcmpeqb         xmm14,          xmm4
        pmovmskb        eax,            xmm14
        test            eax,            eax
        jz              short _B1_3
        _B1_2:
        mov             eax,            0
        div             al
        _B1_3:
        cvttps2dq       xmm13,          xmm13
        cvttps2dq       xmm0,           xmm0
        cvttps2dq       xmm11,          xmm11
        cvttps2dq       xmm5,           xmm5
        movdqa          xmm1,           __m128i_flt_maxu8
        pslld           xmm5,           18h
        pand            xmm13,          xmm1
        pand            xmm0,           xmm1
        pslld           xmm13,          8
        pand            xmm11,          xmm1
        por             xmm0,           xmm13
        pslld           xmm11,          10h
        por             xmm0,           xmm11
        por             xmm0,           xmm5
        ret
procend

procstart _uX_mm_div_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

ifdef __x64__
    ifdef __windows__
        xmmdivepi32uses textequ <uses xmm6 xmm7 xmm8 xmm9>
    else
        xmmdivepi32uses textequ <uses xmm8 xmm9>
    endif
endif ;__x64__

procstart _uX_mm_div_epi32, callconv, xmmword, < >, xmmdivepi32uses, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
;var_48= xmmword ptr -48h
;var_38= xmmword ptr -38h
;var_28= xmmword ptr -28h
;var_18= xmmword ptr -18h

;sub     rsp, 68h
;movaps  [rsp+68h+var_28], xmm6
        movdqa          xmm6,           xmm1
        movdqa          xmm1,           xmmword_190
        movdqa          xmm3,           xmm1
        pblendw         xmm3,           xmm6,       33h ; '3'
        subpd           xmm3,           xmm1
        cvtpd2ps        xmm2,           xmm3
        rcpps           xmm5,           xmm2
        pshufd          xmm4,           xmm6,       0B1h
        pblendw         xmm4,           xmm1,       0CCh
        subpd           xmm4,           xmm1
        cvtps2pd        xmm2,           xmm5
        cvtpd2ps        xmm5,           xmm4
;movaps  [rsp+68h+var_48], xmm8
        rcpps           xmm8,           xmm5
;movaps  [rsp+68h+var_18], xmm9
        movaps          xmm9,           xmm2
        mulpd           xmm9,           xmm3
        cvtps2pd        xmm5,           xmm8
;movaps  [rsp+68h+var_38], xmm7
        movaps          xmm7,           xmmword_1A0
        movaps          xmm8,           xmm7
        subpd           xmm8,           xmm9
        movaps          xmm9,           xmm5
        mulpd           xmm9,           xmm4
        mulpd           xmm2,           xmm8
        subpd           xmm7,           xmm9
        mulpd           xmm3,           xmm2
        mulpd           xmm5,           xmm7
        pshufd          xmm7,           xmm0,       0B1h
        movdqa          xmm8,           xmm1
        pblendw         xmm8,           xmm0,       33h ; '3'
        pblendw         xmm7,           xmm1,       0CCh
        subpd           xmm8,           xmm1
        subpd           xmm7,           xmm1
        mulpd           xmm4,           xmm5
        mulpd           xmm2,           xmm8
        mulpd           xmm5,           xmm7
        movaps          xmm0,           xmmword_180
        movaps          xmm1,           xmm0
        subpd           xmm1,           xmm3
        subpd           xmm0,           xmm4
        mulpd           xmm1,           xmm2
        mulpd           xmm0,           xmm5
        pcmpeqd         xmm6,           xmmword_220
        pmovmskb        eax,            xmm6
        test            eax,            eax
        jz      short _B1_3
        _B1_2:
        mov             eax,            0
        div             al
        _B1_3:
        movaps          xmm2,           xmmword_190
        roundpd         xmm0,           xmm0,       3
        roundpd         xmm1,           xmm1,       3
        addpd           xmm0,           xmm2
        addpd           xmm1,           xmm2
        pshufd          xmm0,           xmm0,       0B1h
;movaps  xmm6, [rsp+68h+var_28]
;movaps  xmm7, [rsp+68h+var_38]
;movaps  xmm8, [rsp+68h+var_48]
;movaps  xmm9, [rsp+68h+var_18]
        pblendw         xmm0,           xmm1,       33h ; '3'
;add     rsp, 68h
        .else
        .endif
        ret
procend

procstart _uX_mm_div_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movdqu  xmmword ptr [rp0()],    xmm0
        mov         rret(),     qword ptr [rp0()]
        movdqu  xmmword ptr [rp3()],    xmm1
        cqo
        idiv    qword ptr [rp3()]
        movq        xmm0,       rret()
        mov         rret(),     qword ptr [rp0()+8]
        cqo
        idiv    qword ptr [rp3()+8]
        movq        xmm2,       rret()
        unpcklpd    xmm0,       xmm2
        ret
procend

procstart _uX_mm_div_sepi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movdqu  xmmword ptr [rp0()],    xmm0
        mov         rret(),     qword ptr [rp0()]
        movdqu  xmmword ptr [rp3()],    xmm1
        cqo
        idiv    qword ptr [rp3()]
        movq        xmm0,       rret()
        ret
procend

procstart _uX_mm_div_epu8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

procstart _uX_mm_div_epu16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

procstart _uX_mm_div_epu32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

procstart _uX_mm_div_epu64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor     edx, edx
        movdqu  xmmword ptr [rp0()], xmm0
        movdqu  xmmword ptr [rp3()], xmm1
        mov     rret(), qword ptr [rp0()]
        div     qword ptr [rp3()]
        xor     edx,        edx
        movq    xmm0,       rret()
        mov          rret(), qword ptr [rp0()+8]
        div     qword ptr [rp3()+8]
        movq        xmm2,       rret()
        unpcklpd    xmm0,      xmm2
        ret
procend

procstart _uX_mm_div_sepu64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor     edx, edx
        movdqu  xmmword ptr [rp0()], xmm0
        movdqu  xmmword ptr [rp3()], xmm1
        mov     rret(), qword ptr [rp0()]
        div     qword ptr [rp3()]
        movq    xmm0,       rret()
        ret
procend

;******************
; FLT Arithmetic
;******************
procstart _uX_mm_signbit_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           31
        ret
procend

procstart _uX_mm_signbit_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movss           xmm1,           xmm0
        psrad           xmm1,           31
        movaps          xmm0,           xmm1
        ret
procend

procstart _uX_mm_signcombine_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movaps          xmm2,           __m128_sign
        andps           xmm1,           xmm2
        xorps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_signcombine_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movaps          xmm2,           __m128_0e_sign
        andps           xmm1,           xmm2
        xorps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_isfinite_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           1
        movdqa          xmm1,           __m128_fin
        pand            xmm0,           xmm1
        pcmpeqd         xmm0,           xmm1
        movdqa          xmm1,           __m128i_i32_true
        pxor            xmm0,           xmm1
        ret
procend

procstart _uX_mm_isfinite_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           1
        movdqa          xmm1,           __m128_0e_fin
        pand            xmm0,           xmm1
        pcmpeqd         xmm0,           xmm1
        movdqa          xmm1,           __m128i_i32_0e_true
        pxor            xmm0,           xmm1
        ret
procend

procstart _uX_mm_isinf_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           1
        movdqa          xmm1,           __m128_fin
        pcmpeqd         xmm0,           xmm1
        ret
procend

procstart _uX_mm_isinf_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           1
        movdqa          xmm1,           __m128_0e_fin
        pcmpeqd         xmm0,           xmm1
        ret
procend

procstart _uX_mm_isnan_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cmpps           xmm0,           xmm0,           CMPP_NEQ
        ret
procend

procstart _uX_mm_isnan_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cmpss           xmm0,           xmm0,           CMPP_NEQ
        ret
procend

procstart _uX_mm_issubnormal_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           1
        movdqa          xmm2,           xmm0
        movdqa          xmm1,           __m128_fin
        pand            xmm0,           xmm1
        pandn           xmm1,           xmm2
        movdqa          xmm3,           __m128i_i32_0
        pcmpeqd         xmm0,           xmm3
        pcmpeqd         xmm1,           xmm3
        movdqa          xmm3,           __m128i_i32_true
        pxor            xmm1,           xmm3
        pand            xmm0,           xmm1
        ret
procend

procstart _uX_mm_issubnormal_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           1
        movdqa          xmm2,           xmm0
        movdqa          xmm1,           __m128_0e_fin
        pand            xmm0,           xmm1
        pandn           xmm1,           xmm2
        movdqa          xmm3,           __m128i_i32_0e_0
        pcmpeqd         xmm0,           xmm3
        pcmpeqd         xmm1,           xmm3
        movdqa          xmm3,           __m128i_i32_0e_true
        pxor            xmm1,           xmm3
        pand            xmm0,           xmm1
        ret
procend

procstart _uX_mm_iszeroorsubnormal_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           __m128_inf
        pand            xmm0,           xmm1
        movdqa          xmm1,           __m128i_i32_0
        pcmpeqd         xmm0,           xmm1
        ret
procend

procstart _uX_mm_iszeroorsubnormal_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm1,           __m128_0e_inf
        pand            xmm0,           xmm1
        movdqa          xmm1,           __m128i_i32_0e_0
        pcmpeqd         xmm0,           xmm1
        ret
procend

procstart _uX_mm_infinite_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inf
        ret
procend

procstart _uX_mm_infinite_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inf
        ret
procend

procstart _uX_mm_nan_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_qnan
        ret
procend

procstart _uX_mm_nan_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_qnan
        ret
procend

procstart _uX_mm_abs_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           __m128_abs
        andps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_abs_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           __m128_0e_abs
        andps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_horizontaladd_ps, callconv, real4, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           xmm0
        movhlps         xmm1,           xmm1
        addps           xmm0,           xmm1
        movaps          xmm1,           xmm0
        shufps          xmm1,           xmm1,           shuffle4(0,0,0,1)
        addss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_horizontalsub_ps, callconv, real4, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           xmm0
        movhlps         xmm1,           xmm1
        subps           xmm0,           xmm1
        movaps          xmm1,           xmm0
        shufps          xmm1,           xmm1,           shuffle4(0,0,0,1)
        subss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_horizontalmul_ps, callconv, real4, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           xmm0
        movhlps         xmm1,           xmm1
        mulps           xmm0,           xmm1
        movaps          xmm1,           xmm0
        shufps          xmm1,           xmm1,           shuffle4(0,0,0,1)
        mulss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_horizontaldiv_ps, callconv, real4, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           xmm0
        movhlps         xmm1,           xmm1
        divps           xmm0,           xmm1
        movaps          xmm1,           xmm0
        shufps          xmm1,           xmm1,           shuffle4(0,0,0,1)
        divss           xmm0,           xmm1
        ret
procend

procstart _uX_mm_powtemplate_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_N:dword
        mov          rret(),          rp1()
        movaps       xmm1,           __m128_1
        movaps       xmm2,           xmm0
        .if(rret() >= 0)
            .while(rret() >= 0)
                .if(rret() and 1)
                    mulps          xmm1,          xmm2
                .endif
                shr          rret(),          1
                .if(rret() == 0)
                    movaps          xmm0,          xmm1
                    jmp             _uX_mm_powtemplatei_ps_end
                .endif
                mulps          xmm2,          xmm2
            .endw
        .else
            .if(rret() == flt_sign)
                movaps          xmm0,          __m128_qnan
                jmp            _uX_mm_powtemplatei_ps_end
            .endif
            divps           xmm1,          xmm2
            movaps          xmm0,          xmm1
        .endif
        _uX_mm_powtemplatei_ps_end:
        ret
procend

procstart _uX_mm_pown_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_N:dword
        push        rbase()
        push        rdidx()
        push        rsidx()
        mov         rret(),          rp1()
        .if(rret() == flt_sign)
            movaps        xmm0,        __m128_qnan
            jmp           _uX_mm_pown_ps_end
        .endif
        movaps       xmm1,        __m128_1
        movaps       xmm2,        xmm0
        .if(rret() < 0)
            divps        xmm1,        xmm2
            movaps       xmm0,        xmm1
            jmp          _uX_mm_pown_ps_end
        .endif
        .if(rret() == 0)
            movaps       xmm0,        xmm1
            jmp          _uX_mm_pown_ps_end
        .endif
        .if(rret() >= 256)
            .while(rret() >= 0)
                .if(rret() and 1)
                    mulps        xmm1,        xmm2
                .endif
                shr        rret(),        1
                .if(rret() == 0)
                    movaps        xmm0,        xmm1
                    jmp           _uX_mm_pown_ps_end
                .endif
                mulps        xmm2,        xmm2
            .endw
        .endif
        mov        rsidx(),        rret()
        mov        rdidx(),        rret()
        mov        rbase(),        rret()
        sub        rsidx(),        1
        and        rdidx(),        rsidx()
        sub        rbase(),        rdidx()
        .if(rret() and 1)
            movaps        xmm3,        xmm2
        .endif
        .if(rret() < 2)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret() and 2)
            .if(rret() == 2)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 4)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret() and 4)
            .if(rret() == 4)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 8)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret() and 8)
            .if(rret() == 8)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 16)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret() and 16)
            .if(rret() == 16)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 32)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret() and 64)
            .if(rret() == 64)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 128)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret() and 128)
            .if(rret() == 128)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        movaps        xmm0,        xmm3
        _uX_mm_pown_ps_end:
        pop        rsidx()
        pop        rsidx()
        pop        rbase()
        ret
procend

procstart _uX_mm_powtemplate_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_N:dword
            mov          rret(),          rp1()
            movaps       xmm1,           __m128_0e_1
            movss        xmm2,           xmm0
        .if(rret() >= 0)
            .while(rret() >= 0)
                .if(rret() and 1)
                    mulss          xmm1,          xmm2
                .endif
                shr          rret(),          1
                .if(rret() == 0)
                    movss           xmm0,          xmm1
                    jmp             _uX_mm_powtemplatei_ss_end
                .endif
                mulss          xmm2,          xmm2
            .endw
        .else
            .if(rret() == flt_sign)
                movaps          xmm0,          __m128_0e_qnan
                jmp            _uX_mm_powtemplatei_ss_end
            .endif
            divss           xmm1,          xmm2
            movss           xmm0,          xmm1
        .endif
        _uX_mm_powtemplatei_ss_end:
        ret
procend

procstart _uX_mm_pown_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_N:dword
        push        rbase()
        push        rdidx()
        push        rsidx()
        mov         rret(),          rp1()
        .if(rret() == flt_sign)
            movaps        xmm0,        __m128_0e_qnan
            jmp           _uX_mm_pown_ss_end
        .endif
        movaps       xmm1,        __m128_0e_1
        movss        xmm2,        xmm0
        .if(rret() < 0)
            divss        xmm1,        xmm2
            movss        xmm0,        xmm1
            jmp          _uX_mm_pown_ss_end
        .endif
        .if(rret() == 0)
            movss        xmm0,        xmm1
            jmp          _uX_mm_pown_ss_end
        .endif
        .if(rret() >= 256)
            .while(rret() >= 0)
                .if(rret() and 1)
                    mulss        xmm1,        xmm2
                .endif
                shr        rret(),        1
                .if(rret() == 0)
                    movss         xmm0,        xmm1
                    jmp           _uX_mm_pown_ss_end
                .endif
                mulss        xmm2,        xmm2
            .endw
        .endif
        mov        rsidx(),        rret()
        mov        rdidx(),        rret()
        mov        rbase(),        rret()
        sub        rsidx(),        1
        and        rdidx(),        rsidx()
        sub        rbase(),        rdidx()
        .if(rret() and 1)
            movss         xmm3,        xmm2
        .endif
        .if(rret() < 2)
            movss         xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret() and 2)
            .if(rret() == 2)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 4)
            movss         xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret() and 4)
            .if(rret() == 4)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 8)
            movss        xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret() and 8)
            .if(rret() == 8)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 16)
            movss        xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret() and 16)
            .if(rret() == 16)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 32)
            movss         xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret() and 64)
            .if(rret() == 64)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret() < 128)
            movss         xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret() and 128)
            .if(rret() == 128)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        movss         xmm0,        xmm3
        _uX_mm_pown_ss_end:
        pop        rsidx()
        pop        rsidx()
        pop        rbase()
        ret
procend

procstart _uX_mm_svml_round_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        roundps         xmm0,           xmm0,        8
        .else
        movaps          xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movaps          xmm0,           xmm3
        movaps          xmm4,           __m128_sign
        cmpps           xmm0,           xmm4,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        ret
procend

procstart _uX_mm_svml_floor_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        roundps         xmm0,           xmm0,        9
        .else
        movaps          xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movaps          xmm0,           xmm3
        movaps          xmm4,           __m128_sign
        cmpps           xmm0,           xmm4,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movaps          xmm3,           xmm0
        movaps          xmm4,           __m128_1
        cmpps           xmm3,           xmm2,           CMPP_NLE
        andps           xmm4,           xmm3
        subps           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_svml_ceil_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        roundps         xmm0,           xmm0,        10
        .else
        movaps          xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movaps          xmm0,           xmm3
        movaps          xmm4,           __m128_sign
        cmpps           xmm0,           xmm4,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movaps          xmm3,           xmm0
        movaps          xmm4,           __m128_1
        cmpps           xmm3,           xmm2,           CMPP_LT
        andps           xmm4,           xmm3
        addps           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_svml_trunc_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        roundps         xmm0,           xmm0,        11
        .else
        movaps          xmm2,           xmm0
        cvttps2dq       xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movaps          xmm0,           xmm3
        movaps          xmm4,           __m128_sign
        cmpps           xmm0,           xmm4,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        ret
procend

procstart _uX_mm_svml_round_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        roundss         xmm0,           xmm0,        8
        .else
        movss           xmm0,           xmm0
        movss           xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movss           xmm0,           xmm0
        .endif
        ret
procend

procstart _uX_mm_svml_floor_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        roundss         xmm0,           xmm0,        9
        .else
        movss           xmm0,           xmm0
        movss           xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movss           xmm3,           xmm0
        movaps          xmm4,           __m128_0e_1
        cmpss           xmm3,           xmm2,           CMPP_NLE
        andps           xmm4,           xmm3
        subss           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_svml_ceil_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        roundss         xmm0,           xmm0,        10
        .else
        movss           xmm0,           xmm0
        movss           xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movss           xmm3,           xmm0
        movaps          xmm4,           __m128_0e_1
        cmpss           xmm3,           xmm2,           CMPP_LT
        andps           xmm4,           xmm3
        addss           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_svml_trunc_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        roundss         xmm0,           xmm0,        11
        .else
        movss           xmm0,           xmm0
        movss           xmm2,           xmm0
        cvttps2dq       xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movss           xmm0,           xmm0
        .endif
        ret
procend

procstart _uX_mm_madd_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        vfmadd213ps     xmm0,           xmm1,           xmm2
        .else
        mulps           xmm0,           xmm1
        addps           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_msub_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        vfmsub213ps     xmm0,           xmm1,           xmm2
        .else
        mulps           xmm0,           xmm1
        subps           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_nmadd_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        vfnmadd213ps    xmm0,           xmm1,           xmm2
        .else
        mulps           xmm0,           xmm1
        movaps          xmm3,           __m128_sign
        xorps           xmm0,           xmm3
        addps           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_nmsub_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        vfnmsub213ps    xmm0,           xmm1,           xmm2
        .else
        mulps           xmm0,           xmm1
        movaps          xmm3,           __m128_sign
        xorps           xmm0,           xmm3
        subps           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_madd_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        vfmadd213ss     xmm0,           xmm1,           xmm2
        .else
        mulss           xmm0,           xmm1
        addss           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_msub_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        vfmsub213ss     xmm0,           xmm1,           xmm2
        .else
        mulss           xmm0,           xmm1
        subss           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_nmadd_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        vfnmadd213ss    xmm0,           xmm1,           xmm2
        .else
        mulss           xmm0,           xmm1
        movaps          xmm3,           __m128_0e_sign
        xorps           xmm0,           xmm3
        addss           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_nmsub_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        vfnmsub213ss    xmm0,           xmm1,           xmm2
        .else
        mulss           xmm0,           xmm1
        movaps          xmm3,           __m128_0e_sign
        xorps           xmm0,           xmm3
        subss           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_polynomial2_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword, Inxmm_D:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        movaps          xmm4,           xmm0
        mulps           xmm0,           xmm0
        vfmadd213ps     xmm4,           xmm2,           xmm1
        vfmadd213ps     xmm0,           xmm3,           xmm4
        .else
        movaps          xmm4,           xmm0
        mulps           xmm0,           xmm0
        mulps           xmm4,           xmm2
        addps           xmm4,           xmm1
        mulps           xmm0,           xmm3
        addps           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_polynomial2_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword, Inxmm_D:xmmword
        .if (__uX_CPUFeatures_FMA == true)
        movss           xmm4,           xmm0
        mulss           xmm0,           xmm0
        vfmadd213ss     xmm4,           xmm2,           xmm1
        vfmadd213ss     xmm0,           xmm3,           xmm4
        .else
        movss           xmm4,           xmm0
        mulss           xmm0,           xmm0
        mulss           xmm4,           xmm2
        addss           xmm4,           xmm1
        mulss           xmm0,           xmm3
        addss           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_sincostemplate_ps, callconv, xmmword, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword, Intint_SC:dword
        movaps    m128_sincostmpps_x1,  xmm1
        movaps          xmm0,           xmm1
        movaps          xmm4,           __m128_abs
        andps           xmm0,           xmm4
        movaps    m128_sincostmpps_xa,  xmm0                ; xa
        ;// Find quadrant
        movaps          xmm4,           __m128_2divpi
        mulps           xmm0,           xmm4                ; // quadrant, as float
        .if (__uX_CPUFeatures_SSE41 == true)
        roundps         xmm0,           xmm0,        8
        .else
        movaps          xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                ; convert to integer
        cvtdq2ps        xmm1,           xmm3                ; convert back to float
        movaps          xmm0,           xmm3
        movaps          xmm4,           __m128_sign
        cmpps           xmm0,           xmm4,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_y,    xmm0            ;    y
        cvtps2dq        xmm1,           xmm0
        movdqa   m128_sincostmpps_q,    xmm1            ;    q
        ;// Reduce by extended precision modular arithmetic
        ;// x = ((xa - y * DP1F) - y * DP2F) - y * DP3F;
        movaps          xmm1,           m128_sincostmpps_y
        movaps          xmm0,           m128_sincostmpps_xa
        .if (__uX_CPUFeatures_FMA == true)
        movaps          xmm4,           __m128_DP1F
        vfmsub231ps     xmm0,           xmm1,           xmm4
        movaps          xmm1,           m128_sincostmpps_y
        movaps          xmm4,           __m128_DP2F
        vfmsub231ps     xmm0,           xmm1,           xmm4
        movaps          xmm0,           m128_sincostmpps_y
        movaps          xmm4,           __m128_DP3F
        vfmsub231ps     xmm0,           xmm1,           xmm4
        .else
        movaps          xmm4,           __m128_DP1F
        mulps           xmm1,           xmm4
        subps           xmm0,           xmm1
        movaps          xmm1,           m128_sincostmpps_y
        movaps          xmm4,           __m128_DP2F
        mulps           xmm1,           xmm4
        subps           xmm0,           xmm1
        movaps          xmm0,           m128_sincostmpps_y
        movaps          xmm4,           __m128_DP3F
        mulps           xmm1,           xmm4
        subps           xmm0,           xmm1
        .endif
        movaps          xmm3,           xmm0            ;    x
        ;// Taylor expansion of sin and cos, valid for -pi/4 <= x <= pi/4
        mulps           xmm0,           xmm0
        movaps  m128_sincostmpps_x2,    xmm0            ;    x2
        movaps          xmm2,           m128_sincostmpps_x2            ;    x2
        movaps          xmm1,           xmm0
        mulps           xmm1,           xmm1
        mulps           xmm2,           xmm3
        .if (__uX_CPUFeatures_FMA == true)
        movaps          xmm4,           __m128_P1sinf
        movaps          xmm5,           __m128_P0sinf
        movaps          xmm6,           __m128_P2sinf
        vfmadd213ps     xmm0,           xmm4,           xmm5
        vfmadd231ps     xmm0,           xmm1,           xmm6
        vfmadd213ps     xmm0,           xmm2,           xmm3
        .else
        movaps          xmm4,           __m128_P1sinf
        movaps          xmm5,           __m128_P0sinf
        movaps          xmm6,           __m128_P2sinf
        mulps           xmm0,           xmm4
        addps           xmm0,           xmm5
        mulps           xmm1,           xmm6
        addps           xmm0,           xmm1
        mulps           xmm0,           xmm2
        addps           xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_s,    xmm0
        movaps          xmm0,           m128_sincostmpps_x2
        movaps          xmm3,           xmm0
        movaps          xmm2,           xmm0
        movaps          xmm1,           xmm0
        mulps           xmm1,           xmm1
        mulps           xmm2,           xmm2
        .if (__uX_CPUFeatures_FMA == true)
        movaps          xmm4,           __m128_P1cosf
        movaps          xmm5,           __m128_P0cosf
        movaps          xmm6,           __m128_P2cosf
        movaps          xmm4,           xmm4
        vfmadd213ps     xmm0,           xmm4,           xmm5
        vfmadd231ps     xmm0,           xmm1,           xmm6
        movaps          xmm5,           __m128_0d5
        movaps          xmm6,           __m128_1
        vfmsub213ps     xmm3,           xmm5,           xmm6
        vfmadd213ps     xmm0,           xmm2,           xmm3
        .else
        movaps          xmm4,           __m128_P1cosf
        movaps          xmm5,           __m128_P0cosf
        movaps          xmm6,           __m128_P2cosf
        mulps           xmm0,           xmm4
        addps           xmm0,           xmm5
        mulps           xmm1,           xmm6
        addps           xmm0,           xmm1
        movaps          xmm5,           __m128_0d5
        movaps          xmm6,           __m128_1
        mulps           xmm3,           xmm5
        subps           xmm3,           xmm6
        mulps           xmm0,           xmm2
        addps           xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_c,    xmm0
        ;// swap sin and cos if odd quadrant
        movdqa          xmm0,           m128_sincostmpps_q
        movdqa          xmm4,           __m128i_i32_1
        movdqa          xmm5,           __m128i_i32_0
        movdqa          xmm6,           __m128i_i32_true
        pand            xmm0,           xmm4
        pcmpeqd         xmm0,           xmm5
        pxor            xmm0,           xmm6
        movaps   m128_sincostmpps_swap, xmm0
        ;// check for overflow
        movdqa          xmm0,           m128_sincostmpps_q
        movdqa          xmm4,           __m128i_flt_bigoverflow
        pcmpgtd         xmm0,           xmm4
        movdqa          xmm1,           m128_sincostmpps_xa
        pslld           xmm1,           1
        movaps          xmm4,           __m128_fin
        pand            xmm1,           xmm4
        pcmpeqd         xmm1,           xmm4
        pxor            xmm1,           xmm6
        pand            xmm0,           xmm1
        movaps  m128_sincostmpps_overflow,    xmm0
        movaps          xmm2,           m128_sincostmpps_s
        movaps          xmm1,           __m128_0
        .if (__uX_CPUFeatures_SSE41 == true)
        blendvps        xmm2,           xmm1,           xmm0
        movaps          xmm0,           xmm2
        .else
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps  m128_sincostmpps_s,     xmm0
        movaps          xmm0,           m128_sincostmpps_overflow
        movaps          xmm2,           m128_sincostmpps_c
        movaps          xmm1,           __m128_1
        .if (__uX_CPUFeatures_SSE41 == true)
        blendvps        xmm2,           xmm1,           xmm0
        movaps          xmm0,           xmm2
        .else
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps  m128_sincostmpps_c,     xmm0
        ;// calculate sin
        .if ((rp2() and 5) != 0)
        movaps          xmm0,           m128_sincostmpps_swap
        movaps          xmm1,           m128_sincostmpps_c
        movaps          xmm2,           m128_sincostmpps_s
        .if (__uX_CPUFeatures_SSE41 == true)
        blendvps        xmm2,           xmm1,           xmm0
        movaps          xmm0,           xmm2
        .else
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movdqa          xmm2,           m128_sincostmpps_q
        movdqa          xmm1,           m128_sincostmpps_x1
        pslld           xmm2,           30
        pxor            xmm2,           xmm1
        movaps          xmm4,           __m128_sign
        andps           xmm2,           xmm4
        xorps           xmm0,           xmm2
        movaps   m128_sincostmpps_sin1, xmm0
        .endif
        ;// calculate cos
        .if ((rp2() and 6) != 0)
        movaps          xmm0,           m128_sincostmpps_swap
        movaps          xmm1,           m128_sincostmpps_s
        movaps          xmm2,           m128_sincostmpps_c
        .if (__uX_CPUFeatures_SSE41) == true)
        blendvps        xmm2,           xmm1,           xmm0
        movaps          xmm0,           xmm2
        .else
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movdqa          xmm2,           m128_sincostmpps_q
        movdqa          xmm4,           __m128i_i32_1
        movdqa          xmm5,           __m128i_i32_2
        paddd           xmm2,           xmm4
        pand            xmm2,           xmm5
        pslld           xmm2,           30
        xorps           xmm0,           xmm2
        movaps   m128_sincostmpps_cos1, xmm0
        .endif
        .if (rp2() == 1)
        movaps          xmm0,           m128_sincostmpps_sin1
        jmp     _uX_mm_sincostemplate_ps_end
        .elseif (rp2() == 2)
        movaps          xmm0,           m128_sincostmpps_cos1
        jmp     _uX_mm_sincostemplate_ps_end
        .elseif (rp2() == 3)
        movaps          xmm0,           m128_sincostmpps_sin1
        movaps          xmm4,           m128_sincostmpps_cos1
        movups  xmmword ptr [rp0()],    xmm4
        jmp     _uX_mm_sincostemplate_ps_end
        .else
        movaps          xmm0,           m128_sincostmpps_sin1
        movaps          xmm2,           m128_sincostmpps_cos1
        divps           xmm0,           xmm2
        jmp     _uX_mm_sincostemplate_ps_end
        .endif
        _uX_mm_sincostemplate_ps_end:
        pxor            xmm2,           xmm2
        movaps m128_sincostmpps_x1,       xmm2
        movaps m128_sincostmpps_xa,       xmm2
        movaps m128_sincostmpps_y,        xmm2
        movdqa m128_sincostmpps_q,        xmm2
        movaps m128_sincostmpps_x2,       xmm2
        movaps m128_sincostmpps_s,        xmm2
        movaps m128_sincostmpps_c,        xmm2
        movaps m128_sincostmpps_swap,     xmm2
        movaps m128_sincostmpps_overflow, xmm2
        movaps m128_sincostmpps_sin1,     xmm2
        movaps m128_sincostmpps_cos1,     xmm2
        ret
procend

procstart _uX_mm_sincostemplate_ss, callconv, xmmword, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword, Intint_SC:dword
        movaps    m128_sincostmpps_x1,  xmm1
        movss           xmm0,           xmm1
        movaps          xmm4,           __m128_0e_abs
        andps           xmm0,           xmm4
        movaps    m128_sincostmpps_xa,  xmm0                ; xa
        ;// Find quadrant
        movaps          xmm4,           __m128_0e_2divpi
        mulss           xmm0,           xmm4                ; // quadrant, as float
        .if (__uX_CPUFeatures_SSE41 == true)
        roundss         xmm0,           xmm0,        8
        .else
        movss           xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                ; convert to integer
        cvtdq2ps        xmm1,           xmm3                ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_y,    xmm0            ;    y
        cvtps2dq        xmm1,           xmm0
        movdqa   m128_sincostmpps_q,    xmm1            ;    q
        ;// Reduce by extended precision modular arithmetic
        ;// x = ((xa - y * DP1F) - y * DP2F) - y * DP3F;
        movaps          xmm1,           m128_sincostmpps_y
        movaps          xmm0,           m128_sincostmpps_xa
        .if (__uX_CPUFeatures_FMA == true)
        movaps          xmm4,           __m128_0e_DP1F
        vfmsub231ss     xmm0,           xmm1,           xmm4
        movaps          xmm1,           m128_sincostmpps_y
        movaps          xmm4,           __m128_0e_DP2F
        vfmsub231ss     xmm0,           xmm1,           xmm4
        movaps          xmm0,           m128_sincostmpps_y
        movaps          xmm4,           __m128_0e_DP3F
        vfmsub231ss     xmm0,           xmm1,           xmm4
        .else
        movaps          xmm4,           __m128_0e_DP1F
        mulss           xmm1,           xmm4
        subss           xmm0,           xmm1
        movaps          xmm1,           m128_sincostmpps_y
        movaps          xmm4,           __m128_0e_DP2F
        mulss           xmm1,           xmm4
        subss           xmm0,           xmm1
        movaps          xmm0,           m128_sincostmpps_y
        movaps          xmm4,           __m128_0e_DP3F
        mulss           xmm1,           xmm4
        subss           xmm0,           xmm1
        .endif
        movss           xmm3,           xmm0            ;    x
        ;// Taylor expansion of sin and cos, valid for -pi/4 <= x <= pi/4
        mulss           xmm0,           xmm0
        movaps  m128_sincostmpps_x2,    xmm0            ;    x2
        movaps          xmm2,           m128_sincostmpps_x2            ;    x2
        movss           xmm1,           xmm0
        mulss           xmm1,           xmm1
        mulss           xmm2,           xmm3
        .if (__uX_CPUFeatures_FMA == true)
        movaps          xmm4,           __m128_0e_P1sinf
        movaps          xmm5,           __m128_0e_P0sinf
        vfmadd213ss     xmm0,           xmm4,           xmm5
        movaps          xmm5,           __m128_0e_P2sinf
        vfmadd231ss     xmm0,           xmm1,           xmm5
        vfmadd213ss     xmm0,           xmm2,           xmm3
        .else
        movaps          xmm4,           __m128_0e_P1sinf
        movaps          xmm5,           __m128_0e_P0sinf
        movaps          xmm6,           __m128_0e_P2sinf
        mulss           xmm0,           xmm4
        addss           xmm0,           xmm5
        mulss           xmm1,           xmm6
        addss           xmm0,           xmm1
        mulss           xmm0,           xmm2
        addss           xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_s,    xmm0
        movaps          xmm0,           m128_sincostmpps_x2
        movss           xmm3,           xmm0
        movss           xmm2,           xmm0
        movss           xmm1,           xmm0
        mulss           xmm1,           xmm1
        mulss           xmm2,           xmm2
        .if (__uX_CPUFeatures_FMA == true)
        movaps          xmm4,           __m128_0e_P1cosf
        movaps          xmm5,           __m128_0e_P0cosf
        vfmadd213ss     xmm0,           xmm4,           xmm5
        movaps          xmm5,           __m128_0e_P2cosf
        vfmadd231ss     xmm0,           xmm1,           xmm5
        movaps          xmm5,           __m128_0e_0d5
        movaps          xmm4,           __m128_0e_1
        vfmsub213ss     xmm3,           xmm5,           xmm4
        vfmadd213ss     xmm0,           xmm2,           xmm3
        .else
        movaps          xmm4,           __m128_0e_P1cosf
        movaps          xmm5,           __m128_0e_P0cosf
        movaps          xmm6,           __m128_0e_P2cosf
        mulss           xmm0,           xmm4
        addss           xmm0,           xmm5
        mulss           xmm1,           xmm6
        addss           xmm0,           xmm1
        movaps          xmm4,           __m128_0e_0d5
        movaps          xmm5,           __m128_0e_1
        mulss           xmm3,           xmm4
        subss           xmm3,           xmm5
        mulss           xmm0,           xmm2
        addss           xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_c,    xmm0
        ;// swap sin and cos if odd quadrant
        movdqa          xmm0,           m128_sincostmpps_q
        movdqa          xmm4,           __m128i_i32_0e_1
        movdqa          xmm5,           __m128i_i32_0e_0
        movdqa          xmm6,           __m128i_i32_0e_true
        pand            xmm0,           xmm4
        pcmpeqd         xmm0,           xmm5
        pxor            xmm0,           xmm6
        movaps   m128_sincostmpps_swap, xmm0
        ;// check for overflow
        movdqa          xmm0,           m128_sincostmpps_q
        movdqa          xmm4,           __m128i_flt_0e_bigoverflow
        pcmpgtd         xmm0,           xmm4
        movdqa          xmm1,           m128_sincostmpps_xa
        pslld           xmm1,           1
        movdqa          xmm4,           __m128_0e_fin
        pand            xmm1,           xmm4
        pcmpeqd         xmm1,           xmm4
        pxor            xmm1,           xmm6
        pand            xmm0,           xmm1
        movaps  m128_sincostmpps_overflow,    xmm0
        movaps          xmm2,           m128_sincostmpps_s
        movaps          xmm1,           __m128_0e_0
        .if (__uX_CPUFeatures_SSE41 == true)
        blendvps        xmm2,           xmm1,           xmm0
        movaps          xmm0,           xmm2
        .else
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps  m128_sincostmpps_s,     xmm0
        movaps          xmm0,           m128_sincostmpps_overflow
        movaps          xmm2,           m128_sincostmpps_c
        movaps          xmm1,           __m128_0e_1
        .if (__uX_CPUFeatures_SSE41 == true)
        blendvps        xmm2,           xmm1,           xmm0
        movaps          xmm0,           xmm2
        .else
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps  m128_sincostmpps_c,     xmm0
        ;// calculate sin
        .if ((rp2() and 5) != 0)
        movaps          xmm0,           m128_sincostmpps_swap
        movaps          xmm1,           m128_sincostmpps_c
        movaps          xmm2,           m128_sincostmpps_s
        .if (__uX_CPUFeatures_SSE41 == true)
        blendvps        xmm2,           xmm1,           xmm0
        movaps          xmm0,           xmm2
        .else
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movdqa          xmm2,           m128_sincostmpps_q
        movdqa          xmm1,           m128_sincostmpps_x1
        pslld           xmm2,           30
        pxor            xmm2,           xmm1
        movaps          xmm2,           xmm2
        movaps          xmm4,           __m128_0e_sign
        andps           xmm2,           xmm4
        xorps           xmm0,           xmm2
        movaps   m128_sincostmpps_sin1, xmm0
        .endif
        ;// calculate cos
        .if ((rp2() and 6) != 0)
        movaps          xmm0,           m128_sincostmpps_swap
        movaps          xmm1,           m128_sincostmpps_s
        movaps          xmm2,           m128_sincostmpps_c
        .if (__uX_CPUFeatures_SSE41 == true)
        blendvps        xmm2,           xmm1,           xmm0
        movaps          xmm0,           xmm2
        .else
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movdqa          xmm2,           m128_sincostmpps_q
        movdqa          xmm4,           __m128i_i32_0e_1
        movdqa          xmm5,           __m128i_i32_0e_2
        paddd           xmm2,           xmm4
        pand            xmm2,           xmm5
        pslld           xmm2,           30
        xorps           xmm0,           xmm2
        movaps   m128_sincostmpps_cos1, xmm0
        .endif
        .if (rp2() == 1)
        movaps          xmm0,           m128_sincostmpps_sin1
        jmp     _uX_mm_sincostemplate_ss_end
        .elseif (rp2() == 2)
        movaps          xmm0,           m128_sincostmpps_cos1
        jmp     _uX_mm_sincostemplate_ss_end
        .elseif (rp2() == 3)
        movaps          xmm0,           m128_sincostmpps_sin1
        movaps          xmm4,           m128_sincostmpps_cos1
        movups  xmmword ptr [rp0()],    xmm4
        jmp     _uX_mm_sincostemplate_ss_end
        .else
        movaps          xmm0,           m128_sincostmpps_sin1
        movaps          xmm2,           m128_sincostmpps_cos1
        divss           xmm0,           xmm2
        jmp     _uX_mm_sincostemplate_ss_end
        .endif
        _uX_mm_sincostemplate_ss_end:
        pxor            xmm2,           xmm2
        movaps m128_sincostmpps_x1,       xmm2
        movaps m128_sincostmpps_xa,       xmm2
        movaps m128_sincostmpps_y,        xmm2
        movdqa m128_sincostmpps_q,        xmm2
        movaps m128_sincostmpps_x2,       xmm2
        movaps m128_sincostmpps_s,        xmm2
        movaps m128_sincostmpps_c,        xmm2
        movaps m128_sincostmpps_swap,     xmm2
        movaps m128_sincostmpps_overflow, xmm2
        movaps m128_sincostmpps_sin1,     xmm2
        movaps m128_sincostmpps_cos1,     xmm2
        ret
procend

;******************
; DBL Arithmetic
;******************
procstart _uX_mm_signbit_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraq           xmm0,           63
        ret
procend

procstart _uX_mm_signbit_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movsd           xmm1,           xmm0
        psraq           xmm1,           63
        movapd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_signcombine_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movapd          xmm2,           __m128d_sign
        andpd           xmm1,           xmm2
        xorpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_signcombine_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movapd          xmm2,           __m128d_0e_sign
        andpd           xmm1,           xmm2
        xorpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_isfinite_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           1
        movdqa          xmm2,           __m128i_dbl_fin
        pand            xmm0,           xmm2
        .if (__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm2
        .else
        pcmpeqd         xmm0,           xmm2                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm1,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm1                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        movdqa          xmm2,           __m128i_dbl_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_isfinite_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           1
        movdqa          xmm2,           __m128i_dbl_0e_fin
        pand            xmm0,           xmm2
        .if (__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm2
        .else
        pcmpeqd         xmm0,           xmm2                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm1,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm1                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        movdqa          xmm2,           __m128i_dbl_0e_true
        pxor            xmm0,           xmm2
        ret
procend

procstart _uX_mm_isinf_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           1
        movdqa          xmm2,           __m128i_dbl_fin
        .if (__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm2
        .else
        pcmpeqd         xmm0,           xmm2                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm1,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm1                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        ret
procend

procstart _uX_mm_isinf_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           1
        movdqa          xmm2,           __m128i_dbl_0e_fin
        .if (__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm2
        .else
        pcmpeqd         xmm0,           xmm2                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm1,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm1                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        ret
procend

procstart _uX_mm_isnan_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cmppd           xmm0,           xmm0,           CMPP_NEQ
        ret
procend

procstart _uX_mm_isnan_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cmpsd           xmm0,           xmm0,           CMPP_NEQ
        ret
procend

procstart _uX_mm_issubnormal_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           1
        movdqa          xmm2,           xmm0
        movdqa          xmm1,           __m128i_dbl_fin
        pand            xmm0,           xmm1
        pandn           xmm1,           xmm2
        movdqa          xmm3,           __m128i_dbl_0
        .if (__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm3
        pcmpeqq         xmm1,           xmm3
        .else
        pcmpeqd         xmm0,           xmm3                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm2,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm2                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        pcmpeqd         xmm1,           xmm3                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm2,           xmm1,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm1,           xmm2                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm1,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm1,           xmm1,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        movdqa          xmm2,           __m128i_dbl_true
        pxor            xmm1,           xmm2
        pand            xmm0,           xmm1
        ret
procend

procstart _uX_mm_issubnormal_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           1
        movdqa          xmm2,           xmm0
        movdqa          xmm1,           __m128i_dbl_0e_fin
        pand            xmm0,           xmm1
        pandn           xmm1,           xmm2
        movdqa          xmm3,           __m128i_dbl_0e_0
        .if (__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm3
        pcmpeqq         xmm1,           xmm3
        .else
        pcmpeqd         xmm0,           xmm3                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm2,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm2                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        pcmpeqd         xmm1,           xmm3                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm2,           xmm1,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm1,           xmm2                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm1,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm1,           xmm1,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        movdqa          xmm2,           __m128i_dbl_0e_true
        pxor            xmm1,           xmm2
        pand            xmm0,           xmm1
        ret
procend

procstart _uX_mm_iszeroorsubnormal_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm2,           __m128i_dbl_inf
        pand            xmm0,           xmm2
        movdqa          xmm2,           __m128i_dbl_0
        .if (__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm2
        .else
        pcmpeqd         xmm0,           xmm2                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm1,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm1                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        ret
procend

procstart _uX_mm_iszeroorsubnormal_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm2,           __m128i_dbl_0
        pand            xmm0,           xmm2
        movdqa          xmm2,           __m128i_dbl_0e_0
        .if (__uX_CPUFeatures_SSE41 == true)
        pcmpeqq         xmm0,           xmm2
        .else
        pcmpeqd         xmm0,           xmm2                                ;_mm_cmpeq_epi32(a,b);              // 32 bit compares
        pshufd          xmm1,           xmm0,           shuffle4(2,3,0,1)   ;_mm_shuffle_epi32(com32,0xB1);     // swap low and high dwords shuffle
        pand            xmm0,           xmm1                                ;_mm_and_si128(com32,com32s);       // low & high
        psrad           xmm0,           31                                  ;_mm_srai_epi32(test,31);           // extend sign bit to 32 bits
        pshufd          xmm0,           xmm0,           shuffle4(3,3,1,1)   ;_mm_shuffle_epi32(teste,0xF5);     // extend sign bit to 64 bits shuffle
        .endif
        ret
procend

procstart _uX_mm_infinite_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inf
        ret
procend

procstart _uX_mm_infinite_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inf
        ret
procend

procstart _uX_mm_nan_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_qnan
        ret
procend

procstart _uX_mm_nan_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_qnan
        ret
procend

procstart _uX_mm_abs_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_abs
        andpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_abs_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           __m128d_0e_abs
        andpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_horizontaladd_pd, callconv, real8, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           xmm0
        unpckhpd        xmm1,           xmm1
        addpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_horizontalsub_pd, callconv, real4, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           xmm0
        unpckhpd        xmm1,           xmm1
        subpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_horizontalmul_pd, callconv, real8, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           xmm0
        unpckhpd        xmm1,           xmm1
        mulpd           xmm0,           xmm1
        ret
procend

procstart _uX_mm_horizontaldiv_pd, callconv, real8, < >, < >, Inxmm_A:xmmword
        movapd          xmm1,           xmm0
        unpckhpd        xmm1,           xmm1
        divpd           xmm0,           xmm1
        ret
procend

;******************
; INT64 Arithmetic
;******************

procstart _uX_mm_max_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if (__uX_CPUFeatures_SSE42 == true)
        movdqa           xmm2,           xmm1
        movdqa           xmm1,           xmm0
        pcmpgtq          xmm0,           xmm2
        pblendvb         xmm2,           xmm1,           xmm0
        movdqa           xmm0,           xmm2
        .else
        movdqa           xmm4,           xmm0
        movdqa           xmm2,           xmm1
        movdqa           xmm3,           xmm1
        psubq            xmm2,           xmm0                                   ;__m128i s      = _mm_sub_epi64(a,b);                   // a-b
        pxor             xmm3,           xmm0                                   ;__m128i axb    = _mm_xor_si128(a,b);                   // a ^ b
        pandn            xmm0,           xmm1                                   ;__m128i anb    = _mm_andnot_si128(b,a);                // a & ~b
        pandn            xmm3,           xmm2                                   ;__m128i snaxb  = _mm_andnot_si128(axb,s);              // s & ~(a ^ b)
        por              xmm0,           xmm3                                   ;__m128i or1    = _mm_or_si128(anb,snaxb);              // (a & ~b) | (s & ~(a ^ b))
        psrad            xmm0,           31                                     ;__m128i teste  = _mm_srai_epi32(or1,31);               // extend sign bit to 32 bits
        pshufd           xmm0,           xmm0,           shuffle4(3,3,1,1)      ;__m128i testee = _mm_shuffle_epi32(teste,0xF5);        // extend sign bit to 64 bits
        movdqa           xmm2,           xmm1
        movdqa           xmm1,           xmm4
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb         xmm2,           xmm1,           xmm0
        movdqa           xmm0,           xmm2
        .else
        movdqa           xmm3,           xmm0
        pandn            xmm3,           xmm2
        pand             xmm0,           xmm1
        por              xmm0,           xmm3
        .endif
        .endif
        ret
procend

procstart _uX_mm_min_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        .if (__uX_CPUFeatures_SSE42 == true)
        movdqa           xmm2,           xmm1
        movdqa           xmm1,           xmm0
        movdqa           xmm0,           xmm2
        pcmpgtq          xmm0,           xmm1
        pblendvb         xmm2,           xmm1,           xmm0
        movdqa           xmm0,           xmm2
        .else
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
        movdqa           xmm2,           xmm1
        movdqa           xmm1,           xmm4
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb         xmm2,           xmm1,           xmm0
        movdqa           xmm0,           xmm2
        .else
        movdqa           xmm3,           xmm0
        pandn            xmm3,           xmm2
        pand             xmm0,           xmm1
        por              xmm0,           xmm3
        .endif
        .endif
        ret
procend

procstart _uX_mm_abs_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_AVX512VL == true)                         ;#if INSTRSET >= 10     // AVX512VL
        vpabsq          xmm0,           xmm0                            ;    return _mm_abs_epi64(a);
        .elseif (__uX_CPUFeatures_SSE42 == true)                                            ;#elif INSTRSET >= 6     // SSE4.2 supported
        pxor            xmm1,           xmm1
        pcmpgtq         xmm1,           xmm0                            ;    __m128i sign = _mm_cmpgt_epi64(_mm_setzero_si128(), a);// 0 > a
        pxor            xmm0,           xmm1                            ;    __m128i inv = _mm_xor_si128(a, sign);                  // invert bits if negative
        psubq           xmm0,           xmm1                            ;    return          _mm_sub_epi64(inv, sign);              // add 1
        .else                                                           ;#else                 // SSE2
        movdqa          xmm1,           xmm0
        psrad           xmm1,           31                              ;    __m128i signh = _mm_srai_epi32(a, 31);                 // sign in high dword
        pshufd          xmm1,           xmm1,           0xf5            ;    __m128i sign = _mm_shuffle_epi32(signh, 0xF5);         // copy sign to low dword
        pxor            xmm0,           xmm1                            ;    __m128i inv = _mm_xor_si128(a, sign);                  // invert bits if negative
        psubq           xmm0,           xmm1                            ;    return          _mm_sub_epi64(inv, sign);              // add 1
        .endif
        ret
procend

procstart _uX_mm_abssat_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_AVX512VL == true)                         ;#if INSTRSET >= 10     // AVX512VL
        vmovdqa         xmm1            __m128i_dbl_maxi64
        vpminuq         xmm0,           xmm0,           xmm1            ;    return _mm_min_epu64(abs(a), (0x7FFFFFFFFFFFFFFF));
        .elseif (__uX_CPUFeatures_SSE42 == true)                        ;#elif INSTRSET >= 6     // SSE4.2 supported
        pxor            xmm1,           xmm1
        pcmpgtq         xmm1,           xmm0                            ;    __m128i sign = _mm_cmpgt_epi64(_mm_setzero_si128(), a);// 0 > a
        pxor            xmm0,           xmm1                            ;    __m128i inv = _mm_xor_si128(a, sign);                  // invert bits if negative
        psubq           xmm0,           xmm1                            ;    return          _mm_sub_epi64(inv, sign);              // add 1
        pxor            xmm1,           xmm1                            ;    __m128i absa = abs(a);                                 // abs(a)
        pcmpgtq         xmm1,           xmm0                            ;    __m128i overfl = _mm_cmpgt_epi64(_mm_setzero_si128(), absa);// 0 > a
        paddq           xmm0,           xmm1                            ;    return           _mm_add_epi64(absa, overfl);          // subtract 1 if 0x8000000000000000
        .else                                                           ;#else                 // SSE2
        movdqa          xmm1,           xmm0
        psrad           xmm1,           31                              ;    __m128i signh = _mm_srai_epi32(a, 31);                 // sign in high dword
        pshufd          xmm1,           xmm1,           0xf5            ;    __m128i sign = _mm_shuffle_epi32(signh, 0xF5);         // copy sign to low dword
        pxor            xmm0,           xmm1                            ;    __m128i inv = _mm_xor_si128(a, sign);                  // invert bits if negative
        psubq           xmm0,           xmm1                            ;    return          _mm_sub_epi64(inv, sign);              // add 1
        movdqa          xmm1,           xmm0                            ;    __m128i absa = abs(a);                                 // abs(a)
        psrad           xmm1,           31                              ;    __m128i signh = _mm_srai_epi32(absa, 31);              // sign in high dword
        pshufd          xmm1,           xmm1,           0xf5            ;    __m128i overfl = _mm_shuffle_epi32(signh, 0xF5);       // copy sign to low dword
        paddq           xmm0,           xmm1                            ;    return           _mm_add_epi64(absa, overfl);          // subtract 1 if 0x8000000000000000
        .endif                                                          ;#endif
        ret
procend

ifdef __x64__
procstart _uX_mm_scale_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:qword
        movq               xmm1,           rp1()
        pshufd             xmm1,           xmm1,           shuffle4(1,0,1,0)
        .if (__uX_CPUFeatures_AVX512DQ_VL == true)
        vpmullq            xmm0,           xmm0,           xmm1
        .elseif (__uX_CPUFeatures_SSE41 == true)
        movdqa             xmm2,           xmm0
        movdqa             xmm3,           xmm1                                    ;    // Split into 32-bit multiplies
        pshufd             xmm3,           xmm3,           shuffle4(2,3,0,1)       ;    __m128i bswap = _mm_shuffle_epi32(b, 0xB1);            // b0H,b0L,b1H,b1L (swap H<->L)
        pmulld             xmm2,           xmm3                                    ;    __m128i prodlh = _mm_mullo_epi32(a, bswap);            // a0Lb0H,a0Hb0L,a1Lb1H,a1Hb1L, 32 bit L*H products
        pxor               xmm3,           xmm3                                    ;    __m128i zero = _mm_setzero_si128();                    // 0
        phaddd             xmm2,           xmm3                                    ;    __m128i prodlh2 = _mm_hadd_epi32(prodlh, zero);        // a0Lb0H+a0Hb0L,a1Lb1H+a1Hb1L,0,0
        pshufd             xmm2,           xmm2,           shuffle4(1,3,0,3)       ;    __m128i prodlh3 = _mm_shuffle_epi32(prodlh2, 0x73);    // 0, a0Lb0H+a0Hb0L, 0, a1Lb1H+a1Hb1L
        pmuludq            xmm0,           xmm1                                    ;    __m128i prodll = _mm_mul_epu32(a, b);                  // a0Lb0L,a1Lb1L, 64 bit unsigned products
        paddq              xmm0,           xmm2                                    ;    __m128i prod = _mm_add_epi64(prodll, prodlh3);         // a0Lb0L+(a0Lb0H+a0Hb0L)<<32, a1Lb1L+(a1Lb1H+a1Hb1L)<<32
        .else
        movq               rret(),         xmm0
        movq               rp0(),          xmm1
        .if (rret() < 0 || rp0() < 0)
        imul                               rp0()
        .else
        mul                                rp0()
        .endif
        movq               xmm2,           rret()
        pshufd             xmm0,           xmm0,           shuffle4(1,0,3,2)
        pshufd             xmm1,           xmm1,           shuffle4(1,0,3,2)
        movq               rret(),         xmm0
        movq               rp0(),          xmm1
        .if (rret() < 0 || rp0() < 0)
        imul                               rp0()
        .else
        mul                                rp0()
        .endif
        movq               xmm1,           rret()
        punpcklqdq         xmm2,           xmm1
        movdqa             xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_square_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_AVX512DQ_VL == true)
        vpmullq            xmm0,           xmm0,           xmm1
        .elseif (__uX_CPUFeatures_SSE41 == true)
        movdqa              xmm2,           xmm0
        movdqa              xmm3,           xmm0                                    ;    // Split into 32-bit multiplies
        pshufd              xmm3,           xmm3,           shuffle4(2,3,0,1)       ;    __m128i bswap = _mm_shuffle_epi32(b, 0xB1);            // b0H,b0L,b1H,b1L (swap H<->L)
        pmulld              xmm2,           xmm3                                    ;    __m128i prodlh = _mm_mullo_epi32(a, bswap);            // a0Lb0H,a0Hb0L,a1Lb1H,a1Hb1L, 32 bit L*H products
        pxor                xmm3,           xmm3                                    ;    __m128i zero = _mm_setzero_si128();                    // 0
        phaddd              xmm2,           xmm3                                    ;    __m128i prodlh2 = _mm_hadd_epi32(prodlh, zero);        // a0Lb0H+a0Hb0L,a1Lb1H+a1Hb1L,0,0
        pshufd              xmm2,           xmm2,           shuffle4(1,3,0,3)       ;    __m128i prodlh3 = _mm_shuffle_epi32(prodlh2, 0x73);    // 0, a0Lb0H+a0Hb0L, 0, a1Lb1H+a1Hb1L
        pmuludq             xmm0,           xmm0                                    ;    __m128i prodll = _mm_mul_epu32(a, b);                  // a0Lb0L,a1Lb1L, 64 bit unsigned products
        paddq               xmm0,           xmm2                                    ;    __m128i prod = _mm_add_epi64(prodll, prodlh3);         // a0Lb0L+(a0Lb0H+a0Hb0L)<<32, a1Lb1L+(a1Lb1H+a1Hb1L)<<32
        .else
        movq                rret(),         xmm0
        movq                rp0(),          xmm0
        .if (rret() < 0 || rp0() < 0)
        imul                               rp0()
        .else
        mul                                rp0()
        .endif
        movq                xmm2,           rret()
        pshufd              xmm0,           xmm0,           shuffle4(1,0,3,2)
        movq                rret(),         xmm0
        movq                rp0(),          xmm0
        .if (rret() < 0 || rp0() < 0)
        imul                               rp0()
        .else
        mul                                rp0()
        .endif
        movq                xmm1,           rret()
        punpcklqdq          xmm2,           xmm1
        movdqa              xmm0,           xmm2
        .endif
        ret
procend
endif ;__x64__

endif ;__MIC__

end
