
#include "uXmSSEStructs.h"
#include "uXmxmmintrin.h"

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

// __uXm128f START
__uXm128f::__uXm128f(const __uXm128 InXmm)
{
	uXm_mm_store_ps(this, InXmm);
}

__uXm128f::__uXm128f(const __m128 InXmm)
{
	uXm_mm_store_ps(this, InXmm);
}

__uXm128f::__uXm128f(const float* Infloat)
{
	uXm_mm_load_ps(*this, Infloat);
}

__uXm128f::operator __uXm128(void) const
{
	return *this;
}

__uXm128f::operator __m128(void) const
{
	return this->m128;
}

__uXm128f::operator float*(void) const
{
	return const_cast<float*>(this->m128_f);
}
// __uXm128f END

// __uXm128 START
__uXm128::__uXm128(const __uXm128f InXmm)
{
	uXm_mm_store_ps(this, InXmm);
}

__uXm128::__uXm128(const __m128 InXmm)
{
	uXm_mm_store_ps(this, InXmm);
}

__uXm128::__uXm128(const float* Infloat)
{
	uXm_mm_load_ps(*this, Infloat);
}
// __uXm128 END

uXm_PACK_POP

uXm_EXTERNC_END