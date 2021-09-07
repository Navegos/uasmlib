#include "math/sse/uXxmmvecint16.h"

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
// vecint16 Start

#ifdef uX_SSE2

/*
vecint16::vecint16(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecint16::vecint16(const __int16* Inpint16)
{
	m128_xmmi = _uX_mm_loadu_si128(Inpint16);
}

vecint16::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
vecint16::operator __int16*(void) const
{
	return reinterpret_cast<__int16*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecint16& uX_callconv vecint16::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
vecint16& uX_callconv vecint16::operator=(const __int16* Inpint16)
{
	m128_xmmi = _uX_mm_loadu_si128(Inpint16);
	return *this;
}

vecint16 uX_callconv vecint16::extend_low(const vecint8 Inxmm_a)
{
	return _uX_mm_unpacklo_epi8(Inxmm_a, _uX_mm_cmpgt_epi8(_uX_mm_setzero_si128(), Inxmm_a));
}

vecint16 uX_callconv vecint16::extend_high(const vecint8 Inxmm_a)
{
	return _uX_mm_unpackhi_epi8(Inxmm_a, _uX_mm_cmpgt_epi8(_uX_mm_setzero_si128(), Inxmm_a));
}

#endif // uX_SSE2

// vecint16 End
// // // // // // // // //

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/