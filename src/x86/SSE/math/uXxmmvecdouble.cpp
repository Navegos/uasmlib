
#include "math/sse/uXxmmvecdouble.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

// VECTOR'S

// // // // // // // // //
// vecdouble Start

#ifdef uX_SSE2

namespace_uX
namespace_XMM
uX_PACK_PUSH_XMM

/*
vecdouble::vecdouble(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
}*/

uX_Use_decl_annotations
vecdouble::vecdouble(const double* Inpdouble)
{
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
}

vecdouble::operator __m128d(void) const
{
    return m128_xmmd;
}

/*
vecdouble::operator double*(void) const
{
    return _uX_ptr_moveu_mm_pd(m128_xmmd);
}*/

vecdouble& uX_callconv vecdouble::operator=(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
    return *this;
}

uX_Use_decl_annotations
vecdouble& uX_callconv vecdouble::operator=(const double* Inpdouble)
{
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
    return *this;
}

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE2

// vecdouble End
// // // // // // // // //

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
