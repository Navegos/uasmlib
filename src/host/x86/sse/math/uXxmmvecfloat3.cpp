#include "math/sse/uXxmmvecfloat3.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

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
namespace_xmm
EXTERN_CC_BEGIN
uX_PACK_PUSH_XMM

// VECTOR'S

// // // // // // // // //
// vecfloat3 Start

/*
vecfloat3::vecfloat3(float Infloat_a) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps1(Infloat_a);
}*/

/*
vecfloat3::vecfloat3(float Infloat_X, float Infloat_Y, float Infloat_Z) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps(0.0f, Infloat_Z, Infloat_Y, Infloat_X);
}*/

/*
uX_Use_decl_annotations
vecfloat3::vecfloat3(uX_InReads(3) const float* Inpfloat) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
}*/

/*
vecfloat3::operator __m128(void) const uX_noexcept
{
	return m128_xmm;
}*/

/*
vecfloat3::operator float*(void) const uX_noexcept
{
	return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

/*
vecfloat3& uX_abi vecfloat3::operator=(const __m128 Inxmm) uX_noexcept
{
	m128_xmm = vecfloat3(Inxmm);
	return *this;
}

vecfloat3& uX_abi vecfloat3::operator=(const vecfloat4 Inxmm_a) uX_noexcept
{
	m128_xmm = vecfloat3(Inxmm_a);
	return *this;
}

vecfloat3& uX_abi vecfloat3::operator=(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = vecfloat3(Inxmm_a);
	return *this;
}

vecfloat3& uX_abi vecfloat3::operator=(const vecfloat1 Inxmm_a) uX_noexcept
{
	m128_xmm = vecfloat3(Inxmm_a);
	return *this;
}

vecfloat3& uX_abi vecfloat3::operator=(float Infloat_a) uX_noexcept
{
	m128_xmm = vecfloat3(Infloat_a);
	return *this;
}

vecfloat3& uX_abi vecfloat3::operator=(const bool_t Inbool_a) uX_noexcept
{
	m128_xmm = vecfloat3(Inbool_a);
	return *this;
}*/

/*
uX_Use_decl_annotations
vecfloat3& uX_abi vecfloat3::operator=(uX_InReads(3) const float* Inpfloat) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
	return *this;
}*/

/*
__m128 uX_abi vecfloat3::get() const uX_noexcept
{
	return m128_xmm;
}

float uX_abi vecfloat3::get_x() const uX_noexcept
{
	return _x;
}

vecfloat2 uX_abi vecfloat3::get_xy() const uX_noexcept
{
	return vecfloat2(m128_xmm);
}

vecfloat3 uX_abi vecfloat3::get_xyz() const uX_noexcept
{
	return vecfloat3(m128_xmm);
}

vecfloat2 uX_abi vecfloat3::get_xz() const uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 0, 2, 1, 3));
}

vecfloat3 uX_abi vecfloat3::get_xzy() const uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 0, 2, 1, 3));
}

float uX_abi vecfloat3::get_y() const uX_noexcept
{
	return _y;
}

vecfloat2 uX_abi vecfloat3::get_yx() const uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 0, 2, 3));
}

vecfloat3 uX_abi vecfloat3::get_yxz() const uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 0, 2, 3));
}

vecfloat2 uX_abi vecfloat3::get_yz() const uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 2, 0, 3));
}

vecfloat3 uX_abi vecfloat3::get_yzx() const uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 2, 0, 3));
}

float uX_abi vecfloat3::get_z() const uX_noexcept
{
	return _z;
}

vecfloat2 uX_abi vecfloat3::get_zx() const uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 0, 1, 3));
}

vecfloat3 uX_abi vecfloat3::get_zxy() const uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 0, 1, 3));
}

vecfloat2 uX_abi vecfloat3::get_zy() const uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 1, 0, 3));
}

vecfloat3 uX_abi vecfloat3::get_zyx() const uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 1, 0, 3));
}

__m128& uX_abi vecfloat3::ref() uX_noexcept
{
	return m128_xmm;
}

float& uX_abi vecfloat3::ref_x() uX_noexcept
{
	return _x;
}

vecfloat2& uX_abi vecfloat3::ref_xy() uX_noexcept
{
	return vecfloat2(m128_xmm);
}

vecfloat3& uX_abi vecfloat3::ref_xyz() uX_noexcept
{
	return vecfloat3(m128_xmm);
}

vecfloat2& uX_abi vecfloat3::ref_xz() uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 0, 2, 1, 3));
}

vecfloat3& uX_abi vecfloat3::ref_xzy() uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 0, 2, 1, 3));
}

float& uX_abi vecfloat3::ref_y() uX_noexcept
{
	return _y;
}

vecfloat2& uX_abi vecfloat3::ref_yx() uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 0, 2, 3));
}

vecfloat3& uX_abi vecfloat3::ref_yxz() uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 0, 2, 3));
}

vecfloat2& uX_abi vecfloat3::ref_yz() uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 2, 0, 3));
}

vecfloat3& uX_abi vecfloat3::ref_yzx() uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 2, 0, 3));
}

float& uX_abi vecfloat3::ref_z() uX_noexcept
{
	return _z;
}

vecfloat2& uX_abi vecfloat3::ref_zx() uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 0, 1, 3));
}

vecfloat3& uX_abi vecfloat3::ref_zxy() uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 0, 1, 3));
}

vecfloat2& uX_abi vecfloat3::ref_zy() uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 1, 0, 3));
}

vecfloat3& uX_abi vecfloat3::ref_zyx() uX_noexcept
{
	return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 1, 0, 3));
}

void uX_abi vecfloat3::set(const __m128 Inxmm) uX_noexcept
{
	m128_xmm = vecfloat3(Inxmm);
}

void uX_abi vecfloat3::set_x(float Infloat_a) uX_noexcept
{
	m128_xmm = _uX_MM_SETFLT_PS_IM(m128_xmm, Infloat_a, 0);
}

void uX_abi vecfloat3::set_xy(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 1, 2, 3);
}

void uX_abi vecfloat3::set_xyz(const vecfloat3 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 2, 2, 3, 3), 0, 1, 0, 3);
}

void uX_abi vecfloat3::set_xz(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(_uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 1, 1), _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 1, 3, 3), 0, 2, 0, 3);
}

void uX_abi vecfloat3::set_xzy(const vecfloat3 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 1, 3, 3), 0, 2, 1, 3);
}

void uX_abi vecfloat3::set_y(float Infloat_a) uX_noexcept
{
	m128_xmm = _uX_MM_SETFLT_PS_IM(m128_xmm, Infloat_a, 1);
}

void uX_abi vecfloat3::set_yx(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 0, 2, 3);
}

void uX_abi vecfloat3::set_yxz(const vecfloat3 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 2, 2, 3, 3), 1, 0, 0, 3);
}

void uX_abi vecfloat3::set_yz(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(_uX_MM_SHUFFLER_PS_IM(m128_xmm, Inxmm_a, 0, 0, 0, 0), _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 1, 3, 3), 0, 2, 0, 3);
}

void uX_abi vecfloat3::set_yzx(const vecfloat3 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 1, 2, 3), 2, 0, 1, 3);
}

void uX_abi vecfloat3::set_z(float Infloat_a) uX_noexcept
{
	m128_xmm = _uX_MM_SETFLT_PS_IM(m128_xmm, Infloat_a, 2);
}

void uX_abi vecfloat3::set_zx(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(_uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 1, 1, 1), _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 3, 3), 0, 2, 0, 3);
}

void uX_abi vecfloat3::set_zxy(const vecfloat3 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 3, 3), 1, 2, 0, 3);
}

void uX_abi vecfloat3::set_zy(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(_uX_MM_SHUFFLER_PS_IM(m128_xmm, Inxmm_a, 0, 0, 1, 1), _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 3, 3), 0, 1, 0, 3);
}

void uX_abi vecfloat3::set_zyx(const vecfloat3 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 3, 3), 2, 1, 0, 3);
}*/

// vecfloat3 End
// // // // // // // // //

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/