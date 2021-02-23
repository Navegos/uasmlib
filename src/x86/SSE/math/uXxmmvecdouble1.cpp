
#include "math/sse/uXxmmvecdouble1.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

// Intel TBB library
/*
#if defined(uX_XMM_MATH_SUPPORTS_TBB)
//#include "tbb/task_scheduler_init.h"
#include "tbb/parallel_for.h"
#include "tbb/blocked_range.h"
#include "tbb/blocked_range2d.h"
#include "tbb/partitioner.h"
#include "tbb/task_group.h"
using namespace tbb;
#endif*/

#include "uXxmmintrin.h"
#include "uXemmintrin.h"
#include "uXsmmintrin.h"

namespace_uX
namespace_XMM
uX_PACK_PUSH_XMM

// VECTOR'S

// // // // // // // // //
// vecdouble1 Start

#ifdef uX_SSE2

/*
vecdouble1::vecdouble1(const double Indouble)
{
    m128_xmmd = _uX_mm_set_sd(Indouble);
}

vecdouble1::operator __m128d(void) const
{
    return m128_xmmd;
}

/ *
vecdouble1::operator double(void) const
{
    return _uX_mm_cvtsd_f64(m128_xmmd);
}* /

vecdouble1& uX_callconv vecdouble1::operator=(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
    return *this;
}

vecdouble1& uX_callconv vecdouble1::operator=(const double Indouble)
{
    m128_xmmd = _uX_mm_set_sd(Indouble);
    return *this;
}*/

#endif // uX_SSE2

// vecdouble1 End
// // // // // // // // //

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
