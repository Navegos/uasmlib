#include "math/sse/uXxmmvecint8.h"

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
// vecint8 Start

#ifdef uX_SSE2

#ifndef uX_DEFAULT_CTOR_SUPPORT
vecint8::vecint8(const vecint8& Invecint8)
{
	m128_xmmi = Invecint8.m128_xmmi;
}

vecint8& uX_callconv vecint8::operator=(const vecint8& Invecint8)
{
	m128_xmmi = Invecint8.m128_xmmi;
	return *this;
}

vecint8::vecint8(vecint8&& Invecint8)
{
	m128_xmmi = Invecint8.m128_xmmi;
}

vecint8& uX_callconv vecint8::operator=(vecint8&& Invecint8)
{
	m128_xmmi = Invecint8.m128_xmmi;
	return *this;
}
#endif

/*
vecint8::vecint8(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
vecint8::vecint8(uX_InReads(16) const __int8* Inpint8)
{
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

vecint8::operator __m128i(void) const
{
	return m128_xmmi;
}

vecint8& uX_callconv vecint8::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

/*
vecint8::operator __int8*(void) const
{
	return reinterpret_cast<__int8*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

vecint8::vecint8(const __int8 Inpint8_0, const __int8 Inpint8_1, const __int8 Inpint8_2, const __int8 Inpint8_3,
				 const __int8 Inpint8_4, const __int8 Inpint8_5, const __int8 Inpint8_6, const __int8 Inpint8_7,
				 const __int8 Inpint8_8, const __int8 Inpint8_9, const __int8 Inpint8_10, const __int8 Inpint8_11,
				 const __int8 Inpint8_12, const __int8 Inpint8_13, const __int8 Inpint8_14, const __int8 Inpint8_15)
{
	m128_xmmi = _uX_mm_set_epi8(Inpint8_15, Inpint8_14, Inpint8_13, Inpint8_12, Inpint8_11, Inpint8_10, Inpint8_9, Inpint8_8,
								Inpint8_7, Inpint8_6, Inpint8_5, Inpint8_4, Inpint8_3, Inpint8_2, Inpint8_1, Inpint8_0);
}

uX_Use_decl_annotations
vecint8& uX_callconv vecint8::operator=(uX_InReads(16) const __int8* Inpint8)
{
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
	return *this;
}

vecint8 uX_callconv andnot(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_andnot_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator&(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_and_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator|(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_or_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator^(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_xor_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator~(const vecint8 Inxmm_a)
{
	return _uX_mm_not_epi8(Inxmm_a.m128_xmmi);
}

unsigned int uX_callconv iandnot(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_iandnot_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

unsigned int uX_callconv operator&&(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_iand_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

unsigned int uX_callconv operator||(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_ior_si128(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

unsigned int uX_callconv operator!(const vecint8 Inxmm_a)
{
	return _uX_mm_inot_epi8(Inxmm_a.m128_xmmi);
}

unsigned int uX_callconv horizontal_and(const vecint8 Inxmm_a)
{
	return _uX_mm_ihand_si128(Inxmm_a.m128_xmmi);
}

unsigned int uX_callconv horizontal_or(const vecint8 Inxmm_a)
{
	return _uX_mm_ihor_si128(Inxmm_a.m128_xmmi);
}

vecint8& uX_callconv vecint8::operator&=(const vecint8 Inxmm_b)
{
	m128_xmmi = _uX_mm_and_si128(m128_xmmi, Inxmm_b.m128_xmmi);
	return *this;
}

vecint8& uX_callconv vecint8::operator|=(const vecint8 Inxmm_b)
{
	m128_xmmi = _uX_mm_or_si128(m128_xmmi, Inxmm_b.m128_xmmi);
	return *this;
}

vecint8& uX_callconv vecint8::operator^=(const vecint8 Inxmm_b)
{
	m128_xmmi = _uX_mm_xor_si128(m128_xmmi, Inxmm_b.m128_xmmi);
	return *this;
}

vecint8 uX_callconv operator+(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_add_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator-(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_sub_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator*(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_mule_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator/(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_div_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8& uX_callconv vecint8::operator+=(const vecint8 Inxmm_b)
{
	m128_xmmi = _uX_mm_add_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
	return *this;
}

vecint8& uX_callconv vecint8::operator-=(const vecint8 Inxmm_b)
{
	m128_xmmi = _uX_mm_sub_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
	return *this;
}

vecint8& uX_callconv vecint8::operator*=(const vecint8 Inxmm_b)
{
	m128_xmmi = _uX_mm_mule_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
	return *this;
}

vecint8& uX_callconv vecint8::operator/=(const vecint8 Inxmm_b)
{
	m128_xmmi = _uX_mm_div_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
	return *this;
}

vecint8 uX_callconv operator++(const vecint8 Inxmm_a)
{
	return Inxmm_a.m128_xmmi + __m128i_i8_1;
}

vecint8 uX_callconv operator--(const vecint8 Inxmm_a)
{
	return Inxmm_a.m128_xmmi - __m128i_i8_1;
}

vecint8 uX_callconv operator++(const vecint8 Inxmm_a, int)
{
	vecint8 tmpxmm_a = Inxmm_a;
	vecint8 tmpxmm_a0 = tmpxmm_a;
	tmpxmm_a.m128_xmmi = tmpxmm_a.m128_xmmi + __m128i_i8_1;
	return tmpxmm_a0;
}

vecint8 uX_callconv operator--(const vecint8 Inxmm_a, int)
{
	vecint8 tmpxmm_a = Inxmm_a;
	vecint8 tmpxmm_a0 = tmpxmm_a;
	tmpxmm_a.m128_xmmi = tmpxmm_a.m128_xmmi - __m128i_i8_1;
	return tmpxmm_a0;
}

vecint8 uX_callconv operator-(const vecint8 Inxmm_a)
{
	return _uX_mm_negate_epi8(Inxmm_a.m128_xmmi);
}

vecint8 uX_callconv operator==(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_cmpeq_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator<(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_cmplt_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator<=(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_cmple_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator>(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_cmpgt_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator>=(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_cmpge_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator!=(const vecint8 Inxmm_a, const vecint8 Inxmm_b)
{
	return _uX_mm_cmpneq_epi8(Inxmm_a.m128_xmmi, Inxmm_b.m128_xmmi);
}

vecint8 uX_callconv operator<<(const vecint8 Inxmm_a, int InIntCount)
{
	/*vecint8 tmp = Inxmm_a;
	for (int i = 0; i < 16; ++i)
	{
		tmp.m128_ib[i] = tmp.m128_ib[i] << InIntCount;
	}
	return tmp.load_a(tmp.m128_ib);*/
	return _uX_mm_sll_epi16(_uX_mm_and_si128(Inxmm_a.m128_xmmi, _uX_mm_set1_epi8(static_cast<char>(static_cast<unsigned int>(0xff) >> static_cast<unsigned int>(InIntCount)))), _uX_mm_cvtsi32_si128(InIntCount));
}

vecint8 uX_callconv operator<<(const vecint8 Inxmm_a, const vecint8 Inxmm_Count)
{
	vecint8 tmpmask = _uX_mm_null_si128;
	/*vecint8 tmp = Inxmm_a;
	for (int i = 0; i < 16; ++i)
	{
		tmp.m128_ib[i] = tmp.m128_ib[i] << Inxmm_Count.m128_ib[i];
	}
	return tmp.load_a(tmp.m128_ib);*/
	for(int i = 0; i < 16; ++i)
	{
		tmpmask.m128_ib[i] = static_cast<char>(static_cast<unsigned int>(0xff) >> static_cast<unsigned int>(Inxmm_Count.m128_ib[i]));
	}
	return _uX_mm_sll_epi16(_uX_mm_and_si128(Inxmm_a.m128_xmmi, tmpmask.load_a(tmpmask.m128_ib)), Inxmm_Count);
}

vecint8 uX_callconv operator>>(const vecint8 Inxmm_a, int InIntCount)
{
	return _uX_mm_select_si128(__m128i_flt_byte_even, _uX_mm_sra_epi16(_uX_mm_slli_epi16(Inxmm_a.m128_xmmi, 8), _uX_mm_cvtsi32_si128(InIntCount + 8)), _uX_mm_sra_epi16(Inxmm_a.m128_xmmi, _uX_mm_cvtsi32_si128(InIntCount)));
}

vecint8 uX_callconv operator>>(const vecint8 Inxmm_a, const vecint8 Inxmm_Count)
{
	return _uX_mm_select_si128(__m128i_flt_byte_even, _uX_mm_sra_epi16(_uX_mm_slli_epi16(Inxmm_a.m128_xmmi, 8), Inxmm_Count + _uX_mm_cvtsi32_si128(8)), _uX_mm_sra_epi16(Inxmm_a.m128_xmmi, Inxmm_Count));
}

vecint8& uX_callconv vecint8::operator<<=(int InIntCount)
{
	m128_xmmi = *this << InIntCount;
	return *this;
}

vecint8& uX_callconv vecint8::operator<<=(const vecint8 Inxmm_Count)
{
	m128_xmmi = *this << Inxmm_Count;
	return *this;
}

vecint8& uX_callconv vecint8::operator>>=(int InIntCount)
{
	m128_xmmi = *this >> InIntCount;
	return *this;
}

vecint8& uX_callconv vecint8::operator>>=(const vecint8 Inxmm_Count)
{
	m128_xmmi = *this >> Inxmm_Count;
	return *this;
}

const __int8& uX_callconv vecint8::operator[](int index) const
{
	return extract(index);
}

__int8& uX_callconv vecint8::operator[](int index)
{
	__int8 tmp = extract(index);
	return tmp;
}

vecint8& uX_callconv vecint8::load(uX_InReads(16) const __int8* Inpint8)
{
	m128_xmmi = _uX_mm_loadu_si128(Inpint8);
	return *this;
}

vecint8& uX_callconv vecint8::load_a(uX_InReads(16) const __int8* Inpint8)
{
	m128_xmmi = _uX_mm_load_si128(Inpint8);
	return *this;
}

void uX_callconv vecint8::store(uX_OutWrites(16) __int8* Outpint8) const
{
	_uX_mm_storeu_si128(Outpint8, m128_xmmi);
}

void uX_callconv vecint8::store_a(uX_OutWrites(16) __int8* Outpint8) const
{
	_uX_mm_store_si128(Outpint8, m128_xmmi);
}

const vecint8 uX_callconv vecint8::insert(__int8 value, const unsigned int index)
{
	m128_xmmi = _uX_mm_cvtepi8_si128(m128_xmmi, value, index);
	return *this;
}

__int8 uX_callconv vecint8::extract(const unsigned int index) const
{
	return _uX_mm_cvtsi128_epi8(m128_xmmi, index);
}

vecint8 uX_callconv compress(const vecint16 Inxmm_low, const vecint16 Inxmm_high)
{
	return  _uX_mm_packus_epi16(_uX_mm_and_si128(Inxmm_low, __m128i_flt_byte_even), _uX_mm_and_si128(Inxmm_high, __m128i_flt_byte_even));
}

vecint8 uX_callconv compress_saturated(const vecint16 Inxmm_low, const vecint16 Inxmm_high)
{
	return  _uX_mm_packs_epi16(Inxmm_low, Inxmm_high);
}

#endif // uX_SSE2

// vecint8 End
// // // // // // // // //

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/