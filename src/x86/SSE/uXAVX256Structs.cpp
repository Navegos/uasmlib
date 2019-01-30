
#include "uXAVX256Structs.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_AVX

#include "uXimmintrin.h"

uX_EXTERNC_BEGIN

//uX_PACK_PUSH16

// VECTOR'S

// // // // // // // // //
// uXYMVecfloat Start
/*
uXYMVecfloat::uXYMVecfloat(const __m256 Inymm)
{
	m256_ymm = Inymm;
}*/
uX_Use_decl_annotations
uXYMVecfloat::uXYMVecfloat(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m256_ymm = _uX_mm_loadu_ps(Inpfloat);
}

uXYMVecfloat::operator __m256(void) const
{
	return m256_ymm;
}

/*
uXYMVecfloat::operator float*(void) const
{
	return _uX_ptr_moveu_mm_ps(m256_ymm);
}*/

uXYMVecfloat& uX_callconv uXYMVecfloat::operator=(const __m256 Inymm)
{
	m256_ymm = Inymm;
	return *this;
}

uX_Use_decl_annotations
uXYMVecfloat& uX_callconv uXYMVecfloat::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m256_ymm = _uX_mm_loadu_ps(Inpfloat);
	return *this;
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator&(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_and_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator|(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_or_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator^(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_xor_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator~()
{
	return _uX_mm_not_ps(m256_ymm);
}

unsigned int uX_callconv uXYMVecfloat::operator&&(const uXYMVecfloat& Inymm_b)
{
	return (_mm_movemask_ps(*this & Inymm_b) == 0x0f);
}

unsigned int uX_callconv uXYMVecfloat::operator||(const uXYMVecfloat& Inymm_b)
{
	return (_mm_movemask_ps(*this | Inymm_b) != 0);
}

unsigned int uX_callconv uXYMVecfloat::operator!()
{
	return  (_uX_mm_movemask_ps(_uX_mm_cmpeq_ps(m256_ymm, _uX_mm_setzero_ps())) == 0x0f);
}

uXYMVecfloat& uX_callconv uXYMVecfloat::operator&=(const uXYMVecfloat Inymm_b)
{
	m256_ymm = _uX_mm_and_ps(m256_ymm, Inymm_b.m256_ymm);
	return *this;
}

uXYMVecfloat& uX_callconv uXYMVecfloat::operator|=(const uXYMVecfloat Inymm_b)
{
	m256_ymm = _uX_mm_or_ps(m256_ymm, Inymm_b.m256_ymm);
	return *this;
}

uXYMVecfloat& uX_callconv uXYMVecfloat::operator^=(const uXYMVecfloat Inymm_b)
{
	m256_ymm = _uX_mm_xor_ps(m256_ymm, Inymm_b.m256_ymm);
	return *this;
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator+(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_add_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator-(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_sub_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator*(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_mul_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator/(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_div_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat& uX_callconv uXYMVecfloat::operator+=(const uXYMVecfloat Inymm_b)
{
	m256_ymm = _uX_mm_add_ps(m256_ymm, Inymm_b.m256_ymm);
	return *this;
}

uXYMVecfloat& uX_callconv uXYMVecfloat::operator-=(const uXYMVecfloat Inymm_b)
{
	m256_ymm = _uX_mm_sub_ps(m256_ymm, Inymm_b.m256_ymm);
	return *this;
}

uXYMVecfloat& uX_callconv uXYMVecfloat::operator*=(const uXYMVecfloat Inymm_b)
{
	m256_ymm = _uX_mm_mul_ps(m256_ymm, Inymm_b.m256_ymm);
	return *this;
}

uXYMVecfloat& uX_callconv uXYMVecfloat::operator/=(const uXYMVecfloat Inymm_b)
{
	m256_ymm = _uX_mm_div_ps(m256_ymm, Inymm_b.m256_ymm);
	return *this;
}

uXYMVecfloat& uX_callconv uXYMVecfloat::operator++()
{
	m256_ymm = *this + __m256_1;
	return *this;
}

uXYMVecfloat& uX_callconv uXYMVecfloat::operator--()
{
	m256_ymm = *this - __m256_1;
	return *this;
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator++(int)
{
	uXYMVecfloat tmpymmi_a = *this;
	m256_ymm = *this + __m256_1;
	return tmpymmi_a;
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator--(int)
{
	uXYMVecfloat tmpymmi_a = *this;
	m256_ymm = *this - __m256_1;
	return tmpymmi_a;
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator-()
{
	return _uX_mm_xor_ps(*this, __m256_neg0);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator==(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_cmpeq_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator<(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_cmplt_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator<=(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_cmple_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator>(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_cmpgt_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator>=(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_cmpge_ps(m256_ymm, Inymm_b.m256_ymm);
}

uXYMVecfloat uX_callconv uXYMVecfloat::operator!=(const uXYMVecfloat Inymm_b)
{
	return _uX_mm_cmpneq_ps(m256_ymm, Inymm_b.m256_ymm);
}

// uXYMVecfloat End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// uXYMVecint8 Start

/*
uXYMVecint8::uXYMVecint8(const __m256i Inymmi)
{
m256_ymmi = Inymmi;
}*/

uX_Use_decl_annotations
uXYMVecint8::uXYMVecint8(const __int8* Inpint8)
{
	uX_assert(Inpint8 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint8));
}

uXYMVecint8::operator __m256i(void) const
{
	return m256_ymmi;
}

/*
uXYMVecint8::operator __int8*(void) const
{
	return reinterpret_cast<__int8*>(_uX_ptr_moveu_mm_si128(m256_ymmi));
}*/

uXYMVecint8& uX_callconv uXYMVecint8::operator=(const __m256i Inymmi)
{
	m256_ymmi = Inymmi;
	return *this;
}

uX_Use_decl_annotations
uXYMVecint8& uX_callconv uXYMVecint8::operator=(const __int8* Inpint8)
{
	uX_assert(Inpint8 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint8));
	return *this;
}

// uXYMVecint8 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecuint8 Start
/*
uXYMVecuint8::uXYMVecuint8(const __m256i Inymmi)
{
m256_ymmi = Inymmi;
}*/

uX_Use_decl_annotations
uXYMVecuint8::uXYMVecuint8(const unsigned __int8* Inpint8)
{
	uX_assert(Inpint8 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint8));
}

uXYMVecuint8::operator __m256i(void) const
{
	return m256_ymmi;
}

/*
uXYMVecuint8::operator unsigned __int8*(void) const
{
	return reinterpret_cast<unsigned __int8*>(_uX_ptr_moveu_mm_si128(m256_ymmi));
}*/

uXYMVecuint8& uX_callconv uXYMVecuint8::operator=(const __m256i Inymmi)
{
	m256_ymmi = Inymmi;
	return *this;
}

uX_Use_decl_annotations
uXYMVecuint8& uX_callconv uXYMVecuint8::operator=(const unsigned __int8* Inpint8)
{
	uX_assert(Inpint8 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint8));
	return *this;
}
// uXYMVecuint8 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecint16 Start

/*
uXYMVecint16::uXYMVecint16(const __m256i Inymmi)
{
m256_ymmi = Inymmi;
}*/

uX_Use_decl_annotations
uXYMVecint16::uXYMVecint16(const __int16* Inpint16)
{
	uX_assert(Inpint16 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint16));
}

uXYMVecint16::operator __m256i(void) const
{
	return m256_ymmi;
}

/*
uXYMVecint16::operator __int16*(void) const
{
	return reinterpret_cast<__int16*>(_uX_ptr_moveu_mm_si128(m256_ymmi));
}*/

uXYMVecint16& uX_callconv uXYMVecint16::operator=(const __m256i Inymmi)
{
	m256_ymmi = Inymmi;
	return *this;
}

uX_Use_decl_annotations
uXYMVecint16& uX_callconv uXYMVecint16::operator=(const __int16* Inpint16)
{
	uX_assert(Inpint16 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint16));
	return *this;
}
// uXYMVecint16 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecuint16 Start
/*
uXYMVecuint16::uXYMVecuint16(const __m256i Inymmi)
{
m256_ymmi = Inymmi;
}*/

uX_Use_decl_annotations
uXYMVecuint16::uXYMVecuint16(const unsigned __int16* Inpint16)
{
	uX_assert(Inpint16 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint16));
}

uXYMVecuint16::operator __m256i(void) const
{
	return m256_ymmi;
}

/*
uXYMVecuint16::operator unsigned __int16*(void) const
{
	return reinterpret_cast<unsigned __int16*>(_uX_ptr_moveu_mm_si128(m256_ymmi));
}*/

uXYMVecuint16& uX_callconv uXYMVecuint16::operator=(const __m256i Inymmi)
{
	m256_ymmi = Inymmi;
	return *this;
}

uX_Use_decl_annotations
uXYMVecuint16& uX_callconv uXYMVecuint16::operator=(const unsigned __int16* Inpint16)
{
	uX_assert(Inpint16 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint16));
	return *this;
}
// uXYMVecint8 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecint32 Start

/*
uXYMVecint32::uXYMVecint32(const __m256i Inymmi)
{
m256_ymmi = Inymmi;
}*/

uX_Use_decl_annotations
uXYMVecint32::uXYMVecint32(const __int32* Inpint32)
{
	uX_assert(Inpint32 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint32));
}

uXYMVecint32::operator __m256i(void) const
{
	return m256_ymmi;
}

/*
uXYMVecint32::operator __int32*(void) const
{
	return reinterpret_cast<__int32*>(_uX_ptr_moveu_mm_si128(m256_ymmi));
}*/

uXYMVecint32& uX_callconv uXYMVecint32::operator=(const __m256i Inymmi)
{
	m256_ymmi = Inymmi;
	return *this;
}

uX_Use_decl_annotations
uXYMVecint32& uX_callconv uXYMVecint32::operator=(const __int32* Inpint32)
{
	uX_assert(Inpint32 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint32));
	return *this;
}
// uXYMVecint32 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecuint32 Start
/*
uXYMVecuint32::uXYMVecuint32(const __m256i Inymmi)
{
m256_ymmi = Inymmi;
}*/

uX_Use_decl_annotations
uXYMVecuint32::uXYMVecuint32(const unsigned __int32* Inpint32)
{
	uX_assert(Inpint32 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint32));
}

uXYMVecuint32::operator __m256i(void) const
{
	return m256_ymmi;
}

/*
uXYMVecuint32::operator unsigned __int32*(void) const
{
	return reinterpret_cast<unsigned __int32*>(_uX_ptr_moveu_mm_si128(m256_ymmi));
}*/

uXYMVecuint32& uX_callconv uXYMVecuint32::operator=(const __m256i Inymmi)
{
	m256_ymmi = Inymmi;
	return *this;
}

uX_Use_decl_annotations
uXYMVecuint32& uX_callconv uXYMVecuint32::operator=(const unsigned __int32* Inpint32)
{
	uX_assert(Inpint32 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint32));
	return *this;
}

// uXYMVecuint32 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecint64 Start

/*
uXYMVecint64::uXYMVecint64(const __m256i Inymmi)
{
m256_ymmi = Inymmi;
}*/

uX_Use_decl_annotations
uXYMVecint64::uXYMVecint64(const __int64* Inpint64)
{
	uX_assert(Inpint64 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint64));
}

uXYMVecint64::operator __m256i(void) const
{
	return m256_ymmi;
}

/*
uXYMVecint64::operator __int64*(void) const
{
	return reinterpret_cast<__int64*>(_uX_ptr_moveu_mm_si128(m256_ymmi));
}*/

uXYMVecint64& uX_callconv uXYMVecint64::operator=(const __m256i Inymmi)
{
	m256_ymmi = Inymmi;
	return *this;
}

uX_Use_decl_annotations
uXYMVecint64& uX_callconv uXYMVecint64::operator=(const __int64* Inpint64)
{
	uX_assert(Inpint64 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint64));
	return *this;
}

// uXYMVecint64 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecuint64 Start
/*
uXYMVecuint64::uXYMVecuint64(const __m256i Inymmi)
{
m256_ymmi = Inymmi;
}*/

uX_Use_decl_annotations
uXYMVecuint64::uXYMVecuint64(const unsigned __int64* Inpint64)
{
	uX_assert(Inpint64 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint64));
}

uXYMVecuint64::operator __m256i(void) const
{
	return m256_ymmi;
}

/*
uXYMVecuint64::operator unsigned __int64*(void) const
{
	return reinterpret_cast<unsigned __int64*>(_uX_ptr_moveu_mm_si128(m256_ymmi));
}*/

uXYMVecuint64& uX_callconv uXYMVecuint64::operator=(const __m256i Inymmi)
{
	m256_ymmi = Inymmi;
	return *this;
}

uX_Use_decl_annotations
uXYMVecuint64& uX_callconv uXYMVecuint64::operator=(const unsigned __int64* Inpint64)
{
	uX_assert(Inpint64 != nullptr);
	m256_ymmi = _uX_mm_loadu_si128(reinterpret_cast<const __m256i*>(Inpint64));
	return *this;
}

// uXYMVecuint64 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecdouble Start
/*
uXYMVecdouble::uXYMVecdouble(const __m256d Inymmd)
{
m256_ymmd = Inymmd;
}*/

uX_Use_decl_annotations
uXYMVecdouble::uXYMVecdouble(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	m256_ymmd = _uX_mm_loadu_pd(Inpdouble);
}

uXYMVecdouble::operator __m256d(void) const
{
	return m256_ymmd;
}

/*
uXYMVecdouble::operator double*(void) const
{
	return _uX_ptr_moveu_mm_pd(m256_ymmd);
}*/

uXYMVecdouble& uX_callconv uXYMVecdouble::operator=(const __m256d Inymmd)
{
	m256_ymmd = Inymmd;
	return *this;
}

uX_Use_decl_annotations
uXYMVecdouble& uX_callconv uXYMVecdouble::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	m256_ymmd = _uX_mm_loadu_pd(Inpdouble);
	return *this;
}

// uXYMVecdouble End
// // // // // // // // //

#endif // uX_SSE2

// // // // // // // // //
// uXYMVecfloat1 Start
/*
uXYMVecfloat1::uXYMVecfloat1(const __m256 Inymm)
{
m256_ymm = Inymm;
}*/

uXYMVecfloat1::uXYMVecfloat1(const float Infloat)
{
	m256_ymm = _uX_mm_set_ss(Infloat);
}

uXYMVecfloat1::operator __m256(void) const
{
	return m256_ymm;
}

/*
uXYMVecfloat1::operator float(void) const
{
	return _uX_mm_cvtss_f32(m256_ymm);
}*/

uXYMVecfloat1& uX_callconv uXYMVecfloat1::operator=(const __m256 Inymm)
{
	m256_ymm = Inymm;
	return *this;
}

uXYMVecfloat1& uX_callconv uXYMVecfloat1::operator=(const float Infloat)
{
	m256_ymm = _uX_mm_set_ss(Infloat);
	return *this;
}

// uXYMVecfloat1 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecfloat2 Start
/*
uXYMVecfloat2::uXYMVecfloat2(const __m256 Inymm)
{
m256_ymm = Inymm;
}*/

uXYMVecfloat2::uXYMVecfloat2(const float Infloat_X, const float Infloat_Y)
{
	m256_ymm = _uX_mm_set_ps(0.0f, 0.0f, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
uXYMVecfloat2::uXYMVecfloat2(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m256_ymm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
}

uXYMVecfloat2::operator __m256(void) const
{
	return m256_ymm;
}

/*
uXYMVecfloat2::operator float*(void) const
{
	return _uX_ptr_moveu_mm_ps(m256_ymm);
}*/

uXYMVecfloat2& uX_callconv uXYMVecfloat2::operator=(const __m256 Inymm)
{
	m256_ymm = Inymm;
	return *this;
}

uX_Use_decl_annotations
uXYMVecfloat2& uX_callconv uXYMVecfloat2::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m256_ymm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
	return *this;
}

// uXYMVecfloat2 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecfloat3 Start
/*
uXYMVecfloat3::uXYMVecfloat3(const __m256 Inymm)
{
m256_ymm = Inymm;
}*/

uXYMVecfloat3::uXYMVecfloat3(const float Infloat_X, const float Infloat_Y, const float Infloat_Z)
{
	m256_ymm = _uX_mm_set_ps(0.0f, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
uXYMVecfloat3::uXYMVecfloat3(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m256_ymm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
}

uXYMVecfloat3::operator __m256(void) const
{
	return m256_ymm;
}

/*
uXYMVecfloat3::operator float*(void) const
{
	return _uX_ptr_moveu_mm_ps(m256_ymm);
}*/

uXYMVecfloat3& uX_callconv uXYMVecfloat3::operator=(const __m256 Inymm)
{
	m256_ymm = Inymm;
	return *this;
}

uX_Use_decl_annotations
uXYMVecfloat3& uX_callconv uXYMVecfloat3::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m256_ymm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
	return *this;
}

// uXYMVecfloat3 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecfloat4 Start
/*
uXYMVecfloat4::uXYMVecfloat4(const __m256 Inymm)
{
m256_ymm = Inymm;
}*/

uXYMVecfloat4::uXYMVecfloat4(const float Infloat_X, const float Infloat_Y, const float Infloat_Z, const float Infloat_W)
{
	m256_ymm = _uX_mm_set_ps(Infloat_W, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
uXYMVecfloat4::uXYMVecfloat4(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m256_ymm = _uX_mm_loadu_ps(Inpfloat);
}

uXYMVecfloat4::operator __m256(void) const
{
	return m256_ymm;
}

/*
uXYMVecfloat4::operator float*(void) const
{
	return _uX_ptr_moveu_mm_ps(m256_ymm);
}*/

uXYMVecfloat4& uX_callconv uXYMVecfloat4::operator=(const __m256 Inymm)
{
	m256_ymm = Inymm;
	return *this;
}

uX_Use_decl_annotations
uXYMVecfloat4& uX_callconv uXYMVecfloat4::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	m256_ymm = _uX_mm_loadu_ps(Inpfloat);
	return *this;
}

// uXYMVecfloat4 End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// uXYMVecdouble1 Start
/*
uXYMVecdouble1::uXYMVecdouble1(const __m256d Inymmd)
{
m256_ymm = Inymm;
}*/

uXYMVecdouble1::uXYMVecdouble1(const double Indouble)
{
	m256_ymmd = _uX_mm_set_sd(Indouble);
}

uXYMVecdouble1::operator __m256d(void) const
{
	return m256_ymmd;
}

/*
uXYMVecdouble1::operator double(void) const
{
	return _uX_mm_cvtsd_f64(m256_ymmd);
}*/

uXYMVecdouble1& uX_callconv uXYMVecdouble1::operator=(const __m256d Inymmd)
{
	m256_ymmd = Inymmd;
	return *this;
}

uXYMVecdouble1& uX_callconv uXYMVecdouble1::operator=(const double Indouble)
{
	m256_ymmd = _uX_mm_set_sd(Indouble);
	return *this;
}

// uXYMVecfloat1 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecdouble2 Start
/*
uXYMVecdouble2::uXYMVecdouble2(const __m256d Inymmd)
{
m256_ymmd = Inymmd;
}*/

uXYMVecdouble2::uXYMVecdouble2(const double Indouble_X, const double Indouble_Y)
{
	m256_ymmd = _uX_mm_set_pd(Indouble_Y, Indouble_X);
}

uX_Use_decl_annotations
uXYMVecdouble2::uXYMVecdouble2(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	m256_ymmd = _uX_mm_loadu_pd(Inpdouble);
}

uXYMVecdouble2::operator __m256d(void) const
{
	return m256_ymmd;
}

/*
uXYMVecdouble2::operator double*(void) const
{
	return _uX_ptr_moveu_mm_pd(m256_ymmd);
}
*/

uXYMVecdouble2& uX_callconv uXYMVecdouble2::operator=(const __m256d Inymmd)
{
	m256_ymmd = Inymmd;
	return *this;
}

uX_Use_decl_annotations
uXYMVecdouble2& uX_callconv uXYMVecdouble2::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	m256_ymmd = _uX_mm_loadu_pd(Inpdouble);
	return *this;
}

// uXYMVecdouble2 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecdouble3 Start

/*
uXYMVecdouble3::uXYMVecdouble3(const __m256d Inymmd_0, const __m256 Inymmd_1)
{
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd[0] = Inymmd_0; break;
			case 1: m256_ymmd[1] = Inymmd_1; break;
		}
	}
	/ *m256_ymmd[0] = Inymmd_0;
	m256_ymmd[1] = Inymmd_1;* /
}*/

/*
uXYMVecdouble3::uXYMVecdouble3(const __m256d* Inpymmd)
{
	//if (sizeof(Inpymmd) == m256_ymm_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			m256_ymmd[i] = Inpymmd[i];
		}
	}
}*/

uXYMVecdouble3::uXYMVecdouble3(const double Indouble_X, const double Indouble_Y, const double Indouble_Z)
{
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd[0] = _uX_mm_set_pd(Indouble_Y, Indouble_X); break;
			case 1: m256_ymmd[1] = _uX_mm_set_pd(0.0, Indouble_Z); break;
		}
	}
}

uX_Use_decl_annotations
uXYMVecdouble3::uXYMVecdouble3(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m256_d_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m256_ymmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m256_ymmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
			}
		}
	}
}

uXYMVecdouble3::operator __m256d*(void) const
{
	return const_cast<__m256d*>(m256_ymmd);
}

/*
uXYMVecdouble3::operator double*(void) const
{
	return const_cast<double*>(m256_d);
}*/

uXYMVecdouble3& uX_callconv uXYMVecdouble3::operator=(const __m256d* Inpymmd)
{
	//if (sizeof(Inpymmd) != m256_ymm_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		m256_ymmd[i] = Inpymmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXYMVecdouble3& uX_callconv uXYMVecdouble3::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m256_d_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m256_ymmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
		}
	}
	return *this;
}
// uXYMVecdouble3 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecdouble4 Start

/*
uXYMVecdouble4::uXYMVecdouble4(const __m256d Inymmd_0, const __m256 Inymmd_1)
{
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd[0] = Inymmd_0; break;
			case 1: m256_ymmd[1] = Inymmd_1; break;
		}
	}
	/ *m256_ymmd[0] = Inymmd_0;
	m256_ymmd[1] = Inymmd_1;* /
}*/

/*
uXYMVecdouble4::uXYMVecdouble4(const __m256d* Inpymmd)
{
	//if (sizeof(Inpymmd) == m256_ymm_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			m256_ymmd[i] = Inpymmd[i];
		}
	}
}*/

uXYMVecdouble4::uXYMVecdouble4(const double Indouble_X, const double Indouble_Y, const double Indouble_Z, const double Indouble_W)
{
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd[0] = _uX_mm_set_pd(Indouble_Y, Indouble_X); break;
			case 1: m256_ymmd[1] = _uX_mm_set_pd(Indouble_W, Indouble_Z); break;
		}
	}
}

uX_Use_decl_annotations
uXYMVecdouble4::uXYMVecdouble4(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m256_d_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m256_ymmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m256_ymmd[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
			}
		}
	}
}

uXYMVecdouble4::operator __m256d*(void) const
{
	return const_cast<__m256d*>(m256_ymmd);
}

/*
uXYMVecdouble4::operator double*(void) const
{
	return const_cast<double*>(m256_d);
}*/

uXYMVecdouble4& uX_callconv uXYMVecdouble4::operator=(const __m256d* Inpymmd)
{
	//if (sizeof(Inpymmd) != m256_ymm_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		m256_ymmd[i] = Inpymmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXYMVecdouble4& uX_callconv uXYMVecdouble4::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m256_d_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m256_ymmd[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
		}
	}
	return *this;
}

// uXYMVecdouble4 End
// // // // // // // // //

#endif // uX_SSE2

// MATRIX'S

// // // // // // // // //
// uXYMVecfloat3x3 Start

/*
uXYMVecfloat3x3::uXYMVecfloat3x3(const __m256 Inymm_0, const __m256 Inymm_1, const __m256 Inymm_2, const __m256 Inymm_3)
{
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymm_r[0] = Inymm_0; break;
			case 1: m256_ymm_r[1] = Inymm_1; break;
			case 2: m256_ymm_r[2] = Inymm_2; break;
		}
	}
	/ *m256_ymm_r[0] = Inymm_0;
	m256_ymm_r[1] = Inymm_1;
	m256_ymm_r[2] = Inymm_2;* /
}*/

/*
uXYMVecfloat3x3::uXYMVecfloat3x3(const __m256* Inpymm)
{
	//if (sizeof(Inpymm) == m256_ymm_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			m256_ymm_r[i] = Inpymm[i];
		}
	}
}*/

uXYMVecfloat3x3::uXYMVecfloat3x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
								   const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2,
								   const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2)
{
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymm_r[0] = _uX_mm_set_ps(0.0f, Infloat_X2, Infloat_X1, Infloat_X0); break;
			case 1: m256_ymm_r[1] = _uX_mm_set_ps(0.0f, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
			case 2: m256_ymm_r[2] = _uX_mm_set_ps(0.0f, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
		}
	}
}

uX_Use_decl_annotations
uXYMVecfloat3x3::uXYMVecfloat3x3(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) == m256_f_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			m256_ymm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
		}
	}
}

uXYMVecfloat3x3::operator __m256*(void) const
{
	return const_cast<__m256*>(m256_ymm_r);
}

/*
uXYMVecfloat3x3::operator float*(void) const
{
	return const_cast<float*>(m256_f_p);
}*/

uXYMVecfloat3x3& uX_callconv uXYMVecfloat3x3::operator=(const __m256* Inpymm)
{
	//if (sizeof(Inpymm) != m256_ymm_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		m256_ymm_r[i] = Inpymm[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXYMVecfloat3x3& uX_callconv uXYMVecfloat3x3::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) != m256_f_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		m256_ymm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
	}
	return *this;
}

// uXYMVecfloat3x3 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecfloat4x3 Start

/*
uXYMVecfloat4x3::uXYMVecfloat4x3(const __m256 Inymm_0, const __m256 Inymm_1, const __m256 Inymm_2, const __m256 Inymm_3)
{
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymm_r[0] = Inymm_0; break;
			case 1: m256_ymm_r[1] = Inymm_1; break;
			case 2: m256_ymm_r[2] = Inymm_2; break;
			case 3: m256_ymm_r[3] = Inymm_3; break;
		}
	}
	/ *m256_ymm_r[0] = Inymm_0;
	m256_ymm_r[1] = Inymm_1;
	m256_ymm_r[2] = Inymm_2;
	m256_ymm_r[3] = Inymm_3;* /
}*/

/*
uXYMVecfloat4x3::uXYMVecfloat4x3(const __m256* Inpymm)
{
	//if (sizeof(Inpymm) == m256_ymm_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			m256_ymm_r[i] = Inpymm[i];
		}
	}
}*/

uXYMVecfloat4x3::uXYMVecfloat4x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
								   const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2,
								   const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2,
								   const float Infloat_W0, const float Infloat_W1, const float Infloat_W2)
{
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymm_r[0] = _uX_mm_set_ps(0.0f, Infloat_X2, Infloat_X1, Infloat_X0); break;
			case 1: m256_ymm_r[1] = _uX_mm_set_ps(0.0f, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
			case 2: m256_ymm_r[2] = _uX_mm_set_ps(0.0f, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
			case 3: m256_ymm_r[3] = _uX_mm_set_ps(0.0f, Infloat_W2, Infloat_W1, Infloat_W0); break;
		}
	}
}

uX_Use_decl_annotations
uXYMVecfloat4x3::uXYMVecfloat4x3(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) == m256_f_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			m256_ymm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
		}
	}
}

uXYMVecfloat4x3::operator __m256*(void) const
{
	return const_cast<__m256*>(m256_ymm_r);
}

/*
uXYMVecfloat4x3::operator float*(void) const
{
	return const_cast<float*>(m256_f_p);
}*/

uXYMVecfloat4x3& uX_callconv uXYMVecfloat4x3::operator=(const __m256* Inpymm)
{
	//if (sizeof(Inpymm) != m256_ymm_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		m256_ymm_r[i] = Inpymm[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXYMVecfloat4x3& uX_callconv uXYMVecfloat4x3::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) != m256_f_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		m256_ymm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
	}
	return *this;
}

// uXYMVecfloat4x3 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecfloat4x4 Start

/*
uXYMVecfloat4x4::uXYMVecfloat4x4(const __m256 Inymm_0, const __m256 Inymm_1, const __m256 Inymm_2, const __m256 Inymm_3)
{
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymm_r[0] = Inymm_0; break;
			case 1: m256_ymm_r[1] = Inymm_1; break;
			case 2: m256_ymm_r[2] = Inymm_2; break;
			case 3: m256_ymm_r[3] = Inymm_3; break;
		}
	}
	/ *m256_ymm_r[0] = Inymm_0;
	m256_ymm_r[1] = Inymm_1;
	m256_ymm_r[2] = Inymm_2;
	m256_ymm_r[3] = Inymm_3;* /
}*/

/*
uXYMVecfloat4x4::uXYMVecfloat4x4(const __m256* Inpymm)
{
	//if (sizeof(Inpymm) == m256_ymm_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			m256_ymm_r[i] = Inpymm[i];
		}
	}
}*/

uXYMVecfloat4x4::uXYMVecfloat4x4(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2, const float Infloat_X3,
								   const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, const float Infloat_Y3,
								   const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, const float Infloat_Z3,
								   const float Infloat_W0, const float Infloat_W1, const float Infloat_W2, const float Infloat_W3)
{
	/*static const float uX_ALIGN128DECL(tempfloat0[4]) = {Infloat_X0, Infloat_X1, Infloat_X2, Infloat_X3};
	static const float uX_ALIGN128DECL(tempfloat1[4]) = {Infloat_Y0, Infloat_Y1, Infloat_Y2, Infloat_Y3};
	static const float uX_ALIGN128DECL(tempfloat2[4]) = {Infloat_Z0, Infloat_Z1, Infloat_Z2, Infloat_Z3};
	static const float uX_ALIGN128DECL(tempfloat3[4]) = {Infloat_W0, Infloat_W1, Infloat_W2, Infloat_W3};*/
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		switch (i)
		{
			/*case 0: m256_ymm_r[0] = _uX_mm_load_ps(tempfloat0); break;
			case 1: m256_ymm_r[1] = _uX_mm_load_ps(tempfloat1); break;
			case 2: m256_ymm_r[2] = _uX_mm_load_ps(tempfloat2); break;
			case 3: m256_ymm_r[3] = _uX_mm_load_ps(tempfloat3); break;*/
			case 0: m256_ymm_r[0] = _uX_mm_set_ps(Infloat_X3, Infloat_X2, Infloat_X1, Infloat_X0); break;
			case 1: m256_ymm_r[1] = _uX_mm_set_ps(Infloat_Y3, Infloat_Y2, Infloat_Y1, Infloat_Y0); break;
			case 2: m256_ymm_r[2] = _uX_mm_set_ps(Infloat_Z3, Infloat_Z2, Infloat_Z1, Infloat_Z0); break;
			case 3: m256_ymm_r[3] = _uX_mm_set_ps(Infloat_W3, Infloat_W2, Infloat_W1, Infloat_W0); break;
		}
	}
}

uX_Use_decl_annotations
uXYMVecfloat4x4::uXYMVecfloat4x4(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) == m256_f_p_size)
	{
		for (int i = 0; i < m256_ymm_p_lenght; ++i)
		{
			m256_ymm_r[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
		}
	}
}

uXYMVecfloat4x4::operator __m256*(void) const
{
	return const_cast<__m256*>(m256_ymm_r);
}

/*
uXYMVecfloat4x4::operator float*(void) const
{
	return const_cast<float*>(m256_f_p);
}*/

uXYMVecfloat4x4& uX_callconv uXYMVecfloat4x4::operator=(const __m256* Inpymm)
{
	//if (sizeof(Inpymm) != m256_ymm_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		m256_ymm_r[i] = Inpymm[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXYMVecfloat4x4& uX_callconv uXYMVecfloat4x4::operator=(const float* Inpfloat)
{
	uX_assert(Inpfloat != nullptr);
	//if (sizeof(Inpfloat) != m256_f_p_size) return *this;
	for (int i = 0; i < m256_ymm_p_lenght; ++i)
	{
		m256_ymm_r[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
	}
	return *this;
}

// uXYMVecfloat4x4 End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// uXYMVecdouble3x3 Start

/*
uXYMVecdouble3x3::uXYMVecdouble3x3(const __m256d Inymmd_0, const __m256d Inymmd_1, const __m256d Inymmd_2,
									 const __m256d Inymmd_3, const __m256d Inymmd_4, const __m256d Inymmd_5)
{
for (int i = 0; i < m256_ymmd_p_lenght; ++i)
{
switch (i)
{
case 0: m256_ymmd_r[0] = Inymmd_0; break;
case 1: m256_ymmd_r[1] = Inymmd_1; break;
case 2: m256_ymmd_r[2] = Inymmd_2; break;
case 3: m256_ymmd_r[3] = Inymmd_3; break;
case 4: m256_ymmd_r[4] = Inymmd_4; break;
case 5: m256_ymmd_r[5] = Inymmd_5; break;
}
}
}*/

/*
uXYMVecdouble3x3::uXYMVecdouble3x3(const __m256d* Inpymmd)
{
//if (sizeof(Inpymmd) == m256_ymmd_p_size)
{
for (int i = 0; i < m256_ymmd_p_lenght; ++i)
{
m256_ymmd_r[i] = Inpymmd[i];
}
}
}*/

uXYMVecdouble3x3::uXYMVecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
									 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
									 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2)
{
	for (int i = 0; i < m256_ymmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd_r[0] = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
			case 1: m256_ymmd_r[1] = _uX_mm_set_pd(0.0, Indouble_X2); break;
			case 2: m256_ymmd_r[2] = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
			case 3: m256_ymmd_r[3] = _uX_mm_set_pd(0.0, Indouble_Y2); break;
			case 4: m256_ymmd_r[4] = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
			case 5: m256_ymmd_r[5] = _uX_mm_set_pd(0.0, Indouble_Z2); break;
		}
	}
}

uX_Use_decl_annotations
uXYMVecdouble3x3::uXYMVecdouble3x3(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m256_d_p_size)
	{
		for (int i = 0; i < m256_ymmd_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m256_ymmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m256_ymmd_r[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
				case 2: m256_ymmd_r[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
				case 3: m256_ymmd_r[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
				case 4: m256_ymmd_r[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 5: m256_ymmd_r[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
			}
		}
	}
}

uXYMVecdouble3x3::operator __m256d*(void) const
{
	return const_cast<__m256d*>(m256_ymmd_r);
}

/*
uXYMVecdouble3x3::operator double*(void) const
{
	return const_cast<double*>(m256_d_p);
}*/

uXYMVecdouble3x3& uX_callconv uXYMVecdouble3x3::operator=(const __m256d* Inpymmd)
{
	//if (sizeof(Inpymmd) != m256_ymmd_p_size) return *this;
	for (int i = 0; i < m256_ymmd_p_lenght; ++i)
	{
		m256_ymmd_r[i] = Inpymmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXYMVecdouble3x3& uX_callconv uXYMVecdouble3x3::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m256_d_p_size) return *this;
	for (int i = 0; i < m256_ymmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m256_ymmd_r[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
			case 2: m256_ymmd_r[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
			case 3: m256_ymmd_r[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
			case 4: m256_ymmd_r[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
			case 5: m256_ymmd_r[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
		}
	}
	return *this;
}

// uXYMVecdouble3x3 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecdouble4x3 Start

/*
uXYMVecdouble4x3::uXYMVecdouble4x3(const __m256d Inymmd_0, const __m256d Inymmd_1, const __m256d Inymmd_2, const __m256d Inymmd_3,
									 const __m256d Inymmd_4, const __m256d Inymmd_5, const __m256d Inymmd_6, const __m256d Inymmd_7)
{
for (int i = 0; i < m256_ymmd_p_lenght; ++i)
{
switch (i)
{
case 0: m256_ymmd_r[0] = Inymmd_0; break;
case 1: m256_ymmd_r[1] = Inymmd_1; break;
case 2: m256_ymmd_r[2] = Inymmd_2; break;
case 3: m256_ymmd_r[3] = Inymmd_3; break;
case 4: m256_ymmd_r[4] = Inymmd_4; break;
case 5: m256_ymmd_r[5] = Inymmd_5; break;
case 6: m256_ymmd_r[6] = Inymmd_6; break;
case 7: m256_ymmd_r[7] = Inymmd_7; break;
}
}
}*/

/*
uXYMVecdouble4x3::uXYMVecdouble4x3(const __m256d* Inpymmd)
{
//if (sizeof(Inpymmd) == m256_ymmd_p_size)
{
for (int i = 0; i < m256_ymmd_p_lenght; ++i)
{
m256_ymmd_r[i] = Inpymmd[i];
}
}
}*/

uXYMVecdouble4x3::uXYMVecdouble4x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
									 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
									 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2,
									 const double Indouble_W0, const double Indouble_W1, const double Indouble_W2)
{
	for (int i = 0; i < m256_ymmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd_r[0] = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
			case 1: m256_ymmd_r[1] = _uX_mm_set_pd(0.0, Indouble_X2); break;
			case 2: m256_ymmd_r[2] = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
			case 3: m256_ymmd_r[3] = _uX_mm_set_pd(0.0, Indouble_Y2); break;
			case 4: m256_ymmd_r[4] = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
			case 5: m256_ymmd_r[5] = _uX_mm_set_pd(0.0, Indouble_Z2); break;
			case 6: m256_ymmd_r[6] = _uX_mm_set_pd(Indouble_W1, Indouble_W0); break;
			case 7: m256_ymmd_r[7] = _uX_mm_set_pd(0.0, Indouble_W2); break;
		}
	}
}

uX_Use_decl_annotations
uXYMVecdouble4x3::uXYMVecdouble4x3(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m256_d_p_size)
	{
		for (int i = 0; i < m256_ymmd_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m256_ymmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m256_ymmd_r[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
				case 2: m256_ymmd_r[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
				case 3: m256_ymmd_r[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
				case 4: m256_ymmd_r[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 5: m256_ymmd_r[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
				case 6: m256_ymmd_r[6] = _uX_mm_set_pd(Inpdouble[10], Inpdouble[9]); break;
				case 7: m256_ymmd_r[7] = _uX_mm_set_pd(0.0, Inpdouble[11]); break;
			}
		}
	}
}

uXYMVecdouble4x3::operator __m256d*(void) const
{
	return const_cast<__m256d*>(m256_ymmd_r);
}

/*
uXYMVecdouble4x3::operator double*(void) const
{
	return const_cast<double*>(m256_d_p);
}*/

uXYMVecdouble4x3& uX_callconv uXYMVecdouble4x3::operator=(const __m256d* Inpymmd)
{
	//if (sizeof(Inpymmd) != m256_ymmd_p_size) return *this;
	for (int i = 0; i < m256_ymmd_p_lenght; ++i)
	{
		m256_ymmd_r[i] = Inpymmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXYMVecdouble4x3& uX_callconv uXYMVecdouble4x3::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m256_d_p_size) return *this;
	for (int i = 0; i < m256_ymmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m256_ymmd_r[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
			case 2: m256_ymmd_r[2] = _uX_mm_set_pd(Inpdouble[4], Inpdouble[3]); break;
			case 3: m256_ymmd_r[3] = _uX_mm_set_pd(0.0, Inpdouble[5]); break;
			case 4: m256_ymmd_r[4] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
			case 5: m256_ymmd_r[5] = _uX_mm_set_pd(0.0, Inpdouble[8]); break;
			case 6: m256_ymmd_r[6] = _uX_mm_set_pd(Inpdouble[10], Inpdouble[9]); break;
			case 7: m256_ymmd_r[7] = _uX_mm_set_pd(0.0, Inpdouble[11]); break;
		}
	}
	return *this;
}

// uXYMVecdouble4x3 End
// // // // // // // // //

// // // // // // // // //
// uXYMVecdouble4x4 Start

/*
uXYMVecdouble4x3::uXYMVecdouble4x3(const __m256d Inymmd_0, const __m256d Inymmd_1, const __m256d Inymmd_2, const __m256d Inymmd_3,
									 const __m256d Inymmd_4, const __m256d Inymmd_5, const __m256d Inymmd_6, const __m256d Inymmd_7)
{
for (int i = 0; i < m256_ymmd_p_lenght; ++i)
{
switch (i)
{
case 0: m256_ymmd_r[0] = Inymmd_0; break;
case 1: m256_ymmd_r[1] = Inymmd_1; break;
case 2: m256_ymmd_r[2] = Inymmd_2; break;
case 3: m256_ymmd_r[3] = Inymmd_3; break;
case 4: m256_ymmd_r[4] = Inymmd_4; break;
case 5: m256_ymmd_r[5] = Inymmd_5; break;
case 6: m256_ymmd_r[6] = Inymmd_6; break;
case 7: m256_ymmd_r[7] = Inymmd_7; break;
}
}
}*/

/*
uXYMVecdouble4x4::uXYMVecdouble4x4(const __m256d* Inpymmd)
{
//if (sizeof(Inpymmd) == m256_ymmd_p_size)
{
for (int i = 0; i < m256_ymmd_p_lenght; ++i)
{
m256_ymmd_r[i] = Inpymmd[i];
}
}
}*/

uXYMVecdouble4x4::uXYMVecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
									 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
									 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
									 const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3)
{
	for (int i = 0; i < m256_ymmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd_r[0] = _uX_mm_set_pd(Indouble_X1, Indouble_X0); break;
			case 1: m256_ymmd_r[1] = _uX_mm_set_pd(Indouble_X3, Indouble_X2); break;
			case 2: m256_ymmd_r[2] = _uX_mm_set_pd(Indouble_Y1, Indouble_Y0); break;
			case 3: m256_ymmd_r[3] = _uX_mm_set_pd(Indouble_Y3, Indouble_Y2); break;
			case 4: m256_ymmd_r[4] = _uX_mm_set_pd(Indouble_Z1, Indouble_Z0); break;
			case 5: m256_ymmd_r[5] = _uX_mm_set_pd(Indouble_Z3, Indouble_Z2); break;
			case 6: m256_ymmd_r[6] = _uX_mm_set_pd(Indouble_W1, Indouble_W0); break;
			case 7: m256_ymmd_r[7] = _uX_mm_set_pd(Indouble_W3, Indouble_W2); break;
		}
	}
}

uX_Use_decl_annotations
uXYMVecdouble4x4::uXYMVecdouble4x4(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) == m256_d_p_size)
	{
		for (int i = 0; i < m256_ymmd_p_lenght; ++i)
		{
			switch (i)
			{
				case 0: m256_ymmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
				case 1: m256_ymmd_r[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
				case 2: m256_ymmd_r[2] = _uX_mm_set_pd(Inpdouble[5], Inpdouble[4]); break;
				case 3: m256_ymmd_r[3] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
				case 4: m256_ymmd_r[4] = _uX_mm_set_pd(Inpdouble[9], Inpdouble[8]); break;
				case 5: m256_ymmd_r[5] = _uX_mm_set_pd(Inpdouble[11], Inpdouble[10]); break;
				case 6: m256_ymmd_r[6] = _uX_mm_set_pd(Inpdouble[13], Inpdouble[12]); break;
				case 7: m256_ymmd_r[7] = _uX_mm_set_pd(Inpdouble[15], Inpdouble[14]); break;
			}
		}
	}
}

uXYMVecdouble4x4::operator __m256d*(void) const
{
	return const_cast<__m256d*>(m256_ymmd_r);
}

/*
uXYMVecdouble4x4::operator double*(void) const
{
	return const_cast<double*>(m256_d_p);
}*/

uXYMVecdouble4x4& uX_callconv uXYMVecdouble4x4::operator=(const __m256d* Inpymmd)
{
	//if (sizeof(Inpymmd) != m256_ymmd_p_size) return *this;
	for (int i = 0; i < m256_ymmd_p_lenght; ++i)
	{
		m256_ymmd_r[i] = Inpymmd[i];
	}
	return *this;
}

uX_Use_decl_annotations
uXYMVecdouble4x4& uX_callconv uXYMVecdouble4x4::operator=(const double* Inpdouble)
{
	uX_assert(Inpdouble != nullptr);
	//if (sizeof(Inpdouble) != m256_d_p_size) return *this;
	for (int i = 0; i < m256_ymmd_p_lenght; ++i)
	{
		switch (i)
		{
			case 0: m256_ymmd_r[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
			case 1: m256_ymmd_r[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
			case 2: m256_ymmd_r[2] = _uX_mm_set_pd(Inpdouble[5], Inpdouble[4]); break;
			case 3: m256_ymmd_r[3] = _uX_mm_set_pd(Inpdouble[7], Inpdouble[6]); break;
			case 4: m256_ymmd_r[4] = _uX_mm_set_pd(Inpdouble[9], Inpdouble[8]); break;
			case 5: m256_ymmd_r[5] = _uX_mm_set_pd(Inpdouble[11], Inpdouble[10]); break;
			case 6: m256_ymmd_r[6] = _uX_mm_set_pd(Inpdouble[13], Inpdouble[12]); break;
			case 7: m256_ymmd_r[7] = _uX_mm_set_pd(Inpdouble[15], Inpdouble[14]); break;
		}
	}
	return *this;
}

// uXYMVecdouble4x4 End
// // // // // // // // //

#endif // uX_SSE2

//uX_PACK_POP

uX_EXTERNC_END

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
