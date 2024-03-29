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
namespace_xmm
EXTERN_CC_BEGIN
uX_PACK_PUSH_XMM

// VECTOR'S

// // // // // // // // //
// vecdouble2 Start

/*
inline void uX_abi vecdouble2::set(const __m128d Inxmm) uX_noexcept
{
	m128_xmmd = Inxmm;
}

inline void uX_abi vecdouble2::set_x(double Indouble_a) uX_noexcept
{
	m128_xmmd = _uX_MM_SETDBL_PD_IM(m128_xmmd, Indouble_a, 0);
}

inline void uX_abi vecdouble2::set_xy(const vecdouble2 Inxmmd_a) uX_noexcept
{
	m128_xmmd = Inxmmd_a;
}

inline void uX_abi vecdouble2::set_y(double Indouble_a) uX_noexcept
{
	m128_xmmd = _uX_MM_SETDBL_PD_IM(m128_xmmd, Indouble_a, 1);
}

inline void uX_abi vecdouble2::set_yx(const vecdouble2 Inxmmd_a) uX_noexcept
{
	m128_xmmd = _uX_MM_PERMUTER_PD_IM(Inxmmd_a, 1, 0);
}

inline vecdouble2 uX_abi andnot(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_andnot_pd(Inxmmd_b, Inxmmd_a));
}

inline vecdouble2 uX_abi operator&(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_and_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator|(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_or_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator^(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_xor_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator~(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_not_pd(Inxmmd_a));
}

inline bool_t uX_abi bandnot(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return _uX_mm_iandnot_pd(Inxmmd_b, Inxmmd_a);
}

inline bool_t uX_abi operator&&(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return _uX_mm_iand_pd(Inxmmd_a, Inxmmd_b);
}

inline bool_t uX_abi operator||(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return _uX_mm_ior_pd(Inxmmd_a, Inxmmd_b);
}

inline bool_t uX_abi operator!(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return _uX_mm_inot_pd(Inxmmd_a);
}

inline bool_t uX_abi horizontal_and(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return _uX_mm_ihand_pd(Inxmmd_a);
}

inline bool_t uX_abi horizontal_or(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return _uX_mm_ihor_pd(Inxmmd_a);
}

inline vecdouble2& uX_abi operator&=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a = vecdouble2(_uX_mm_and_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2& uX_abi operator|=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a = vecdouble2(_uX_mm_or_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2& uX_abi operator^=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a = vecdouble2(_uX_mm_xor_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator+(const vecdouble2 Inxmmd_a, double Indouble_b) uX_noexcept
{
	return vecdouble2(_uX_mm_add_pd(Inxmmd_a, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble2 uX_abi operator+(double Indouble_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), Inxmmd_b));
}

inline vecdouble2 uX_abi operator+(const vecdouble2 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_add_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator+(const __m128d Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_add_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator+(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_add_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator-(const vecdouble2 Inxmmd_a, double Indouble_b) uX_noexcept
{
	return vecdouble2(_uX_mm_sub_pd(Inxmmd_a, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble2 uX_abi operator-(double Indouble_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), Inxmmd_b));
}

inline vecdouble2 uX_abi operator-(const vecdouble2 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_sub_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator-(const __m128d Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_sub_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator-(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_sub_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator*(const vecdouble2 Inxmmd_a, double Indouble_b) uX_noexcept
{
	return vecdouble2(_uX_mm_mul_pd(Inxmmd_a, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble2 uX_abi operator*(double Indouble_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), Inxmmd_b));
}

inline vecdouble2 uX_abi operator*(const vecdouble2 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_mul_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator*(const __m128d Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_mul_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator*(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_mul_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator/(const vecdouble2 Inxmmd_a, double Indouble_b) uX_noexcept
{
	return vecdouble2(_uX_mm_div_pd(Inxmmd_a, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble2 uX_abi operator/(double Indouble_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), Inxmmd_b));
}

inline vecdouble2 uX_abi operator/(const vecdouble2 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_div_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator/(const __m128d Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_div_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator/(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_div_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2& uX_abi operator+=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a = vecdouble2(_uX_mm_add_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2& uX_abi operator-=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a = vecdouble2(_uX_mm_sub_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2& uX_abi operator*=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a = vecdouble2(_uX_mm_mul_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2& uX_abi operator/=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a = vecdouble2(_uX_mm_div_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2& uX_abi operator++(vecdouble2& Inxmmd_a) uX_noexcept
{
	Inxmmd_a = Inxmmd_a + __m128d_1;
	return Inxmmd_a;
}

inline vecdouble2& uX_abi operator--(vecdouble2& Inxmmd_a) uX_noexcept
{
	Inxmmd_a = Inxmmd_a - __m128d_1;
	return Inxmmd_a;
}

inline vecdouble2 uX_abi operator++(vecdouble2& Inxmmd_a, int) uX_noexcept
{
	vecdouble2 tmpxmm_a0 = Inxmmd_a;
	Inxmmd_a = Inxmmd_a + __m128d_1;
	return tmpxmm_a0;
}

inline vecdouble2 uX_abi operator--(vecdouble2& Inxmmd_a, int) uX_noexcept
{
	vecdouble2 tmpxmm_a0 = Inxmmd_a;
	Inxmmd_a = Inxmmd_a - __m128d_1;
	return tmpxmm_a0;
}

inline vecdouble2 uX_abi operator-(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_negate_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi operator==(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_cmpeq_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator<(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_cmplt_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator<=(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_cmple_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator>(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_cmpgt_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator>=(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_cmpge_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi operator!=(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_cmpneq_pd(Inxmmd_a, Inxmmd_b));
}

uX_Use_decl_annotations
inline vecdouble2& uX_abi vecdouble2::load(uX_InReads(2) const double* Inpdouble) uX_noexcept
{
	m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
	return *this;
}

uX_Use_decl_annotations
inline vecdouble2& uX_abi vecdouble2::load_a(uX_InReads(2) const double* Inpdouble) uX_noexcept
{
	m128_xmmd = _uX_mm_load_pd(Inpdouble);
	return *this;
}

uX_Use_decl_annotations
inline void uX_abi vecdouble2::store(uX_OutWrites(2) double* Outpdouble) const uX_noexcept
{
	_uX_mm_storeu_pd(Outpdouble, m128_xmmd);
}

uX_Use_decl_annotations
inline void uX_abi vecdouble2::store_a(uX_OutWrites(2) double* Outpdouble) const uX_noexcept
{
	_uX_mm_store_pd(Outpdouble, m128_xmmd);
}

inline const vecdouble2 uX_abi vecdouble2::insert(double value, count_t index) uX_noexcept
{
	if (index > 1) return *this;
	m128_xmmd = _uX_mm_setelts_pd(m128_xmmd, value, index);
	return *this;
}

inline double uX_abi vecdouble2::extract(count_t index) const uX_noexcept
{
	if (index > 1) return 0.0;
	return _uX_mm_cvtelts_dbl(m128_xmmd, index);
}

inline vecdouble2& uX_abi vecdouble2::zero() uX_noexcept
{
	m128_xmmd = _uX_mm_setzero_pd();
	return *this;
}

inline vecdouble2& uX_abi vecdouble2::cutoff(const count_t indexN) uX_noexcept
{
	switch (indexN)
	{
		case 1:
			m128_xmmd = _uX_MM_SHUFFLER_PD_IM(m128_xmmd, __m128d_0, 0, 1);
			break;
		default:
			break;
	}
	return *this;
}

inline vecdouble2 uX_abi flip_sign(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_xor_pd(Inxmmd_a, __m128d_sign));
}

inline bool_t uX_abi is_zero(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return _uX_mm_iszero_pd(Inxmmd_a);
}

inline vecdouble2 uX_abi select(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_select_pd(Inxmmd_f, Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi if_add(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a + (Inxmmd_f & Inxmmd_b);
}

inline vecdouble2 uX_abi if_sub(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a - (Inxmmd_f & Inxmmd_b);
}

inline vecdouble2 uX_abi if_mul(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a * select(Inxmmd_f, Inxmmd_b, vecdouble2(__m128d_1));
}

inline vecdouble2 uX_abi if_div(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return Inxmmd_a / select(Inxmmd_f, Inxmmd_b, vecdouble2(__m128d_1));
}

inline vecdouble2 uX_abi sign_bit(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_signbit_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi sign_combine(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_signcombine_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi is_finite(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_isfinite_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi is_inf(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_isinf_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi is_nan(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_isnan_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi is_subnormal(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_issubnormal_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi is_zero_or_subnormal(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_iszeroorsubnormal_pd(Inxmmd_a));
}

inline vecdouble2& uX_abi vecdouble2::infinite() uX_noexcept
{
	m128_xmmd = _uX_mm_infinite_pd();
	return *this;
}

inline vecdouble2& uX_abi vecdouble2::nan() uX_noexcept
{
	m128_xmmd = _uX_mm_nan_pd();
	return *this;
}

inline double uX_abi horizontal_add(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return _uX_mm_horizontaladd_pd(Inxmmd_a);
}

inline double uX_abi horizontal_sub(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return _uX_mm_horizontalsub_pd(Inxmmd_a);
}

inline double uX_abi horizontal_mul(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return _uX_mm_horizontalmul_pd(Inxmmd_a);
}

inline vecdouble2 uX_abi max(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_max_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi min(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept
{
	return vecdouble2(_uX_mm_min_pd(Inxmmd_a, Inxmmd_b));
}

inline vecdouble2 uX_abi abs(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_abs_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi square(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_square_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi scale(const vecdouble2 Inxmmd_a, double Indouble_s) uX_noexcept
{
	return vecdouble2(_uX_mm_scale_pd(Inxmmd_a, Indouble_s));
}

inline vecdouble2 uX_abi rcp(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_rcp_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi sqrt(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_sqrt_pd(Inxmmd_a));
}

inline vecdouble2 uX_abi rsqrt(const vecdouble2 Inxmmd_a) uX_noexcept
{
	return vecdouble2(_uX_mm_rsqrt_pd(Inxmmd_a));
}*/

// vecdouble4 End
// // // // // // // // //

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end