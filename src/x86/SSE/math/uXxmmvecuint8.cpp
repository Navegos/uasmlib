
#include "math/sse/uXxmmvecuint8.h"

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
// vecuint8 Start

#ifdef uX_SSE2

/*
vecuint8::vecuint8(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecuint8::vecuint8(const unsigned __int8* Inpint8)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

vecuint8::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
vecuint8::operator unsigned __int8*(void) const
{
    return reinterpret_cast<unsigned __int8*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecuint8& uX_callconv vecuint8::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
vecuint8& uX_callconv vecuint8::operator=(const unsigned __int8* Inpint8)
{
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
    return *this;
}

#endif // uX_SSE2

// vecuint8 End
// // // // // // // // //

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
