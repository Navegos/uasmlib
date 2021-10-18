#include "math/sse/uXxmmvecfloat1.h"

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
// vecfloat1 Start

/*
vecfloat1::vecfloat1(float Infloat) uX_noexcept
{
	m128_xmm = _uX_mm_move_ss(__m128_false, _uX_mm_set_ss(Infloat));
}*/

/*
vecfloat1::operator __m128(void) const uX_noexcept
{
	return m128_xmm;
}*/

/*
vecfloat1::operator float(void) const uX_noexcept
{
	return _uX_mm_cvtss_flt(m128_xmm);
}*/

/*
vecfloat1& uX_abi vecfloat1::operator=(const __m128 Inxmm) uX_noexcept
{
	m128_xmm = vecfloat1(Inxmm);
	return *this;
}

vecfloat1& uX_abi vecfloat1::operator=(const vecfloat4 Inxmm_a) uX_noexcept
{
	m128_xmm = vecfloat1(Inxmm_a);
	return *this;
}

vecfloat1& uX_abi vecfloat1::operator=(const vecfloat3 Inxmm_a) uX_noexcept
{
	m128_xmm = vecfloat1(Inxmm_a);
	return *this;
}

vecfloat1& uX_abi vecfloat1::operator=(const vecfloat2 Inxmm_a) uX_noexcept
{
	m128_xmm = vecfloat1(Inxmm_a);
	return *this;
}

vecfloat1& uX_abi vecfloat1::operator=(float Infloat) uX_noexcept
{
	m128_xmm = vecfloat1(Infloat);
	return *this;
}

vecfloat1& uX_abi vecfloat1::operator=(const bool_t Inbool_a) uX_noexcept
{
	m128_xmm = vecfloat1(Inbool_a);
	return *this;
}

__m128 uX_abi vecfloat1::get() const uX_noexcept
{
	return m128_xmm;
}

float uX_abi vecfloat1::get_x() const uX_noexcept
{
	return _x;
}

__m128& uX_abi vecfloat1::ref() uX_noexcept
{
	return m128_xmm;
}

float& uX_abi vecfloat1::ref_x() uX_noexcept
{
	return _x;
}

void uX_abi vecfloat1::set(const __m128 Inxmm) uX_noexcept
{
	m128_xmm = vecfloat1(Inxmm);
}

void uX_abi vecfloat1::set_x(float Infloat_a) uX_noexcept
{
	m128_xmm = _uX_MM_SETFLT_PS_IM(m128_xmm, Infloat_a, 0);
}*/

// vecfloat1 End
// // // // // // // // //

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/