#include "math/sse/uXxmmvecint32.h"

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
// vecint32 Start

#ifdef uX_SSE2

/*
vecint32::vecint32(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecint32::vecint32(const __int32* Inpint32)
{
	m128_xmmi = _uX_mm_loadu_si128(Inpint32);
}

vecint32::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
vecint32::operator __int32*(void) const
{
	return reinterpret_cast<__int32*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecint32& uX_callconv vecint32::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
vecint32& uX_callconv vecint32::operator=(const __int32* Inpint32)
{
	m128_xmmi = _uX_mm_loadu_si128(Inpint32);
	return *this;
}

#endif // uX_SSE2

// vecint32 End
// // // // // // // // //

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/