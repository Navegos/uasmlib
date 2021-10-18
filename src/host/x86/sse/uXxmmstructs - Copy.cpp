
#include "uXxmmstructs.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

// Intel TBB library
#include "tbb/task_scheduler_init.h"
using namespace tbb;
#include "tbb/parallel_for.h"
#include "tbb/blocked_range.h"
#include "tbb/blocked_range2d.h"
#include "tbb/partitioner.h"
#include "tbb/task_group.h"

#include "uXxmmintrin.h"
#include "uXemmintrin.h"
#include "uXsmmintrin.h"

namespace_uX
namespace_XMM
uX_PACK_PUSH_16

// VECTOR'S

// // // // // // // // //
// vecfloat Start

#ifndef uX_DEFAULT_CTOR_SUPPORT
vecfloat::vecfloat(const vecfloat& Invecfloat)
{
    m128_xmm = Invecfloat.m128_xmm;
}

vecfloat& uX_callconv vecfloat::operator=(const vecfloat& Invecfloat)
{
    m128_xmm = Invecfloat.m128_xmm;
    return *this;
}

vecfloat::vecfloat(vecfloat&& Invecfloat)
{
    m128_xmm = Invecfloat.m128_xmm;
}

vecfloat& uX_callconv vecfloat::operator=(vecfloat&& Invecfloat)
{
    m128_xmm = Invecfloat.m128_xmm;
    return *this;
}
#endif

/*
vecfloat::vecfloat(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
}*/

uX_Use_decl_annotations
vecfloat::vecfloat(uX_InReads(4) const float* Inpfloat)
{
    m128_xmm = _uX_mm_loadu_ps(Inpfloat);
}

vecfloat::operator __m128() const
{
    return m128_xmm;
}

/*
vecfloat::operator float*() const
{
    return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

vecfloat& uX_callconv vecfloat::operator=(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
    return *this;
}

vecfloat& uX_callconv vecfloat::operator=(const vecfloat4 Inxmm)
{
    m128_xmm = Inxmm.get();
    return *this;
}

vecfloat& uX_callconv vecfloat::operator=(const vecfloat3 Inxmm)
{
    m128_xmm = Inxmm.get();
    return *this;
}

vecfloat& uX_callconv vecfloat::operator=(const vecfloat2 Inxmm)
{
    m128_xmm = Inxmm.get();
    return *this;
}

vecfloat& uX_callconv vecfloat::operator=(const vecfloat1 Inxmm)
{
    m128_xmm = Inxmm.get();
    return *this;
}

vecfloat::vecfloat(float Infloat_X, float Infloat_Y, float Infloat_Z, float Infloat_W)
{
    m128_xmm = _uX_mm_set_ps(Infloat_W, Infloat_Z, Infloat_Y, Infloat_X);
}

vecfloat::vecfloat(float Infloat_a)
{
    m128_xmm = _uX_mm_set_ps1(Infloat_a);
}

uX_Use_decl_annotations
vecfloat& uX_callconv vecfloat::operator=(uX_InReads(4) const float* Inpfloat)
{
    m128_xmm = _uX_mm_loadu_ps(Inpfloat);
    return *this;
}

vecfloat uX_callconv andnot(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_andnot_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator&(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_and_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator|(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_or_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator^(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_xor_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator~(const vecfloat Inxmm_a)
{
    return _uX_mm_not_ps(Inxmm_a.m128_xmm);
}

unsigned int uX_callconv iandnot(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_iandnot_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

unsigned int uX_callconv operator&&(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_iand_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

unsigned int uX_callconv operator||(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_ior_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

unsigned int uX_callconv operator!(const vecfloat Inxmm_a)
{
    return  _uX_mm_inot_ps(Inxmm_a.m128_xmm);
}

unsigned int uX_callconv horizontal_and(const vecfloat Inxmm_a)
{
    return _uX_mm_ihand_ps(Inxmm_a.m128_xmm);
}

unsigned int uX_callconv horizontal_or(const vecfloat Inxmm_a)
{
    return _uX_mm_ihor_ps(Inxmm_a.m128_xmm);
}

vecfloat& uX_callconv vecfloat::operator&=(const vecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_and_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

vecfloat& uX_callconv vecfloat::operator|=(const vecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_or_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

vecfloat& uX_callconv vecfloat::operator^=(const vecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_xor_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

vecfloat uX_callconv operator+(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_add_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator-(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_sub_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator*(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_mul_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator/(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_div_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat& uX_callconv vecfloat::operator+=(const vecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_add_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

vecfloat& uX_callconv vecfloat::operator-=(const vecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_sub_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

vecfloat& uX_callconv vecfloat::operator*=(const vecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_mul_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

vecfloat& uX_callconv vecfloat::operator/=(const vecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_div_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

vecfloat uX_callconv operator++(const vecfloat Inxmm_a)
{
    return Inxmm_a.m128_xmm + __m128_1;
}

vecfloat uX_callconv operator--(const vecfloat Inxmm_a)
{
    return Inxmm_a.m128_xmm - __m128_1;
}

vecfloat uX_callconv operator++(const vecfloat Inxmm_a, int)
{
    vecfloat tmpxmm_a = Inxmm_a;
    vecfloat tmpxmm_a0 = tmpxmm_a;
    tmpxmm_a.m128_xmm = tmpxmm_a.m128_xmm + __m128_1;
    return tmpxmm_a0;
}

vecfloat uX_callconv operator--(const vecfloat Inxmm_a, int)
{
    vecfloat tmpxmm_a = Inxmm_a;
    vecfloat tmpxmm_a0 = tmpxmm_a;
    tmpxmm_a.m128_xmm = tmpxmm_a.m128_xmm - __m128_1;
    return tmpxmm_a0;
}

vecfloat uX_callconv operator-(const vecfloat Inxmm_a)
{
    return _uX_mm_negate_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv operator==(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_cmpeq_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator<(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_cmplt_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator<=(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_cmple_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator>(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_cmpgt_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator>=(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_cmpge_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv operator!=(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_cmpneq_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

const float& uX_callconv vecfloat::operator[](int index) const
{
    return extract(index);
}

float& uX_callconv vecfloat::operator[](int index)
{
    float tmp = extract(index);
    return tmp;
}

vecfloat& uX_callconv vecfloat::load(uX_InReads(4) const float* Inpfloat)
{
    m128_xmm = _uX_mm_loadu_ps(Inpfloat);
    return *this;
}

vecfloat& uX_callconv vecfloat::load_a(uX_InReads(4) const float* Inpfloat)
{
    m128_xmm = _uX_mm_load_ps(Inpfloat);
    return *this;
}

void uX_callconv vecfloat::store(uX_OutWrites(4) float* Outpfloat) const
{
    _uX_mm_storeu_ps(Outpfloat, m128_xmm);
}

void uX_callconv vecfloat::store_a(uX_OutWrites(4) float* Outpfloat) const
{
    _uX_mm_store_ps(Outpfloat, m128_xmm);
}

const vecfloat uX_callconv vecfloat::insert(float value, const unsigned int index)
{
    m128_xmm = _uX_mm_setelts_ps(m128_xmm, value, index);
    return *this;
}

float uX_callconv vecfloat::extract(const unsigned int index) const
{
    return _uX_mm_cvtelts_flt(m128_xmm, index);
}

vecfloat uX_callconv vecfloat::get() const
{
    return *this;
}

vecfloat4 uX_callconv vecfloat::get_xyzw() const
{
    return *this;
}

vecfloat3 uX_callconv vecfloat::get_xyz() const
{
    return vecfloat3(*this);
}

vecfloat2 uX_callconv vecfloat::get_xy() const
{
    return vecfloat2(*this);
}

vecfloat1 uX_callconv vecfloat::getv_x() const
{
    return vecfloat1(*this);
}

float uX_callconv vecfloat::get_x() const
{
    return _x;
}

float uX_callconv vecfloat::get_y() const
{
    return _y;
}

float uX_callconv vecfloat::get_z() const
{
    return _z;
}

float uX_callconv vecfloat::get_w() const
{
    return _w;
}

vecfloat& uX_callconv vecfloat::ref()
{
    return *this;
}

vecfloat4& uX_callconv vecfloat::ref_xyzw()
{
    return vecfloat4(*this);
}

vecfloat3& uX_callconv vecfloat::ref_xyz()
{
    return vecfloat3(*this);
}

vecfloat2& uX_callconv vecfloat::ref_xy()
{
    return vecfloat2(*this);
}

vecfloat1& uX_callconv vecfloat::refv_x()
{
    return vecfloat1(*this);
}

float& uX_callconv vecfloat::ref_x()
{
    return _x;
}

float& uX_callconv vecfloat::ref_y()
{
    return _y;
}

float& uX_callconv vecfloat::ref_z()
{
    return _z;
}

float& uX_callconv vecfloat::ref_w()
{
    return _w;
}

void uX_callconv vecfloat::set_zero()
{
    m128_xmm = _uX_mm_setzero_ps();
}

vecfloat& uX_callconv vecfloat::cutoff(const unsigned int indexN)
{
    m128_xmm = _uX_mm_cutoff_ps(m128_xmm, indexN);
    return *this;
}

vecfloat& uX_callconv vecfloat::flip_sign()
{
    m128_xmm = _uX_mm_xor_ps(m128_xmm, __m128_sign);
    return *this;
}

unsigned int uX_callconv vecfloat::is_zero()
{
    return _uX_mm_iszero_ps(m128_xmm);
}

vecfloat uX_callconv select(const vecfloat Inxmm_s, const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_select_ps(Inxmm_s.m128_xmm, Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv if_add(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return Inxmm_a + (Inxmm_f & Inxmm_b);
}

vecfloat uX_callconv if_sub(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return Inxmm_a - (Inxmm_f & Inxmm_b);
}

vecfloat uX_callconv if_mul(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return Inxmm_a * select(Inxmm_f, Inxmm_b, __m128_1);
}

vecfloat uX_callconv if_div(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return Inxmm_a / select(Inxmm_f, Inxmm_b, __m128_1);
}

vecfloat uX_callconv sign_bit(const vecfloat Inxmm_a)
{
    return _uX_mm_signbit_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv sign_combine(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_signcombine_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv is_finite(const vecfloat Inxmm_a)
{
    return _uX_mm_isfinite_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv is_nan(const vecfloat Inxmm_a)
{
    return _uX_mm_isnan_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv is_subnormal(const vecfloat Inxmm_a)
{
    return _uX_mm_issubnormal_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv is_zero_or_subnormal(const vecfloat Inxmm_a)
{
    return _uX_mm_iszeroorsubnormal_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv infinite()
{
    return _uX_mm_infinite_ps();
}

vecfloat uX_callconv nan()
{
    return _uX_mm_nan_ps();
}

float uX_callconv horizontal_add(const vecfloat Inxmm_a)
{
    return _uX_mm_horizontaladd_ps(Inxmm_a.m128_xmm);
}

float uX_callconv horizontal_mul(const vecfloat Inxmm_a)
{
    return _uX_mm_horizontalmul_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv max(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_max_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv min(const vecfloat Inxmm_a, const vecfloat Inxmm_b)
{
    return _uX_mm_min_ps(Inxmm_a.m128_xmm, Inxmm_b.m128_xmm);
}

vecfloat uX_callconv abs(const vecfloat Inxmm_a)
{
    return _uX_mm_abs_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv square(const vecfloat Inxmm_a)
{
    return _uX_mm_mul_ps(Inxmm_a.m128_xmm, Inxmm_a.m128_xmm);
}

vecfloat uX_callconv scale(const vecfloat Inxmm_a, float Infloat_s)
{
    return _uX_mm_mul_ps(_uX_mm_set_ps1(Infloat_s), Inxmm_a.m128_xmm);
}

vecfloat uX_callconv rcpest(const vecfloat Inxmm_a)
{
    return _uX_mm_rcp_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv rcp(const vecfloat Inxmm_a)
{
    return _uX_mm_div_ps(__m128_1, Inxmm_a.m128_xmm);
}

vecfloat uX_callconv sqrtest(const vecfloat Inxmm_a)
{
    return _uX_mm_sqrt_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv sqrt(const vecfloat Inxmm_a)
{
    return _uX_mm_sqrt_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv rsqrtest(const vecfloat Inxmm_a)
{
    return _uX_mm_rsqrt_ps(Inxmm_a.m128_xmm);
}

vecfloat uX_callconv rsqrt(const vecfloat Inxmm_a)
{
    return _uX_mm_div_ps(__m128_1, _uX_mm_sqrt_ps(Inxmm_a.m128_xmm));
}

// vecfloat End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// vecint8 Start

#ifndef uX_DEFAULT_CTOR_SUPPORT
vecint8::vecint8(const vecint8& Invecint8)
{
    m128_xmmi = Invecint8.m128_xmmi;
}

vecint8& uX_callconv vecint8::operator=(const vecint8& Invecint8)
{
    m128_xmmi = Invecint8.m128_xmmi;
    return *this;
}

vecint8::vecint8(vecint8&& Invecint8)
{
    m128_xmmi = Invecint8.m128_xmmi;
}

vecint8& uX_callconv vecint8::operator=(vecint8&& Invecint8)
{
    m128_xmmi = Invecint8.m128_xmmi;
    return *this;
}
#endif

/*
vecint8::vecint8(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecint8::vecint8(uX_InReads(16) const __int8* Inpint8)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

vecint8::operator __m128i(void) const
{
    return m128_xmmi;
}

vecint8& uX_callconv vecint8::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

/*
vecint8::operator __int8*(void) const
{
    return reinterpret_cast<__int8*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecint8::vecint8(const __int8 Inpint8_0, const __int8 Inpint8_1, const __int8 Inpint8_2, const __int8 Inpint8_3,
                 const __int8 Inpint8_4, const __int8 Inpint8_5, const __int8 Inpint8_6, const __int8 Inpint8_7,
                 const __int8 Inpint8_8, const __int8 Inpint8_9, const __int8 Inpint8_10, const __int8 Inpint8_11,
                 const __int8 Inpint8_12, const __int8 Inpint8_13, const __int8 Inpint8_14, const __int8 Inpint8_15)
{
    m128_xmmi = _uX_mm_set_epi8(Inpint8_15, Inpint8_14, Inpint8_13, Inpint8_12, Inpint8_11, Inpint8_10, Inpint8_9, Inpint8_8,
                                Inpint8_7, Inpint8_6, Inpint8_5, Inpint8_4, Inpint8_3, Inpint8_2, Inpint8_1, Inpint8_0);
}

uX_Use_decl_annotations
vecint8& uX_callconv vecint8::operator=(uX_InReads(16) const __int8* Inpint8)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
    return *this;
}

vecint8 uX_callconv andnot(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_andnot_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator&(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_and_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator|(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_or_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator^(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_xor_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator~(const vecint8 Inxmm_a)
{
    return _uX_mm_not_epi8(Inxmm_a.m128_xmmi);
}

unsigned int uX_callconv iandnot(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_iandnot_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

unsigned int uX_callconv operator&&(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_iand_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

unsigned int uX_callconv operator||(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_ior_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

unsigned int uX_callconv operator!(const vecint8 Inxmm_a)
{
    return _uX_mm_inot_epi8(Inxmm_a.m128_xmmi);
}

unsigned int uX_callconv horizontal_and(const vecint8 Inxmm_a)
{
    return _uX_mm_ihand_si128(Inxmm_a.m128_xmmi);
}

unsigned int uX_callconv horizontal_or(const vecint8 Inxmm_a)
{
    return _uX_mm_ihor_si128(Inxmm_a.m128_xmmi);
}

vecint8& uX_callconv vecint8::operator&=(const vecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_and_si128(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

vecint8& uX_callconv vecint8::operator|=(const vecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_or_si128(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

vecint8& uX_callconv vecint8::operator^=(const vecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_xor_si128(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

vecint8 uX_callconv operator+(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_add_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator-(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_sub_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator*(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_mule_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator/(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_div_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8& uX_callconv vecint8::operator+=(const vecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_add_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

vecint8& uX_callconv vecint8::operator-=(const vecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_sub_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

vecint8& uX_callconv vecint8::operator*=(const vecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_mule_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

vecint8& uX_callconv vecint8::operator/=(const vecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_div_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

vecint8 uX_callconv operator++(const vecint8 Inxmm_a)
{
    return Inxmm_a.m128_xmmi + __m128i_i8_1;
}

vecint8 uX_callconv operator--(const vecint8 Inxmm_a)
{
    return Inxmm_a.m128_xmmi - __m128i_i8_1;
}

vecint8 uX_callconv operator++(const vecint8 Inxmm_a, int)
{
    vecint8 tmpxmm_a = Inxmm_a;
    vecint8 tmpxmm_a0 = tmpxmm_a;
    tmpxmm_a.m128_xmmi = tmpxmm_a.m128_xmmi + __m128i_i8_1;
    return tmpxmm_a0;
}

vecint8 uX_callconv operator--(const vecint8 Inxmm_a, int)
{
    vecint8 tmpxmm_a = Inxmm_a;
    vecint8 tmpxmm_a0 = tmpxmm_a;
    tmpxmm_a.m128_xmmi = tmpxmm_a.m128_xmmi - __m128i_i8_1;
    return tmpxmm_a0;
}

vecint8 uX_callconv operator-(const vecint8 Inxmm_a)
{
    return _uX_mm_negate_epi8(Inxmm_a.m128_xmmi);
}

vecint8 uX_callconv operator==(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_cmpeq_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator<(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_cmplt_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator<=(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_cmple_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator>(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_cmpgt_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator>=(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_cmpge_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator!=(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
    return _uX_mm_cmpneq_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator<<(const vecint8 Inxmm_a, int InIntCount)
{
    /*vecint8 tmp = Inxmm_a;
    for (int i = 0; i < 16; ++i)
    {
        tmp.m128_ib[i] = tmp.m128_ib[i] << InIntCount;
    }
    return tmp.load_a(tmp.m128_ib);*/
    return _uX_mm_sll_epi16(_uX_mm_and_si128(Inxmm_a.m128_xmmi, _uX_mm_set1_epi8(static_cast<char>(static_cast<unsigned int>(0xff) >> static_cast<unsigned int>(InIntCount)))), _uX_mm_cvtsi32_si128(InIntCount));
}

vecint8 uX_callconv operator<<(const vecint8 Inxmm_a, const vecint8 Inxmm_Count)
{
    vecint8 tmpmask = _uX_mm_null_si128;
    /*vecint8 tmp = Inxmm_a;
    for (int i = 0; i < 16; ++i)
    {
        tmp.m128_ib[i] = tmp.m128_ib[i] << Inxmm_Count.m128_ib[i];
    }
    return tmp.load_a(tmp.m128_ib);*/
    for (int i = 0; i < 16; ++i)
    {
        tmpmask.m128_ib[i] = static_cast<char>(static_cast<unsigned int>(0xff) >> static_cast<unsigned int>(Inxmm_Count.m128_ib[i]));
    }
    return _uX_mm_sll_epi16(_uX_mm_and_si128(Inxmm_a.m128_xmmi, tmpmask.load_a(tmpmask.m128_ib)), Inxmm_Count);
}

vecint8 uX_callconv operator>>(const vecint8 Inxmm_a, int InIntCount)
{
    return _uX_mm_select_si128(__m128i_flt_byte_even, _uX_mm_sra_epi16(_uX_mm_slli_epi16(Inxmm_a.m128_xmmi, 8), _uX_mm_cvtsi32_si128(InIntCount + 8)), _uX_mm_sra_epi16(Inxmm_a.m128_xmmi, _uX_mm_cvtsi32_si128(InIntCount)));
}

vecint8 uX_callconv operator>>(const vecint8 Inxmm_a, const vecint8 Inxmm_Count)
{
    return _uX_mm_select_si128(__m128i_flt_byte_even, _uX_mm_sra_epi16(_uX_mm_slli_epi16(Inxmm_a.m128_xmmi, 8), Inxmm_Count + _uX_mm_cvtsi32_si128(8)), _uX_mm_sra_epi16(Inxmm_a.m128_xmmi, Inxmm_Count));
}

vecint8& uX_callconv vecint8::operator<<=(int InIntCount)
{
    m128_xmmi = *this << InIntCount;
    return *this;
}

vecint8& uX_callconv vecint8::operator<<=(const vecint8 Inxmm_Count)
{
    m128_xmmi = *this << Inxmm_Count;
    return *this;
}

vecint8& uX_callconv vecint8::operator>>=(int InIntCount)
{
    m128_xmmi = *this >> InIntCount;
    return *this;
}

vecint8& uX_callconv vecint8::operator>>=(const vecint8 Inxmm_Count)
{
    m128_xmmi = *this >> Inxmm_Count;
    return *this;
}

const __int8& uX_callconv vecint8::operator[](int index) const
{
    return extract(index);
}

__int8& uX_callconv vecint8::operator[](int index)
{
    __int8 tmp = extract(index);
    return tmp;
}

vecint8& uX_callconv vecint8::load(uX_InReads(16) const __int8* Inpint8)
{
    m128_xmmi = _uX_mm_loadu_si128(Inpint8);
    return *this;
}

vecint8& uX_callconv vecint8::load_a(uX_InReads(16) const __int8* Inpint8)
{
    m128_xmmi = _uX_mm_load_si128(Inpint8);
    return *this;
}

void uX_callconv vecint8::store(uX_OutWrites(16) __int8* Outpint8) const
{
    _uX_mm_storeu_si128(Outpint8, m128_xmmi);
}

void uX_callconv vecint8::store_a(uX_OutWrites(16) __int8* Outpint8) const
{
    _uX_mm_store_si128(Outpint8, m128_xmmi);
}

const vecint8 uX_callconv vecint8::insert(__int8 value, const unsigned int index)
{
    m128_xmmi = _uX_mm_cvtepi8_si128(m128_xmmi, value, index);
    return *this;
}

__int8 uX_callconv vecint8::extract(const unsigned int index) const
{
    return _uX_mm_cvtsi128_epi8(m128_xmmi, index);
}

vecint8 uX_callconv compress(const vecint16 Inxmm_low, const vecint16 Inxmm_high)
{
    return  _uX_mm_packus_epi16(_uX_mm_and_si128(Inxmm_low, __m128i_flt_byte_even), _uX_mm_and_si128(Inxmm_high, __m128i_flt_byte_even));
}

vecint8 uX_callconv compress_saturated(const vecint16 Inxmm_low, const vecint16 Inxmm_high)
{
    return  _uX_mm_packs_epi16(Inxmm_low, Inxmm_high);
}

// vecint8 End
// // // // // // // // //

// // // // // // // // //
// vecuint8 Start
/*
vecuint8::vecuint8(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecuint8::vecuint8(const unsigned __int8* Inpint8)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

vecuint8::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
vecuint8::operator unsigned __int8*(void) const
{
    return reinterpret_cast<unsigned __int8*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecuint8& uX_callconv vecuint8::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
vecuint8& uX_callconv vecuint8::operator=(const unsigned __int8* Inpint8)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
    return *this;
}
// vecuint8 End
// // // // // // // // //

// // // // // // // // //
// vecint16 Start

/*
vecint16::vecint16(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecint16::vecint16(const __int16* Inpint16)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
}

vecint16::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
vecint16::operator __int16*(void) const
{
    return reinterpret_cast<__int16*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecint16& uX_callconv vecint16::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
vecint16& uX_callconv vecint16::operator=(const __int16* Inpint16)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
    return *this;
}

vecint16 uX_callconv vecint16::extend_low(const vecint8 Inxmm_a)
{
    return _uX_mm_unpacklo_epi8(Inxmm_a, _uX_mm_cmpgt_epi8(_uX_mm_setzero_si128(), Inxmm_a));
}

vecint16 uX_callconv vecint16::extend_high(const vecint8 Inxmm_a)
{
    return _uX_mm_unpackhi_epi8(Inxmm_a, _uX_mm_cmpgt_epi8(_uX_mm_setzero_si128(), Inxmm_a));
}

// vecint16 End
// // // // // // // // //

// // // // // // // // //
// vecuint16 Start
/*
vecuint16::vecuint16(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecuint16::vecuint16(const unsigned __int16* Inpint16)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
}

vecuint16::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
vecuint16::operator unsigned __int16*(void) const
{
    return reinterpret_cast<unsigned __int16*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecuint16& uX_callconv vecuint16::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
vecuint16& uX_callconv vecuint16::operator=(const unsigned __int16* Inpint16)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
    return *this;
}
// vecint8 End
// // // // // // // // //

// // // // // // // // //
// vecint32 Start

/*
vecint32::vecint32(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecint32::vecint32(const __int32* Inpint32)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
}

vecint32::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
vecint32::operator __int32*(void) const
{
    return reinterpret_cast<__int32*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecint32& uX_callconv vecint32::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
vecint32& uX_callconv vecint32::operator=(const __int32* Inpint32)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
    return *this;
}
// vecint32 End
// // // // // // // // //

// // // // // // // // //
// vecuint32 Start
/*
vecuint32::vecuint32(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecuint32::vecuint32(const unsigned __int32* Inpint32)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
}

vecuint32::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
vecuint32::operator unsigned __int32*(void) const
{
    return reinterpret_cast<unsigned __int32*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecuint32& uX_callconv vecuint32::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
vecuint32& uX_callconv vecuint32::operator=(const unsigned __int32* Inpint32)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
    return *this;
}

// vecuint32 End
// // // // // // // // //

// // // // // // // // //
// vecint64 Start

/*
vecint64::vecint64(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecint64::vecint64(const __int64* Inpint64)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
}

vecint64::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
vecint64::operator __int64*(void) const
{
    return reinterpret_cast<__int64*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecint64& uX_callconv vecint64::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
vecint64& uX_callconv vecint64::operator=(const __int64* Inpint64)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
    return *this;
}

// vecint64 End
// // // // // // // // //

// // // // // // // // //
// vecuint64 Start
/*
vecuint64::vecuint64(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecuint64::vecuint64(const unsigned __int64* Inpint64)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
}

vecuint64::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
vecuint64::operator unsigned __int64*(void) const
{
    return reinterpret_cast<unsigned __int64*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecuint64& uX_callconv vecuint64::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
vecuint64& uX_callconv vecuint64::operator=(const unsigned __int64* Inpint64)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
    return *this;
}

// vecuint64 End
// // // // // // // // //

// // // // // // // // //
// vecdouble Start
/*
vecdouble::vecdouble(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
}*/

uX_Use_decl_annotations
vecdouble::vecdouble(const double* Inpdouble)
{
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
}

vecdouble::operator __m128d(void) const
{
    return m128_xmmd;
}

/*
vecdouble::operator double*(void) const
{
    return _uX_ptr_moveu_mm_pd(m128_xmmd);
}*/

vecdouble& uX_callconv vecdouble::operator=(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
    return *this;
}

uX_Use_decl_annotations
vecdouble& uX_callconv vecdouble::operator=(const double* Inpdouble)
{
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
    return *this;
}

// vecdouble End
// // // // // // // // //

#endif // uX_SSE2

// // // // // // // // //
// vecfloat1 Start
vecfloat1::vecfloat1(float Infloat)
{
    m128_xmm = _uX_mm_set_ss(Infloat);
}

vecfloat1::operator __m128(void) const
{
    return m128_xmm;
}

/*
vecfloat1::operator float(void) const
{
    return _uX_mm_cvtss_f32(m128_xmm);
}*/

vecfloat1& uX_callconv vecfloat1::operator=(const __m128 Inxmm)
{
    m128_xmm = _uX_mm_move_ss(__m128_false, Inxmm);
    return *this;
}

vecfloat1& uX_callconv vecfloat1::operator=(const vecfloat Inxmm)
{
    m128_xmm = _uX_mm_move_ss(__m128_false, Inxmm);
    return *this;
}

vecfloat1& uX_callconv vecfloat1::operator=(float Infloat)
{
    m128_xmm = _uX_mm_set_ss(Infloat);
    return *this;
}

vecfloat1 uX_callconv vecfloat1::get() const
{
    return m128_xmm;
}

float uX_callconv vecfloat1::get_x() const
{
    return _x;
}

vecfloat1& uX_callconv vecfloat1::ref()
{
    return *this;
}

float& uX_callconv vecfloat1::ref_x()
{
    return _x;
}

// vecfloat1 End
// // // // // // // // //

// // // // // // // // //
// vecfloat2 Start
vecfloat2::vecfloat2(float Infloat_X, float Infloat_Y)
{
    m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
vecfloat2::vecfloat2(uX_InReads(2) const float* Inpfloat)
{
    m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
}

vecfloat2::operator __m128(void) const
{
    return m128_xmm;
}

/*
vecfloat2::operator float*(void) const
{
    return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

vecfloat2& uX_callconv vecfloat2::operator=(const __m128 Inxmm)
{
    m128_xmm = _uX_MM_SHUFFLER_IM_PS(Inxmm, __m128_false, 0, 1, 2, 3);
    return *this;
}

vecfloat2& uX_callconv vecfloat2::operator=(const vecfloat Inxmm)
{
    m128_xmm = _uX_MM_SHUFFLER_IM_PS(Inxmm, __m128_false, 0, 1, 2, 3);
    return *this;
}

uX_Use_decl_annotations
vecfloat2& uX_callconv vecfloat2::operator=(uX_InReads(2) const float* Inpfloat)
{
    m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
    return *this;
}

vecfloat2 uX_callconv vecfloat2::get() const
{
    return m128_xmm;
}

float uX_callconv vecfloat2::get_x() const
{
    return _x;
}

float uX_callconv vecfloat2::get_y() const
{
    return _y;
}

vecfloat2& uX_callconv vecfloat2::ref()
{
    return *this;
}

float& uX_callconv vecfloat2::ref_x()
{
    return _x;
}

float& uX_callconv vecfloat2::ref_y()
{
    return _y;
}

// vecfloat2 End
// // // // // // // // //

// // // // // // // // //
// vecfloat3 Start
vecfloat3::vecfloat3(float Infloat_X, float Infloat_Y, float Infloat_Z)
{
    m128_xmm = _uX_mm_set_ps(0.0f, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
vecfloat3::vecfloat3(uX_InReads(3) const float* Inpfloat)
{
    m128_xmm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
}

vecfloat3::operator __m128(void) const
{
    return m128_xmm;
}

/*
vecfloat3::operator float*(void) const
{
    return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

vecfloat3& uX_callconv vecfloat3::operator=(const __m128 Inxmm)
{
    m128_xmm = _uX_MM_SHUFFLER_IM_PS(Inxmm, _uX_mm_move_ss(__m128_false, _uX_MM_SHUFFLER_IM_PS(Inxmm, Inxmm, 2, 2, 2, 2)), 0, 1, 2, 3);
    return *this;
}

vecfloat3& uX_callconv vecfloat3::operator=(const vecfloat Inxmm)
{
    m128_xmm = _uX_MM_SHUFFLER_IM_PS(Inxmm, _uX_mm_move_ss(__m128_false, _uX_MM_SHUFFLER_IM_PS(Inxmm, Inxmm, 2, 2, 2, 2)), 0, 1, 2, 3);
    return *this;
}

uX_Use_decl_annotations
vecfloat3& uX_callconv vecfloat3::operator=(uX_InReads(3) const float* Inpfloat)
{
    m128_xmm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
    return *this;
}

vecfloat3 uX_callconv vecfloat3::get() const
{
    return m128_xmm;
}

float uX_callconv vecfloat3::get_x() const
{
    return _x;
}

float uX_callconv vecfloat3::get_y() const
{
    return _y;
}

float uX_callconv vecfloat3::get_z() const
{
    return _z;
}

vecfloat3& uX_callconv vecfloat3::ref()
{
    return *this;
}

float& uX_callconv vecfloat3::ref_x()
{
    return _x;
}

float& uX_callconv vecfloat3::ref_y()
{
    return _y;
}

float& uX_callconv vecfloat3::ref_z()
{
    return _z;
}

// vecfloat3 End
// // // // // // // // //

// // // // // // // // //
// vecfloat4 Start
vecfloat4::vecfloat4(float Infloat_X, float Infloat_Y, float Infloat_Z, float Infloat_W)
{
    m128_xmm = _uX_mm_set_ps(Infloat_W, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
vecfloat4::vecfloat4(uX_InReads(4) const float* Inpfloat)
{
    m128_xmm = _uX_mm_loadu_ps(Inpfloat);
}

vecfloat4::operator __m128(void) const
{
    return m128_xmm;
}

/*
vecfloat4::operator float*(void) const
{
    return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

vecfloat4& uX_callconv vecfloat4::operator=(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
    return *this;
}

vecfloat4& uX_callconv vecfloat4::operator=(const vecfloat Inxmm)
{
    m128_xmm = Inxmm;
    return *this;
}

uX_Use_decl_annotations
vecfloat4& uX_callconv vecfloat4::operator=(uX_InReads(4) const float* Inpfloat)
{
    m128_xmm = _uX_mm_loadu_ps(Inpfloat);
    return *this;
}

vecfloat4 uX_callconv vecfloat4::get() const
{
    return m128_xmm;
}

vecfloat4 uX_callconv vecfloat4::get_xyzw() const
{
    return m128_xmm;
}

float uX_callconv vecfloat4::get_x() const
{
    return _x;
}

float uX_callconv vecfloat4::get_y() const
{
    return _y;
}

float uX_callconv vecfloat4::get_z() const
{
    return _z;
}

float uX_callconv vecfloat4::get_w() const
{
    return _w;
}

vecfloat4& uX_callconv vecfloat4::ref()
{
    return *this;
}

vecfloat4& uX_callconv vecfloat4::ref_xyzw()
{
    return *this;
}

float& uX_callconv vecfloat4::ref_x()
{
    return _x;
}

float& uX_callconv vecfloat4::ref_y()
{
    return _y;
}

float& uX_callconv vecfloat4::ref_z()
{
    return _z;
}

float& uX_callconv vecfloat4::ref_w()
{
    return _w;
}

// vecfloat4 End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// vecdouble1 Start
vecdouble1::vecdouble1(const double Indouble)
{
    m128_xmmd = _uX_mm_set_sd(Indouble);
}

vecdouble1::operator __m128d(void) const
{
    return m128_xmmd;
}

/*
vecdouble1::operator double(void) const
{
    return _uX_mm_cvtsd_f64(m128_xmmd);
}*/

vecdouble1& uX_callconv vecdouble1::operator=(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
    return *this;
}

vecdouble1& uX_callconv vecdouble1::operator=(const double Indouble)
{
    m128_xmmd = _uX_mm_set_sd(Indouble);
    return *this;
}

// vecfloat1 End
// // // // // // // // //

// // // // // // // // //
// vecdouble2 Start
/*
vecdouble2::vecdouble2(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
}*/

vecdouble2::vecdouble2(const double Indouble_X, const double Indouble_Y)
{
    m128_xmmd = _uX_mm_set_pd(Indouble_Y, Indouble_X);
}

uX_Use_decl_annotations
vecdouble2::vecdouble2(const double* Inpdouble)
{
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
}

vecdouble2::operator __m128d(void) const
{
    return m128_xmmd;
}

/*
vecdouble2::operator double*(void) const
{
    return _uX_ptr_moveu_mm_pd(m128_xmmd);
}
*/

vecdouble2& uX_callconv vecdouble2::operator=(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
    return *this;
}

uX_Use_decl_annotations
vecdouble2& uX_callconv vecdouble2::operator=(const double* Inpdouble)
{
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
    return *this;
}

// vecdouble2 End
// // // // // // // // //

// // // // // // // // //
// vecdouble3 Start

/*
vecdouble3::vecdouble3(const __m128d Inxmmd_0, const __m128 Inxmmd_1)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = Inxmmd_0; break;
            case 1: m128_xmmd[1] = Inxmmd_1; break;
        }
    }
    / *m128_xmmd[0] = Inxmmd_0;
    m128_xmmd[1] = Inxmmd_1;* /
}*/

/*
uX_Use_decl_annotations
vecdouble3::vecdouble3(const __m128d* Inpxmmd)
{
    //if (sizeof(Inpxmmd) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
}*/

vecdouble3::vecdouble3(const double Indouble_X, const double Indouble_Y, const double Indouble_Z)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Indouble_Y, Indouble_X); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Indouble_Z); break;
        }
    }
}

uX_Use_decl_annotations
vecdouble3::vecdouble3(const double* Inpdouble)
{
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
        }
    }
}

vecdouble3::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd);
}

/*
vecdouble3::operator double*(void) const
{
    return const_cast<double*>(m128_d);
}*/

uX_Use_decl_annotations
vecdouble3& uX_callconv vecdouble3::operator=(const __m128d* Inpxmmd)
{
    //if (sizeof(Inpxmmd) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
vecdouble3& uX_callconv vecdouble3::operator=(const double* Inpdouble)
{
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
        }
    }
    return *this;
}
// vecdouble3 End
// // // // // // // // //

// // // // // // // // //
// vecdouble4 Start

/*
vecdouble4::vecdouble4(const __m128d Inxmmd_0, const __m128 Inxmmd_1)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = Inxmmd_0; break;
            case 1: m128_xmmd[1] = Inxmmd_1; break;
        }
    }
    / *m128_xmmd[0] = Inxmmd_0;
    m128_xmmd[1] = Inxmmd_1;* /
}*/

/*
uX_Use_decl_annotations
vecdouble4::vecdouble4(const __m128d* Inpxmmd)
{
    if (sizeof(Inpxmmd) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
}*/

vecdouble4::vecdouble4(const double Indouble_X, const double Indouble_Y, const double Indouble_Z, const double Indouble_W)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Indouble_Y, Indouble_X); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(Indouble_W, Indouble_Z); break;
        }
    }
}

uX_Use_decl_annotations
vecdouble4::vecdouble4(const double* Inpdouble)
{
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
        }
    }
}

vecdouble4::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd);
}

/*
vecdouble4::operator double*(void) const
{
    return const_cast<double*>(m128_d);
}*/

uX_Use_decl_annotations
vecdouble4& uX_callconv vecdouble4::operator=(const __m128d* Inpxmmd)
{
    //if (sizeof(Inpxmmd) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
vecdouble4& uX_callconv vecdouble4::operator=(const double* Inpdouble)
{
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
        }
    }
    return *this;
}

// vecdouble4 End
// // // // // // // // //

#endif // uX_SSE2

// MATRIX'S

// // // // // // // // //
// vecfloat3x3 Start

/*
vecfloat3x3::vecfloat3x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmm[0] = Inxmm_0; break;
            case 1: m128_xmm[1] = Inxmm_1; break;
            case 2: m128_xmm[2] = Inxmm_2; break;
        }
    }
    / *m128_xmm[0] = Inxmm_0;
    m128_xmm[1] = Inxmm_1;
    m128_xmm[2] = Inxmm_2;* /
}*/

/*
uX_Use_decl_annotations
vecfloat3x3::vecfloat3x3(const __m128* Inpxmm)
{
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = Inpxmm[i];
    }
}*/

vecfloat3x3::vecfloat3x3(float Infloat_X0, float Infloat_X1, float Infloat_X2,
                             float Infloat_Y0, float Infloat_Y1, float Infloat_Y2,
                             float Infloat_Z0, float Infloat_Z1, float Infloat_Z2)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmm[0] = _uX_mm_set_ps(0.0f, Infloat_X2, Infloat_X1, Infloat_X0); break;
            case 1: m128_xmm[1] = _uX_mm_set_ps(0.0f, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
            case 2: m128_xmm[2] = _uX_mm_set_ps(0.0f, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
        }
    }
}

uX_Use_decl_annotations
vecfloat3x3::vecfloat3x3(const float* Inpfloat)
{
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
}

vecfloat3x3::operator __m128*(void) const
{
    return const_cast<__m128*>(m128_xmm);
}

/*
vecfloat3x3::operator float*(void) const
{
    return const_cast<float*>(m128_flt_p);
}*/

uX_Use_decl_annotations
vecfloat3x3& uX_callconv vecfloat3x3::operator=(const __m128* Inpxmm)
{
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = Inpxmm[i];
    }
    return *this;
}

uX_Use_decl_annotations
vecfloat3x3& uX_callconv vecfloat3x3::operator=(const float* Inpfloat)
{
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
    return *this;
}

// vecfloat3x3 End
// // // // // // // // //

// // // // // // // // //
// vecfloat4x3 Start

/*
vecfloat4x3::vecfloat4x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmm[0] = Inxmm_0; break;
            case 1: m128_xmm[1] = Inxmm_1; break;
            case 2: m128_xmm[2] = Inxmm_2; break;
            case 3: m128_xmm[3] = Inxmm_3; break;
        }
    }
    / *m128_xmm[0] = Inxmm_0;
    m128_xmm[1] = Inxmm_1;
    m128_xmm[2] = Inxmm_2;
    m128_xmm[3] = Inxmm_3;* /
}*/

/*
uX_Use_decl_annotations
vecfloat4x3::vecfloat4x3(const __m128* Inpxmm)
{
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = Inpxmm[i];
    }
}*/

vecfloat4x3::vecfloat4x3(float Infloat_X0, float Infloat_X1, float Infloat_X2,
                             float Infloat_Y0, float Infloat_Y1, float Infloat_Y2,
                             float Infloat_Z0, float Infloat_Z1, float Infloat_Z2,
                             float Infloat_W0, float Infloat_W1, float Infloat_W2)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmm[0] = _uX_mm_set_ps(0.0f, Infloat_X2, Infloat_X1, Infloat_X0); break;
            case 1: m128_xmm[1] = _uX_mm_set_ps(0.0f, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
            case 2: m128_xmm[2] = _uX_mm_set_ps(0.0f, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
            case 3: m128_xmm[3] = _uX_mm_set_ps(0.0f, Infloat_W2, Infloat_W1, Infloat_W0); break;
        }
    }
}

uX_Use_decl_annotations
vecfloat4x3::vecfloat4x3(const float* Inpfloat)
{
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
}

vecfloat4x3::operator __m128*(void) const
{
    return const_cast<__m128*>(m128_xmm);
}

/*
vecfloat4x3::operator float*(void) const
{
    return const_cast<float*>(m128_flt_p);
}*/

uX_Use_decl_annotations
vecfloat4x3& uX_callconv vecfloat4x3::operator=(const __m128* Inpxmm)
{
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = Inpxmm[i];
    }
    return *this;
}

uX_Use_decl_annotations
vecfloat4x3& uX_callconv vecfloat4x3::operator=(const float* Inpfloat)
{
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
    return *this;
}

// vecfloat4x3 End
// // // // // // // // //

// // // // // // // // //
// vecfloat4x4 Start

/*
vecfloat4x4::vecfloat4x4(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmm[0] = Inxmm_0; break;
            case 1: m128_xmm[1] = Inxmm_1; break;
            case 2: m128_xmm[2] = Inxmm_2; break;
            case 3: m128_xmm[3] = Inxmm_3; break;
        }
    }
    / *m128_xmm[0] = Inxmm_0;
    m128_xmm[1] = Inxmm_1;
    m128_xmm[2] = Inxmm_2;
    m128_xmm[3] = Inxmm_3;* /
}*/

/*
uX_Use_decl_annotations
vecfloat4x4::vecfloat4x4(const __m128* Inpxmm)
{
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = Inpxmm[i];
    }
}*/

vecfloat4x4::vecfloat4x4(float Infloat_X0, float Infloat_X1, float Infloat_X2, float Infloat_X3,
                             float Infloat_Y0, float Infloat_Y1, float Infloat_Y2, float Infloat_Y3,
                             float Infloat_Z0, float Infloat_Z1, float Infloat_Z2, float Infloat_Z3,
                             float Infloat_W0, float Infloat_W1, float Infloat_W2, float Infloat_W3)
{
    /*static float uX_ALIGN128DECL(tmpfloat0[4]) = {Infloat_X0, Infloat_X1, Infloat_X2, Infloat_X3};
    static float uX_ALIGN128DECL(tmpfloat1[4]) = {Infloat_Y0, Infloat_Y1, Infloat_Y2, Infloat_Y3};
    static float uX_ALIGN128DECL(tmpfloat2[4]) = {Infloat_Z0, Infloat_Z1, Infloat_Z2, Infloat_Z3};
    static float uX_ALIGN128DECL(tmpfloat3[4]) = {Infloat_W0, Infloat_W1, Infloat_W2, Infloat_W3};*/
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            /*case 0: m128_xmm[0] = _uX_mm_load_ps(tmpfloat0); break;
            case 1: m128_xmm[1] = _uX_mm_load_ps(tmpfloat1); break;
            case 2: m128_xmm[2] = _uX_mm_load_ps(tmpfloat2); break;
            case 3: m128_xmm[3] = _uX_mm_load_ps(tmpfloat3); break;*/
            case 0: m128_xmm[0] = _uX_mm_set_ps(Infloat_X3, Infloat_X2, Infloat_X1, Infloat_X0); break;
            case 1: m128_xmm[1] = _uX_mm_set_ps(Infloat_Y3, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
            case 2: m128_xmm[2] = _uX_mm_set_ps(Infloat_Z3, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
            case 3: m128_xmm[3] = _uX_mm_set_ps(Infloat_W3, Infloat_W2, Infloat_W1, Infloat_W0); break;
        }
    }
}

uX_Use_decl_annotations
vecfloat4x4::vecfloat4x4(const float* Inpfloat)
{
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
}

vecfloat4x4::operator __m128*(void) const
{
    return const_cast<__m128*>(m128_xmm);
}

/*
vecfloat4x4::operator float*(void) const
{
    return const_cast<float*>(m128_flt_p);
}*/

uX_Use_decl_annotations
vecfloat4x4& uX_callconv vecfloat4x4::operator=(const __m128* Inpxmm)
{
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = Inpxmm[i];
    }
    return *this;
}

uX_Use_decl_annotations
vecfloat4x4& uX_callconv vecfloat4x4::operator=(const float* Inpfloat)
{
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
    return *this;
}

// vecfloat4x4 End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// vecdouble3x3 Start

/*
vecdouble3x3::vecdouble3x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2,
                                     const __m128d Inxmmd_3, const __m128d Inxmmd_4, const __m128d Inxmmd_5)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = Inxmmd_0; break;
            case 1: m128_xmmd[1] = Inxmmd_1; break;
            case 2: m128_xmmd[2] = Inxmmd_2; break;
            case 3: m128_xmmd[3] = Inxmmd_3; break;
            case 4: m128_xmmd[4] = Inxmmd_4; break;
            case 5: m128_xmmd[5] = Inxmmd_5; break;
        }
    }
}*/

/*
uX_Use_decl_annotations
vecdouble3x3::vecdouble3x3(const __m128d* Inpxmmd)
{
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
}*/

vecdouble3x3::vecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
                               const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
                               const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Indouble_X2); break;
            case 2: m128_xmmd[2] = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
            case 3: m128_xmmd[3] = _uX_mm_set_pd(0.0, Indouble_Y2); break;
            case 4: m128_xmmd[4] = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
            case 5: m128_xmmd[5] = _uX_mm_set_pd(0.0, Indouble_Z2); break;
        }
    }
}

uX_Use_decl_annotations
vecdouble3x3::vecdouble3x3(const double* Inpdouble)
{
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
            case 2: m128_xmmd[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
            case 3: m128_xmmd[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
            case 4: m128_xmmd[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
            case 5: m128_xmmd[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
        }
    }
}

vecdouble3x3::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd);
}

/*
vecdouble3x3::operator double*(void) const
{
    return const_cast<double*>(m128_dbl_p);
}*/

uX_Use_decl_annotations
vecdouble3x3& uX_callconv vecdouble3x3::operator=(const __m128d* Inpxmmd)
{
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
vecdouble3x3& uX_callconv vecdouble3x3::operator=(const double* Inpdouble)
{
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
            case 2: m128_xmmd[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
            case 3: m128_xmmd[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
            case 4: m128_xmmd[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
            case 5: m128_xmmd[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
        }
    }
    return *this;
}

// vecdouble3x3 End
// // // // // // // // //

// // // // // // // // //
// vecdouble4x3 Start

/*
vecdouble4x3::vecdouble4x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
                               const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = Inxmmd_0; break;
            case 1: m128_xmmd[1] = Inxmmd_1; break;
            case 2: m128_xmmd[2] = Inxmmd_2; break;
            case 3: m128_xmmd[3] = Inxmmd_3; break;
            case 4: m128_xmmd[4] = Inxmmd_4; break;
            case 5: m128_xmmd[5] = Inxmmd_5; break;
            case 6: m128_xmmd[6] = Inxmmd_6; break;
            case 7: m128_xmmd[7] = Inxmmd_7; break;
        }
    }
}*/

/*
uX_Use_decl_annotations
vecdouble4x3::vecdouble4x3(const __m128d* Inpxmmd)
{
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
}*/

vecdouble4x3::vecdouble4x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
                               const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
                               const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2,
                               const double Indouble_W0, const double Indouble_W1, const double Indouble_W2)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Indouble_X2); break;
            case 2: m128_xmmd[2] = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
            case 3: m128_xmmd[3] = _uX_mm_set_pd(0.0, Indouble_Y2); break;
            case 4: m128_xmmd[4] = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
            case 5: m128_xmmd[5] = _uX_mm_set_pd(0.0, Indouble_Z2); break;
            case 6: m128_xmmd[6] = _uX_mm_set_pd(Indouble_W1, Indouble_W0); break;
            case 7: m128_xmmd[7] = _uX_mm_set_pd(0.0, Indouble_W2); break;
        }
    }
}

uX_Use_decl_annotations
vecdouble4x3::vecdouble4x3(const double* Inpdouble)
{
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
            case 2: m128_xmmd[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
            case 3: m128_xmmd[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
            case 4: m128_xmmd[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
            case 5: m128_xmmd[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
            case 6: m128_xmmd[6] = _uX_mm_set_pd(Inpdouble[10], Inpdouble[9]); break;
            case 7: m128_xmmd[7] = _uX_mm_set_pd(0.0, Inpdouble[11]); break;
        }
    }
}

vecdouble4x3::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd);
}

/*
vecdouble4x3::operator double*(void) const
{
    return const_cast<double*>(m128_dbl_p);
}*/

uX_Use_decl_annotations
vecdouble4x3& uX_callconv vecdouble4x3::operator=(const __m128d* Inpxmmd)
{
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
vecdouble4x3& uX_callconv vecdouble4x3::operator=(const double* Inpdouble)
{
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
            case 2: m128_xmmd[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
            case 3: m128_xmmd[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
            case 4: m128_xmmd[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
            case 5: m128_xmmd[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
            case 6: m128_xmmd[6] = _uX_mm_set_pd(Inpdouble[10], Inpdouble[9]); break;
            case 7: m128_xmmd[7] = _uX_mm_set_pd(0.0, Inpdouble[11]); break;
        }
    }
    return *this;
}

// vecdouble4x3 End
// // // // // // // // //

// // // // // // // // //
// vecdouble4x4 Start

vecdouble4x4::vecdouble4x4(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
                           const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7) {
    static affinity_partitioner affp;
    static task_group_context tgctx;
    parallel_for(blocked_range<size_t>(0, m128_xmmd_ptr_lenght, 1),
                 [=](const blocked_range<size_t>& r, task_group_context const&) {
                     for (auto i = r.begin(); i < r.end(); ++i)
                     {
                         switch (i)
                         {
                             case 0: m128_xmmd_0 = Inxmmd_0; break;
                             case 1: m128_xmmd_1 = Inxmmd_1; break;
                             case 2: m128_xmmd_2 = Inxmmd_2; break;
                             case 3: m128_xmmd_3 = Inxmmd_3; break;
                             case 4: m128_xmmd_4 = Inxmmd_4; break;
                             case 5: m128_xmmd_5 = Inxmmd_5; break;
                             case 6: m128_xmmd_6 = Inxmmd_6; break;
                             case 7: m128_xmmd_7 = Inxmmd_7; break;
                         }
                     }
                 }, affp, tgctx
    );
}

vecdouble4x4::vecdouble4x4(const __m128d* Inpxmmd, size_t idxbegin, size_t idxend) {
    static affinity_partitioner affp;
    static task_group_context tgctx;
    parallel_for(blocked_range<size_t>(idxbegin, idxend, 1),
                 [=](const blocked_range<size_t>& r, task_group_context const&) {
                     for (auto i = r.begin(); i < r.end(); ++i)
                     {
                         m128_xmmd[i] = Inpxmmd[i];
                     }
                 }, affp, tgctx
    );
}

vecdouble4x4::vecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
                           const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
                           const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
                           const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3)
{
    static affinity_partitioner affp;
    static task_group_context tgctx;
    parallel_for(blocked_range<size_t>(0, m128_xmmd_ptr_lenght, 1),
                 [=](const blocked_range<size_t>& r, task_group_context const&) {
                     for (auto i = r.begin(); i < r.end(); ++i)
                     {
                         switch (i)
                         {
                             case 0: m128_xmmd_0 = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
                             case 1: m128_xmmd_1 = _uX_mm_set_pd(Indouble_X3, Indouble_X2); break;
                             case 2: m128_xmmd_2 = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
                             case 3: m128_xmmd_3 = _uX_mm_set_pd(Indouble_Y3, Indouble_Y2); break;
                             case 4: m128_xmmd_4 = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
                             case 5: m128_xmmd_5 = _uX_mm_set_pd(Indouble_Z3, Indouble_Z2); break;
                             case 6: m128_xmmd_6 = _uX_mm_set_pd(Indouble_W1, Indouble_W0); break;
                             case 7: m128_xmmd_7 = _uX_mm_set_pd(Indouble_W3, Indouble_W2); break;
                         }
                     }
                 }, affp, tgctx
    );
}

vecdouble4x4::vecdouble4x4(const double* Inpdouble, size_t idxbegin, size_t idxend)
{
    static affinity_partitioner affp;
    static task_group_context tgctx;
    /*static const size_t lend = end <= m128_xmmd_ptr_lenght ? end : m128_xmmd_ptr_lenght;*/
    parallel_for(blocked_range<size_t>(idxbegin, idxend, 1),
                 [=](const blocked_range<size_t>& r, task_group_context const&) {
                     for (auto i = r.begin(); i < r.end(); ++i)
                     {
                         m128_xmmd[i] = _uX_mm_loadu_pd(Inpdouble + (i * m128_dbl_size));
                     }
                 }, affp, tgctx
    );
    /*parallel_for(size_t(0), size_t(m128_dbl_ptr_size), size_t(1),
        [=](size_t i, task_group_context const&)
        {
            m128_xmmd[i] = _uX_mm_loadu_pd(Inpdouble + (i * m128_dbl_size));
        }, affp, tgctx
    );*/
}

vecdouble4x4::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd);
}

/*
vecdouble4x4::operator double*(void) const
{
    return const_cast<double*>(m128_dbl_p);
}*/

uX_Use_decl_annotations
vecdouble4x4& uX_callconv vecdouble4x4::operator=(const __m128d* Inpxmmd)
{
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
vecdouble4x4& uX_callconv vecdouble4x4::operator=(const double* Inpdouble)
{
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
            case 2: m128_xmmd[2] = _uX_mm_set_pd(Inpdouble[5], Inpdouble[4]); break;
            case 3: m128_xmmd[3] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
            case 4: m128_xmmd[4] = _uX_mm_set_pd(Inpdouble[9], Inpdouble[8]); break;
            case 5: m128_xmmd[5] = _uX_mm_set_pd(Inpdouble[11], Inpdouble[10]); break;
            case 6: m128_xmmd[6] = _uX_mm_set_pd(Inpdouble[13], Inpdouble[12]); break;
            case 7: m128_xmmd[7] = _uX_mm_set_pd(Inpdouble[15], Inpdouble[14]); break;
        }
    }
    return *this;
}

// vecdouble4x4 End
// // // // // // // // //

#endif // uX_SSE2

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
