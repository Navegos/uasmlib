
#include "math/sse/uXxmmvecfloat4x4.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

// Intel TBB library
#if defined(uX_XMM_MATH_SUPPORTS_TBB)
//#include "tbb/task_scheduler_init.h"
#include "tbb/parallel_for.h"
#include "tbb/blocked_range.h"
#include "tbb/blocked_range2d.h"
#include "tbb/partitioner.h"
#include "tbb/task_group.h"
using namespace tbb;
#endif

//#include <omp.h>

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

// MATRIX'S

// // // // // // // // //
// vecfloat4x4 Start

vecfloat4x4::vecfloat4x4(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3) uX_noexcept
{
    static affinity_partitioner affp;
    static task_group_context tgctx;
    parallel_for(blocked_range<size_t>(0, m128_xmm_ptr_lenght, 1),
                 [&](const blocked_range<size_t>& r, task_group_context const&) {
                     for (auto i = r.begin(); i < r.end(); ++i)
                     {
                         switch (i)
                         {
                             case 0: m128_xmm_0 = Inxmm_0; break;
                             case 1: m128_xmm_1 = Inxmm_1; break;
                             case 2: m128_xmm_2 = Inxmm_2; break;
                             case 3: m128_xmm_3 = Inxmm_3; break;
                         }
                     }
                 }, affp, tgctx
    );
}

vecfloat4x4::vecfloat4x4(const __m128* Inpxmm, uint32_t idxbegin, uint32_t idxend) uX_noexcept
{
    static affinity_partitioner affp;
    static task_group_context tgctx;
    parallel_for(blocked_range<size_t>(idxbegin, idxend, 1),
                 [&](const blocked_range<size_t>& r, task_group_context const&) {
                     for (auto i = r.begin(); i < r.end(); ++i)
                     {
                         m128_xmm[i] = Inpxmm[i];
                     }
                 }, affp, tgctx
    );
}

vecfloat4x4::vecfloat4x4(float Infloat_X0, float Infloat_X1, float Infloat_X2, float Infloat_X3,
                         float Infloat_Y0, float Infloat_Y1, float Infloat_Y2, float Infloat_Y3,
                         float Infloat_Z0, float Infloat_Z1, float Infloat_Z2, float Infloat_Z3,
                         float Infloat_W0, float Infloat_W1, float Infloat_W2, float Infloat_W3) uX_noexcept
{
    static affinity_partitioner affp;
    static task_group_context tgctx;
    parallel_for(blocked_range<size_t>(0, m128_xmm_ptr_lenght, 1),
                 [&](const blocked_range<size_t>& r, task_group_context const&) {
                     for (auto i = r.begin(); i < r.end(); ++i)
                     {
                         switch (i)
                         {
                             case 0: m128_xmm_0 = _uX_mm_set_ps(Infloat_X3, Infloat_X2, Infloat_X1, Infloat_X0); break;
                             case 1: m128_xmm_2 = _uX_mm_set_ps(Infloat_Y3, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
                             case 2: m128_xmm_2 = _uX_mm_set_ps(Infloat_Z3, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
                             case 3: m128_xmm_3 = _uX_mm_set_ps(Infloat_W3, Infloat_W2, Infloat_W1, Infloat_W0); break;
                         }
                     }
                 }, affp, tgctx
    );
}

vecfloat4x4::vecfloat4x4(const float* Inpfloat, uint32_t idxbegin, uint32_t idxend) uX_noexcept
{
    static affinity_partitioner affp;
    static task_group_context tgctx;
    parallel_for(blocked_range<size_t>(idxbegin, idxend, 1),
                 [&](const blocked_range<size_t>& r, task_group_context const&) {
                     for (auto i = r.begin(); i < r.end(); ++i)
                     {
                         /*m128_xmm[i] = _uX_mm_loadu_ps(reinterpret_cast<const float*>(Inpfloat + m128_xmm_flt_elements + (i * m128_xmm_ptr_lenght)));*/
                         /*m128_xmm[i] = _uX_mm_loadu_ps(&Inpfloat[m128_xmm_flt_elements+(i*m128_xmm_flt_elements)]);*/
                         m128_xmm[i] = _uX_mm_loadu_ps(reinterpret_cast<__m128 const* const>(Inpfloat+(i*m128_xmm_flt_elements)));
                     }
                 }, affp, tgctx
    );
    /*for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }*/
}

/*
vecfloat4x4::operator __m128*(void) const
{
    return const_cast<__m128*>(m128_xmm);
}*/

/*
vecfloat4x4::operator float*(void) const
{
    return const_cast<float*>(m128_flt_p);
}*/

/*
vecfloat4x4& uX_callconv vecfloat4x4::operator=(const __m128* Inpxmm)
{
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = Inpxmm[i];
    }
    return *this;
}*/

/*
vecfloat4x4& uX_callconv vecfloat4x4::operator=(const float* Inpfloat)
{
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
    return *this;
}*/

// vecfloat4x4 End
// // // // // // // // //

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
