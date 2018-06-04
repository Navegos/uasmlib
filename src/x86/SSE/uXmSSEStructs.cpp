
#include "uXmSSEStructs.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE

#include "uXmxmmintrin.h"
#include "uXmemmintrin.h"

uXm_EXTERNC_BEGIN

//uXm_PACK_PUSH16

// VECTOR'S

// // // // // // // // //
// uXmXMVecfloat Start
/*
uXmXMVecfloat::uXmXMVecfloat(const __m128 InXmm)
{
	m128_xmm = InXmm;
}*/
uXm_Use_decl_annotations
uXmXMVecfloat::uXmXMVecfloat(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	m128_xmm = _uXm_mm_loadu_ps(Inpfloat);
}

uXmXMVecfloat::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXmXMVecfloat::operator float*(void) const
{
	return _uXm_ptr_moveu_mm_ps(m128_xmm);
}*/

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator=(const __m128 InXmm)
{
	m128_xmm = InXmm;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator=(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	m128_xmm = _uXm_mm_loadu_ps(Inpfloat);
	return *this;
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator&(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_and_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator|(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_or_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator^(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_xor_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator~()
{
	return _uXm_mm_not_ps(m128_xmm);
}

unsigned int uXm_callconv uXmXMVecfloat::operator&&(const uXmXMVecfloat& InXmm_b)
{
	return (_mm_movemask_ps(*this & InXmm_b) == 0x0f);
}

unsigned int uXm_callconv uXmXMVecfloat::operator||(const uXmXMVecfloat& InXmm_b)
{
	return (_mm_movemask_ps(*this | InXmm_b) != 0);
}

unsigned int uXm_callconv uXmXMVecfloat::operator!()
{
	return  (_uXm_mm_movemask_ps(_uXm_mm_cmpeq_ps(m128_xmm, _uXm_mm_setzero_ps())) == 0x0f);
}

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator&=(const uXmXMVecfloat InXmm_b)
{
	m128_xmm = _uXm_mm_and_ps(m128_xmm, InXmm_b.m128_xmm);
	return *this;
}

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator|=(const uXmXMVecfloat InXmm_b)
{
	m128_xmm = _uXm_mm_or_ps(m128_xmm, InXmm_b.m128_xmm);
	return *this;
}

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator^=(const uXmXMVecfloat InXmm_b)
{
	m128_xmm = _uXm_mm_xor_ps(m128_xmm, InXmm_b.m128_xmm);
	return *this;
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator+(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_add_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator-(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_sub_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator*(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_mul_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator/(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_div_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator+=(const uXmXMVecfloat InXmm_b)
{
	m128_xmm = _uXm_mm_add_ps(m128_xmm, InXmm_b.m128_xmm);
	return *this;
}

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator-=(const uXmXMVecfloat InXmm_b)
{
	m128_xmm = _uXm_mm_sub_ps(m128_xmm, InXmm_b.m128_xmm);
	return *this;
}

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator*=(const uXmXMVecfloat InXmm_b)
{
	m128_xmm = _uXm_mm_mul_ps(m128_xmm, InXmm_b.m128_xmm);
	return *this;
}

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator/=(const uXmXMVecfloat InXmm_b)
{
	m128_xmm = _uXm_mm_div_ps(m128_xmm, InXmm_b.m128_xmm);
	return *this;
}

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator++()
{
	m128_xmm = *this + __m128_f32_1;
	return *this;
}

uXmXMVecfloat& uXm_callconv uXmXMVecfloat::operator--()
{
	m128_xmm = *this - __m128_f32_1;
	return *this;
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator++(int)
{
	uXmXMVecfloat tmpXmmi_a = *this;
	m128_xmm = *this + __m128_f32_1;
	return tmpXmmi_a;
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator--(int)
{
	uXmXMVecfloat tmpXmmi_a = *this;
	m128_xmm = *this - __m128_f32_1;
	return tmpXmmi_a;
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator-()
{
	return _uXm_mm_xor_ps(*this, __m128_f32_neg0);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator==(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_cmpeq_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator<(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_cmplt_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator<=(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_cmple_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator>(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_cmpgt_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator>=(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_cmpge_ps(m128_xmm, InXmm_b.m128_xmm);
}

uXmXMVecfloat uXm_callconv uXmXMVecfloat::operator!=(const uXmXMVecfloat InXmm_b)
{
	return _uXm_mm_cmpneq_ps(m128_xmm, InXmm_b.m128_xmm);
}

// uXmXMVecfloat End
// // // // // // // // //

#ifdef uXm_SSE2
// // // // // // // // //
// uXmXMVecint8 Start

/*
uXmXMVecint8::uXmXMVecint8(const __m128i InXmmi)
{
m128_xmmi = InXmmi;
}*/

uXm_Use_decl_annotations
uXmXMVecint8::uXmXMVecint8(const __int8* Inpint8)
{
	uXm_assert(Inpint8 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

uXmXMVecint8::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXmXMVecint8::operator __int8*(void) const
{
	return reinterpret_cast<__int8*>(_uXm_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXmXMVecint8& uXm_callconv uXmXMVecint8::operator=(const __m128i InXmmi)
{
	m128_xmmi = InXmmi;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecint8& uXm_callconv uXmXMVecint8::operator=(const __int8* Inpint8)
{
	uXm_assert(Inpint8 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
	return *this;
}

// uXmXMVecint8 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecuint8 Start
/*
uXmXMVecuint8::uXmXMVecuint8(const __m128i InXmmi)
{
m128_xmmi = InXmmi;
}*/

uXm_Use_decl_annotations
uXmXMVecuint8::uXmXMVecuint8(const unsigned __int8* Inpint8)
{
	uXm_assert(Inpint8 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

uXmXMVecuint8::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXmXMVecuint8::operator unsigned __int8*(void) const
{
	return reinterpret_cast<unsigned __int8*>(_uXm_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXmXMVecuint8& uXm_callconv uXmXMVecuint8::operator=(const __m128i InXmmi)
{
	m128_xmmi = InXmmi;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecuint8& uXm_callconv uXmXMVecuint8::operator=(const unsigned __int8* Inpint8)
{
	uXm_assert(Inpint8 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
	return *this;
}
// uXmXMVecuint8 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecint16 Start

/*
uXmXMVecint16::uXmXMVecint16(const __m128i InXmmi)
{
m128_xmmi = InXmmi;
}*/

uXm_Use_decl_annotations
uXmXMVecint16::uXmXMVecint16(const __int16* Inpint16)
{
	uXm_assert(Inpint16 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
}

uXmXMVecint16::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXmXMVecint16::operator __int16*(void) const
{
	return reinterpret_cast<__int16*>(_uXm_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXmXMVecint16& uXm_callconv uXmXMVecint16::operator=(const __m128i InXmmi)
{
	m128_xmmi = InXmmi;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecint16& uXm_callconv uXmXMVecint16::operator=(const __int16* Inpint16)
{
	uXm_assert(Inpint16 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
	return *this;
}
// uXmXMVecint16 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecuint16 Start
/*
uXmXMVecuint16::uXmXMVecuint16(const __m128i InXmmi)
{
m128_xmmi = InXmmi;
}*/

uXm_Use_decl_annotations
uXmXMVecuint16::uXmXMVecuint16(const unsigned __int16* Inpint16)
{
	uXm_assert(Inpint16 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
}

uXmXMVecuint16::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXmXMVecuint16::operator unsigned __int16*(void) const
{
	return reinterpret_cast<unsigned __int16*>(_uXm_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXmXMVecuint16& uXm_callconv uXmXMVecuint16::operator=(const __m128i InXmmi)
{
	m128_xmmi = InXmmi;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecuint16& uXm_callconv uXmXMVecuint16::operator=(const unsigned __int16* Inpint16)
{
	uXm_assert(Inpint16 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
	return *this;
}
// uXmXMVecint8 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecint32 Start

/*
uXmXMVecint32::uXmXMVecint32(const __m128i InXmmi)
{
m128_xmmi = InXmmi;
}*/

uXm_Use_decl_annotations
uXmXMVecint32::uXmXMVecint32(const __int32* Inpint32)
{
	uXm_assert(Inpint32 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
}

uXmXMVecint32::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXmXMVecint32::operator __int32*(void) const
{
	return reinterpret_cast<__int32*>(_uXm_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXmXMVecint32& uXm_callconv uXmXMVecint32::operator=(const __m128i InXmmi)
{
	m128_xmmi = InXmmi;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecint32& uXm_callconv uXmXMVecint32::operator=(const __int32* Inpint32)
{
	uXm_assert(Inpint32 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
	return *this;
}
// uXmXMVecint32 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecuint32 Start
/*
uXmXMVecuint32::uXmXMVecuint32(const __m128i InXmmi)
{
m128_xmmi = InXmmi;
}*/

uXm_Use_decl_annotations
uXmXMVecuint32::uXmXMVecuint32(const unsigned __int32* Inpint32)
{
	uXm_assert(Inpint32 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
}

uXmXMVecuint32::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXmXMVecuint32::operator unsigned __int32*(void) const
{
	return reinterpret_cast<unsigned __int32*>(_uXm_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXmXMVecuint32& uXm_callconv uXmXMVecuint32::operator=(const __m128i InXmmi)
{
	m128_xmmi = InXmmi;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecuint32& uXm_callconv uXmXMVecuint32::operator=(const unsigned __int32* Inpint32)
{
	uXm_assert(Inpint32 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
	return *this;
}

// uXmXMVecuint32 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecint64 Start

/*
uXmXMVecint64::uXmXMVecint64(const __m128i InXmmi)
{
m128_xmmi = InXmmi;
}*/

uXm_Use_decl_annotations
uXmXMVecint64::uXmXMVecint64(const __int64* Inpint64)
{
	uXm_assert(Inpint64 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
}

uXmXMVecint64::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXmXMVecint64::operator __int64*(void) const
{
	return reinterpret_cast<__int64*>(_uXm_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXmXMVecint64& uXm_callconv uXmXMVecint64::operator=(const __m128i InXmmi)
{
	m128_xmmi = InXmmi;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecint64& uXm_callconv uXmXMVecint64::operator=(const __int64* Inpint64)
{
	uXm_assert(Inpint64 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
	return *this;
}

// uXmXMVecint64 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecuint64 Start
/*
uXmXMVecuint64::uXmXMVecuint64(const __m128i InXmmi)
{
m128_xmmi = InXmmi;
}*/

uXm_Use_decl_annotations
uXmXMVecuint64::uXmXMVecuint64(const unsigned __int64* Inpint64)
{
	uXm_assert(Inpint64 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
}

uXmXMVecuint64::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXmXMVecuint64::operator unsigned __int64*(void) const
{
	return reinterpret_cast<unsigned __int64*>(_uXm_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXmXMVecuint64& uXm_callconv uXmXMVecuint64::operator=(const __m128i InXmmi)
{
	m128_xmmi = InXmmi;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecuint64& uXm_callconv uXmXMVecuint64::operator=(const unsigned __int64* Inpint64)
{
	uXm_assert(Inpint64 != nullptr);
	m128_xmmi = _uXm_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
	return *this;
}

// uXmXMVecuint64 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecdouble Start
/*
uXmXMVecdouble::uXmXMVecdouble(const __m128d InXmmd)
{
m128_xmmd = InXmmd;
}*/

uXm_Use_decl_annotations
uXmXMVecdouble::uXmXMVecdouble(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	m128_xmmd = _uXm_mm_loadu_pd(Inpdouble);
}

uXmXMVecdouble::operator __m128d(void) const
{
	return m128_xmmd;
}

/*
uXmXMVecdouble::operator double*(void) const
{
	return _uXm_ptr_moveu_mm_pd(m128_xmmd);
}*/

uXmXMVecdouble& uXm_callconv uXmXMVecdouble::operator=(const __m128d InXmmd)
{
	m128_xmmd = InXmmd;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecdouble& uXm_callconv uXmXMVecdouble::operator=(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	m128_xmmd = _uXm_mm_loadu_pd(Inpdouble);
	return *this;
}

// uXmXMVecdouble End
// // // // // // // // //

#endif // uXm_SSE2

// // // // // // // // //
// uXmXMVecfloat1 Start
/*
uXmXMVecfloat1::uXmXMVecfloat1(const __m128 InXmm)
{
m128_xmm = InXmm;
}*/

uXmXMVecfloat1::uXmXMVecfloat1(const float Infloat)
{
	m128_xmm = _uXm_mm_set_ss(Infloat);
}

uXmXMVecfloat1::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXmXMVecfloat1::operator float(void) const
{
	return _uXm_mm_cvtss_f32(m128_xmm);
}*/

uXmXMVecfloat1& uXm_callconv uXmXMVecfloat1::operator=(const __m128 InXmm)
{
	m128_xmm = InXmm;
	return *this;
}

uXmXMVecfloat1& uXm_callconv uXmXMVecfloat1::operator=(const float Infloat)
{
	m128_xmm = _uXm_mm_set_ss(Infloat);
	return *this;
}

// uXmXMVecfloat1 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecfloat2 Start
/*
uXmXMVecfloat2::uXmXMVecfloat2(const __m128 InXmm)
{
m128_xmm = InXmm;
}*/

uXmXMVecfloat2::uXmXMVecfloat2(const float Infloat_X, const float Infloat_Y)
{
	m128_xmm = _uXm_mm_set_ps(0.0f, 0.0f, Infloat_Y, Infloat_X);
}

uXm_Use_decl_annotations
uXmXMVecfloat2::uXmXMVecfloat2(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	m128_xmm = _uXm_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
}

uXmXMVecfloat2::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXmXMVecfloat2::operator float*(void) const
{
	return _uXm_ptr_moveu_mm_ps(m128_xmm);
}*/

uXmXMVecfloat2& uXm_callconv uXmXMVecfloat2::operator=(const __m128 InXmm)
{
	m128_xmm = InXmm;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecfloat2& uXm_callconv uXmXMVecfloat2::operator=(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	m128_xmm = _uXm_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
	return *this;
}

// uXmXMVecfloat2 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecfloat3 Start
/*
uXmXMVecfloat3::uXmXMVecfloat3(const __m128 InXmm)
{
m128_xmm = InXmm;
}*/

uXmXMVecfloat3::uXmXMVecfloat3(const float Infloat_X, const float Infloat_Y, const float Infloat_Z)
{
	m128_xmm = _uXm_mm_set_ps(0.0f, Infloat_Z, Infloat_Y, Infloat_X);
}

uXm_Use_decl_annotations
uXmXMVecfloat3::uXmXMVecfloat3(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	m128_xmm = _uXm_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
}

uXmXMVecfloat3::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXmXMVecfloat3::operator float*(void) const
{
	return _uXm_ptr_moveu_mm_ps(m128_xmm);
}*/

uXmXMVecfloat3& uXm_callconv uXmXMVecfloat3::operator=(const __m128 InXmm)
{
	m128_xmm = InXmm;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecfloat3& uXm_callconv uXmXMVecfloat3::operator=(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	m128_xmm = _uXm_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
	return *this;
}

// uXmXMVecfloat3 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecfloat4 Start
/*
uXmXMVecfloat4::uXmXMVecfloat4(const __m128 InXmm)
{
m128_xmm = InXmm;
}*/

uXmXMVecfloat4::uXmXMVecfloat4(const float Infloat_X, const float Infloat_Y, const float Infloat_Z, const float Infloat_W)
{
	m128_xmm = _uXm_mm_set_ps(Infloat_W, Infloat_Z, Infloat_Y, Infloat_X);
}

uXm_Use_decl_annotations
uXmXMVecfloat4::uXmXMVecfloat4(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	m128_xmm = _uXm_mm_loadu_ps(Inpfloat);
}

uXmXMVecfloat4::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXmXMVecfloat4::operator float*(void) const
{
	return _uXm_ptr_moveu_mm_ps(m128_xmm);
}*/

uXmXMVecfloat4& uXm_callconv uXmXMVecfloat4::operator=(const __m128 InXmm)
{
	m128_xmm = InXmm;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecfloat4& uXm_callconv uXmXMVecfloat4::operator=(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	m128_xmm = _uXm_mm_loadu_ps(Inpfloat);
	return *this;
}

// uXmXMVecfloat4 End
// // // // // // // // //

#ifdef uXm_SSE2
// // // // // // // // //
// uXmXMVecdouble1 Start
/*
uXmXMVecdouble1::uXmXMVecdouble1(const __m128d InXmmd)
{
m128_xmm = InXmm;
}*/

uXmXMVecdouble1::uXmXMVecdouble1(const double Indouble)
{
	m128_xmmd = _uXm_mm_set_sd(Indouble);
}

uXmXMVecdouble1::operator __m128d(void) const
{
	return m128_xmmd;
}

/*
uXmXMVecdouble1::operator double(void) const
{
	return _uXm_mm_cvtsd_f64(m128_xmmd);
}*/

uXmXMVecdouble1& uXm_callconv uXmXMVecdouble1::operator=(const __m128d InXmmd)
{
	m128_xmmd = InXmmd;
	return *this;
}

uXmXMVecdouble1& uXm_callconv uXmXMVecdouble1::operator=(const double Indouble)
{
	m128_xmmd = _uXm_mm_set_sd(Indouble);
	return *this;
}

// uXmXMVecfloat1 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecdouble2 Start
/*
uXmXMVecdouble2::uXmXMVecdouble2(const __m128d InXmmd)
{
m128_xmmd = InXmmd;
}*/

uXmXMVecdouble2::uXmXMVecdouble2(const double Indouble_X, const double Indouble_Y)
{
	m128_xmmd = _uXm_mm_set_pd(Indouble_Y, Indouble_X);
}

uXm_Use_decl_annotations
uXmXMVecdouble2::uXmXMVecdouble2(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	m128_xmmd = _uXm_mm_loadu_pd(Inpdouble);
}

uXmXMVecdouble2::operator __m128d(void) const
{
	return m128_xmmd;
}

/*
uXmXMVecdouble2::operator double*(void) const
{
	return _uXm_ptr_moveu_mm_pd(m128_xmmd);
}
*/

uXmXMVecdouble2& uXm_callconv uXmXMVecdouble2::operator=(const __m128d InXmmd)
{
	m128_xmmd = InXmmd;
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecdouble2& uXm_callconv uXmXMVecdouble2::operator=(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	m128_xmmd = _uXm_mm_loadu_pd(Inpdouble);
	return *this;
}

// uXmXMVecdouble2 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecdouble3 Start

/*
uXmXMVecdouble3::uXmXMVecdouble3(const __m128d InXmmd_0, const __m128 InXmmd_1)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = InXmmd_0; break;
			case 1: m128_xmmd[1] = InXmmd_1; break;
		}
	}
	/ *m128_xmmd[0] = InXmmd_0;
	m128_xmmd[1] = InXmmd_1;* /
}*/

/*
uXmXMVecdouble3::uXmXMVecdouble3(const __m128d* InpXmmd)
{
	//if (sizeof(InpXmmd) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmmd[i] = InpXmmd[i];
		}
	}
}*/

uXmXMVecdouble3::uXmXMVecdouble3(const double Indouble_X, const double Indouble_Y, const double Indouble_Z)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = _uXm_mm_set_pd(Indouble_Y, Indouble_X); break;
			case 1: m128_xmmd[1] = _uXm_mm_set_pd(0.0, Indouble_Z); break;
		}
	}
}

uXm_Use_decl_annotations
uXmXMVecdouble3::uXmXMVecdouble3(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd[1] = _uXm_mm_set_pd(0.0, Inpdouble[2]); break;
			}
		}
	}
}

uXmXMVecdouble3::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd);
}

/*
uXmXMVecdouble3::operator double*(void) const
{
	return const_cast<double*>(m128_d);
}*/

uXmXMVecdouble3& uXm_callconv uXmXMVecdouble3::operator=(const __m128d* InpXmmd)
{
	//if (sizeof(InpXmmd) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmmd[i] = InpXmmd[i];
	}
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecdouble3& uXm_callconv uXmXMVecdouble3::operator=(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd[1] = _uXm_mm_set_pd(0.0, Inpdouble[2]); break;
		}
	}
	return *this;
}
// uXmXMVecdouble3 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecdouble4 Start

/*
uXmXMVecdouble4::uXmXMVecdouble4(const __m128d InXmmd_0, const __m128 InXmmd_1)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = InXmmd_0; break;
			case 1: m128_xmmd[1] = InXmmd_1; break;
		}
	}
	/ *m128_xmmd[0] = InXmmd_0;
	m128_xmmd[1] = InXmmd_1;* /
}*/

/*
uXmXMVecdouble4::uXmXMVecdouble4(const __m128d* InpXmmd)
{
	//if (sizeof(InpXmmd) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmmd[i] = InpXmmd[i];
		}
	}
}*/

uXmXMVecdouble4::uXmXMVecdouble4(const double Indouble_X, const double Indouble_Y, const double Indouble_Z, const double Indouble_W)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = _uXm_mm_set_pd(Indouble_Y, Indouble_X); break;
			case 1: m128_xmmd[1] = _uXm_mm_set_pd(Indouble_W, Indouble_Z); break;
		}
	}
}

uXm_Use_decl_annotations
uXmXMVecdouble4::uXmXMVecdouble4(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd[1] = _uXm_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
			}
		}
	}
}

uXmXMVecdouble4::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd);
}

/*
uXmXMVecdouble4::operator double*(void) const
{
	return const_cast<double*>(m128_d);
}*/

uXmXMVecdouble4& uXm_callconv uXmXMVecdouble4::operator=(const __m128d* InpXmmd)
{
	//if (sizeof(InpXmmd) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmmd[i] = InpXmmd[i];
	}
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecdouble4& uXm_callconv uXmXMVecdouble4::operator=(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd[1] = _uXm_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
		}
	}
	return *this;
}

// uXmXMVecdouble4 End
// // // // // // // // //

#endif // uXm_SSE2

// MATRIX'S

// // // // // // // // //
// uXmXMVecfloat3x3 Start

/*
uXmXMVecfloat3x3::uXmXMVecfloat3x3(const __m128 InXmm_0, const __m128 InXmm_1, const __m128 InXmm_2, const __m128 InXmm_3)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = InXmm_0; break;
			case 1: m128_xmm_r[1] = InXmm_1; break;
			case 2: m128_xmm_r[2] = InXmm_2; break;
		}
	}
	/ *m128_xmm_r[0] = InXmm_0;
	m128_xmm_r[1] = InXmm_1;
	m128_xmm_r[2] = InXmm_2;* /
}*/

/*
uXmXMVecfloat3x3::uXmXMVecfloat3x3(const __m128* InpXmm)
{
	//if (sizeof(InpXmm) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = InpXmm[i];
		}
	}
}*/

uXmXMVecfloat3x3::uXmXMVecfloat3x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
								   const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2,
								   const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = _uXm_mm_set_ps(0.0f, Infloat_X2, Infloat_X1, Infloat_X0); break;
			case 1: m128_xmm_r[1] = _uXm_mm_set_ps(0.0f, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
			case 2: m128_xmm_r[2] = _uXm_mm_set_ps(0.0f, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
		}
	}
}

uXm_Use_decl_annotations
uXmXMVecfloat3x3::uXmXMVecfloat3x3(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) == m128_f_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = _uXm_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
		}
	}
}

uXmXMVecfloat3x3::operator __m128*(void) const
{
	return const_cast<__m128*>(m128_xmm_r);
}

/*
uXmXMVecfloat3x3::operator float*(void) const
{
	return const_cast<float*>(m128_f_p);
}*/

uXmXMVecfloat3x3& uXm_callconv uXmXMVecfloat3x3::operator=(const __m128* InpXmm)
{
	//if (sizeof(InpXmm) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = InpXmm[i];
	}
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecfloat3x3& uXm_callconv uXmXMVecfloat3x3::operator=(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) != m128_f_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = _uXm_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
	}
	return *this;
}

// uXmXMVecfloat3x3 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecfloat4x3 Start

/*
uXmXMVecfloat4x3::uXmXMVecfloat4x3(const __m128 InXmm_0, const __m128 InXmm_1, const __m128 InXmm_2, const __m128 InXmm_3)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = InXmm_0; break;
			case 1: m128_xmm_r[1] = InXmm_1; break;
			case 2: m128_xmm_r[2] = InXmm_2; break;
			case 3: m128_xmm_r[3] = InXmm_3; break;
		}
	}
	/ *m128_xmm_r[0] = InXmm_0;
	m128_xmm_r[1] = InXmm_1;
	m128_xmm_r[2] = InXmm_2;
	m128_xmm_r[3] = InXmm_3;* /
}*/

/*
uXmXMVecfloat4x3::uXmXMVecfloat4x3(const __m128* InpXmm)
{
	//if (sizeof(InpXmm) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = InpXmm[i];
		}
	}
}*/

uXmXMVecfloat4x3::uXmXMVecfloat4x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
								   const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2,
								   const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2,
								   const float Infloat_W0, const float Infloat_W1, const float Infloat_W2)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = _uXm_mm_set_ps(0.0f, Infloat_X2, Infloat_X1, Infloat_X0); break;
			case 1: m128_xmm_r[1] = _uXm_mm_set_ps(0.0f, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
			case 2: m128_xmm_r[2] = _uXm_mm_set_ps(0.0f, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
			case 3: m128_xmm_r[3] = _uXm_mm_set_ps(0.0f, Infloat_W2, Infloat_W1, Infloat_W0); break;
		}
	}
}

uXm_Use_decl_annotations
uXmXMVecfloat4x3::uXmXMVecfloat4x3(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) == m128_f_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = _uXm_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
		}
	}
}

uXmXMVecfloat4x3::operator __m128*(void) const
{
	return const_cast<__m128*>(m128_xmm_r);
}

/*
uXmXMVecfloat4x3::operator float*(void) const
{
	return const_cast<float*>(m128_f_p);
}*/

uXmXMVecfloat4x3& uXm_callconv uXmXMVecfloat4x3::operator=(const __m128* InpXmm)
{
	//if (sizeof(InpXmm) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = InpXmm[i];
	}
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecfloat4x3& uXm_callconv uXmXMVecfloat4x3::operator=(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) != m128_f_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = _uXm_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
	}
	return *this;
}

// uXmXMVecfloat4x3 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecfloat4x4 Start

/*
uXmXMVecfloat4x4::uXmXMVecfloat4x4(const __m128 InXmm_0, const __m128 InXmm_1, const __m128 InXmm_2, const __m128 InXmm_3)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = InXmm_0; break;
			case 1: m128_xmm_r[1] = InXmm_1; break;
			case 2: m128_xmm_r[2] = InXmm_2; break;
			case 3: m128_xmm_r[3] = InXmm_3; break;
		}
	}
	/ *m128_xmm_r[0] = InXmm_0;
	m128_xmm_r[1] = InXmm_1;
	m128_xmm_r[2] = InXmm_2;
	m128_xmm_r[3] = InXmm_3;* /
}*/

/*
uXmXMVecfloat4x4::uXmXMVecfloat4x4(const __m128* InpXmm)
{
	//if (sizeof(InpXmm) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = InpXmm[i];
		}
	}
}*/

uXmXMVecfloat4x4::uXmXMVecfloat4x4(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2, const float Infloat_X3,
								   const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, const float Infloat_Y3,
								   const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, const float Infloat_Z3,
								   const float Infloat_W0, const float Infloat_W1, const float Infloat_W2, const float Infloat_W3)
{
	/*static const float uXm_ALIGN128DECL(tempfloat0[4]) = {Infloat_X0, Infloat_X1, Infloat_X2, Infloat_X3};
	static const float uXm_ALIGN128DECL(tempfloat1[4]) = {Infloat_Y0, Infloat_Y1, Infloat_Y2, Infloat_Y3};
	static const float uXm_ALIGN128DECL(tempfloat2[4]) = {Infloat_Z0, Infloat_Z1, Infloat_Z2, Infloat_Z3};
	static const float uXm_ALIGN128DECL(tempfloat3[4]) = {Infloat_W0, Infloat_W1, Infloat_W2, Infloat_W3};*/
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			/*case 0: m128_xmm_r[0] = _uXm_mm_load_ps(tempfloat0); break;
			case 1: m128_xmm_r[1] = _uXm_mm_load_ps(tempfloat1); break;
			case 2: m128_xmm_r[2] = _uXm_mm_load_ps(tempfloat2); break;
			case 3: m128_xmm_r[3] = _uXm_mm_load_ps(tempfloat3); break;*/
			case 0: m128_xmm_r[0] = _uXm_mm_set_ps(Infloat_X3, Infloat_X2, Infloat_X1, Infloat_X0); break;
			case 1: m128_xmm_r[1] = _uXm_mm_set_ps(Infloat_Y3, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
			case 2: m128_xmm_r[2] = _uXm_mm_set_ps(Infloat_Z3, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
			case 3: m128_xmm_r[3] = _uXm_mm_set_ps(Infloat_W3, Infloat_W2, Infloat_W1, Infloat_W0); break;
		}
	}
}

uXm_Use_decl_annotations
uXmXMVecfloat4x4::uXmXMVecfloat4x4(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) == m128_f_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = _uXm_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
		}
	}
}

uXmXMVecfloat4x4::operator __m128*(void) const
{
	return const_cast<__m128*>(m128_xmm_r);
}

/*
uXmXMVecfloat4x4::operator float*(void) const
{
	return const_cast<float*>(m128_f_p);
}*/

uXmXMVecfloat4x4& uXm_callconv uXmXMVecfloat4x4::operator=(const __m128* InpXmm)
{
	//if (sizeof(InpXmm) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = InpXmm[i];
	}
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecfloat4x4& uXm_callconv uXmXMVecfloat4x4::operator=(const float* Inpfloat)
{
	uXm_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) != m128_f_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = _uXm_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
	}
	return *this;
}

// uXmXMVecfloat4x4 End
// // // // // // // // //

#ifdef uXm_SSE2
// // // // // // // // //
// uXmXMVecdouble3x3 Start

/*
uXmXMVecdouble3x3::uXmXMVecdouble3x3(const __m128d InXmmd_0, const __m128d InXmmd_1, const __m128d InXmmd_2,
									 const __m128d InXmmd_3, const __m128d InXmmd_4, const __m128d InXmmd_5)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
switch (i)
{
case 0: m128_xmmd_r[0] = InXmmd_0; break;
case 1: m128_xmmd_r[1] = InXmmd_1; break;
case 2: m128_xmmd_r[2] = InXmmd_2; break;
case 3: m128_xmmd_r[3] = InXmmd_3; break;
case 4: m128_xmmd_r[4] = InXmmd_4; break;
case 5: m128_xmmd_r[5] = InXmmd_5; break;
}
}
}*/

/*
uXmXMVecdouble3x3::uXmXMVecdouble3x3(const __m128d* InpXmmd)
{
//if (sizeof(InpXmmd) == m128_xmmd_p_size)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
m128_xmmd_r[i] = InpXmmd[i];
}
}
}*/

uXmXMVecdouble3x3::uXmXMVecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
									 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
									 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2)
{
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uXm_mm_set_pd(Indouble_X1, Indouble_X0); break;
			case 1: m128_xmmd_r[1] = _uXm_mm_set_pd(0.0, Indouble_X2); break;
			case 2: m128_xmmd_r[2] = _uXm_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
			case 3: m128_xmmd_r[3] = _uXm_mm_set_pd(0.0, Indouble_Y2); break;
			case 4: m128_xmmd_r[4] = _uXm_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
			case 5: m128_xmmd_r[5] = _uXm_mm_set_pd(0.0, Indouble_Z2); break;
		}
	}
}

uXm_Use_decl_annotations
uXmXMVecdouble3x3::uXmXMVecdouble3x3(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmmd_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd_r[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd_r[1] = _uXm_mm_set_pd(0.0, Inpdouble[2]); break;
				case 2: m128_xmmd_r[2] = _uXm_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
				case 3: m128_xmmd_r[3] = _uXm_mm_set_pd(0.0, Inpdouble[5]); break;
				case 4: m128_xmmd_r[4] = _uXm_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 5: m128_xmmd_r[5] = _uXm_mm_set_pd(0.0, Inpdouble[8]); break;
			}
		}
	}
}

uXmXMVecdouble3x3::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd_r);
}

/*
uXmXMVecdouble3x3::operator double*(void) const
{
	return const_cast<double*>(m128_d_p);
}*/

uXmXMVecdouble3x3& uXm_callconv uXmXMVecdouble3x3::operator=(const __m128d* InpXmmd)
{
	//if (sizeof(InpXmmd) != m128_xmmd_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		m128_xmmd_r[i] = InpXmmd[i];
	}
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecdouble3x3& uXm_callconv uXmXMVecdouble3x3::operator=(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd_r[1] = _uXm_mm_set_pd(0.0, Inpdouble[2]); break;
			case 2: m128_xmmd_r[2] = _uXm_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
			case 3: m128_xmmd_r[3] = _uXm_mm_set_pd(0.0, Inpdouble[5]); break;
			case 4: m128_xmmd_r[4] = _uXm_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
			case 5: m128_xmmd_r[5] = _uXm_mm_set_pd(0.0, Inpdouble[8]); break;
		}
	}
	return *this;
}

// uXmXMVecdouble3x3 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecdouble4x3 Start

/*
uXmXMVecdouble4x3::uXmXMVecdouble4x3(const __m128d InXmmd_0, const __m128d InXmmd_1, const __m128d InXmmd_2, const __m128d InXmmd_3,
									 const __m128d InXmmd_4, const __m128d InXmmd_5, const __m128d InXmmd_6, const __m128d InXmmd_7)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
switch (i)
{
case 0: m128_xmmd_r[0] = InXmmd_0; break;
case 1: m128_xmmd_r[1] = InXmmd_1; break;
case 2: m128_xmmd_r[2] = InXmmd_2; break;
case 3: m128_xmmd_r[3] = InXmmd_3; break;
case 4: m128_xmmd_r[4] = InXmmd_4; break;
case 5: m128_xmmd_r[5] = InXmmd_5; break;
case 6: m128_xmmd_r[6] = InXmmd_6; break;
case 7: m128_xmmd_r[7] = InXmmd_7; break;
}
}
}*/

/*
uXmXMVecdouble4x3::uXmXMVecdouble4x3(const __m128d* InpXmmd)
{
//if (sizeof(InpXmmd) == m128_xmmd_p_size)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
m128_xmmd_r[i] = InpXmmd[i];
}
}
}*/

uXmXMVecdouble4x3::uXmXMVecdouble4x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
									 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
									 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2,
									 const double Indouble_W0, const double Indouble_W1, const double Indouble_W2)
{
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uXm_mm_set_pd(Indouble_X1, Indouble_X0); break;
			case 1: m128_xmmd_r[1] = _uXm_mm_set_pd(0.0, Indouble_X2); break;
			case 2: m128_xmmd_r[2] = _uXm_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
			case 3: m128_xmmd_r[3] = _uXm_mm_set_pd(0.0, Indouble_Y2); break;
			case 4: m128_xmmd_r[4] = _uXm_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
			case 5: m128_xmmd_r[5] = _uXm_mm_set_pd(0.0, Indouble_Z2); break;
			case 6: m128_xmmd_r[6] = _uXm_mm_set_pd(Indouble_W1, Indouble_W0); break;
			case 7: m128_xmmd_r[7] = _uXm_mm_set_pd(0.0, Indouble_W2); break;
		}
	}
}

uXm_Use_decl_annotations
uXmXMVecdouble4x3::uXmXMVecdouble4x3(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmmd_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd_r[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd_r[1] = _uXm_mm_set_pd(0.0, Inpdouble[2]); break;
				case 2: m128_xmmd_r[2] = _uXm_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
				case 3: m128_xmmd_r[3] = _uXm_mm_set_pd(0.0, Inpdouble[5]); break;
				case 4: m128_xmmd_r[4] = _uXm_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 5: m128_xmmd_r[5] = _uXm_mm_set_pd(0.0, Inpdouble[8]); break;
				case 6: m128_xmmd_r[6] = _uXm_mm_set_pd(Inpdouble[10], Inpdouble[9]); break;
				case 7: m128_xmmd_r[7] = _uXm_mm_set_pd(0.0, Inpdouble[11]); break;
			}
		}
	}
}

uXmXMVecdouble4x3::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd_r);
}

/*
uXmXMVecdouble4x3::operator double*(void) const
{
	return const_cast<double*>(m128_d_p);
}*/

uXmXMVecdouble4x3& uXm_callconv uXmXMVecdouble4x3::operator=(const __m128d* InpXmmd)
{
	//if (sizeof(InpXmmd) != m128_xmmd_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		m128_xmmd_r[i] = InpXmmd[i];
	}
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecdouble4x3& uXm_callconv uXmXMVecdouble4x3::operator=(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd_r[1] = _uXm_mm_set_pd(0.0, Inpdouble[2]); break;
			case 2: m128_xmmd_r[2] = _uXm_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
			case 3: m128_xmmd_r[3] = _uXm_mm_set_pd(0.0, Inpdouble[5]); break;
			case 4: m128_xmmd_r[4] = _uXm_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
			case 5: m128_xmmd_r[5] = _uXm_mm_set_pd(0.0, Inpdouble[8]); break;
			case 6: m128_xmmd_r[6] = _uXm_mm_set_pd(Inpdouble[10], Inpdouble[9]); break;
			case 7: m128_xmmd_r[7] = _uXm_mm_set_pd(0.0, Inpdouble[11]); break;
		}
	}
	return *this;
}

// uXmXMVecdouble4x3 End
// // // // // // // // //

// // // // // // // // //
// uXmXMVecdouble4x4 Start

/*
uXmXMVecdouble4x3::uXmXMVecdouble4x3(const __m128d InXmmd_0, const __m128d InXmmd_1, const __m128d InXmmd_2, const __m128d InXmmd_3,
									 const __m128d InXmmd_4, const __m128d InXmmd_5, const __m128d InXmmd_6, const __m128d InXmmd_7)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
switch (i)
{
case 0: m128_xmmd_r[0] = InXmmd_0; break;
case 1: m128_xmmd_r[1] = InXmmd_1; break;
case 2: m128_xmmd_r[2] = InXmmd_2; break;
case 3: m128_xmmd_r[3] = InXmmd_3; break;
case 4: m128_xmmd_r[4] = InXmmd_4; break;
case 5: m128_xmmd_r[5] = InXmmd_5; break;
case 6: m128_xmmd_r[6] = InXmmd_6; break;
case 7: m128_xmmd_r[7] = InXmmd_7; break;
}
}
}*/

/*
uXmXMVecdouble4x4::uXmXMVecdouble4x4(const __m128d* InpXmmd)
{
//if (sizeof(InpXmmd) == m128_xmmd_p_size)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
m128_xmmd_r[i] = InpXmmd[i];
}
}
}*/

uXmXMVecdouble4x4::uXmXMVecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
									 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
									 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
									 const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3)
{
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uXm_mm_set_pd(Indouble_X1, Indouble_X0); break;
			case 1: m128_xmmd_r[1] = _uXm_mm_set_pd(Indouble_X3, Indouble_X2); break;
			case 2: m128_xmmd_r[2] = _uXm_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
			case 3: m128_xmmd_r[3] = _uXm_mm_set_pd(Indouble_Y3, Indouble_Y2); break;
			case 4: m128_xmmd_r[4] = _uXm_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
			case 5: m128_xmmd_r[5] = _uXm_mm_set_pd(Indouble_Z3, Indouble_Z2); break;
			case 6: m128_xmmd_r[6] = _uXm_mm_set_pd(Indouble_W1, Indouble_W0); break;
			case 7: m128_xmmd_r[7] = _uXm_mm_set_pd(Indouble_W3, Indouble_W2); break;
		}
	}
}

uXm_Use_decl_annotations
uXmXMVecdouble4x4::uXmXMVecdouble4x4(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmmd_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd_r[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd_r[1] = _uXm_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
				case 2: m128_xmmd_r[2] = _uXm_mm_set_pd(Inpdouble[5], Inpdouble[4]); break;
				case 3: m128_xmmd_r[3] = _uXm_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 4: m128_xmmd_r[4] = _uXm_mm_set_pd(Inpdouble[9], Inpdouble[8]); break;
				case 5: m128_xmmd_r[5] = _uXm_mm_set_pd(Inpdouble[11], Inpdouble[10]); break;
				case 6: m128_xmmd_r[6] = _uXm_mm_set_pd(Inpdouble[13], Inpdouble[12]); break;
				case 7: m128_xmmd_r[7] = _uXm_mm_set_pd(Inpdouble[15], Inpdouble[14]); break;
			}
		}
	}
}

uXmXMVecdouble4x4::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd_r);
}

/*
uXmXMVecdouble4x4::operator double*(void) const
{
	return const_cast<double*>(m128_d_p);
}*/

uXmXMVecdouble4x4& uXm_callconv uXmXMVecdouble4x4::operator=(const __m128d* InpXmmd)
{
	//if (sizeof(InpXmmd) != m128_xmmd_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		m128_xmmd_r[i] = InpXmmd[i];
	}
	return *this;
}

uXm_Use_decl_annotations
uXmXMVecdouble4x4& uXm_callconv uXmXMVecdouble4x4::operator=(const double* Inpdouble)
{
	uXm_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uXm_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd_r[1] = _uXm_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
			case 2: m128_xmmd_r[2] = _uXm_mm_set_pd(Inpdouble[5], Inpdouble[4]); break;
			case 3: m128_xmmd_r[3] = _uXm_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
			case 4: m128_xmmd_r[4] = _uXm_mm_set_pd(Inpdouble[9], Inpdouble[8]); break;
			case 5: m128_xmmd_r[5] = _uXm_mm_set_pd(Inpdouble[11], Inpdouble[10]); break;
			case 6: m128_xmmd_r[6] = _uXm_mm_set_pd(Inpdouble[13], Inpdouble[12]); break;
			case 7: m128_xmmd_r[7] = _uXm_mm_set_pd(Inpdouble[15], Inpdouble[14]); break;
		}
	}
	return *this;
}

// uXmXMVecdouble4x4 End
// // // // // // // // //

#endif // uXm_SSE2

//uXm_PACK_POP

uXm_EXTERNC_END

#endif //SSE

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/
