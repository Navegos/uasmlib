#include "math/sse/uXxmmvecfloat2.h"

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
// vecfloat2 Start

/*
vecfloat2::vecfloat2(float Infloat_a) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps1(Infloat_a);
}*/

/*
vecfloat2::vecfloat2(float Infloat_X, float Infloat_Y) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Infloat_Y, Infloat_X);
}*/

/*
uX_Use_decl_annotations
vecfloat2::vecfloat2(uX_InReads(2) const float* Inpfloat) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
}*/

/*
vecfloat2::operator __m128(void) const
{
	return m128_xmm;
}*/

/*
vecfloat2::operator float*(void) const uX_noexcept
{
	return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

/*
vecfloat2& uX_abi vecfloat2::operator=(const __m128 Inxmm) uX_noexcept
{
	m128_xmm = vecfloat2(Inxmm);
	return *this;
}

vecfloat2& uX_abi vecfloat2::operator=(const vecfloat4 Inxmm_a) uX_noexcept
{
	m128_xmm = vecfloat2(Inxmm_a);
	return *this;
}

vecfloat2& uX_abi vecfloat2::operator=(const vecfloat3 Inxmm_a) uX_noexcept
{
	m128_xmm = vecfloat2(Inxmm_a);
	return *this;
}

vecfloat2& uX_abi vecfloat2::operator=(const vecfloat1 Inxmm_a) uX_noexcept
{
	m128_xmm = vecfloat2(Inxmm_a);
	return *this;
}

vecfloat2& uX_abi vecfloat2::operator=(float Infloat_a) uX_noexcept
{
	m128_xmm = vecfloat2(Infloat_a);
	return *this;
}

vecfloat2& uX_abi vecfloat2::operator=(const bool_t Inbool_a) uX_noexcept
{
	m128_xmm = vecfloat2(Inbool_a);
	return *this;
}*/

/*
uX_Use_decl_annotations
vecfloat2& uX_abi vecfloat2::operator=(uX_InReads(2) const float* Inpfloat) uX_noexcept
{
	m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
	return *this;
}*/

/*
__m128 uX_abi vecfloat2::get() const uX_noexcept
{
	return m128_xmm;
}

float uX_abi vecfloat2::get_x() const uX_noexcept
{
	return _x;
}

vecfloat2 uX_abi vecfloat2::get_xy() const uX_noexcept
{
	return vecfloat2(m128_xmm);
}

float uX_abi vecfloat2::get_y() const uX_noexcept
{
	return _y;
}

vecfloat2 uX_abi vecfloat2::get_yx() const uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 0, 2, 3));
}

__m128& uX_abi vecfloat2::ref() uX_noexcept
{
	return m128_xmm;
}

float& uX_abi vecfloat2::ref_x() uX_noexcept
{
	return _x;
}

vecfloat2& uX_abi vecfloat2::ref_xy() uX_noexcept
{
	return vecfloat2(m128_xmm);
}

float& uX_abi vecfloat2::ref_y() uX_noexcept
{
	return _y;
}

vecfloat2& uX_abi vecfloat2::ref_yx() uX_noexcept
{
	return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 0, 2, 3));
}

void uX_abi vecfloat2::set(const __m128 Inxmm) uX_noexcept
{
	m128_xmm = vecfloat2(Inxmm);
}

void uX_abi vecfloat2::set_x(float Infloat_a) uX_noexcept
{
	m128_xmm = _uX_MM_SETFLT_PS_IM(m128_xmm, Infloat_a, 0);
}

void uX_abi vecfloat2::set_xy(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 1, 2, 3);
}

void uX_abi vecfloat2::set_y(float Infloat_a) uX_noexcept
{
	m128_xmm = _uX_MM_SETFLT_PS_IM(m128_xmm, Infloat_a, 1);
}

void uX_abi vecfloat2::set_yx(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 0, 2, 3);
}*/

// vecfloat2 End
// // // // // // // // //

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/