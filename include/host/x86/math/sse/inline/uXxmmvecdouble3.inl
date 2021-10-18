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
// vecdouble3 Start

/*
inline void uX_abi vecdouble3::set_xmmd_0(const __m128d Inxmmd) uX_noexcept
{
	m128_xmmd_0 = Inxmmd;
}

inline void uX_abi vecdouble3::set_xmmd_1(const __m128d Inxmmd) uX_noexcept
{
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(Inxmmd, __m128d_false, 0, 0);
}*/

/*
inline void uX_abi vecdouble3::set(const vecdouble3 InHxmmd_a) uX_noexcept
{
	m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
	m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
}

inline void uX_abi vecdouble3::set_x(double Indouble_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SETDBL_PD_IM(m128_xmmd_0, Indouble_a, 0);
}

inline void uX_abi vecdouble3::set_xy(const vecdouble2 Inxmmd_a) uX_noexcept
{
	m128_xmmd_0 = Inxmmd_a;
}

inline void uX_abi vecdouble3::set_xyz(const vecdouble3 InHxmmd_a) uX_noexcept
{
	m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_1, m128_xmmd_1, 0, 1);
}

inline void uX_abi vecdouble3::set_xz(const vecdouble2 Inxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(Inxmmd_a, m128_xmmd_0, 0, 1);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(Inxmmd_a, m128_xmmd_1, 1, 1);
}

inline void uX_abi vecdouble3::set_xzy(const vecdouble3 InHxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_0, m128_xmmd_1, 1, 1);
}

inline void uX_abi vecdouble3::set_y(double Indouble_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SETDBL_PD_IM(m128_xmmd_0, Indouble_a, 1);
}

inline void uX_abi vecdouble3::set_yx(const vecdouble2 Inxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_PERMUTER_PD_IM(Inxmmd_a, 1, 0);
}

inline void uX_abi vecdouble3::set_yxz(const vecdouble3 InHxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_PERMUTER_PD_IM(InHxmmd_a.m128_xmmd_0, 1, 0);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_1, m128_xmmd_1, 0, 1);
}

inline void uX_abi vecdouble3::set_yz(const vecdouble2 Inxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(m128_xmmd_0, Inxmmd_a, 0, 0);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(Inxmmd_a, m128_xmmd_1, 1, 1);
}

inline void uX_abi vecdouble3::set_yzx(const vecdouble3 InHxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_0, m128_xmmd_1, 1, 1);
}

inline void uX_abi vecdouble3::set_z(double Indouble_a) uX_noexcept
{
	m128_xmmd_1 = _uX_MM_SETDBL_PD_IM(m128_xmmd_1, Indouble_a, 0);
}

inline void uX_abi vecdouble3::set_zx(const vecdouble2 Inxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(Inxmmd_a, m128_xmmd_0, 1, 1);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(Inxmmd_a, m128_xmmd_1, 0, 1);
}

inline void uX_abi vecdouble3::set_zxy(const vecdouble3 InHxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_0, m128_xmmd_1, 0, 1);
}

inline void uX_abi vecdouble3::set_zy(const vecdouble2 Inxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(m128_xmmd_0, Inxmmd_a, 0, 1);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(Inxmmd_a, m128_xmmd_1, 0, 1);
}

inline void uX_abi vecdouble3::set_zyx(const vecdouble3 InHxmmd_a) uX_noexcept
{
	m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InHxmmd_a.m128_xmmd_0, m128_xmmd_1, 0, 1);
}*/

/*
inline vecdouble3 uX_abi andnot(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_andnot_pd(InHxmmd_b.m128_xmmd_0, InHxmmd_a.m128_xmmd_0), _uX_mm_andnot_sd(InHxmmd_b.m128_xmmd_1, InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator&(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_and_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_and_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator|(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_or_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_or_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator^(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_xor_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator~(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_not_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_not_sd(InHxmmd_a.m128_xmmd_1));
}

inline bool_t uX_abi bandnot(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return _uX_mm_iandnot_pd(InHxmmd_b.m128_xmmd_0, InHxmmd_a.m128_xmmd_0) && _uX_mm_iandnot_sd(InHxmmd_b.m128_xmmd_1, InHxmmd_a.m128_xmmd_1);
}

inline bool_t uX_abi operator&&(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return _uX_mm_iand_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0) && _uX_mm_iand_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1);
}

inline bool_t uX_abi operator||(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return _uX_mm_ior_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0) || _uX_mm_ior_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1);
}

inline bool_t uX_abi operator!(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return _uX_mm_inot_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_inot_sd(InHxmmd_a.m128_xmmd_1);
}

inline bool_t uX_abi horizontal_and(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return _uX_mm_ihand_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_ihand_pd(InHxmmd_a.m128_xmmd_1);
}

inline bool_t uX_abi horizontal_or(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return _uX_mm_ihor_pd(InHxmmd_a.m128_xmmd_0) || _uX_mm_ihor_pd(InHxmmd_a.m128_xmmd_1);
}

inline vecdouble3& uX_abi operator&=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a = vecdouble3(_uX_mm_and_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_and_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3& uX_abi operator|=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a = vecdouble3(_uX_mm_or_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_or_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3& uX_abi operator^=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a = vecdouble3(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_xor_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator+(const vecdouble3 InHxmmd_a, double Indouble_b) uX_noexcept
{
	return vecdouble3(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_add_sd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble3 uX_abi operator+(double Indouble_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_add_sd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator+(const vecdouble3 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_add_sd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
}

inline vecdouble3 uX_abi operator+(const __m128d Inxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_add_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_add_sd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator+(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_add_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator-(const vecdouble3 InHxmmd_a, double Indouble_b) uX_noexcept
{
	return vecdouble3(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_sub_sd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble3 uX_abi operator-(double Indouble_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_sub_sd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator-(const vecdouble3 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_sub_sd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
}

inline vecdouble3 uX_abi operator-(const __m128d Inxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_sub_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_sd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator-(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator*(const vecdouble3 InHxmmd_a, double Indouble_b) uX_noexcept
{
	return vecdouble3(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_mul_sd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble3 uX_abi operator*(double Indouble_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_mul_sd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator*(const vecdouble3 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_mul_sd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
}

inline vecdouble3 uX_abi operator*(const __m128d Inxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_mul_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_sd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator*(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator/(const vecdouble3 InHxmmd_a, double Indouble_b) uX_noexcept
{
	return vecdouble3(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_div_sd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble3 uX_abi operator/(double Indouble_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_div_sd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator/(const vecdouble3 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_div_sd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
}

inline vecdouble3 uX_abi operator/(const __m128d Inxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_div_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_div_sd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator/(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_div_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3& uX_abi operator+=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a = vecdouble3(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_add_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3& uX_abi operator-=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a = vecdouble3(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3& uX_abi operator*=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a = vecdouble3(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3& uX_abi operator/=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a = vecdouble3(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_div_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3& uX_abi operator++(vecdouble3& InHxmmd_a) uX_noexcept
{
	InHxmmd_a = InHxmmd_a + __m128d_1;
	return InHxmmd_a;
}

inline vecdouble3& uX_abi operator--(vecdouble3& InHxmmd_a) uX_noexcept
{
	InHxmmd_a = InHxmmd_a - __m128d_1;
	return InHxmmd_a;
}

inline vecdouble3 uX_abi operator++(vecdouble3& InHxmmd_a, int) uX_noexcept
{
	vecdouble3 tmpxmm_a0 = InHxmmd_a;
	InHxmmd_a = InHxmmd_a + __m128d_1;
	return tmpxmm_a0;
}

inline vecdouble3 uX_abi operator--(vecdouble3& InHxmmd_a, int) uX_noexcept
{
	vecdouble3 tmpxmm_a0 = InHxmmd_a;
	InHxmmd_a = InHxmmd_a - __m128d_1;
	return tmpxmm_a0;
}

inline vecdouble3 uX_abi operator-(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_negate_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_negate_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator==(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_cmpeq_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpeq_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator<(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_cmplt_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmplt_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator<=(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_cmple_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmple_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator>(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_cmpgt_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpgt_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator>=(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_cmpge_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpge_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi operator!=(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_cmpneq_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpneq_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}*/

/*
uX_Use_decl_annotations
inline vecdouble3& uX_abi vecdouble3::load(uX_InReads(3) const double* Inpdouble) uX_noexcept
{
	m128_xmmd_0 = _uX_mm_loadu_pd(Inpdouble);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_uX_mm_loadu_pd(Inpdouble+2), __m128d_false, 0, 0);
	return *this;
}

uX_Use_decl_annotations
inline vecdouble3& uX_abi vecdouble3::load_a(uX_InReads(3) const double* Inpdouble) uX_noexcept
{
	m128_xmmd_0 = _uX_mm_load_pd(Inpdouble);
	m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_uX_mm_loadu_pd(Inpdouble+2), __m128d_false, 0, 0);
	return *this;
}

uX_Use_decl_annotations
inline void uX_abi vecdouble3::store(uX_OutWrites(3) double* Outpdouble) const uX_noexcept
{
	_uX_mm_storeu_pd(Outpdouble, m128_xmmd_0);
	_uX_mm_storeu_pd(Outpdouble+2, m128_xmmd_1);
}

uX_Use_decl_annotations
inline void uX_abi vecdouble3::store_a(uX_OutWrites(3) double* Outpdouble) const uX_noexcept
{
	_uX_mm_store_pd(Outpdouble, m128_xmmd_0);
	_uX_mm_storeu_pd(Outpdouble+2, m128_xmmd_1);
}*/

/*
inline const vecdouble3 uX_abi vecdouble3::insert(double value, count_t index) uX_noexcept
{
	if (index > 2) return *this;
	if (index > 1) {
		m128_xmmd_1 = _uX_mm_setelts_pd(m128_xmmd_1, value, index-2);
	}
	else {
		m128_xmmd_0 = _uX_mm_setelts_pd(m128_xmmd_0, value, index);
	}
	return *this;
}

inline double uX_abi vecdouble3::extract(count_t index) const uX_noexcept
{
	if (index > 2) return 0.0;
	return index > 1 ? _uX_mm_cvtelts_dbl(m128_xmmd_1, index-2) : _uX_mm_cvtelts_dbl(m128_xmmd_0, index);
}

inline vecdouble3& uX_abi vecdouble3::zero() uX_noexcept
{
	m128_xmmd_0 = _uX_mm_setzero_pd();
	m128_xmmd_1 = _uX_mm_setzero_pd();
	return *this;
}

inline vecdouble3& uX_abi vecdouble3::cutoff(const count_t indexN) uX_noexcept
{
	switch (indexN)
	{
		case 1:
			m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(m128_xmmd_0, __m128d_0, 0, 1);
			m128_xmmd_1 = __m128d_0;
			break;
		case 2:
			m128_xmmd_1 = __m128d_0;
			break;
		default:
			break;
	}
	return *this;
}

inline vecdouble3 uX_abi flip_sign(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, __m128d_sign), _uX_mm_xor_sd(InHxmmd_a.m128_xmmd_1, __m128d_0e_sign));
}

inline bool_t uX_abi is_zero(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return _uX_mm_iszero_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_iszero_sd(InHxmmd_a.m128_xmmd_1);
}

inline vecdouble3 uX_abi select(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_select_pd(InHxmmd_f.m128_xmmd_0, InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_select_pd(InHxmmd_f.m128_xmmd_1, InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi if_add(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a + (InHxmmd_f & InHxmmd_b);
}

inline vecdouble3 uX_abi if_sub(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a - (InHxmmd_f & InHxmmd_b);
}

inline vecdouble3 uX_abi if_mul(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a * select(InHxmmd_f, InHxmmd_b, vecdouble3(__m128d_1));
}

inline vecdouble3 uX_abi if_div(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return InHxmmd_a / select(InHxmmd_f, InHxmmd_b, vecdouble3(__m128d_1));
}

inline vecdouble3 uX_abi sign_bit(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_signbit_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_signbit_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi sign_combine(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_signcombine_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_signcombine_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi is_finite(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_isfinite_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isfinite_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi is_inf(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_isinf_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isinf_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi is_nan(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_isnan_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isnan_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi is_subnormal(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_issubnormal_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_issubnormal_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi is_zero_or_subnormal(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_iszeroorsubnormal_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_iszeroorsubnormal_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3& uX_abi vecdouble3::infinite() uX_noexcept
{
	m128_xmmd_0 = _uX_mm_infinite_pd();
	m128_xmmd_1 = _uX_mm_infinite_sd();
	return *this;
}

inline vecdouble3& uX_abi vecdouble3::nan() uX_noexcept
{
	m128_xmmd_0 = _uX_mm_nan_pd();
	m128_xmmd_1 = _uX_mm_nan_sd();
	return *this;
}

inline double uX_abi horizontal_add(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return horizontal_add(vecdouble2(_uX_mm_horizontaladd_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_horizontaladd_pd(InHxmmd_a.m128_xmmd_1)));
}

inline double uX_abi horizontal_sub(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return horizontal_sub(vecdouble2(_uX_mm_horizontalsub_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_horizontalsub_pd(InHxmmd_a.m128_xmmd_1)));
}

inline double uX_abi horizontal_mul(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return horizontal_mul(vecdouble2(_uX_mm_horizontalmul_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_horizontalmul_pd(InHxmmd_a.m128_xmmd_1)));
}

inline vecdouble3 uX_abi max(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_max_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_max_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi min(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept
{
	return vecdouble3(_uX_mm_min_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_min_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble3 uX_abi abs(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_abs_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_abs_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi square(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_square_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_square_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi scale(const vecdouble3 InHxmmd_a, double Indouble_s) uX_noexcept
{
	return vecdouble3(_uX_mm_scale_pd(InHxmmd_a.m128_xmmd_0, Indouble_s), _uX_mm_scale_sd(InHxmmd_a.m128_xmmd_1, Indouble_s));
}

inline vecdouble3 uX_abi rcp(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_rcp_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_rcp_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi sqrt(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_sqrt_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_sqrt_sd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble3 uX_abi rsqrt(const vecdouble3 InHxmmd_a) uX_noexcept
{
	return vecdouble3(_uX_mm_rsqrt_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_rsqrt_sd(InHxmmd_a.m128_xmmd_1));
}*/

// vecdouble4 End
// // // // // // // // //

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end