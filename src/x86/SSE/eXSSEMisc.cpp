
#include "eXSSEMisc.h"

eX_VECCALL(__m128) eX_mm_permute_ps(const __m128& InXmm, int Imm)
{
	if (eX_has_AVX())
	{
		return _mm_permute_ps(InXmm, Imm);
	}
	else
	{
		return _mm_shuffle_ps(InXmm, InXmm, Imm);
	}
}

eX_VECCALL(__m128d) eX_mm_permute_pd(const __m128d& InXmmd, int Imm)
{
	if (eX_has_AVX())
	{
		return _mm_permute_pd(InXmmd, Imm);
	}
	else
	{
		return _mm_shuffle_pd(InXmmd, InXmmd, Imm);
	}
}
