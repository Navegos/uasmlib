
#include "uXxmmStructs.h"

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

#include "uXxmmintrin.h"
#include "uXemmintrin.h"
#include "uXsmmintrin.h"

namespace_uX

uX_EXTERNCC_BEGIN
uX_PACK_PUSH_16

// VECTOR'S

// // // // // // // // //
// XMVecfloat Start

#ifndef uX_DEFAULT_CTOR_SUPPORT
XMVecfloat::XMVecfloat(const XMVecfloat& InXMVecfloat)
{
    m128_xmm = InXMVecfloat.m128_xmm;
}

XMVecfloat& uX_callconv XMVecfloat::operator=(const XMVecfloat& InXMVecfloat)
{
    m128_xmm = InXMVecfloat.m128_xmm;
    return *this;
}

XMVecfloat::XMVecfloat(XMVecfloat&& InXMVecfloat)
{
    m128_xmm = InXMVecfloat.m128_xmm;
}

XMVecfloat& uX_callconv XMVecfloat::operator=(XMVecfloat&& InXMVecfloat)
{
    m128_xmm = InXMVecfloat.m128_xmm;
    return *this;
}
#endif

/*
XMVecfloat::XMVecfloat(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
}*/

uX_Use_decl_annotations
XMVecfloat::XMVecfloat(const float* Inpfloat)
{
    uX_ensure_return(Inpfloat != nullptr)
    m128_xmm = _uX_mm_loadu_ps(Inpfloat);
}

XMVecfloat::operator __m128(void) const
{
    return m128_xmm;
}

/*
XMVecfloat::operator float*(void) const
{
    return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

XMVecfloat& uX_callconv XMVecfloat::operator=(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
    return *this;
}

XMVecfloat::XMVecfloat(const float Infloat_X, const float Infloat_Y, const float Infloat_Z, const float Infloat_W)
{
    m128_xmm = _uX_mm_set_ps(Infloat_W, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
XMVecfloat& uX_callconv XMVecfloat::operator=(const float* Inpfloat)
{
    uX_ensure_return_val(Inpfloat != nullptr, *this)
    m128_xmm = _uX_mm_loadu_ps(Inpfloat);
    return *this;
}

XMVecfloat uX_callconv XMVecfloat::operator&(const XMVecfloat Inxmm_b)
{
    return _uX_mm_and_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator|(const XMVecfloat Inxmm_b)
{
    return _uX_mm_or_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator^(const XMVecfloat Inxmm_b)
{
    return _uX_mm_xor_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator~()
{
    return _uX_mm_not_ps(m128_xmm);
}

unsigned int uX_callconv XMVecfloat::operator&&(const XMVecfloat Inxmm_b)
{
    return (_uX_mm_movemask_ps(_uX_mm_and_ps(m128_xmm, Inxmm_b.m128_xmm)) == 0x0f);
}

unsigned int uX_callconv XMVecfloat::operator||(const XMVecfloat Inxmm_b)
{
    return (_uX_mm_movemask_ps(_uX_mm_or_ps(m128_xmm, Inxmm_b.m128_xmm)) != 0);
}

unsigned int uX_callconv XMVecfloat::operator!()
{
    return  (_uX_mm_movemask_ps(_uX_mm_cmpeq_ps(m128_xmm, __m128_false)) == 0x0f);
}

XMVecfloat& uX_callconv XMVecfloat::operator&=(const XMVecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_and_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

XMVecfloat& uX_callconv XMVecfloat::operator|=(const XMVecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_or_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

XMVecfloat& uX_callconv XMVecfloat::operator^=(const XMVecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_xor_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

XMVecfloat uX_callconv XMVecfloat::operator+(const XMVecfloat Inxmm_b)
{
    return _uX_mm_add_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator-(const XMVecfloat Inxmm_b)
{
    return _uX_mm_sub_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator*(const XMVecfloat Inxmm_b)
{
    return _uX_mm_mul_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator/(const XMVecfloat Inxmm_b)
{
    return _uX_mm_div_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat& uX_callconv XMVecfloat::operator+=(const XMVecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_add_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

XMVecfloat& uX_callconv XMVecfloat::operator-=(const XMVecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_sub_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

XMVecfloat& uX_callconv XMVecfloat::operator*=(const XMVecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_mul_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

XMVecfloat& uX_callconv XMVecfloat::operator/=(const XMVecfloat Inxmm_b)
{
    m128_xmm = _uX_mm_div_ps(m128_xmm, Inxmm_b.m128_xmm);
    return *this;
}

XMVecfloat& uX_callconv XMVecfloat::operator++()
{
    m128_xmm = *this + __m128_1;
    return *this;
}

XMVecfloat& uX_callconv XMVecfloat::operator--()
{
    m128_xmm = *this - __m128_1;
    return *this;
}

XMVecfloat uX_callconv XMVecfloat::operator++(int)
{
    XMVecfloat tmpxmmi_a = *this;
    m128_xmm = *this + __m128_1;
    return tmpxmmi_a;
}

XMVecfloat uX_callconv XMVecfloat::operator--(int)
{
    XMVecfloat tmpxmmi_a = *this;
    m128_xmm = *this - __m128_1;
    return tmpxmmi_a;
}

XMVecfloat uX_callconv XMVecfloat::operator-()
{
    return _uX_mm_xor_ps(m128_xmm, __m128_sign);
}

XMVecfloat uX_callconv XMVecfloat::operator==(const XMVecfloat Inxmm_b)
{
    return _uX_mm_cmpeq_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator<(const XMVecfloat Inxmm_b)
{
    return _uX_mm_cmplt_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator<=(const XMVecfloat Inxmm_b)
{
    return _uX_mm_cmple_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator>(const XMVecfloat Inxmm_b)
{
    return _uX_mm_cmpgt_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator>=(const XMVecfloat Inxmm_b)
{
    return _uX_mm_cmpge_ps(m128_xmm, Inxmm_b.m128_xmm);
}

XMVecfloat uX_callconv XMVecfloat::operator!=(const XMVecfloat Inxmm_b)
{
    return _uX_mm_cmpneq_ps(m128_xmm, Inxmm_b.m128_xmm);
}

// XMVecfloat End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// XMVecint8 Start

/*
XMVecint8::XMVecint8(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

XMVecint8::operator __m128i(void) const
{
    return m128_xmmi;
}

XMVecint8& uX_callconv XMVecint8::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

/*
XMVecint8::operator __int8*(void) const
{
    return reinterpret_cast<__int8*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

uX_Use_decl_annotations
XMVecint8::XMVecint8(const __int8* Inpint8)
{
    uX_ensure_return(Inpint8 != nullptr)
        m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

uX_Use_decl_annotations
XMVecint8& uX_callconv XMVecint8::operator=(const __int8* Inpint8)
{
    uX_ensure_return_val(Inpint8 != nullptr, *this)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
    return *this;
}

XMVecint8 uX_callconv XMVecint8::operator&(const XMVecint8 Inxmm_b)
{
    return _uX_mm_and_si128(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator|(const XMVecint8 Inxmm_b)
{
    return _uX_mm_or_si128(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator^(const XMVecint8 Inxmm_b)
{
    return _uX_mm_xor_si128(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator~()
{
    return _uX_mm_not_si128(m128_xmmi);
}

unsigned int uX_callconv XMVecint8::operator&&(const XMVecint8 Inxmm_b)
{
    return (_uX_mm_movemask_epi8(_uX_mm_and_si128(m128_xmmi, Inxmm_b.m128_xmmi)) == 0xffff);
}

unsigned int uX_callconv XMVecint8::operator||(const XMVecint8 Inxmm_b)
{
    return (_uX_mm_movemask_epi8(_uX_mm_or_si128(m128_xmmi, Inxmm_b.m128_xmmi)) != 0);
}

unsigned int uX_callconv XMVecint8::operator!()
{
    return  (_uX_mm_movemask_epi8(_uX_mm_cmpeq_epi8(m128_xmmi, __m128i_i8_false)) == 0xffff);
}

XMVecint8& uX_callconv XMVecint8::operator&=(const XMVecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_and_si128(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

XMVecint8& uX_callconv XMVecint8::operator|=(const XMVecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_or_si128(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

XMVecint8& uX_callconv XMVecint8::operator^=(const XMVecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_xor_si128(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

XMVecint8 uX_callconv XMVecint8::operator+(const XMVecint8 Inxmm_b)
{
    return _uX_mm_add_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator-(const XMVecint8 Inxmm_b)
{
    return _uX_mm_sub_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator*(const XMVecint8 Inxmm_b)
{
    return _uX_mm_mule_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8& uX_callconv XMVecint8::operator+=(const XMVecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_add_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

XMVecint8& uX_callconv XMVecint8::operator-=(const XMVecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_sub_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

XMVecint8& uX_callconv XMVecint8::operator*=(const XMVecint8 Inxmm_b)
{
    m128_xmmi = _uX_mm_mule_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
    return *this;
}

XMVecint8& uX_callconv XMVecint8::operator++()
{
    m128_xmmi = *this + __m128i_i8_1;
    return *this;
}

XMVecint8& uX_callconv XMVecint8::operator--()
{
    m128_xmmi = *this - __m128i_i8_1;
    return *this;
}

XMVecint8 uX_callconv XMVecint8::operator++(int)
{
    XMVecint8 tmpxmmi_a = *this;
    m128_xmmi = *this + __m128i_i8_1;
    return tmpxmmi_a;
}

XMVecint8 uX_callconv XMVecint8::operator--(int)
{
    XMVecint8 tmpxmmi_a = *this;
    m128_xmmi = *this - __m128i_i8_1;
    return tmpxmmi_a;
}

XMVecint8 uX_callconv XMVecint8::operator-()
{
    return _uX_mm_sub_epi8(__m128i_i8_0, m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator==(const XMVecint8 Inxmm_b)
{
    return _uX_mm_cmpeq_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator<(const XMVecint8 Inxmm_b)
{
    return _uX_mm_cmplt_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator<=(const XMVecint8 Inxmm_b)
{
    return _uX_mm_cmple_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator>(const XMVecint8 Inxmm_b)
{
    return _uX_mm_cmpgt_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator>=(const XMVecint8 Inxmm_b)
{
    return _uX_mm_cmpge_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator!=(const XMVecint8 Inxmm_b)
{
    return _uX_mm_cmpneq_epi8(m128_xmmi, Inxmm_b.m128_xmmi);
}

XMVecint8 uX_callconv XMVecint8::operator<<(int InIntCount)
{
    unsigned int mask = static_cast<unsigned int>(0xff) << static_cast<unsigned int>(InIntCount);       // mask to remove bits that are shifted out
    __m128i am = _uX_mm_and_si128(m128_xmmi, _uX_mm_set1_epi8((char)mask));                             // remove bits that will overflow
    return _uX_mm_sll_epi16(am, _uX_mm_cvtsi32_si128(InIntCount));                                      // 16-bit shifts
}

XMVecint8 uX_callconv XMVecint8::operator<<(const XMVecint8 InXmmi_Count)
{
    const int InCount = _uX_mm_cvtsi128_si32(InXmmi_Count);
    unsigned int mask = static_cast<unsigned int>(0xff) << static_cast<unsigned int>(InCount);          // mask to remove bits that are shifted out
    __m128i am = _uX_mm_and_si128(m128_xmmi, _uX_mm_set1_epi8((char)mask));                             // remove bits that will overflow
    return _uX_mm_sll_epi16(am, _uX_mm_cvtsi32_si128(_uX_mm_cvtsi128_si32(InXmmi_Count)));              // 16-bit shifts
}

XMVecint8 uX_callconv XMVecint8::operator>>(int InIntCount)
{
    __m128i aeven = _uX_mm_slli_epi16(m128_xmmi, 8);                                    // even numbered elements of a. get sign bit in position
            aeven = _uX_mm_sra_epi16(aeven, _uX_mm_cvtsi32_si128(InIntCount+8));        // shift arithmetic, back to position
    __m128i aodd = _uX_mm_sra_epi16(m128_xmmi, _uX_mm_cvtsi32_si128(InIntCount));       // shift odd numbered elements arithmetic
    return _uX_mm_select_si128(__m128i_flt_byte_even, aeven, aodd);                     // interleave even and odd
}

XMVecint8 uX_callconv XMVecint8::operator>>(const XMVecint8 InXmmi_Count)
{
    const int InCount = _uX_mm_cvtsi128_si32(InXmmi_Count);
    __m128i aeven = _uX_mm_slli_epi16(m128_xmmi, 8);                            // even numbered elements of a. get sign bit in position
            aeven = _uX_mm_sra_epi16(aeven, _uX_mm_cvtsi32_si128(InCount+8));   // shift arithmetic, back to position
    __m128i aodd = _uX_mm_sra_epi16(m128_xmmi, _uX_mm_cvtsi32_si128(InCount));  // shift odd numbered elements arithmetic
    return _uX_mm_select_si128(__m128i_flt_byte_even, aeven, aodd);             // interleave even and odd
}

XMVecint8 uX_callconv XMVecint8::operator<<=(int InIntCount)
{
    m128_xmmi = *this << InIntCount;
    return *this;
}

XMVecint8 uX_callconv XMVecint8::operator<<=(const XMVecint8 InXmmi_Count)
{
    m128_xmmi = *this << InXmmi_Count;
    return *this;
}

XMVecint8 uX_callconv XMVecint8::operator>>=(int InIntCount)
{
    m128_xmmi = *this >> InIntCount;
    return *this;
}
XMVecint8 uX_callconv XMVecint8::operator>>=(const XMVecint8 InXmmi_Count)
{
    m128_xmmi = *this >> InXmmi_Count;
    return *this;
}

// XMVecint8 End
// // // // // // // // //

// // // // // // // // //
// XMVecuint8 Start
/*
XMVecuint8::XMVecuint8(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
XMVecuint8::XMVecuint8(const unsigned __int8* Inpint8)
{
    uX_ensure_return(Inpint8 != nullptr)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
}

XMVecuint8::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
XMVecuint8::operator unsigned __int8*(void) const
{
    return reinterpret_cast<unsigned __int8*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

XMVecuint8& uX_callconv XMVecuint8::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
XMVecuint8& uX_callconv XMVecuint8::operator=(const unsigned __int8* Inpint8)
{
    uX_ensure_return_val(Inpint8 != nullptr, *this)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint8));
    return *this;
}
// XMVecuint8 End
// // // // // // // // //

// // // // // // // // //
// XMVecint16 Start

/*
XMVecint16::XMVecint16(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
XMVecint16::XMVecint16(const __int16* Inpint16)
{
    uX_ensure_return(Inpint16 != nullptr)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
}

XMVecint16::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
XMVecint16::operator __int16*(void) const
{
    return reinterpret_cast<__int16*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

XMVecint16& uX_callconv XMVecint16::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
XMVecint16& uX_callconv XMVecint16::operator=(const __int16* Inpint16)
{
    uX_ensure_return_val(Inpint16 != nullptr, *this)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
    return *this;
}
// XMVecint16 End
// // // // // // // // //

// // // // // // // // //
// XMVecuint16 Start
/*
XMVecuint16::XMVecuint16(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
XMVecuint16::XMVecuint16(const unsigned __int16* Inpint16)
{
    uX_ensure_return(Inpint16 != nullptr)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
}

XMVecuint16::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
XMVecuint16::operator unsigned __int16*(void) const
{
    return reinterpret_cast<unsigned __int16*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

XMVecuint16& uX_callconv XMVecuint16::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
XMVecuint16& uX_callconv XMVecuint16::operator=(const unsigned __int16* Inpint16)
{
    uX_ensure_return_val(Inpint16 != nullptr, *this)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint16));
    return *this;
}
// XMVecint8 End
// // // // // // // // //

// // // // // // // // //
// XMVecint32 Start

/*
XMVecint32::XMVecint32(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
XMVecint32::XMVecint32(const __int32* Inpint32)
{
    uX_ensure_return(Inpint32 != nullptr)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
}

XMVecint32::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
XMVecint32::operator __int32*(void) const
{
    return reinterpret_cast<__int32*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

XMVecint32& uX_callconv XMVecint32::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
XMVecint32& uX_callconv XMVecint32::operator=(const __int32* Inpint32)
{
    uX_ensure_return_val(Inpint32 != nullptr, *this)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
    return *this;
}
// XMVecint32 End
// // // // // // // // //

// // // // // // // // //
// XMVecuint32 Start
/*
XMVecuint32::XMVecuint32(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
XMVecuint32::XMVecuint32(const unsigned __int32* Inpint32)
{
    uX_ensure_return(Inpint32 != nullptr)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
}

XMVecuint32::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
XMVecuint32::operator unsigned __int32*(void) const
{
    return reinterpret_cast<unsigned __int32*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

XMVecuint32& uX_callconv XMVecuint32::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
XMVecuint32& uX_callconv XMVecuint32::operator=(const unsigned __int32* Inpint32)
{
    uX_ensure_return_val(Inpint32 != nullptr, *this)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint32));
    return *this;
}

// XMVecuint32 End
// // // // // // // // //

// // // // // // // // //
// XMVecint64 Start

/*
XMVecint64::XMVecint64(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
XMVecint64::XMVecint64(const __int64* Inpint64)
{
    uX_ensure_return(Inpint64 != nullptr)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
}

XMVecint64::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
XMVecint64::operator __int64*(void) const
{
    return reinterpret_cast<__int64*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

XMVecint64& uX_callconv XMVecint64::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
XMVecint64& uX_callconv XMVecint64::operator=(const __int64* Inpint64)
{
    uX_ensure_return_val(Inpint64 != nullptr, *this)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
    return *this;
}

// XMVecint64 End
// // // // // // // // //

// // // // // // // // //
// XMVecuint64 Start
/*
XMVecuint64::XMVecuint64(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
}*/

uX_Use_decl_annotations
XMVecuint64::XMVecuint64(const unsigned __int64* Inpint64)
{
    uX_ensure_return(Inpint64 != nullptr)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
}

XMVecuint64::operator __m128i(void) const
{
    return m128_xmmi;
}

/*
XMVecuint64::operator unsigned __int64*(void) const
{
    return reinterpret_cast<unsigned __int64*>(_uX_ptr_moveu_mm_si128(m128_xmmi));
}*/

XMVecuint64& uX_callconv XMVecuint64::operator=(const __m128i Inxmmi)
{
    m128_xmmi = Inxmmi;
    return *this;
}

uX_Use_decl_annotations
XMVecuint64& uX_callconv XMVecuint64::operator=(const unsigned __int64* Inpint64)
{
    uX_ensure_return_val(Inpint64 != nullptr, *this)
    m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64));
    return *this;
}

// XMVecuint64 End
// // // // // // // // //

// // // // // // // // //
// XMVecdouble Start
/*
XMVecdouble::XMVecdouble(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
}*/

uX_Use_decl_annotations
XMVecdouble::XMVecdouble(const double* Inpdouble)
{
    uX_ensure_return(Inpdouble != nullptr)
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
}

XMVecdouble::operator __m128d(void) const
{
    return m128_xmmd;
}

/*
XMVecdouble::operator double*(void) const
{
    return _uX_ptr_moveu_mm_pd(m128_xmmd);
}*/

XMVecdouble& uX_callconv XMVecdouble::operator=(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
    return *this;
}

uX_Use_decl_annotations
XMVecdouble& uX_callconv XMVecdouble::operator=(const double* Inpdouble)
{
    uX_ensure_return_val(Inpdouble != nullptr, *this)
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
    return *this;
}

// XMVecdouble End
// // // // // // // // //

#endif // uX_SSE2

// // // // // // // // //
// XMVecfloat1 Start
/*
XMVecfloat1::XMVecfloat1(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
}*/

XMVecfloat1::XMVecfloat1(const float Infloat)
{
    m128_xmm = _uX_mm_set_ss(Infloat);
}

XMVecfloat1::operator __m128(void) const
{
    return m128_xmm;
}

/*
XMVecfloat1::operator float(void) const
{
    return _uX_mm_cvtss_f32(m128_xmm);
}*/

XMVecfloat1& uX_callconv XMVecfloat1::operator=(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
    return *this;
}

XMVecfloat1& uX_callconv XMVecfloat1::operator=(const float Infloat)
{
    m128_xmm = _uX_mm_set_ss(Infloat);
    return *this;
}

// XMVecfloat1 End
// // // // // // // // //

// // // // // // // // //
// XMVecfloat2 Start
/*
XMVecfloat2::XMVecfloat2(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
}*/

XMVecfloat2::XMVecfloat2(const float Infloat_X, const float Infloat_Y)
{
    m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
XMVecfloat2::XMVecfloat2(const float* Inpfloat)
{
    uX_ensure_return(Inpfloat != nullptr)
    m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
}

XMVecfloat2::operator __m128(void) const
{
    return m128_xmm;
}

/*
XMVecfloat2::operator float*(void) const
{
    return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

XMVecfloat2& uX_callconv XMVecfloat2::operator=(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
    return *this;
}

uX_Use_decl_annotations
XMVecfloat2& uX_callconv XMVecfloat2::operator=(const float* Inpfloat)
{
    uX_ensure_return_val(Inpfloat != nullptr, *this)
    m128_xmm = _uX_mm_set_ps(0.0f, 0.0f, Inpfloat[1], Inpfloat[0]);
    return *this;
}

// XMVecfloat2 End
// // // // // // // // //

// // // // // // // // //
// XMVecfloat3 Start
/*
XMVecfloat3::XMVecfloat3(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
}*/

XMVecfloat3::XMVecfloat3(const float Infloat_X, const float Infloat_Y, const float Infloat_Z)
{
    m128_xmm = _uX_mm_set_ps(0.0f, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
XMVecfloat3::XMVecfloat3(const float* Inpfloat)
{
    uX_ensure_return(Inpfloat != nullptr)
    m128_xmm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
}

XMVecfloat3::operator __m128(void) const
{
    return m128_xmm;
}

/*
XMVecfloat3::operator float*(void) const
{
    return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

XMVecfloat3& uX_callconv XMVecfloat3::operator=(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
    return *this;
}

uX_Use_decl_annotations
XMVecfloat3& uX_callconv XMVecfloat3::operator=(const float* Inpfloat)
{
    uX_ensure_return_val(Inpfloat != nullptr, *this)
    m128_xmm = _uX_mm_set_ps(0.0f, Inpfloat[2], Inpfloat[1], Inpfloat[0]);
    return *this;
}

// XMVecfloat3 End
// // // // // // // // //

// // // // // // // // //
// XMVecfloat4 Start
/*
XMVecfloat4::XMVecfloat4(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
}*/

XMVecfloat4::XMVecfloat4(const float Infloat_X, const float Infloat_Y, const float Infloat_Z, const float Infloat_W)
{
    m128_xmm = _uX_mm_set_ps(Infloat_W, Infloat_Z, Infloat_Y, Infloat_X);
}

uX_Use_decl_annotations
XMVecfloat4::XMVecfloat4(const float* Inpfloat)
{
    uX_ensure_return(Inpfloat != nullptr)
    m128_xmm = _uX_mm_loadu_ps(Inpfloat);
}

XMVecfloat4::operator __m128(void) const
{
    return m128_xmm;
}

/*
XMVecfloat4::operator float*(void) const
{
    return _uX_ptr_moveu_mm_ps(m128_xmm);
}*/

XMVecfloat4& uX_callconv XMVecfloat4::operator=(const __m128 Inxmm)
{
    m128_xmm = Inxmm;
    return *this;
}

uX_Use_decl_annotations
XMVecfloat4& uX_callconv XMVecfloat4::operator=(const float* Inpfloat)
{
    uX_ensure_return_val(Inpfloat != nullptr, *this)
    m128_xmm = _uX_mm_loadu_ps(Inpfloat);
    return *this;
}

// XMVecfloat4 End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// XMVecdouble1 Start
/*
XMVecdouble1::XMVecdouble1(const __m128d Inxmmd)
{
    m128_xmm = Inxmm;
}*/

XMVecdouble1::XMVecdouble1(const double Indouble)
{
    m128_xmmd = _uX_mm_set_sd(Indouble);
}

XMVecdouble1::operator __m128d(void) const
{
    return m128_xmmd;
}

/*
XMVecdouble1::operator double(void) const
{
    return _uX_mm_cvtsd_f64(m128_xmmd);
}*/

XMVecdouble1& uX_callconv XMVecdouble1::operator=(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
    return *this;
}

XMVecdouble1& uX_callconv XMVecdouble1::operator=(const double Indouble)
{
    m128_xmmd = _uX_mm_set_sd(Indouble);
    return *this;
}

// XMVecfloat1 End
// // // // // // // // //

// // // // // // // // //
// XMVecdouble2 Start
/*
XMVecdouble2::XMVecdouble2(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
}*/

XMVecdouble2::XMVecdouble2(const double Indouble_X, const double Indouble_Y)
{
    m128_xmmd = _uX_mm_set_pd(Indouble_Y, Indouble_X);
}

uX_Use_decl_annotations
XMVecdouble2::XMVecdouble2(const double* Inpdouble)
{
    uX_ensure_return(Inpdouble != nullptr)
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
}

XMVecdouble2::operator __m128d(void) const
{
    return m128_xmmd;
}

/*
XMVecdouble2::operator double*(void) const
{
    return _uX_ptr_moveu_mm_pd(m128_xmmd);
}
*/

XMVecdouble2& uX_callconv XMVecdouble2::operator=(const __m128d Inxmmd)
{
    m128_xmmd = Inxmmd;
    return *this;
}

uX_Use_decl_annotations
XMVecdouble2& uX_callconv XMVecdouble2::operator=(const double* Inpdouble)
{
    uX_ensure_return_val(Inpdouble != nullptr, *this)
    m128_xmmd = _uX_mm_loadu_pd(Inpdouble);
    return *this;
}

// XMVecdouble2 End
// // // // // // // // //

// // // // // // // // //
// XMVecdouble3 Start

/*
XMVecdouble3::XMVecdouble3(const __m128d Inxmmd_0, const __m128 Inxmmd_1)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
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
uX_Use_decl_annotations
XMVecdouble3::XMVecdouble3(const __m128d* Inpxmmd)
{
    uX_ensure_return(Inpxmmd != nullptr)
    //if (sizeof(Inpxmmd) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
}*/

XMVecdouble3::XMVecdouble3(const double Indouble_X, const double Indouble_Y, const double Indouble_Z)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Indouble_Y, Indouble_X); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Indouble_Z); break;
        }
    }
}

uX_Use_decl_annotations
XMVecdouble3::XMVecdouble3(const double* Inpdouble)
{
    uX_ensure_return(Inpdouble != nullptr)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
        }
    }
}

XMVecdouble3::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd);
}

/*
XMVecdouble3::operator double*(void) const
{
    return const_cast<double*>(m128_d);
}*/

uX_Use_decl_annotations
XMVecdouble3& uX_callconv XMVecdouble3::operator=(const __m128d* Inpxmmd)
{
    uX_ensure_return_val(Inpxmmd != nullptr, *this)
    //if (sizeof(Inpxmmd) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
XMVecdouble3& uX_callconv XMVecdouble3::operator=(const double* Inpdouble)
{
    uX_ensure_return_val(Inpdouble != nullptr, *this)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(0.0, Inpdouble[2]); break;
        }
    }
    return *this;
}
// XMVecdouble3 End
// // // // // // // // //

// // // // // // // // //
// XMVecdouble4 Start

/*
XMVecdouble4::XMVecdouble4(const __m128d Inxmmd_0, const __m128 Inxmmd_1)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
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
uX_Use_decl_annotations
XMVecdouble4::XMVecdouble4(const __m128d* Inpxmmd)
{
    uX_ensure_return(Inpxmmd != nullptr)
    if (sizeof(Inpxmmd) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
}*/

XMVecdouble4::XMVecdouble4(const double Indouble_X, const double Indouble_Y, const double Indouble_Z, const double Indouble_W)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Indouble_Y, Indouble_X); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(Indouble_W, Indouble_Z); break;
        }
    }
}

uX_Use_decl_annotations
XMVecdouble4::XMVecdouble4(const double* Inpdouble)
{
    uX_ensure_return(Inpdouble != nullptr)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
        }
    }
}

XMVecdouble4::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd);
}

/*
XMVecdouble4::operator double*(void) const
{
    return const_cast<double*>(m128_d);
}*/

uX_Use_decl_annotations
XMVecdouble4& uX_callconv XMVecdouble4::operator=(const __m128d* Inpxmmd)
{
    uX_ensure_return_val(Inpxmmd != nullptr, *this)
    //if (sizeof(Inpxmmd) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmmd[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
XMVecdouble4& uX_callconv XMVecdouble4::operator=(const double* Inpdouble)
{
    uX_ensure_return_val(Inpdouble != nullptr, *this)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        switch (i)
        {
            case 0: m128_xmmd[0] = _uX_mm_set_pd(Inpdouble[1], Inpdouble[0]); break;
            case 1: m128_xmmd[1] = _uX_mm_set_pd(Inpdouble[3], Inpdouble[2]); break;
        }
    }
    return *this;
}

// XMVecdouble4 End
// // // // // // // // //

#endif // uX_SSE2

// MATRIX'S

// // // // // // // // //
// XMVecfloat3x3 Start

/*
XMVecfloat3x3::XMVecfloat3x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
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
uX_Use_decl_annotations
XMVecfloat3x3::XMVecfloat3x3(const __m128* Inpxmm)
{
    uX_ensure_return(Inpxmm != nullptr)
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = Inpxmm[i];
    }
}*/

XMVecfloat3x3::XMVecfloat3x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
                             const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2,
                             const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
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
XMVecfloat3x3::XMVecfloat3x3(const float* Inpfloat)
{
    uX_ensure_return(Inpfloat != nullptr)
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
}

XMVecfloat3x3::operator __m128*(void) const
{
    return const_cast<__m128*>(m128_xmm_r);
}

/*
XMVecfloat3x3::operator float*(void) const
{
    return const_cast<float*>(m128_flt_p);
}*/

uX_Use_decl_annotations
XMVecfloat3x3& uX_callconv XMVecfloat3x3::operator=(const __m128* Inpxmm)
{
    uX_ensure_return_val(Inpxmm != nullptr, *this)
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = Inpxmm[i];
    }
    return *this;
}

uX_Use_decl_annotations
XMVecfloat3x3& uX_callconv XMVecfloat3x3::operator=(const float* Inpfloat)
{
    uX_ensure_return_val(Inpfloat != nullptr, *this)
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
    return *this;
}

// XMVecfloat3x3 End
// // // // // // // // //

// // // // // // // // //
// XMVecfloat4x3 Start

/*
XMVecfloat4x3::XMVecfloat4x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
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
uX_Use_decl_annotations
XMVecfloat4x3::XMVecfloat4x3(const __m128* Inpxmm)
{
    uX_ensure_return(Inpxmm != nullptr)
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = Inpxmm[i];
    }
}*/

XMVecfloat4x3::XMVecfloat4x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
                             const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2,
                             const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2,
                             const float Infloat_W0, const float Infloat_W1, const float Infloat_W2)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
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
XMVecfloat4x3::XMVecfloat4x3(const float* Inpfloat)
{
    uX_ensure_return(Inpfloat != nullptr)
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
}

XMVecfloat4x3::operator __m128*(void) const
{
    return const_cast<__m128*>(m128_xmm_r);
}

/*
XMVecfloat4x3::operator float*(void) const
{
    return const_cast<float*>(m128_flt_p);
}*/

uX_Use_decl_annotations
XMVecfloat4x3& uX_callconv XMVecfloat4x3::operator=(const __m128* Inpxmm)
{
    uX_ensure_return_val(Inpxmm != nullptr, *this)
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = Inpxmm[i];
    }
    return *this;
}

uX_Use_decl_annotations
XMVecfloat4x3& uX_callconv XMVecfloat4x3::operator=(const float* Inpfloat)
{
    uX_ensure_return_val(Inpfloat != nullptr, *this)
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = _uX_mm_set_ps(0.0f, Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
    return *this;
}

// XMVecfloat4x3 End
// // // // // // // // //

// // // // // // // // //
// XMVecfloat4x4 Start

/*
XMVecfloat4x4::XMVecfloat4x4(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3)
{
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
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
uX_Use_decl_annotations
XMVecfloat4x4::XMVecfloat4x4(const __m128* Inpxmm)
{
    uX_ensure_return(Inpxmm != nullptr)
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = Inpxmm[i];
    }
}*/

XMVecfloat4x4::XMVecfloat4x4(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2, const float Infloat_X3,
                             const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, const float Infloat_Y3,
                             const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, const float Infloat_Z3,
                             const float Infloat_W0, const float Infloat_W1, const float Infloat_W2, const float Infloat_W3)
{
    /*static const float uX_ALIGN128DECL(tempfloat0[4]) = {Infloat_X0, Infloat_X1, Infloat_X2, Infloat_X3};
    static const float uX_ALIGN128DECL(tempfloat1[4]) = {Infloat_Y0, Infloat_Y1, Infloat_Y2, Infloat_Y3};
    static const float uX_ALIGN128DECL(tempfloat2[4]) = {Infloat_Z0, Infloat_Z1, Infloat_Z2, Infloat_Z3};
    static const float uX_ALIGN128DECL(tempfloat3[4]) = {Infloat_W0, Infloat_W1, Infloat_W2, Infloat_W3};*/
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
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
XMVecfloat4x4::XMVecfloat4x4(const float* Inpfloat)
{
    uX_ensure_return(Inpfloat != nullptr)
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
}

XMVecfloat4x4::operator __m128*(void) const
{
    return const_cast<__m128*>(m128_xmm_r);
}

/*
XMVecfloat4x4::operator float*(void) const
{
    return const_cast<float*>(m128_flt_p);
}*/

uX_Use_decl_annotations
XMVecfloat4x4& uX_callconv XMVecfloat4x4::operator=(const __m128* Inpxmm)
{
    uX_ensure_return_val(Inpxmm != nullptr, *this)
    //if (sizeof(Inpxmm) != m128_xmm_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = Inpxmm[i];
    }
    return *this;
}

uX_Use_decl_annotations
XMVecfloat4x4& uX_callconv XMVecfloat4x4::operator=(const float* Inpfloat)
{
    uX_ensure_return_val(Inpfloat != nullptr, *this)
    //if (sizeof(Inpfloat) != m128_flt_ptr_size) return *this;
    for (int i = 0; i < m128_xmm_ptr_lenght; ++i)
    {
        m128_xmm_r[i] = _uX_mm_set_ps(Inpfloat[3|(i<<2)], Inpfloat[2|(i<<2)], Inpfloat[1|(i<<2)], Inpfloat[0|(i<<2)]);
    }
    return *this;
}

// XMVecfloat4x4 End
// // // // // // // // //

#ifdef uX_SSE2
// // // // // // // // //
// XMVecdouble3x3 Start

/*
XMVecdouble3x3::XMVecdouble3x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2,
                                     const __m128d Inxmmd_3, const __m128d Inxmmd_4, const __m128d Inxmmd_5)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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
uX_Use_decl_annotations
XMVecdouble3x3::XMVecdouble3x3(const __m128d* Inpxmmd)
{
    uX_ensure_return(Inpxmmd != nullptr)
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd_r[i] = Inpxmmd[i];
    }
}*/

XMVecdouble3x3::XMVecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
                               const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
                               const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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
XMVecdouble3x3::XMVecdouble3x3(const double* Inpdouble)
{
    uX_ensure_return(Inpdouble != nullptr)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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

XMVecdouble3x3::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd_r);
}

/*
XMVecdouble3x3::operator double*(void) const
{
    return const_cast<double*>(m128_dbl_p);
}*/

uX_Use_decl_annotations
XMVecdouble3x3& uX_callconv XMVecdouble3x3::operator=(const __m128d* Inpxmmd)
{
    uX_ensure_return_val(Inpxmmd != nullptr, *this)
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd_r[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
XMVecdouble3x3& uX_callconv XMVecdouble3x3::operator=(const double* Inpdouble)
{
    uX_ensure_return_val(Inpdouble != nullptr, *this)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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

// XMVecdouble3x3 End
// // // // // // // // //

// // // // // // // // //
// XMVecdouble4x3 Start

/*
XMVecdouble4x3::XMVecdouble4x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
                               const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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
uX_Use_decl_annotations
XMVecdouble4x3::XMVecdouble4x3(const __m128d* Inpxmmd)
{
    uX_ensure_return(Inpxmmd != nullptr)
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd_r[i] = Inpxmmd[i];
    }
}*/

XMVecdouble4x3::XMVecdouble4x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
                               const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
                               const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2,
                               const double Indouble_W0, const double Indouble_W1, const double Indouble_W2)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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
XMVecdouble4x3::XMVecdouble4x3(const double* Inpdouble)
{
    uX_ensure_return(Inpdouble != nullptr)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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

XMVecdouble4x3::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd_r);
}

/*
XMVecdouble4x3::operator double*(void) const
{
    return const_cast<double*>(m128_dbl_p);
}*/

uX_Use_decl_annotations
XMVecdouble4x3& uX_callconv XMVecdouble4x3::operator=(const __m128d* Inpxmmd)
{
    uX_ensure_return_val(Inpxmmd != nullptr, *this)
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd_r[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
XMVecdouble4x3& uX_callconv XMVecdouble4x3::operator=(const double* Inpdouble)
{
    uX_ensure_return(Inpdouble != nullptr, *this)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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

// XMVecdouble4x3 End
// // // // // // // // //

// // // // // // // // //
// XMVecdouble4x4 Start

/*
XMVecdouble4x3::XMVecdouble4x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
                               const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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
uX_Use_decl_annotations
XMVecdouble4x4::XMVecdouble4x4(const __m128d* Inpxmmd)
{
    uX_ensure_return(Inpxmmd != nullptr)
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd_r[i] = Inpxmmd[i];
    }
}*/

XMVecdouble4x4::XMVecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
                               const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
                               const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
                               const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3)
{
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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
XMVecdouble4x4::XMVecdouble4x4(const double* Inpdouble)
{
    uX_ensure_return(Inpdouble != nullptr)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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

XMVecdouble4x4::operator __m128d*(void) const
{
    return const_cast<__m128d*>(m128_xmmd_r);
}

/*
XMVecdouble4x4::operator double*(void) const
{
    return const_cast<double*>(m128_dbl_p);
}*/

uX_Use_decl_annotations
XMVecdouble4x4& uX_callconv XMVecdouble4x4::operator=(const __m128d* Inpxmmd)
{
    uX_ensure_return_val(Inpxmmd != nullptr, *this)
    //if (sizeof(Inpxmmd) != m128_xmmd_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
    {
        m128_xmmd_r[i] = Inpxmmd[i];
    }
    return *this;
}

uX_Use_decl_annotations
XMVecdouble4x4& uX_callconv XMVecdouble4x4::operator=(const double* Inpdouble)
{
    uX_ensure_return_val(Inpdouble != nullptr, *this)
    //if (sizeof(Inpdouble) != m128_dbl_ptr_size) return *this;
    for (int i = 0; i < m128_xmmd_ptr_lenght; ++i)
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

// XMVecdouble4x4 End
// // // // // // // // //

#endif // uX_SSE2

uX_PACK_POP
uX_EXTERNCC_END

namespace_uX_end

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/
