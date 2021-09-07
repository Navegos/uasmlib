#include "math/sse/uXxmmvecfloat.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

// Intel TBB library
/*
#include "tbb/task_scheduler_init.h"
using namespace tbb;
#include "tbb/parallel_for.h"
#include "tbb/blocked_range.h"
#include "tbb/blocked_range2d.h"
#include "tbb/partitioner.h"
#include "tbb/task_group.h"*/

#ifndef uX_XMM_INTRIN_H
#include "uXxmmintrin.h"
#endif uX_XMM_INTRIN_H

#ifndef uX_EMM_INTRIN_H
#include "uXemmintrin.h"
#endif uX_EMM_INTRIN_H

#ifndef uX_SMM_INTRIN_H
#include "uXsmmintrin.h"
#endif uX_SMM_INTRIN_H

namespace_uX
namespace_XMM
uX_PACK_PUSH_XMM

// VECTOR'S

// // // // // // // // //
// vecfloat Start

/*
vecfloat::vecfloat(float Infloat_a) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps1(Infloat_a);
}

vecfloat::vecfloat(float Infloat_X, float Infloat_Y, float Infloat_Z, float Infloat_W) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps(Infloat_W, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
vecfloat::vecfloat(uX_InReads(4) const float* Inpfloat) uX_noexcept
{
	m128_xmm = _uX_mm_loadu_ps(Inpfloat);
}

vecfloat::operator __m128() const uX_noexcept
{
	return m128_xmm;
}*/

/*
vecfloat::operator float*() const uX_noexcept
{
	return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

/*
vecfloat& uX_ABI vecfloat::operator=(const __m128 Inxmm) uX_noexcept
{
	m128_xmm = Inxmm;
	return *this;
}

vecfloat& uX_ABI vecfloat::operator=(const vecfloat4 Inxmm) uX_noexcept
{
	m128_xmm = Inxmm.get();
	return *this;
}

vecfloat& uX_ABI vecfloat::operator=(const vecfloat3 Inxmm) uX_noexcept
{
	m128_xmm = Inxmm.get();
	return *this;
}

vecfloat& uX_ABI vecfloat::operator=(const vecfloat2 Inxmm) uX_noexcept
{
	m128_xmm = Inxmm.get();
	return *this;
}

vecfloat& uX_ABI vecfloat::operator=(const vecfloat1 Inxmm) uX_noexcept
{
	m128_xmm = Inxmm.get();
	return *this;
}*/

/*
uX_Use_decl_annotations
vecfloat& uX_ABI vecfloat::operator=(uX_InReads(4) const float* Inpfloat) uX_noexcept
{
	m128_xmm = _uX_mm_loadu_ps(Inpfloat);
	return *this;
}*/

/*
vecfloat uX_ABI andnot(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_andnot_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator&(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_and_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator|(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_or_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator^(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_xor_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator~(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_not_ps(Inxmm_a.m128_xmm);
}

uint32_t uX_ABI iandnot(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_iandnot_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

uint32_t uX_ABI operator&&(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_iand_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

uint32_t uX_ABI operator||(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_ior_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

uint32_t uX_ABI operator!(const vecfloat Inxmm_a) uX_noexcept
{
	return  _uX_mm_inot_ps(Inxmm_a.m128_xmm);
}

uint32_t uX_ABI horizontal_and(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_ihand_ps(Inxmm_a.m128_xmm);
}

uint32_t uX_ABI horizontal_or(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_ihor_ps(Inxmm_a.m128_xmm);
}

vecfloat& uX_ABI vecfloat::operator&=(const vecfloat Inxmm_b) uX_noexcept
{
	m128_xmm = _uX_mm_and_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

vecfloat& uX_ABI vecfloat::operator|=(const vecfloat Inxmm_b) uX_noexcept
{
	m128_xmm = _uX_mm_or_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

vecfloat& uX_ABI vecfloat::operator^=(const vecfloat Inxmm_b) uX_noexcept
{
	m128_xmm = _uX_mm_xor_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

vecfloat uX_ABI operator+(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_add_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator-(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_sub_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator*(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_mul_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator/(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_div_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat& uX_ABI vecfloat::operator+=(const vecfloat Inxmm_b) uX_noexcept
{
	m128_xmm = _uX_mm_add_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

vecfloat& uX_ABI vecfloat::operator-=(const vecfloat Inxmm_b) uX_noexcept
{
	m128_xmm = _uX_mm_sub_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

vecfloat& uX_ABI vecfloat::operator*=(const vecfloat Inxmm_b) uX_noexcept
{
	m128_xmm = _uX_mm_mul_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

vecfloat& uX_ABI vecfloat::operator/=(const vecfloat Inxmm_b) uX_noexcept
{
	m128_xmm = _uX_mm_div_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

vecfloat uX_ABI operator++(const vecfloat Inxmm_a) uX_noexcept
{
	return Inxmm_a.m128_xmm + __m128_1;
}

vecfloat uX_ABI operator--(const vecfloat Inxmm_a) uX_noexcept
{
	return Inxmm_a.m128_xmm - __m128_1;
}

vecfloat uX_ABI operator++(const vecfloat Inxmm_a, int) uX_noexcept
{
	vecfloat tmpxmm_a = Inxmm_a;
	vecfloat tmpxmm_a0 = tmpxmm_a;
	tmpxmm_a.m128_xmm = tmpxmm_a.m128_xmm + __m128_1;
	return tmpxmm_a0;
}

vecfloat uX_ABI operator--(const vecfloat Inxmm_a, int) uX_noexcept
{
	vecfloat tmpxmm_a = Inxmm_a;
	vecfloat tmpxmm_a0 = tmpxmm_a;
	tmpxmm_a.m128_xmm = tmpxmm_a.m128_xmm - __m128_1;
	return tmpxmm_a0;
}

vecfloat uX_ABI operator-(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_negate_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI operator==(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_cmpeq_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator<(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_cmplt_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator<=(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_cmple_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator>(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_cmpgt_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator>=(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_cmpge_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI operator!=(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_cmpneq_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

float uX_ABI vecfloat::operator[](int index) const uX_noexcept
{
	return extract(index);
}

vecfloat& uX_ABI vecfloat::load(uX_InReads(4) const float* Inpfloat) uX_noexcept
{
	m128_xmm = _uX_mm_loadu_ps(Inpfloat);
	return *this;
}

vecfloat& uX_ABI vecfloat::load_a(uX_InReads(4) const float* Inpfloat) uX_noexcept
{
	m128_xmm = _uX_mm_load_ps(Inpfloat);
	return *this;
}

void uX_ABI vecfloat::store(uX_OutWrites(4) float* Outpfloat) const uX_noexcept
{
	_uX_mm_storeu_ps(Outpfloat, m128_xmm);
}

void uX_ABI vecfloat::store_a(uX_OutWrites(4) float* Outpfloat) const uX_noexcept
{
	_uX_mm_store_ps(Outpfloat, m128_xmm);
}

const vecfloat uX_ABI vecfloat::insert(float value, const uint32_t index) uX_noexcept
{
	m128_xmm = _uX_mm_setelts_ps(m128_xmm, value, index);
	return *this;
}

float uX_ABI vecfloat::extract(const uint32_t index) const uX_noexcept
{
	return _uX_mm_cvtelts_flt(m128_xmm, index);
}

__m128 uX_ABI vecfloat::get() const uX_noexcept
{
	return m128_xmm;
}

vecfloat4 uX_ABI vecfloat::get_xyzw() const uX_noexcept
{
	return vecfloat4(m128_xmm);
}

vecfloat3 uX_ABI vecfloat::get_xyz() const uX_noexcept
{
	return vecfloat3(m128_xmm);
}

vecfloat2 uX_ABI vecfloat::get_xy() const uX_noexcept
{
	return vecfloat2(m128_xmm);
}

vecfloat1 uX_ABI vecfloat::getv_x() const uX_noexcept
{
	return vecfloat1(m128_xmm);
}

float uX_ABI vecfloat::get_x() const uX_noexcept
{
	return _x;
}

float uX_ABI vecfloat::get_y() const uX_noexcept
{
	return _y;
}

float uX_ABI vecfloat::get_z() const uX_noexcept
{
	return _z;
}

float uX_ABI vecfloat::get_w() const uX_noexcept
{
	return _w;
}

__m128& uX_ABI vecfloat::ref() uX_noexcept
{
	return  m128_xmm;
}

vecfloat4& uX_ABI vecfloat::ref_xyzw() uX_noexcept
{
	return vecfloat4(m128_xmm);
}

vecfloat3& uX_ABI vecfloat::ref_xyz() uX_noexcept
{
	return vecfloat3(m128_xmm);
}

vecfloat2& uX_ABI vecfloat::ref_xy() uX_noexcept
{
	return vecfloat2(m128_xmm);
}

vecfloat1& uX_ABI vecfloat::refv_x() uX_noexcept
{
	return vecfloat1(m128_xmm);
}

float& uX_ABI vecfloat::ref_x() uX_noexcept
{
	return _x;
}

float& uX_ABI vecfloat::ref_y() uX_noexcept
{
	return _y;
}

float& uX_ABI vecfloat::ref_z() uX_noexcept
{
	return _z;
}

float& uX_ABI vecfloat::ref_w() uX_noexcept
{
	return _w;
}

void uX_ABI vecfloat::set_zero() uX_noexcept
{
	m128_xmm = _uX_mm_setzero_ps();
}

vecfloat& uX_ABI vecfloat::cutoff(const uint32_t indexN) uX_noexcept
{
	m128_xmm = _uX_mm_cutoff_ps(m128_xmm, indexN);
	return *this;
}

vecfloat& uX_ABI vecfloat::flip_sign() uX_noexcept
{
	m128_xmm = _uX_mm_xor_ps(m128_xmm, __m128_sign);
	return *this;
}

uint32_t uX_ABI vecfloat::is_zero() uX_noexcept
{
	return _uX_mm_iszero_ps(m128_xmm);
}

vecfloat uX_ABI select(const vecfloat Inxmm_s, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_select_ps(Inxmm_s.m128_xmm, Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI if_add(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return Inxmm_a + (Inxmm_f & Inxmm_b);
}

vecfloat uX_ABI if_sub(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return Inxmm_a - (Inxmm_f & Inxmm_b);
}

vecfloat uX_ABI if_mul(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return Inxmm_a * select(Inxmm_f, Inxmm_b, __m128_1);
}

vecfloat uX_ABI if_div(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return Inxmm_a / select(Inxmm_f, Inxmm_b, __m128_1);
}

vecfloat uX_ABI sign_bit(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_signbit_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI sign_combine(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_signcombine_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI is_finite(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_isfinite_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI is_nan(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_isnan_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI is_subnormal(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_issubnormal_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI is_zero_or_subnormal(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_iszeroorsubnormal_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI infinite() uX_noexcept
{
	return _uX_mm_infinite_ps();
}

vecfloat uX_ABI nan() uX_noexcept
{
	return _uX_mm_nan_ps();
}

float uX_ABI horizontal_add(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_horizontaladd_ps(Inxmm_a.m128_xmm);
}

float uX_ABI horizontal_mul(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_horizontalmul_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI max(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_max_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI min(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept
{
	return _uX_mm_min_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_ABI abs(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_abs_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI square(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_mul_ps(Inxmm_a.m128_xmm, Inxmm_a.m128_xmm);
}

vecfloat uX_ABI scale(const vecfloat Inxmm_a, float Infloat_s) uX_noexcept
{
	return _uX_mm_mul_ps(_uX_mm_set_ps1(Infloat_s), Inxmm_a.m128_xmm);
}

vecfloat uX_ABI rcpest(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_rcp_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI rcp(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_div_ps(__m128_1, Inxmm_a.m128_xmm);
}

vecfloat uX_ABI sqrtest(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_sqrt_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI sqrt(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_sqrt_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI rsqrtest(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_rsqrt_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_ABI rsqrt(const vecfloat Inxmm_a) uX_noexcept
{
	return _uX_mm_div_ps(__m128_1, _uX_mm_sqrt_ps(Inxmm_a.m128_xmm));
}*/

// vecfloat End
// // // // // // // // //

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/