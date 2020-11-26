
#include "math/sse/uXxmmvecdouble3.h"

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
uX_PACK_PUSH_XMM

// VECTOR'S

// // // // // // // // //
// vecdouble3 Start

#ifdef uX_SSE2

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

#endif // uX_SSE2

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
