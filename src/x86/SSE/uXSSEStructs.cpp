
#include "uXSSEStructs.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

#include "uXxmmintrin.h"
#include "uXemmintrin.h"

uX_EXTERNC_BEGIN

//uX_PACK_PUSH16

// VECTOR'S

// // // // // // // // //
// uXXMVecfloat Start
/*
uXXMVecfloat::uXXMVecfloat(const __m128 Inxmm)
{
	m128_xmm = Inxmm;
}*/
uX_Use_decl_annotations
uXXMVecfloat::uXXMVecfloat(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m128_xmm = _uX_mm_loadu_ps(Inpfloat);
}

uXXMVecfloat::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXXMVecfloat::operator float*(void) const
{
	return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

uXXMVecfloat& uX_callconv uXXMVecfloat::operator=(const __m128 Inxmm)
{
	m128_xmm = Inxmm;
	return *this;
}

uX_Use_decl_annotations
uXXMVecfloat& uX_callconv uXXMVecfloat::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m128_xmm = _uX_mm_loadu_ps(Inpfloat);
	return *this;
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator&(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_and_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator|(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_or_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator^(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_xor_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator~()
{
	return _uX_mm_not_ps(m128_xmm);
}

unsigned int uX_callconv uXXMVecfloat::operator&&(const uXXMVecfloat& Inxmm_b)
{
	return (_mm_movemask_ps(*this & Inxmm_b) == 0x0f);
}

unsigned int uX_callconv uXXMVecfloat::operator||(const uXXMVecfloat& Inxmm_b)
{
	return (_mm_movemask_ps(*this | Inxmm_b) != 0);
}

unsigned int uX_callconv uXXMVecfloat::operator!()
{
	return  (_uX_mm_movemask_ps(_uX_mm_cmpeq_ps(m128_xmm, _uX_mm_setzero_ps())) == 0x0f);
}

uXXMVecfloat& uX_callconv uXXMVecfloat::operator&=(const uXXMVecfloat Inxmm_b)
{
	m128_xmm = _uX_mm_and_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

uXXMVecfloat& uX_callconv uXXMVecfloat::operator|=(const uXXMVecfloat Inxmm_b)
{
	m128_xmm = _uX_mm_or_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

uXXMVecfloat& uX_callconv uXXMVecfloat::operator^=(const uXXMVecfloat Inxmm_b)
{
	m128_xmm = _uX_mm_xor_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator+(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_add_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator-(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_sub_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator*(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_mul_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator/(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_div_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat& uX_callconv uXXMVecfloat::operator+=(const uXXMVecfloat Inxmm_b)
{
	m128_xmm = _uX_mm_add_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

uXXMVecfloat& uX_callconv uXXMVecfloat::operator-=(const uXXMVecfloat Inxmm_b)
{
	m128_xmm = _uX_mm_sub_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

uXXMVecfloat& uX_callconv uXXMVecfloat::operator*=(const uXXMVecfloat Inxmm_b)
{
	m128_xmm = _uX_mm_mul_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

uXXMVecfloat& uX_callconv uXXMVecfloat::operator/=(const uXXMVecfloat Inxmm_b)
{
	m128_xmm = _uX_mm_div_ps(m128_xmm, Inxmm_b.m128_xmm);
	return *this;
}

uXXMVecfloat& uX_callconv uXXMVecfloat::operator++()
{
	m128_xmm = *this + __m128_1;
	return *this;
}

uXXMVecfloat& uX_callconv uXXMVecfloat::operator--()
{
	m128_xmm = *this - __m128_1;
	return *this;
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator++(int)
{
	uXXMVecfloat tmpxmmi_a = *this;
	m128_xmm = *this + __m128_1;
	return tmpxmmi_a;
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator--(int)
{
	uXXMVecfloat tmpxmmi_a = *this;
	m128_xmm = *this - __m128_1;
	return tmpxmmi_a;
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator-()
{
	return _uX_mm_xor_ps(*this, __m128_neg0);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator==(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_cmpeq_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator<(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_cmplt_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator<=(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_cmple_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator>(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_cmpgt_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator>=(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_cmpge_ps(m128_xmm, Inxmm_b.m128_xmm);
}

uXXMVecfloat uX_callconv uXXMVecfloat::operator!=(const uXXMVecfloat Inxmm_b)
{
	return _uX_mm_cmpneq_ps(m128_xmm, Inxmm_b.m128_xmm);
}

// uXXMVecfloat End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// uXXMVecint8 Start

/*
uXXMVecint8::uXXMVecint8(const __m128i Inxmmi)
{
m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
uXXMVecint8::uXXMVecint8(const __int8* Inpint8)
{
	uX_assert(Inpint8 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

uXXMVecint8::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXXMVecint8::operator __int8*(void) const
{
	return reinterpret_cast<__int8*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXXMVecint8& uX_callconv uXXMVecint8::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
uXXMVecint8& uX_callconv uXXMVecint8::operator=(const __int8* Inpint8)
{
	uX_assert(Inpint8 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
	return *this;
}

// uXXMVecint8 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecuint8 Start
/*
uXXMVecuint8::uXXMVecuint8(const __m128i Inxmmi)
{
m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
uXXMVecuint8::uXXMVecuint8(const unsigned __int8* Inpint8)
{
	uX_assert(Inpint8 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

uXXMVecuint8::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXXMVecuint8::operator unsigned __int8*(void) const
{
	return reinterpret_cast<unsigned __int8*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXXMVecuint8& uX_callconv uXXMVecuint8::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
uXXMVecuint8& uX_callconv uXXMVecuint8::operator=(const unsigned __int8* Inpint8)
{
	uX_assert(Inpint8 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
	return *this;
}
// uXXMVecuint8 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecint16 Start

/*
uXXMVecint16::uXXMVecint16(const __m128i Inxmmi)
{
m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
uXXMVecint16::uXXMVecint16(const __int16* Inpint16)
{
	uX_assert(Inpint16 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
}

uXXMVecint16::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXXMVecint16::operator __int16*(void) const
{
	return reinterpret_cast<__int16*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXXMVecint16& uX_callconv uXXMVecint16::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
uXXMVecint16& uX_callconv uXXMVecint16::operator=(const __int16* Inpint16)
{
	uX_assert(Inpint16 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
	return *this;
}
// uXXMVecint16 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecuint16 Start
/*
uXXMVecuint16::uXXMVecuint16(const __m128i Inxmmi)
{
m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
uXXMVecuint16::uXXMVecuint16(const unsigned __int16* Inpint16)
{
	uX_assert(Inpint16 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
}

uXXMVecuint16::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXXMVecuint16::operator unsigned __int16*(void) const
{
	return reinterpret_cast<unsigned __int16*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXXMVecuint16& uX_callconv uXXMVecuint16::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
uXXMVecuint16& uX_callconv uXXMVecuint16::operator=(const unsigned __int16* Inpint16)
{
	uX_assert(Inpint16 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
	return *this;
}
// uXXMVecint8 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecint32 Start

/*
uXXMVecint32::uXXMVecint32(const __m128i Inxmmi)
{
m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
uXXMVecint32::uXXMVecint32(const __int32* Inpint32)
{
	uX_assert(Inpint32 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
}

uXXMVecint32::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXXMVecint32::operator __int32*(void) const
{
	return reinterpret_cast<__int32*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXXMVecint32& uX_callconv uXXMVecint32::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
uXXMVecint32& uX_callconv uXXMVecint32::operator=(const __int32* Inpint32)
{
	uX_assert(Inpint32 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
	return *this;
}
// uXXMVecint32 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecuint32 Start
/*
uXXMVecuint32::uXXMVecuint32(const __m128i Inxmmi)
{
m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
uXXMVecuint32::uXXMVecuint32(const unsigned __int32* Inpint32)
{
	uX_assert(Inpint32 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
}

uXXMVecuint32::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXXMVecuint32::operator unsigned __int32*(void) const
{
	return reinterpret_cast<unsigned __int32*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXXMVecuint32& uX_callconv uXXMVecuint32::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
uXXMVecuint32& uX_callconv uXXMVecuint32::operator=(const unsigned __int32* Inpint32)
{
	uX_assert(Inpint32 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
	return *this;
}

// uXXMVecuint32 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecint64 Start

/*
uXXMVecint64::uXXMVecint64(const __m128i Inxmmi)
{
m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
uXXMVecint64::uXXMVecint64(const __int64* Inpint64)
{
	uX_assert(Inpint64 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
}

uXXMVecint64::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXXMVecint64::operator __int64*(void) const
{
	return reinterpret_cast<__int64*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXXMVecint64& uX_callconv uXXMVecint64::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
uXXMVecint64& uX_callconv uXXMVecint64::operator=(const __int64* Inpint64)
{
	uX_assert(Inpint64 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
	return *this;
}

// uXXMVecint64 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecuint64 Start
/*
uXXMVecuint64::uXXMVecuint64(const __m128i Inxmmi)
{
m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
uXXMVecuint64::uXXMVecuint64(const unsigned __int64* Inpint64)
{
	uX_assert(Inpint64 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
}

uXXMVecuint64::operator __m128i(void) const
{
	return m128_xmmi;
}

/*
uXXMVecuint64::operator unsigned __int64*(void) const
{
	return reinterpret_cast<unsigned __int64*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

uXXMVecuint64& uX_callconv uXXMVecuint64::operator=(const __m128i Inxmmi)
{
	m128_xmmi = Inxmmi;
	return *this;
}

uX_Use_decl_annotations
uXXMVecuint64& uX_callconv uXXMVecuint64::operator=(const unsigned __int64* Inpint64)
{
	uX_assert(Inpint64 != nullptr);
	m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
	return *this;
}

// uXXMVecuint64 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecdouble Start
/*
uXXMVecdouble::uXXMVecdouble(const __m128d Inxmmd)
{
m128_xmmd = Inxmmd;
}*/

uX_Use_decl_annotations
uXXMVecdouble::uXXMVecdouble(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
}

uXXMVecdouble::operator __m128d(void) const
{
	return m128_xmmd;
}

/*
uXXMVecdouble::operator double*(void) const
{
	return _uX_ptr_moveu_mm_pd(m128_xmmd);
}*/

uXXMVecdouble& uX_callconv uXXMVecdouble::operator=(const __m128d Inxmmd)
{
	m128_xmmd = Inxmmd;
	return *this;
}

uX_Use_decl_annotations
uXXMVecdouble& uX_callconv uXXMVecdouble::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
	return *this;
}

// uXXMVecdouble End
// // // // // // // // //

#endif // uX_SSE2

// // // // // // // // //
// uXXMVecfloat1 Start
/*
uXXMVecfloat1::uXXMVecfloat1(const __m128 Inxmm)
{
m128_xmm = Inxmm;
}*/

uXXMVecfloat1::uXXMVecfloat1(const float Infloat)
{
	m128_xmm = _uX_mm_set_ss(Infloat);
}

uXXMVecfloat1::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXXMVecfloat1::operator float(void) const
{
	return _uX_mm_cvtss_f32(m128_xmm);
}*/

uXXMVecfloat1& uX_callconv uXXMVecfloat1::operator=(const __m128 Inxmm)
{
	m128_xmm = Inxmm;
	return *this;
}

uXXMVecfloat1& uX_callconv uXXMVecfloat1::operator=(const float Infloat)
{
	m128_xmm = _uX_mm_set_ss(Infloat);
	return *this;
}

// uXXMVecfloat1 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecfloat2 Start
/*
uXXMVecfloat2::uXXMVecfloat2(const __m128 Inxmm)
{
m128_xmm = Inxmm;
}*/

uXXMVecfloat2::uXXMVecfloat2(const float Infloat_X, const float Infloat_Y)
{
	m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
uXXMVecfloat2::uXXMVecfloat2(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
}

uXXMVecfloat2::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXXMVecfloat2::operator float*(void) const
{
	return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

uXXMVecfloat2& uX_callconv uXXMVecfloat2::operator=(const __m128 Inxmm)
{
	m128_xmm = Inxmm;
	return *this;
}

uX_Use_decl_annotations
uXXMVecfloat2& uX_callconv uXXMVecfloat2::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
	return *this;
}

// uXXMVecfloat2 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecfloat3 Start
/*
uXXMVecfloat3::uXXMVecfloat3(const __m128 Inxmm)
{
m128_xmm = Inxmm;
}*/

uXXMVecfloat3::uXXMVecfloat3(const float Infloat_X, const float Infloat_Y, const float Infloat_Z)
{
	m128_xmm = _uX_mm_set_ps(0.0f, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
uXXMVecfloat3::uXXMVecfloat3(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m128_xmm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
}

uXXMVecfloat3::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXXMVecfloat3::operator float*(void) const
{
	return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

uXXMVecfloat3& uX_callconv uXXMVecfloat3::operator=(const __m128 Inxmm)
{
	m128_xmm = Inxmm;
	return *this;
}

uX_Use_decl_annotations
uXXMVecfloat3& uX_callconv uXXMVecfloat3::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m128_xmm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
	return *this;
}

// uXXMVecfloat3 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecfloat4 Start
/*
uXXMVecfloat4::uXXMVecfloat4(const __m128 Inxmm)
{
m128_xmm = Inxmm;
}*/

uXXMVecfloat4::uXXMVecfloat4(const float Infloat_X, const float Infloat_Y, const float Infloat_Z, const float Infloat_W)
{
	m128_xmm = _uX_mm_set_ps(Infloat_W, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
uXXMVecfloat4::uXXMVecfloat4(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m128_xmm = _uX_mm_loadu_ps(Inpfloat);
}

uXXMVecfloat4::operator __m128(void) const
{
	return m128_xmm;
}

/*
uXXMVecfloat4::operator float*(void) const
{
	return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

uXXMVecfloat4& uX_callconv uXXMVecfloat4::operator=(const __m128 Inxmm)
{
	m128_xmm = Inxmm;
	return *this;
}

uX_Use_decl_annotations
uXXMVecfloat4& uX_callconv uXXMVecfloat4::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m128_xmm = _uX_mm_loadu_ps(Inpfloat);
	return *this;
}

// uXXMVecfloat4 End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// uXXMVecdouble1 Start
/*
uXXMVecdouble1::uXXMVecdouble1(const __m128d Inxmmd)
{
m128_xmm = Inxmm;
}*/

uXXMVecdouble1::uXXMVecdouble1(const double Indouble)
{
	m128_xmmd = _uX_mm_set_sd(Indouble);
}

uXXMVecdouble1::operator __m128d(void) const
{
	return m128_xmmd;
}

/*
uXXMVecdouble1::operator double(void) const
{
	return _uX_mm_cvtsd_f64(m128_xmmd);
}*/

uXXMVecdouble1& uX_callconv uXXMVecdouble1::operator=(const __m128d Inxmmd)
{
	m128_xmmd = Inxmmd;
	return *this;
}

uXXMVecdouble1& uX_callconv uXXMVecdouble1::operator=(const double Indouble)
{
	m128_xmmd = _uX_mm_set_sd(Indouble);
	return *this;
}

// uXXMVecfloat1 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecdouble2 Start
/*
uXXMVecdouble2::uXXMVecdouble2(const __m128d Inxmmd)
{
m128_xmmd = Inxmmd;
}*/

uXXMVecdouble2::uXXMVecdouble2(const double Indouble_X, const double Indouble_Y)
{
	m128_xmmd = _uX_mm_set_pd(Indouble_Y, Indouble_X);
}

uX_Use_decl_annotations
uXXMVecdouble2::uXXMVecdouble2(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
}

uXXMVecdouble2::operator __m128d(void) const
{
	return m128_xmmd;
}

/*
uXXMVecdouble2::operator double*(void) const
{
	return _uX_ptr_moveu_mm_pd(m128_xmmd);
}
*/

uXXMVecdouble2& uX_callconv uXXMVecdouble2::operator=(const __m128d Inxmmd)
{
	m128_xmmd = Inxmmd;
	return *this;
}

uX_Use_decl_annotations
uXXMVecdouble2& uX_callconv uXXMVecdouble2::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
	return *this;
}

// uXXMVecdouble2 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecdouble3 Start

/*
uXXMVecdouble3::uXXMVecdouble3(const __m128d Inxmmd_0, const __m128 Inxmmd_1)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
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
uXXMVecdouble3::uXXMVecdouble3(const __m128d* Inpxmmd)
{
	//if (sizeof(Inpxmmd) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmmd[i] = Inpxmmd[i];
		}
	}
}*/

uXXMVecdouble3::uXXMVecdouble3(const double Indouble_X, const double Indouble_Y, const double Indouble_Z)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = _uX_mm_set_pd(Indouble_Y, Indouble_X); break;
			case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Indouble_Z); break;
		}
	}
}

uX_Use_decl_annotations
uXXMVecdouble3::uXXMVecdouble3(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
			}
		}
	}
}

uXXMVecdouble3::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd);
}

/*
uXXMVecdouble3::operator double*(void) const
{
	return const_cast<double*>(m128_d);
}*/

uXXMVecdouble3& uX_callconv uXXMVecdouble3::operator=(const __m128d* Inpxmmd)
{
	//if (sizeof(Inpxmmd) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmmd[i] = Inpxmmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXXMVecdouble3& uX_callconv uXXMVecdouble3::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
		}
	}
	return *this;
}
// uXXMVecdouble3 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecdouble4 Start

/*
uXXMVecdouble4::uXXMVecdouble4(const __m128d Inxmmd_0, const __m128 Inxmmd_1)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
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
uXXMVecdouble4::uXXMVecdouble4(const __m128d* Inpxmmd)
{
	//if (sizeof(Inpxmmd) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmmd[i] = Inpxmmd[i];
		}
	}
}*/

uXXMVecdouble4::uXXMVecdouble4(const double Indouble_X, const double Indouble_Y, const double Indouble_Z, const double Indouble_W)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = _uX_mm_set_pd(Indouble_Y, Indouble_X); break;
			case 1: m128_xmmd[1] = _uX_mm_set_pd(Indouble_W, Indouble_Z); break;
		}
	}
}

uX_Use_decl_annotations
uXXMVecdouble4::uXXMVecdouble4(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
			}
		}
	}
}

uXXMVecdouble4::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd);
}

/*
uXXMVecdouble4::operator double*(void) const
{
	return const_cast<double*>(m128_d);
}*/

uXXMVecdouble4& uX_callconv uXXMVecdouble4::operator=(const __m128d* Inpxmmd)
{
	//if (sizeof(Inpxmmd) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmmd[i] = Inpxmmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXXMVecdouble4& uX_callconv uXXMVecdouble4::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
		}
	}
	return *this;
}

// uXXMVecdouble4 End
// // // // // // // // //

#endif // uX_SSE2

// MATRIX'S

// // // // // // // // //
// uXXMVecfloat3x3 Start

/*
uXXMVecfloat3x3::uXXMVecfloat3x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = Inxmm_0; break;
			case 1: m128_xmm_r[1] = Inxmm_1; break;
			case 2: m128_xmm_r[2] = Inxmm_2; break;
		}
	}
	/ *m128_xmm_r[0] = Inxmm_0;
	m128_xmm_r[1] = Inxmm_1;
	m128_xmm_r[2] = Inxmm_2;* /
}*/

/*
uXXMVecfloat3x3::uXXMVecfloat3x3(const __m128* Inpxmm)
{
	//if (sizeof(Inpxmm) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = Inpxmm[i];
		}
	}
}*/

uXXMVecfloat3x3::uXXMVecfloat3x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
								   const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2,
								   const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = _uX_mm_set_ps(0.0f, Infloat_X2, Infloat_X1, Infloat_X0); break;
			case 1: m128_xmm_r[1] = _uX_mm_set_ps(0.0f, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
			case 2: m128_xmm_r[2] = _uX_mm_set_ps(0.0f, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
		}
	}
}

uX_Use_decl_annotations
uXXMVecfloat3x3::uXXMVecfloat3x3(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) == m128_f_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
		}
	}
}

uXXMVecfloat3x3::operator __m128*(void) const
{
	return const_cast<__m128*>(m128_xmm_r);
}

/*
uXXMVecfloat3x3::operator float*(void) const
{
	return const_cast<float*>(m128_f_p);
}*/

uXXMVecfloat3x3& uX_callconv uXXMVecfloat3x3::operator=(const __m128* Inpxmm)
{
	//if (sizeof(Inpxmm) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = Inpxmm[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXXMVecfloat3x3& uX_callconv uXXMVecfloat3x3::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) != m128_f_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
	}
	return *this;
}

// uXXMVecfloat3x3 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecfloat4x3 Start

/*
uXXMVecfloat4x3::uXXMVecfloat4x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = Inxmm_0; break;
			case 1: m128_xmm_r[1] = Inxmm_1; break;
			case 2: m128_xmm_r[2] = Inxmm_2; break;
			case 3: m128_xmm_r[3] = Inxmm_3; break;
		}
	}
	/ *m128_xmm_r[0] = Inxmm_0;
	m128_xmm_r[1] = Inxmm_1;
	m128_xmm_r[2] = Inxmm_2;
	m128_xmm_r[3] = Inxmm_3;* /
}*/

/*
uXXMVecfloat4x3::uXXMVecfloat4x3(const __m128* Inpxmm)
{
	//if (sizeof(Inpxmm) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = Inpxmm[i];
		}
	}
}*/

uXXMVecfloat4x3::uXXMVecfloat4x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
								   const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2,
								   const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2,
								   const float Infloat_W0, const float Infloat_W1, const float Infloat_W2)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = _uX_mm_set_ps(0.0f, Infloat_X2, Infloat_X1, Infloat_X0); break;
			case 1: m128_xmm_r[1] = _uX_mm_set_ps(0.0f, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
			case 2: m128_xmm_r[2] = _uX_mm_set_ps(0.0f, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
			case 3: m128_xmm_r[3] = _uX_mm_set_ps(0.0f, Infloat_W2, Infloat_W1, Infloat_W0); break;
		}
	}
}

uX_Use_decl_annotations
uXXMVecfloat4x3::uXXMVecfloat4x3(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) == m128_f_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
		}
	}
}

uXXMVecfloat4x3::operator __m128*(void) const
{
	return const_cast<__m128*>(m128_xmm_r);
}

/*
uXXMVecfloat4x3::operator float*(void) const
{
	return const_cast<float*>(m128_f_p);
}*/

uXXMVecfloat4x3& uX_callconv uXXMVecfloat4x3::operator=(const __m128* Inpxmm)
{
	//if (sizeof(Inpxmm) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = Inpxmm[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXXMVecfloat4x3& uX_callconv uXXMVecfloat4x3::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) != m128_f_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
	}
	return *this;
}

// uXXMVecfloat4x3 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecfloat4x4 Start

/*
uXXMVecfloat4x4::uXXMVecfloat4x4(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3)
{
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmm_r[0] = Inxmm_0; break;
			case 1: m128_xmm_r[1] = Inxmm_1; break;
			case 2: m128_xmm_r[2] = Inxmm_2; break;
			case 3: m128_xmm_r[3] = Inxmm_3; break;
		}
	}
	/ *m128_xmm_r[0] = Inxmm_0;
	m128_xmm_r[1] = Inxmm_1;
	m128_xmm_r[2] = Inxmm_2;
	m128_xmm_r[3] = Inxmm_3;* /
}*/

/*
uXXMVecfloat4x4::uXXMVecfloat4x4(const __m128* Inpxmm)
{
	//if (sizeof(Inpxmm) == m128_xmm_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = Inpxmm[i];
		}
	}
}*/

uXXMVecfloat4x4::uXXMVecfloat4x4(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2, const float Infloat_X3,
								   const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, const float Infloat_Y3,
								   const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, const float Infloat_Z3,
								   const float Infloat_W0, const float Infloat_W1, const float Infloat_W2, const float Infloat_W3)
{
	/*static const float uX_ALIGN128DECL(tempfloat0[4]) = {Infloat_X0, Infloat_X1, Infloat_X2, Infloat_X3};
	static const float uX_ALIGN128DECL(tempfloat1[4]) = {Infloat_Y0, Infloat_Y1, Infloat_Y2, Infloat_Y3};
	static const float uX_ALIGN128DECL(tempfloat2[4]) = {Infloat_Z0, Infloat_Z1, Infloat_Z2, Infloat_Z3};
	static const float uX_ALIGN128DECL(tempfloat3[4]) = {Infloat_W0, Infloat_W1, Infloat_W2, Infloat_W3};*/
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		switch (i)
		{
			/*case 0: m128_xmm_r[0] = _uX_mm_load_ps(tempfloat0); break;
			case 1: m128_xmm_r[1] = _uX_mm_load_ps(tempfloat1); break;
			case 2: m128_xmm_r[2] = _uX_mm_load_ps(tempfloat2); break;
			case 3: m128_xmm_r[3] = _uX_mm_load_ps(tempfloat3); break;*/
			case 0: m128_xmm_r[0] = _uX_mm_set_ps(Infloat_X3, Infloat_X2, Infloat_X1, Infloat_X0); break;
			case 1: m128_xmm_r[1] = _uX_mm_set_ps(Infloat_Y3, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
			case 2: m128_xmm_r[2] = _uX_mm_set_ps(Infloat_Z3, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
			case 3: m128_xmm_r[3] = _uX_mm_set_ps(Infloat_W3, Infloat_W2, Infloat_W1, Infloat_W0); break;
		}
	}
}

uX_Use_decl_annotations
uXXMVecfloat4x4::uXXMVecfloat4x4(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) == m128_f_p_size)
	{
		for (int i = 0; i < m128_xmm_p_lenght; ++i)
		{
			m128_xmm_r[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
		}
	}
}

uXXMVecfloat4x4::operator __m128*(void) const
{
	return const_cast<__m128*>(m128_xmm_r);
}

/*
uXXMVecfloat4x4::operator float*(void) const
{
	return const_cast<float*>(m128_f_p);
}*/

uXXMVecfloat4x4& uX_callconv uXXMVecfloat4x4::operator=(const __m128* Inpxmm)
{
	//if (sizeof(Inpxmm) != m128_xmm_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = Inpxmm[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXXMVecfloat4x4& uX_callconv uXXMVecfloat4x4::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) != m128_f_p_size) return *this;
	for (int i = 0; i < m128_xmm_p_lenght; ++i)
	{
		m128_xmm_r[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
	}
	return *this;
}

// uXXMVecfloat4x4 End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// uXXMVecdouble3x3 Start

/*
uXXMVecdouble3x3::uXXMVecdouble3x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2,
									 const __m128d Inxmmd_3, const __m128d Inxmmd_4, const __m128d Inxmmd_5)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
switch (i)
{
case 0: m128_xmmd_r[0] = Inxmmd_0; break;
case 1: m128_xmmd_r[1] = Inxmmd_1; break;
case 2: m128_xmmd_r[2] = Inxmmd_2; break;
case 3: m128_xmmd_r[3] = Inxmmd_3; break;
case 4: m128_xmmd_r[4] = Inxmmd_4; break;
case 5: m128_xmmd_r[5] = Inxmmd_5; break;
}
}
}*/

/*
uXXMVecdouble3x3::uXXMVecdouble3x3(const __m128d* Inpxmmd)
{
//if (sizeof(Inpxmmd) == m128_xmmd_p_size)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
m128_xmmd_r[i] = Inpxmmd[i];
}
}
}*/

uXXMVecdouble3x3::uXXMVecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
									 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
									 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2)
{
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
			case 1: m128_xmmd_r[1] = _uX_mm_set_pd(0.0, Indouble_X2); break;
			case 2: m128_xmmd_r[2] = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
			case 3: m128_xmmd_r[3] = _uX_mm_set_pd(0.0, Indouble_Y2); break;
			case 4: m128_xmmd_r[4] = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
			case 5: m128_xmmd_r[5] = _uX_mm_set_pd(0.0, Indouble_Z2); break;
		}
	}
}

uX_Use_decl_annotations
uXXMVecdouble3x3::uXXMVecdouble3x3(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmmd_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd_r[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
				case 2: m128_xmmd_r[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
				case 3: m128_xmmd_r[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
				case 4: m128_xmmd_r[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 5: m128_xmmd_r[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
			}
		}
	}
}

uXXMVecdouble3x3::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd_r);
}

/*
uXXMVecdouble3x3::operator double*(void) const
{
	return const_cast<double*>(m128_d_p);
}*/

uXXMVecdouble3x3& uX_callconv uXXMVecdouble3x3::operator=(const __m128d* Inpxmmd)
{
	//if (sizeof(Inpxmmd) != m128_xmmd_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		m128_xmmd_r[i] = Inpxmmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXXMVecdouble3x3& uX_callconv uXXMVecdouble3x3::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd_r[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
			case 2: m128_xmmd_r[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
			case 3: m128_xmmd_r[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
			case 4: m128_xmmd_r[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
			case 5: m128_xmmd_r[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
		}
	}
	return *this;
}

// uXXMVecdouble3x3 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecdouble4x3 Start

/*
uXXMVecdouble4x3::uXXMVecdouble4x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
									 const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
switch (i)
{
case 0: m128_xmmd_r[0] = Inxmmd_0; break;
case 1: m128_xmmd_r[1] = Inxmmd_1; break;
case 2: m128_xmmd_r[2] = Inxmmd_2; break;
case 3: m128_xmmd_r[3] = Inxmmd_3; break;
case 4: m128_xmmd_r[4] = Inxmmd_4; break;
case 5: m128_xmmd_r[5] = Inxmmd_5; break;
case 6: m128_xmmd_r[6] = Inxmmd_6; break;
case 7: m128_xmmd_r[7] = Inxmmd_7; break;
}
}
}*/

/*
uXXMVecdouble4x3::uXXMVecdouble4x3(const __m128d* Inpxmmd)
{
//if (sizeof(Inpxmmd) == m128_xmmd_p_size)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
m128_xmmd_r[i] = Inpxmmd[i];
}
}
}*/

uXXMVecdouble4x3::uXXMVecdouble4x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
									 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
									 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2,
									 const double Indouble_W0, const double Indouble_W1, const double Indouble_W2)
{
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
			case 1: m128_xmmd_r[1] = _uX_mm_set_pd(0.0, Indouble_X2); break;
			case 2: m128_xmmd_r[2] = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
			case 3: m128_xmmd_r[3] = _uX_mm_set_pd(0.0, Indouble_Y2); break;
			case 4: m128_xmmd_r[4] = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
			case 5: m128_xmmd_r[5] = _uX_mm_set_pd(0.0, Indouble_Z2); break;
			case 6: m128_xmmd_r[6] = _uX_mm_set_pd(Indouble_W1, Indouble_W0); break;
			case 7: m128_xmmd_r[7] = _uX_mm_set_pd(0.0, Indouble_W2); break;
		}
	}
}

uX_Use_decl_annotations
uXXMVecdouble4x3::uXXMVecdouble4x3(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmmd_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd_r[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
				case 2: m128_xmmd_r[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
				case 3: m128_xmmd_r[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
				case 4: m128_xmmd_r[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 5: m128_xmmd_r[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
				case 6: m128_xmmd_r[6] = _uX_mm_set_pd(Inpdouble[10], Inpdouble[9]); break;
				case 7: m128_xmmd_r[7] = _uX_mm_set_pd(0.0, Inpdouble[11]); break;
			}
		}
	}
}

uXXMVecdouble4x3::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd_r);
}

/*
uXXMVecdouble4x3::operator double*(void) const
{
	return const_cast<double*>(m128_d_p);
}*/

uXXMVecdouble4x3& uX_callconv uXXMVecdouble4x3::operator=(const __m128d* Inpxmmd)
{
	//if (sizeof(Inpxmmd) != m128_xmmd_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		m128_xmmd_r[i] = Inpxmmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXXMVecdouble4x3& uX_callconv uXXMVecdouble4x3::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd_r[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
			case 2: m128_xmmd_r[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
			case 3: m128_xmmd_r[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
			case 4: m128_xmmd_r[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
			case 5: m128_xmmd_r[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
			case 6: m128_xmmd_r[6] = _uX_mm_set_pd(Inpdouble[10], Inpdouble[9]); break;
			case 7: m128_xmmd_r[7] = _uX_mm_set_pd(0.0, Inpdouble[11]); break;
		}
	}
	return *this;
}

// uXXMVecdouble4x3 End
// // // // // // // // //

// // // // // // // // //
// uXXMVecdouble4x4 Start

/*
uXXMVecdouble4x3::uXXMVecdouble4x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
									 const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
switch (i)
{
case 0: m128_xmmd_r[0] = Inxmmd_0; break;
case 1: m128_xmmd_r[1] = Inxmmd_1; break;
case 2: m128_xmmd_r[2] = Inxmmd_2; break;
case 3: m128_xmmd_r[3] = Inxmmd_3; break;
case 4: m128_xmmd_r[4] = Inxmmd_4; break;
case 5: m128_xmmd_r[5] = Inxmmd_5; break;
case 6: m128_xmmd_r[6] = Inxmmd_6; break;
case 7: m128_xmmd_r[7] = Inxmmd_7; break;
}
}
}*/

/*
uXXMVecdouble4x4::uXXMVecdouble4x4(const __m128d* Inpxmmd)
{
//if (sizeof(Inpxmmd) == m128_xmmd_p_size)
{
for (int i = 0; i < m128_xmmd_p_lenght; ++i)
{
m128_xmmd_r[i] = Inpxmmd[i];
}
}
}*/

uXXMVecdouble4x4::uXXMVecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
									 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
									 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
									 const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3)
{
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
			case 1: m128_xmmd_r[1] = _uX_mm_set_pd(Indouble_X3, Indouble_X2); break;
			case 2: m128_xmmd_r[2] = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
			case 3: m128_xmmd_r[3] = _uX_mm_set_pd(Indouble_Y3, Indouble_Y2); break;
			case 4: m128_xmmd_r[4] = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
			case 5: m128_xmmd_r[5] = _uX_mm_set_pd(Indouble_Z3, Indouble_Z2); break;
			case 6: m128_xmmd_r[6] = _uX_mm_set_pd(Indouble_W1, Indouble_W0); break;
			case 7: m128_xmmd_r[7] = _uX_mm_set_pd(Indouble_W3, Indouble_W2); break;
		}
	}
}

uX_Use_decl_annotations
uXXMVecdouble4x4::uXXMVecdouble4x4(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m128_d_p_size)
	{
		for (int i = 0; i < m128_xmmd_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m128_xmmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m128_xmmd_r[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
				case 2: m128_xmmd_r[2] = _uX_mm_set_pd(Inpdouble[5], Inpdouble[4]); break;
				case 3: m128_xmmd_r[3] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 4: m128_xmmd_r[4] = _uX_mm_set_pd(Inpdouble[9], Inpdouble[8]); break;
				case 5: m128_xmmd_r[5] = _uX_mm_set_pd(Inpdouble[11], Inpdouble[10]); break;
				case 6: m128_xmmd_r[6] = _uX_mm_set_pd(Inpdouble[13], Inpdouble[12]); break;
				case 7: m128_xmmd_r[7] = _uX_mm_set_pd(Inpdouble[15], Inpdouble[14]); break;
			}
		}
	}
}

uXXMVecdouble4x4::operator __m128d*(void) const
{
	return const_cast<__m128d*>(m128_xmmd_r);
}

/*
uXXMVecdouble4x4::operator double*(void) const
{
	return const_cast<double*>(m128_d_p);
}*/

uXXMVecdouble4x4& uX_callconv uXXMVecdouble4x4::operator=(const __m128d* Inpxmmd)
{
	//if (sizeof(Inpxmmd) != m128_xmmd_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		m128_xmmd_r[i] = Inpxmmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXXMVecdouble4x4& uX_callconv uXXMVecdouble4x4::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m128_d_p_size) return *this;
	for (int i = 0; i < m128_xmmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m128_xmmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m128_xmmd_r[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
			case 2: m128_xmmd_r[2] = _uX_mm_set_pd(Inpdouble[5], Inpdouble[4]); break;
			case 3: m128_xmmd_r[3] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
			case 4: m128_xmmd_r[4] = _uX_mm_set_pd(Inpdouble[9], Inpdouble[8]); break;
			case 5: m128_xmmd_r[5] = _uX_mm_set_pd(Inpdouble[11], Inpdouble[10]); break;
			case 6: m128_xmmd_r[6] = _uX_mm_set_pd(Inpdouble[13], Inpdouble[12]); break;
			case 7: m128_xmmd_r[7] = _uX_mm_set_pd(Inpdouble[15], Inpdouble[14]); break;
		}
	}
	return *this;
}

// uXXMVecdouble4x4 End
// // // // // // // // //

#endif // uX_SSE2

//uX_PACK_POP

uX_EXTERNC_END

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
