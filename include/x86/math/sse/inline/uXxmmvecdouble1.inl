
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

namespace_uX
namespace_XMM
EXTERN_CC_BEGIN
uX_PACK_PUSH_XMM

// VECTOR'S

// // // // // // // // //
// vecdouble1 Start

inline void uX_ABI vecdouble1::set(const __m128d Inxmmd) uX_noexcept
{
    m128_xmmd = _uX_mm_move_sd(__m128d_false, Inxmmd);
}

inline void uX_ABI vecdouble1::set_x(double Indouble_a) uX_noexcept
{
    m128_xmmd = _uX_MM_SETDBL_IM_PD(__m128d_false, Indouble_a, 0);
}

inline vecdouble1 uX_ABI andnot(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_andnot_sd(Inxmmd_b, Inxmmd_a));
}

inline vecdouble1 uX_ABI operator&(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_and_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator|(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_or_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator^(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_xor_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator~(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_not_sd(Inxmmd_a));
}

inline bool_t uX_ABI bandnot(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return _uX_mm_iandnot_sd(Inxmmd_b, Inxmmd_a);
}

inline bool_t uX_ABI operator&&(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return _uX_mm_iand_sd(Inxmmd_a, Inxmmd_b);
}

inline bool_t uX_ABI operator||(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return _uX_mm_ior_sd(Inxmmd_a, Inxmmd_b);
}

inline bool_t uX_ABI operator!(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return _uX_mm_inot_sd(Inxmmd_a);
}

inline vecdouble1& uX_ABI operator&=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a = vecdouble1(_uX_mm_and_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1& uX_ABI operator|=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a = vecdouble1(_uX_mm_or_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1& uX_ABI operator^=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a = vecdouble1(_uX_mm_xor_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator+(const vecdouble1 Inxmmd_a, double Indouble_b) uX_noexcept
{
    return vecdouble1(_uX_mm_add_sd(Inxmmd_a, _uX_mm_set_sd(Indouble_b)));
}

inline vecdouble1 uX_ABI operator+(double Indouble_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_add_sd(_uX_mm_set_sd(Indouble_a), Inxmmd_b));
}

inline vecdouble1 uX_ABI operator+(const vecdouble1 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_add_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator+(const __m128d Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_add_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator+(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_add_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator-(const vecdouble1 Inxmmd_a, double Indouble_b) uX_noexcept
{
    return vecdouble1(_uX_mm_sub_sd(Inxmmd_a, _uX_mm_set_sd(Indouble_b)));
}

inline vecdouble1 uX_ABI operator-(double Indouble_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_sub_sd(_uX_mm_set_sd(Indouble_a), Inxmmd_b));
}

inline vecdouble1 uX_ABI operator-(const vecdouble1 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_sub_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator-(const __m128d Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_sub_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator-(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_sub_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator*(const vecdouble1 Inxmmd_a, double Indouble_b) uX_noexcept
{
    return vecdouble1(_uX_mm_mul_sd(Inxmmd_a, _uX_mm_set_sd(Indouble_b)));
}

inline vecdouble1 uX_ABI operator*(double Indouble_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_mul_sd(_uX_mm_set_sd(Indouble_a), Inxmmd_b));
}

inline vecdouble1 uX_ABI operator*(const vecdouble1 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_mul_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator*(const __m128d Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_mul_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator*(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_mul_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator/(const vecdouble1 Inxmmd_a, double Indouble_b) uX_noexcept
{
    return vecdouble1(_uX_mm_div_sd(Inxmmd_a, _uX_mm_set_sd(Indouble_b)));
}

inline vecdouble1 uX_ABI operator/(double Indouble_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_div_sd(_uX_mm_set_sd(Indouble_a), Inxmmd_b));
}

inline vecdouble1 uX_ABI operator/(const vecdouble1 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_div_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator/(const __m128d Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_div_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator/(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_div_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1& uX_ABI operator+=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a = vecdouble1(_uX_mm_add_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1& uX_ABI operator-=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a = vecdouble1(_uX_mm_sub_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1& uX_ABI operator*=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a = vecdouble1(_uX_mm_mul_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1& uX_ABI operator/=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a = vecdouble1(_uX_mm_div_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1& uX_ABI operator++(vecdouble1& Inxmmd_a) uX_noexcept
{
    Inxmmd_a = Inxmmd_a + __m128d_0e_1;
    return Inxmmd_a;
}

inline vecdouble1& uX_ABI operator--(vecdouble1& Inxmmd_a) uX_noexcept
{
    Inxmmd_a = Inxmmd_a - __m128d_0e_1;
    return Inxmmd_a;
}

inline vecdouble1 uX_ABI operator++(vecdouble1& Inxmmd_a, int) uX_noexcept
{
    vecdouble1 tmpxmm_a0 = Inxmmd_a;
    Inxmmd_a = Inxmmd_a + __m128d_0e_1;
    return tmpxmm_a0;
}

inline vecdouble1 uX_ABI operator--(vecdouble1& Inxmmd_a, int) uX_noexcept
{
    vecdouble1 tmpxmm_a0 = Inxmmd_a;
    Inxmmd_a = Inxmmd_a - __m128d_0e_1;
    return tmpxmm_a0;
}

inline vecdouble1 uX_ABI operator-(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_negate_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI operator==(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_cmpeq_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator<(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_cmplt_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator<=(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_cmple_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator>(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_cmpgt_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator>=(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_cmpge_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI operator!=(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_cmpneq_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1& uX_ABI vecdouble1::zero() uX_noexcept
{
    m128_xmmd = _uX_mm_setzero_pd();
    return *this;
}

inline vecdouble1 uX_ABI flip_sign(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_xor_sd(Inxmmd_a, __m128d_sign));
}

inline bool_t uX_ABI is_zero(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return _uX_mm_iszero_sd(Inxmmd_a);
}

inline vecdouble1 uX_ABI select(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_select_pd(Inxmmd_f, Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI if_add(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a + (Inxmmd_f & Inxmmd_b);
}

inline vecdouble1 uX_ABI if_sub(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a - (Inxmmd_f & Inxmmd_b);
}

inline vecdouble1 uX_ABI if_mul(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a * select(Inxmmd_f, Inxmmd_b, vecdouble1(__m128d_0e_1));
}

inline vecdouble1 uX_ABI if_div(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return Inxmmd_a / select(Inxmmd_f, Inxmmd_b, vecdouble1(__m128d_0e_1));
}

inline vecdouble1 uX_ABI sign_bit(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_signbit_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI sign_combine(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_signcombine_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI is_finite(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_isfinite_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI is_inf(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_isinf_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI is_nan(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_isnan_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI is_subnormal(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_issubnormal_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI is_zero_or_subnormal(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_iszeroorsubnormal_sd(Inxmmd_a));
}

inline vecdouble1& uX_ABI vecdouble1::infinite() uX_noexcept
{
    m128_xmmd = _uX_mm_infinite_sd();
    return *this;
}

inline vecdouble1& uX_ABI vecdouble1::nan() uX_noexcept
{
    m128_xmmd = _uX_mm_nan_sd();
    return *this;
}

inline vecdouble1 uX_ABI max(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_max_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI min(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept
{
    return vecdouble1(_uX_mm_min_sd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble1 uX_ABI abs(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_abs_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI square(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_square_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI scale(const vecdouble1 Inxmmd_a, double Indouble_s) uX_noexcept
{
    return vecdouble1(_uX_mm_scale_sd(Inxmmd_a, Indouble_s));
}

inline vecdouble1 uX_ABI rcp(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_rcp_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI sqrt(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_sqrt_sd(Inxmmd_a));
}

inline vecdouble1 uX_ABI rsqrt(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble1(_uX_mm_rsqrt_sd(Inxmmd_a));
}

// vecdouble4 End
// // // // // // // // //

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end
