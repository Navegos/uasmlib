#include "math/sse/uXxmmvecdouble4x4.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

// MATRIX'S

// // // // // // // // //
// vecdouble4x4 Start

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
namespace_XMM
uX_PACK_PUSH_XMM

vecdouble4x4::vecdouble4x4(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
						   const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7) uX_noexcept
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
				case 6: m128_xmmd_6 = Inxmmd_6; break;
				case 7: m128_xmmd_7 = Inxmmd_7; break;
			}
		}
	}, affp, tgctx
	);
}

vecdouble4x4::vecdouble4x4(const __m128d* Inpxmmd, uint32_t idxbegin, uint32_t idxend) uX_noexcept
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

vecdouble4x4::vecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
						   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
						   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
						   const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3) uX_noexcept
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

vecdouble4x4::vecdouble4x4(const double* Inpdouble, uint32_t idxbegin, uint32_t idxend) uX_noexcept
{
	static affinity_partitioner affp;
	static task_group_context tgctx;
	parallel_for(blocked_range<uint32_t>(idxbegin, idxend, 1),
				 [=](const blocked_range<uint32_t>& r, task_group_context const&)
	{
		for(auto i = r.begin(); i < r.end(); ++i)
		{
			m128_xmmd[i] = _uX_mm_loadu_pd(Inpdouble + (i * m128_dbl_size));
		}
	}, affp, tgctx
	);
	/*parallel_for(uint32_t(0), uint32_t(m128_dbl_ptr_size), uint32_t(1),
		[=](uint32_t i, task_group_context const&)
		{
			m128_xmmd[i] = _uX_mm_loadu_pd(Inpdouble + (i * m128_dbl_size));
		}, affp, tgctx
	);*/
}

/*
vecdouble4x4::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd);
}*/ //security undesired

/*
vecdouble4x4::operator double*(void) const
{
	return const_cast<double*>(m128_dbl_p);
}*/

/*
vecdouble4x4& uX_callconv vecdouble4x4::operator=(const __m128d* Inpxmmd)
{
	//if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return *this;
	for (int i = 0; i < m128_xmmd_ptr_length; ++i)
	{
		m128_xmmd[i] = Inpxmmd[i];
	}
	return *this;
}*/ //security undesired

/*
vecdouble4x4& uX_callconv vecdouble4x4::operator=(const double* Inpdouble)
{
	//if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
	for (int i = 0; i < m128_xmmd_ptr_length; ++i)
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
}*/ //security undesired

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE2

// vecdouble4x4 End
// // // // // // // // //

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/