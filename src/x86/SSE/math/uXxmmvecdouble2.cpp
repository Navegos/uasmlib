
#include "math/sse/uXxmmvecdouble2.h"

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
// vecdouble2 Start

#ifdef uX_SSE2

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

#endif // uX_SSE2

// vecdouble2 End
// // // // // // // // //

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
