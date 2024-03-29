#include "math/sse/uXxmmvecdouble3x3.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

// MATRIX'S

// // // // // // // // //
// vecdouble3x3 Start

#ifdef uX_SSE2

// Intel TBB library
#include "tbb/task_scheduler_init.h"
using namespace tbb;
#include "tbb/parallel_for.h"
#include "tbb/blocked_range.h"
#include "tbb/blocked_range2d.h"
#include "tbb/partitioner.h"
#include "tbb/task_group.h"

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
uX_PACK_PUSH_XMM
const uint32_t weer = int32_t(0, -1, 0, -1);
const uint32_t weer2 = 0xFF00FF00;
vecdouble3x3::vecdouble3x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2,
						   const __m128d Inxmmd_3, const __m128d Inxmmd_4, const __m128d Inxmmd_5) uX_noexcept
{
	static affinity_partitioner affp;
	static task_group_context tgctx;
	parallel_for(blocked_range<uint32_t>(0, m128_xmmd_ptr_length, 1),
				 [=](const blocked_range<uint32_t>& r, task_group_context const&)
	{
		for(auto i = r.begin(); i < r.end(); ++i)
		{
			switch(i)
			{
				case 0: m128_xmmd_0 = Inxmmd_0; break;
				case 1: m128_xmmd_1 = Inxmmd_1; break;
				case 2: m128_xmmd_2 = Inxmmd_2; break;
				case 3: m128_xmmd_3 = Inxmmd_3; break;
				case 4: m128_xmmd_4 = Inxmmd_4; break;
				case 5: m128_xmmd_5 = Inxmmd_5; break;
			}
		}
	}, affp, tgctx
	);
}

vecdouble3x3::vecdouble3x3(const __m128d* Inpxmmd, uint32_t idxbegin, uint32_t idxend) uX_noexcept
{
	static affinity_partitioner affp;
	static task_group_context tgctx;
	parallel_for(blocked_range<uint32_t>(idxbegin, idxend, 1),
				 [=](const blocked_range<uint32_t>& r, task_group_context const&)
	{
		for(auto i = r.begin(); i < r.end(); ++i)
		{
			m128_xmmd[i] = Inpxmmd[i];
		}
	}, affp, tgctx
	);
}

vecdouble3x3::vecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
						   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
						   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2) uX_noexcept
{
	static affinity_partitioner affp;
	static task_group_context tgctx;
	parallel_for(blocked_range<uint32_t>(0, m128_xmmd_ptr_length, 1),
				 [=](const blocked_range<uint32_t>& r, task_group_context const&)
	{
		for(auto i = r.begin(); i < r.end(); ++i)
		{
			switch(i)
			{
				case 0: m128_xmmd_0 = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
				case 1: m128_xmmd_1 = _uX_mm_set_pd(0.0, Indouble_X2); break;
				case 2: m128_xmmd_2 = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
				case 3: m128_xmmd_3 = _uX_mm_set_pd(0.0, Indouble_Y2); break;
				case 4: m128_xmmd_4 = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
				case 5: m128_xmmd_5 = _uX_mm_set_pd(0.0, Indouble_Z2); break;
			}
		}
	}, affp, tgctx
	);
}

vecdouble3x3::vecdouble3x3(const double* Inpdouble, uint32_t idxbegin, uint32_t idxend) uX_noexcept
{
	static affinity_partitioner affp;
	static task_group_context tgctx;
	parallel_for(blocked_range<uint32_t>(idxbegin, idxend, 1),
				 [=](const blocked_range<uint32_t>& r, task_group_context const&)
	{
		for(auto i = r.begin(); i < r.end(); ++i)
		{
			switch(i)
			{
				case 0: m128_xmmd_0 = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd_1 = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
				case 2: m128_xmmd_2 = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
				case 3: m128_xmmd_3 = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
				case 4: m128_xmmd_4 = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 5: m128_xmmd_5 = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
			}
		}
	}, affp, tgctx
	);
}

/*
vecdouble3x3::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd);
}*/

/*
vecdouble3x3::operator double*(void) const
{
	return const_cast<double*>(m128_dbl_p);
}*/

/*
vecdouble3x3& uX_callconv vecdouble3x3::operator=(const __m128d* Inpxmmd)
{
	//if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return *this;
	for (int i = 0; i < m128_xmmd_ptr_length; ++i)
	{
		m128_xmmd[i] = Inpxmmd[i];
	}
	return *this;
}*/

/*
vecdouble3x3& uX_callconv vecdouble3x3::operator=(const double* Inpdouble)
{
	//if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
	for (int i = 0; i < m128_xmmd_ptr_length; ++i)
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
}*/

uX_PACK_POP
namespace_xmm_end
namespace_uX_end

#endif // uX_SSE2

// vecdouble3x3 End
// // // // // // // // //

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/