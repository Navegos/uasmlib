
#pragma once

#ifndef uX_SSE_STRUCTS_H
#define uX_SSE_STRUCTS_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

#ifndef _INCLUDED_MM2
#include <xmmintrin.h>
#endif  /* _INCLUDED_MM2 */

#ifdef uX_SSE2
#ifndef _INCLUDED_EMM
#include <emmintrin.h>
#endif  /* _INCLUDED_EMM */
#endif // uX_SSE2

uX_EXTERNCC_BEGIN

//uX_PACK_PUSH16

// VECTORS'S

typedef struct uXVC_ALIGN16 uXXMVecfloat
{
	union
	{
		float               m128_f[4];
		__m128				m128_xmm;
	};

	uXXMVecfloat(void)uX_default_ctor;
	~uXXMVecfloat(void)uX_default_ctor;

	uXXMVecfloat(const uXXMVecfloat&)uX_default_ctor;
	uXXMVecfloat& uX_callconv operator=(const uXXMVecfloat&)uX_default_ctor;

	uXXMVecfloat(uXXMVecfloat&&)uX_default_ctor;
	uXXMVecfloat& uX_callconv operator=(uXXMVecfloat&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uX_constexpr uXXMVecfloat(const __m128 Inxmm) : m128_xmm{Inxmm} {}

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXXMVecfloat(uX_InReads(4) const float* Inpfloat);

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecfloat& uX_callconv operator=(const __m128 Inxmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXXMVecfloat& uX_callconv operator=(uX_InReads(4) const float* Inpfloat);

	uXXMVecfloat uX_callconv operator&(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator|(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator^(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator~();

	unsigned int uX_callconv operator&&(const uXXMVecfloat& Inxmm_b);
	unsigned int uX_callconv operator||(const uXXMVecfloat& Inxmm_b);
	unsigned int uX_callconv operator!();

	uXXMVecfloat& uX_callconv operator&=(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat& uX_callconv operator|=(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat& uX_callconv operator^=(const uXXMVecfloat Inxmm_b);

	uXXMVecfloat uX_callconv operator+(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator-(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator*(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator/(const uXXMVecfloat Inxmm_b);

	uXXMVecfloat& uX_callconv operator+=(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat& uX_callconv operator-=(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat& uX_callconv operator*=(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat& uX_callconv operator/=(const uXXMVecfloat Inxmm_b);

	uXXMVecfloat& uX_callconv operator++();
	uXXMVecfloat& uX_callconv operator--();

	uXXMVecfloat uX_callconv operator++(int);
	uXXMVecfloat uX_callconv operator--(int);

	uXXMVecfloat uX_callconv operator-();

	uXXMVecfloat uX_callconv operator==(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator<(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator<=(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator>(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator>=(const uXXMVecfloat Inxmm_b);
	uXXMVecfloat uX_callconv operator!=(const uXXMVecfloat Inxmm_b);

}uXGC_ALIGN16 uXXMVecfloat;

//static const uXXMVecfloat qwere = {{2.3f, 3.7f, 6.4f, 8.4f}};

#ifdef uX_SSE2
typedef struct uXVC_ALIGN16 uXXMVecint8
{
	union
	{
		__int8              m128_ib[16];
		__m128i				m128_xmmi;
	};

	uXXMVecint8(void)uX_default_ctor;
	~uXXMVecint8(void)uX_default_ctor;

	uXXMVecint8(const uXXMVecint8&)uX_default_ctor;
	uXXMVecint8& uX_callconv operator=(const uXXMVecint8&)uX_default_ctor;

	uXXMVecint8(uXXMVecint8&&)uX_default_ctor;
	uXXMVecint8& uX_callconv operator=(uXXMVecint8&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uX_constexpr uXXMVecint8(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

	/**
     * Constructor initialization from type __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	explicit uXXMVecint8(uX_InReads(16) const __int8* Inpint8);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __int8*. */
	/*operator __int8*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uXXMVecint8& uX_callconv operator=(const __m128i Inxmmi);

	/**
     * Assignment operator to convert from type __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	uXXMVecint8& uX_callconv operator=(uX_InReads(16) const __int8* Inpint8);

}uXGC_ALIGN16 uXXMVecint8;

typedef struct uXVC_ALIGN16 uXXMVecuint8
{
	union
	{
		unsigned __int8     m128_ub[16];
		__m128i				m128_xmmi;
	};

	uXXMVecuint8(void)uX_default_ctor;
	~uXXMVecuint8(void)uX_default_ctor;

	uXXMVecuint8(const uXXMVecuint8&)uX_default_ctor;
	uXXMVecuint8& uX_callconv operator=(const uXXMVecuint8&)uX_default_ctor;

	uXXMVecuint8(uXXMVecuint8&&)uX_default_ctor;
	uXXMVecuint8& uX_callconv operator=(uXXMVecuint8&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uX_constexpr uXXMVecuint8(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

	/**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	explicit uXXMVecuint8(uX_InReads(16) const unsigned __int8* Inpint8);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to unsigned __int8*. */
	/*operator unsigned __int8*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uXXMVecuint8& uX_callconv operator=(const __m128i Inxmmi);

	/**
     * Assignment operator to convert from type unsigned __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	uXXMVecuint8& uX_callconv operator=(uX_InReads(16) const unsigned __int8* Inpint8);

}uXGC_ALIGN16 uXXMVecuint8;

typedef struct uXVC_ALIGN16 uXXMVecint16
{
	union
	{
		__int16             m128_iw[8];
		__m128i				m128_xmmi;
	};

	uXXMVecint16(void)uX_default_ctor;
	~uXXMVecint16(void)uX_default_ctor;

	uXXMVecint16(const uXXMVecint16&)uX_default_ctor;
	uXXMVecint16& uX_callconv operator=(const uXXMVecint16&)uX_default_ctor;

	uXXMVecint16(uXXMVecint16&&)uX_default_ctor;
	uXXMVecint16& uX_callconv operator=(uXXMVecint16&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uX_constexpr uXXMVecint16(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

	/**
     * Constructor initialization from type __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	explicit uXXMVecint16(uX_InReads(8) const __int16* Inpint16);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __int16*. */
	/*operator __int16*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uXXMVecint16& uX_callconv operator=(const __m128i Inxmmi);

	/**
     * Assignment operator to convert from type __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	uXXMVecint16& uX_callconv operator=(uX_InReads(8) const __int16* Inpint16);

}uXGC_ALIGN16 uXXMVecint16;

typedef struct uXVC_ALIGN16 uXXMVecuint16
{
	union
	{
		unsigned __int16    m128_uw[8];
		__m128i				m128_xmmi;
	};

	uXXMVecuint16(void)uX_default_ctor;
	~uXXMVecuint16(void)uX_default_ctor;

	uXXMVecuint16(const uXXMVecuint16&)uX_default_ctor;
	uXXMVecuint16& uX_callconv operator=(const uXXMVecuint16&)uX_default_ctor;

	uXXMVecuint16(uXXMVecuint16&&)uX_default_ctor;
	uXXMVecuint16& uX_callconv operator=(uXXMVecuint16&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uX_constexpr uXXMVecuint16(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

	/**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	explicit uXXMVecuint16(uX_InReads(8) const unsigned __int16* Inpint16);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to unsigned __int16*. */
	/*operator unsigned __int16*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uXXMVecuint16& uX_callconv operator=(const __m128i Inxmmi);

	/**
     * Assignment operator to convert from type unsigned __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	uXXMVecuint16& uX_callconv operator=(uX_InReads(8) const unsigned __int16* Inpint16);

}uXGC_ALIGN16 uXXMVecuint16;

typedef struct uXVC_ALIGN16 uXXMVecint32
{
	union
	{
		__int32             m128_id[4];
		__m128i				m128_xmmi;
	};

	uXXMVecint32(void)uX_default_ctor;
	~uXXMVecint32(void)uX_default_ctor;

	uXXMVecint32(const uXXMVecint32&)uX_default_ctor;
	uXXMVecint32& uX_callconv operator=(const uXXMVecint32&)uX_default_ctor;

	uXXMVecint32(uXXMVecint32&&)uX_default_ctor;
	uXXMVecint32& uX_callconv operator=(uXXMVecint32&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uX_constexpr uXXMVecint32(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

	/**
     * Constructor initialization from type __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	explicit uXXMVecint32(uX_InReads(4) const __int32* Inpint32);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __int32*. */
	/*operator __int32*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uXXMVecint32& uX_callconv operator=(const __m128i Inxmmi);

	/**
     * Assignment operator to convert from type __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	uXXMVecint32& uX_callconv operator=(uX_InReads(4) const __int32* Inpint32);

}uXGC_ALIGN16 uXXMVecint32;

typedef struct uXVC_ALIGN16 uXXMVecuint32
{
	union
	{
		unsigned __int32    m128_ud[4];
		__m128i				m128_xmmi;
	};

	uXXMVecuint32(void)uX_default_ctor;
	~uXXMVecuint32(void)uX_default_ctor;

	uXXMVecuint32(const uXXMVecuint32&)uX_default_ctor;
	uXXMVecuint32& uX_callconv operator=(const uXXMVecuint32&)uX_default_ctor;

	uXXMVecuint32(uXXMVecuint32&&)uX_default_ctor;
	uXXMVecuint32& uX_callconv operator=(uXXMVecuint32&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uX_constexpr uXXMVecuint32(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

	/**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	explicit uXXMVecuint32(uX_InReads(4) const unsigned __int32* Inpint32);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to unsigned __int32*. */
	/*operator unsigned __int32*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uXXMVecuint32& uX_callconv operator=(const __m128i Inxmmi);

	/**
     * Assignment operator to convert from type unsigned __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	uXXMVecuint32& uX_callconv operator=(uX_InReads(4) const unsigned __int32* Inpint32);

}uXGC_ALIGN16 uXXMVecuint32;

typedef struct uXVC_ALIGN16 uXXMVecint64
{
	union
	{
		__int64             m128_iq[2];
		__m128i				m128_xmmi;
	};

	uXXMVecint64(void)uX_default_ctor;
	~uXXMVecint64(void)uX_default_ctor;

	uXXMVecint64(const uXXMVecint64&)uX_default_ctor;
	uXXMVecint64& uX_callconv operator=(const uXXMVecint64&)uX_default_ctor;

	uXXMVecint64(uXXMVecint64&&)uX_default_ctor;
	uXXMVecint64& uX_callconv operator=(uXXMVecint64&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uX_constexpr uXXMVecint64(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

	/**
     * Constructor initialization from type __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	explicit uXXMVecint64(uX_InReads(2) const __int64* Inpint64);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __int64*. */
	/*operator __int64*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uXXMVecint64& uX_callconv operator=(const __m128i Inxmmi);

	/**
     * Assignment operator to convert from type __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	uXXMVecint64& uX_callconv operator=(uX_InReads(2) const __int64* Inpint64);

}uXGC_ALIGN16 uXXMVecint64;

typedef struct uXVC_ALIGN16 uXXMVecuint64
{
	union
	{
		unsigned __int64    m128_uq[2];
		__m128i				m128_xmmi;
	};

	uXXMVecuint64(void)uX_default_ctor;
	~uXXMVecuint64(void)uX_default_ctor;

	uXXMVecuint64(const uXXMVecuint64&)uX_default_ctor;
	uXXMVecuint64& uX_callconv operator=(const uXXMVecuint64&)uX_default_ctor;

	uXXMVecuint64(uXXMVecuint64&&)uX_default_ctor;
	uXXMVecuint64& uX_callconv operator=(uXXMVecuint64&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uX_constexpr uXXMVecuint64(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

	/**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	explicit uXXMVecuint64(uX_InReads(2) const unsigned __int64* Inpint64);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to unsigned __int64*. */
	/*operator unsigned __int64*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi Value to copy from.
     */
	uXXMVecuint64& uX_callconv operator=(const __m128i Inxmmi);

	/**
     * Assignment operator to convert from type unsigned __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	uXXMVecuint64& uX_callconv operator=(uX_InReads(2) const unsigned __int64* Inpint64);

}uXGC_ALIGN16 uXXMVecuint64;

typedef struct uXVC_ALIGN16 uXXMVecdouble
{
	union
	{
		double              m128_d[2];
		__m128d				m128_xmmd;
	};

	uXXMVecdouble(void)uX_default_ctor;
	~uXXMVecdouble(void)uX_default_ctor;

	uXXMVecdouble(const uXXMVecdouble&)uX_default_ctor;
	uXXMVecdouble& uX_callconv operator=(const uXXMVecdouble&)uX_default_ctor;

	uXXMVecdouble(uXXMVecdouble&&)uX_default_ctor;
	uXXMVecdouble& uX_callconv operator=(uXXMVecdouble&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128d.
     *
     * @param Inxmmd Value to copy from.
     */
	uX_constexpr uXXMVecdouble(const __m128d Inxmmd) : m128_xmmd{Inxmmd} {}

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXXMVecdouble(uX_InReads(2) const double* Inpdouble);

	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d.
     *
     * @param Inxmmd Value to copy from.
     */
	uXXMVecdouble& uX_callconv operator=(const __m128d Inxmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXXMVecdouble& uX_callconv operator=(uX_InReads(2) const double* Inpdouble);

}uXGC_ALIGN16 uXXMVecdouble;
#endif // uX_SSE2

// Elementary Structs

typedef struct uXVC_ALIGN16 uXXMVecfloat1
{
	union
	{
		float               m128_f;
		__m128				m128_xmm;
	};

	uXXMVecfloat1(void)uX_default_ctor;
	~uXXMVecfloat1(void)uX_default_ctor;

	uXXMVecfloat1(const uXXMVecfloat1&)uX_default_ctor;
	uXXMVecfloat1& uX_callconv operator=(const uXXMVecfloat1&)uX_default_ctor;

	uXXMVecfloat1(uXXMVecfloat1&&)uX_default_ctor;
	uXXMVecfloat1& uX_callconv operator=(uXXMVecfloat1&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uX_constexpr uXXMVecfloat1(const __m128 Inxmm) : m128_xmm{Inxmm} {}

	/**
     * Constructor initialization from type float.
     *
     * @param Infloat Value to copy from.
     */
	explicit uXXMVecfloat1(const float Infloat);
	
	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float. */
	/*operator float(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecfloat1& uX_callconv operator=(const __m128 Inxmm);

	/**
     * Assignment operator to convert from type float.
     *
     * @param Infloat Value to copy from.
     */
	uXXMVecfloat1& uX_callconv operator=(const float Infloat);

private:
	static const int m128_xmm_size = 16;
	static const int m128_f_size = 4;

}uXGC_ALIGN16 uXXMVecfloat1;

typedef struct uXVC_ALIGN16 uXXMVecfloat2
{
	union
	{
		float               m128_f[2];
		__m128				m128_xmm;
	};

	uXXMVecfloat2(void)uX_default_ctor;
	~uXXMVecfloat2(void)uX_default_ctor;

	uXXMVecfloat2(const uXXMVecfloat2&)uX_default_ctor;
	uXXMVecfloat2& uX_callconv operator=(const uXXMVecfloat2&)uX_default_ctor;

	uXXMVecfloat2(uXXMVecfloat2&&)uX_default_ctor;
	uXXMVecfloat2& uX_callconv operator=(uXXMVecfloat2&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uX_constexpr uXXMVecfloat2(const __m128 Inxmm) : m128_xmm{Inxmm} {}

	/**
     * Constructor initialization from 2 type float.
     *
     * @param Infloat_X Value to copy from.
     * @param Infloat_Y Value to copy from.
     */
	explicit uXXMVecfloat2(const float Infloat_X, const float Infloat_Y);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXXMVecfloat2(uX_InReads(2) const float* Inpfloat);

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecfloat2& uX_callconv operator=(const __m128 Inxmm);
	
	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXXMVecfloat2& uX_callconv operator=(uX_InReads(2) const float* Inpfloat);

private:
	static const int m128_xmm_size = 16;
	static const int m128_f_p_lenght = 2;
	static const int m128_f_p_size = 8;
	static const int m128_f_size = 4;

}uXGC_ALIGN16 uXXMVecfloat2;

typedef struct uXVC_ALIGN16 uXXMVecfloat3
{
	union
	{
		float               m128_f[3];
		__m128				m128_xmm;
	};

	uXXMVecfloat3(void)uX_default_ctor;
	~uXXMVecfloat3(void)uX_default_ctor;

	uXXMVecfloat3(const uXXMVecfloat3&)uX_default_ctor;
	uXXMVecfloat3& uX_callconv operator=(const uXXMVecfloat3&)uX_default_ctor;

	uXXMVecfloat3(uXXMVecfloat3&&)uX_default_ctor;
	uXXMVecfloat3& uX_callconv operator=(uXXMVecfloat3&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uX_constexpr uXXMVecfloat3(const __m128 Inxmm) : m128_xmm{Inxmm} {}
	
	/**
     * Constructor initialization from 3 type float.
     *
     * @param Infloat_X Value to copy from.
	 * @param Infloat_Y Value to copy from.
	 * @param Infloat_Z Value to copy from.
     */
	explicit uXXMVecfloat3(const float Infloat_X, const float Infloat_Y, const float Infloat_Z);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXXMVecfloat3(uX_InReads(3) const float* Inpfloat);

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecfloat3& uX_callconv operator=(const __m128 Inxmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXXMVecfloat3& uX_callconv operator=(uX_InReads(3) const float* Inpfloat);

private:
	static const int m128_xmm_size = 16;
	static const int m128_f_p_lenght = 3;
	static const int m128_f_p_size = 12;
	static const int m128_f_size = 4;

}uXGC_ALIGN16 uXXMVecfloat3;

typedef struct uXVC_ALIGN16 uXXMVecfloat4
{
	union
	{
		float               m128_f[4];
		__m128				m128_xmm;
	};

	uXXMVecfloat4(void)uX_default_ctor;
	~uXXMVecfloat4(void)uX_default_ctor;

	uXXMVecfloat4(const uXXMVecfloat4&)uX_default_ctor;
	uXXMVecfloat4& uX_callconv operator=(const uXXMVecfloat4&)uX_default_ctor;

	uXXMVecfloat4(uXXMVecfloat4&&)uX_default_ctor;
	uXXMVecfloat4& uX_callconv operator=(uXXMVecfloat4&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uX_constexpr uXXMVecfloat4(const __m128 Inxmm) : m128_xmm{Inxmm} {}
	
	/**
     * Constructor initialization from 4 type float.
     *
     * @param Infloat_X Value to copy from.
	 * @param Infloat_Y Value to copy from.
	 * @param Infloat_Z Value to copy from.
	 * @param Infloat_W Value to copy from.
     */
	explicit uXXMVecfloat4(const float Infloat_X, const float Infloat_Y, const float Infloat_Z, const float Infloat_W);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXXMVecfloat4(uX_InReads(4) const float* Inpfloat);

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecfloat4& uX_callconv operator=(const __m128 Inxmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXXMVecfloat4& uX_callconv operator=(uX_InReads(4) const float* Inpfloat);

private:
	static const int m128_xmm_size = 16;
	static const int m128_f_p_lenght = 4;
	static const int m128_f_p_size = 16;
	static const int m128_f_size = 4;

}uXGC_ALIGN16 uXXMVecfloat4;

// double precision

#ifdef uX_SSE2
typedef struct uXVC_ALIGN16 uXXMVecdouble1
{
	union
	{
		double              m128_d;
		__m128d				m128_xmmd;
	};

	uXXMVecdouble1(void)uX_default_ctor;
	~uXXMVecdouble1(void)uX_default_ctor;

	uXXMVecdouble1(const uXXMVecdouble1&)uX_default_ctor;
	uXXMVecdouble1& uX_callconv operator=(const uXXMVecdouble1&)uX_default_ctor;

	uXXMVecdouble1(uXXMVecdouble1&&)uX_default_ctor;
	uXXMVecdouble1& uX_callconv operator=(uXXMVecdouble1&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128d.
     *
     * @param Inxmm Value to copy from.
     */
	uX_constexpr uXXMVecdouble1(const __m128d Inxmmd) : m128_xmmd{Inxmmd} {}

	/**
     * Constructor initialization from type double.
     *
     * @param Indouble Value to copy from.
     */
	explicit uXXMVecdouble1(const double Indouble);
	
	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

	/** Type cast operator to convert to double. */
	/*operator double(void) const;*/

	/**
     * Assignment operator to convert from type __m128d.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecdouble1& uX_callconv operator=(const __m128d Inxmmd);

	/**
     * Assignment operator to convert from type double.
     *
     * @param Indouble Value to copy from.
     */
	uXXMVecdouble1& uX_callconv operator=(const double Indouble);

private:
	static const int m128_xmm_size = 16;
	static const int m128_d_size = 8;

}uXGC_ALIGN16 uXXMVecdouble1;

typedef struct uXVC_ALIGN16 uXXMVecdouble2
{
	union
	{
		double              m128_d[2];
		__m128d				m128_xmmd;
	};

	uXXMVecdouble2(void)uX_default_ctor;
	~uXXMVecdouble2(void)uX_default_ctor;

	uXXMVecdouble2(const uXXMVecdouble2&)uX_default_ctor;
	uXXMVecdouble2& uX_callconv operator=(const uXXMVecdouble2&)uX_default_ctor;

	uXXMVecdouble2(uXXMVecdouble2&&)uX_default_ctor;
	uXXMVecdouble2& uX_callconv operator=(uXXMVecdouble2&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m128d.
     *
     * @param Inxmm Value to copy from.
     */
	uX_constexpr uXXMVecdouble2(const __m128d Inxmmd) : m128_xmmd{Inxmmd} {}

	/**
     * Constructor initialization from 2 type double.
     *
     * @param Indouble_X Value to copy from.
     * @param Indouble_Y Value to copy from.
     */
	explicit uXXMVecdouble2(const double Indouble_X, const double Indouble_Y);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXXMVecdouble2(uX_InReads(2) const double* Inpdouble);

	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecdouble2& uX_callconv operator=(const __m128d Inxmmd);
	
	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXXMVecdouble2& uX_callconv operator=(uX_InReads(2) const double* Inpdouble);

private:
	static const int m128_xmm_size = 16;
	static const int m128_d_p_lenght = 2;
	static const int m128_d_p_size = 16;
	static const int m128_d_size = 8;

}uXGC_ALIGN16 uXXMVecdouble2;

typedef struct uXVC_ALIGN16 uXXMVecdouble3
{
	union
	{
		double              m128_d[3];
		__m128d				m128_xmmd[2];
	};

	uXXMVecdouble3(void)uX_default_ctor;
	~uXXMVecdouble3(void)uX_default_ctor;

	uXXMVecdouble3(const uXXMVecdouble3&)uX_default_ctor;
	uXXMVecdouble3& uX_callconv operator=(const uXXMVecdouble3&)uX_default_ctor;

	uXXMVecdouble3(uXXMVecdouble3&&)uX_default_ctor;
	uXXMVecdouble3& uX_callconv operator=(uXXMVecdouble3&&)uX_default_ctor;
	
	/**
     * Constructor initialization from 2 type __m128d.
     *
     * @param Inxmm Value to copy from.
     */
	uX_constexpr uXXMVecdouble3(const __m128d Inxmmd_0, const __m128d Inxmmd_1) : m128_xmmd{Inxmmd_0,Inxmmd_1} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm Value to copy from.
     */
	uX_constexpr uXXMVecdouble3(uX_InReads(2) const __m128d* Inpxmmd) : m128_xmmd{Inpxmmd[0],Inpxmmd[1]} {}

	/**
     * Constructor initialization from 3 type double.
     *
     * @param Indouble_X Value to copy from.
	 * @param Indouble_Y Value to copy from.
	 * @param Indouble_Z Value to copy from.
     */
	explicit uXXMVecdouble3(const double Indouble_X, const double Indouble_Y, const double Indouble_Z);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXXMVecdouble3(uX_InReads(3) const double* Inpdouble);
	
	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/
	
	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecdouble3& uX_callconv operator=(uX_InReads(2) const __m128d* Inpxmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXXMVecdouble3& uX_callconv operator=(uX_InReads(3) const double* Inpdouble);

private:
	static const int m128_xmm_p_lenght = 2;
	static const int m128_xmm_p_size = 32;
	static const int m128_xmm_size = 16;
	static const int m128_d_p_lenght = 3;
	static const int m128_d_p_size = 24;
	static const int m128_d_size = 8;

}uXGC_ALIGN16 uXXMVecdouble3;

typedef struct uXVC_ALIGN16 uXXMVecdouble4
{
	union
	{
		double              m128_d[4];
		__m128d				m128_xmmd[2];
	};

	uXXMVecdouble4(void)uX_default_ctor;
	~uXXMVecdouble4(void)uX_default_ctor;

	uXXMVecdouble4(const uXXMVecdouble4&)uX_default_ctor;
	uXXMVecdouble4& uX_callconv operator=(const uXXMVecdouble4&)uX_default_ctor;

	uXXMVecdouble4(uXXMVecdouble4&&)uX_default_ctor;
	uXXMVecdouble4& uX_callconv operator=(uXXMVecdouble4&&)uX_default_ctor;

	/**
     * Constructor initialization from 2 type __m128d.
     *
     * @param Inxmm Value to copy from.
     */
	uX_constexpr uXXMVecdouble4(const __m128d Inxmmd_0, const __m128d Inxmmd_1) : m128_xmmd{Inxmmd_0,Inxmmd_1} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm Value to copy from.
     */
	uX_constexpr uXXMVecdouble4(uX_InReads(2) const __m128d* Inpxmmd) : m128_xmmd{Inpxmmd[0],Inpxmmd[1]} {}

	/**
     * Constructor initialization from 4 type double.
     *
     * @param Indouble_X Value to copy from.
	 * @param Indouble_Y Value to copy from.
	 * @param Indouble_Z Value to copy from.
	 * @param Indouble_W Value to copy from.
     */
	explicit uXXMVecdouble4(const double Indouble_X, const double Indouble_Y, const double Indouble_Z, const double Indouble_W);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXXMVecdouble4(uX_InReads(4) const double* Inpdouble);

	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/
	
	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecdouble4& uX_callconv operator=(uX_InReads(2) const __m128d* Inpxmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXXMVecdouble4& uX_callconv operator=(uX_InReads(4) const double* Inpdouble);

private:
	static const int m128_xmm_p_lenght = 2;
	static const int m128_xmm_p_size = 32;
	static const int m128_xmm_size = 16;
	static const int m128_d_p_lenght = 4;
	static const int m128_d_p_size = 32;
	static const int m128_d_size = 8;

}uXGC_ALIGN16 uXXMVecdouble4;
#endif // uX_SSE2

// MATRIX'S

typedef struct uXVC_ALIGN16 uXXMVecfloat3x3
{
	union
	{
		struct
		{
			float _11, _12, _13;
			float _21, _22, _23;
			float _31, _32, _33;
		};
		float               m128_f_m[3][3];
		float               m128_f_p[9];
		__m128				m128_xmm_r[3];
	};

	uXXMVecfloat3x3(void)uX_default_ctor;
	~uXXMVecfloat3x3(void)uX_default_ctor;

	uXXMVecfloat3x3(const uXXMVecfloat3x3&)uX_default_ctor;
	uXXMVecfloat3x3& uX_callconv operator=(const uXXMVecfloat3x3&)uX_default_ctor;

	uXXMVecfloat3x3(uXXMVecfloat3x3&&)uX_default_ctor;
	uXXMVecfloat3x3& uX_callconv operator=(uXXMVecfloat3x3&&)uX_default_ctor;

    /**
     * Constructor initialization from 3 type __m128.
     *
	 * @param Inxmm_0 Value to copy from.
	 * @param Inxmm_1 Value to copy from.
	 * @param Inxmm_2 Value to copy from.
     */
	uX_constexpr uXXMVecfloat3x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2) : m128_xmm_r{Inxmm_0,Inxmm_1,Inxmm_2} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm Value to copy from.
     */
	uX_constexpr uXXMVecfloat3x3(uX_InReads(3) const __m128* Inpxmm) : m128_xmm_r{Inpxmm[0],Inpxmm[1],Inpxmm[2]} {}
	

	/**
     * Constructor initialization from 4x4 type floats.
     *
	 * @param Infloat_X0 Value to copy from.
	 * @param Infloat_X1 Value to copy from.
	 * @param Infloat_X2 Value to copy from.
	 * @param Infloat_Y0 Value to copy from.
	 * @param Infloat_Y1 Value to copy from.
	 * @param Infloat_Y2 Value to copy from.
	 * @param Infloat_Z0 Value to copy from.
	 * @param Infloat_Z1 Value to copy from.
	 * @param Infloat_Z2 Value to copy from.
     */
	explicit uXXMVecfloat3x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
							  const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, 
							  const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXXMVecfloat3x3(uX_InReads(9) const float* Inpfloat);

	/** Type cast operator to convert to __m128*. */
	operator __m128*(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128*.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecfloat3x3& uX_callconv operator=(uX_InReads(3) const __m128* Inpxmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXXMVecfloat3x3& uX_callconv operator=(uX_InReads(9) const float* Inpfloat);

private:
	static const int m128_xmm_p_lenght = 3;
	static const int m128_xmm_p_size = 48;
	static const int m128_xmm_size = 16;
	static const int m128_row_lenght = 3;
	static const int m128_column_lenght = 3;
	static const int m128_f_p_lenght = 9;
	static const int m128_f_p_size = 36;
	static const int m128_f_size = 4;

}uXGC_ALIGN16 uXXMVecfloat3x3;

typedef struct uXVC_ALIGN16 uXXMVecfloat4x3
{
	union
	{
		struct
		{
			float _11, _12, _13;
			float _21, _22, _23;
			float _31, _32, _33;
			float _41, _42, _43;
		};
		float               m128_f_m[4][3];
		float               m128_f_p[12];
		__m128				m128_xmm_r[4];
	};

	uXXMVecfloat4x3(void)uX_default_ctor;
	~uXXMVecfloat4x3(void)uX_default_ctor;

	uXXMVecfloat4x3(const uXXMVecfloat4x3&)uX_default_ctor;
	uXXMVecfloat4x3& uX_callconv operator=(const uXXMVecfloat4x3&)uX_default_ctor;

	uXXMVecfloat4x3(uXXMVecfloat4x3&&)uX_default_ctor;
	uXXMVecfloat4x3& uX_callconv operator=(uXXMVecfloat4x3&&)uX_default_ctor;

    /**
     * Constructor initialization from 4 type __m128.
     *
	 * @param Inxmm_0 Value to copy from.
	 * @param Inxmm_1 Value to copy from.
	 * @param Inxmm_2 Value to copy from.
	 * @param Inxmm_3 Value to copy from.
     */
	uX_constexpr uXXMVecfloat4x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3) : m128_xmm_r{Inxmm_0,Inxmm_1,Inxmm_2,Inxmm_3} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm Value to copy from.
     */
	uX_constexpr uXXMVecfloat4x3(uX_InReads(4) const __m128* Inpxmm) : m128_xmm_r{Inpxmm[0],Inpxmm[1],Inpxmm[2],Inpxmm[3]} {}

	/**
     * Constructor initialization from 4x4 type floats.
     *
	 * @param Infloat_X0 Value to copy from.
	 * @param Infloat_X1 Value to copy from.
	 * @param Infloat_X2 Value to copy from.
	 * @param Infloat_Y0 Value to copy from.
	 * @param Infloat_Y1 Value to copy from.
	 * @param Infloat_Y2 Value to copy from.
	 * @param Infloat_Z0 Value to copy from.
	 * @param Infloat_Z1 Value to copy from.
	 * @param Infloat_Z2 Value to copy from.
	 * @param Infloat_W0 Value to copy from.
	 * @param Infloat_W1 Value to copy from.
	 * @param Infloat_W2 Value to copy from.
     */
	explicit uXXMVecfloat4x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
							  const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, 
							  const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, 
							  const float Infloat_W0, const float Infloat_W1, const float Infloat_W2);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXXMVecfloat4x3(uX_InReads(12) const float* Inpfloat);

	/** Type cast operator to convert to __m128*. */
	operator __m128*(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128*.
     *
     * @param Inxmm Value to copy from.
     */
	uXXMVecfloat4x3& uX_callconv operator=(uX_InReads(4) const __m128* Inpxmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXXMVecfloat4x3& uX_callconv operator=(uX_InReads(12) const float* Inpfloat);

private:
	static const int m128_xmm_p_lenght = 4;
	static const int m128_xmm_p_size = 64;
	static const int m128_xmm_size = 16;
	static const int m128_row_lenght = 4;
	static const int m128_column_lenght = 3;
	static const int m128_f_p_lenght = 12;
	static const int m128_f_p_size = 48;
	static const int m128_f_size = 4;

}uXGC_ALIGN16 uXXMVecfloat4x3;

typedef struct uXVC_ALIGN16 uXXMVecfloat4x4
{
	union
	{
		struct
		{
			float _11, _12, _13, _14;
			float _21, _22, _23, _24;
			float _31, _32, _33, _34;
			float _41, _42, _43, _44;
		};
		float               m128_f_m[4][4];
		float               m128_f_p[16];
		__m128				m128_xmm_r[4];
	};

	uXXMVecfloat4x4(void)uX_default_ctor;
	~uXXMVecfloat4x4(void)uX_default_ctor;

	uXXMVecfloat4x4(const uXXMVecfloat4x4&)uX_default_ctor;
	uXXMVecfloat4x4& uX_callconv operator=(const uXXMVecfloat4x4&)uX_default_ctor;

	uXXMVecfloat4x4(uXXMVecfloat4x4&&)uX_default_ctor;
	uXXMVecfloat4x4& uX_callconv operator=(uXXMVecfloat4x4&&)uX_default_ctor;

    /**
     * Constructor initialization from 4 type __m128.
     *
	 * @param Inxmm_0 Value to copy from.
	 * @param Inxmm_1 Value to copy from.
	 * @param Inxmm_2 Value to copy from.
	 * @param Inxmm_3 Value to copy from.
     */
	uX_constexpr uXXMVecfloat4x4(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3) : m128_xmm_r{Inxmm_0,Inxmm_1,Inxmm_2,Inxmm_3} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm Value to copy from.
     */
	uX_constexpr uXXMVecfloat4x4(uX_InReads(4) const __m128* Inpxmm) : m128_xmm_r{Inpxmm[0],Inpxmm[1],Inpxmm[2],Inpxmm[3]} {}

	/**
     * Constructor initialization from 4x4 type floats.
     *
	 * @param Infloat_X0 Value to copy from.
	 * @param Infloat_X1 Value to copy from.
	 * @param Infloat_X2 Value to copy from.
	 * @param Infloat_X3 Value to copy from.
	 * @param Infloat_Y0 Value to copy from.
	 * @param Infloat_Y1 Value to copy from.
	 * @param Infloat_Y2 Value to copy from.
	 * @param Infloat_Y3 Value to copy from.
	 * @param Infloat_Z0 Value to copy from.
	 * @param Infloat_Z1 Value to copy from.
	 * @param Infloat_Z2 Value to copy from.
	 * @param Infloat_Z3 Value to copy from.
	 * @param Infloat_W0 Value to copy from.
	 * @param Infloat_W1 Value to copy from.
	 * @param Infloat_W2 Value to copy from.
	 * @param Infloat_W3 Value to copy from.
     */
	explicit uXXMVecfloat4x4(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2, const float Infloat_X3,
							  const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, const float Infloat_Y3,
							  const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, const float Infloat_Z3,
							  const float Infloat_W0, const float Infloat_W1, const float Infloat_W2, const float Infloat_W3);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXXMVecfloat4x4(uX_InReads(16) const float* Inpfloat);

	/** Type cast operator to convert to __m128*. */
	operator __m128*(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128*.
     *
     * @param Inpxmm Value to copy from.
     */
	uXXMVecfloat4x4& uX_callconv operator=(uX_InReads(4) const __m128* Inpxmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXXMVecfloat4x4& uX_callconv operator=(uX_InReads(16) const float* Inpfloat);

private:
	static const int m128_xmm_p_lenght = 4;
	static const int m128_xmm_p_size = 64;
	static const int m128_xmm_size = 16;
	static const int m128_row_lenght = 4;
	static const int m128_column_lenght = 4;
	static const int m128_f_p_lenght = 16;
	static const int m128_f_p_size = 64;
	static const int m128_f_size = 4;

}uXGC_ALIGN16 uXXMVecfloat4x4;

#ifdef uX_SSE2
typedef struct uXVC_ALIGN16 uXXMVecdouble3x3
{
	union
	{
		struct
		{
			double _11, _12, _13;
			double _21, _22, _23;
			double _31, _32, _33;
		};
		double               m128_d_m[3][3];
		double               m128_d_p[9];
		__m128d				m128_xmmd_r[6];
	};

	uXXMVecdouble3x3(void)uX_default_ctor;
	~uXXMVecdouble3x3(void)uX_default_ctor;

	uXXMVecdouble3x3(const uXXMVecdouble3x3&)uX_default_ctor;
	uXXMVecdouble3x3& uX_callconv operator=(const uXXMVecdouble3x3&)uX_default_ctor;

	uXXMVecdouble3x3(uXXMVecdouble3x3&&)uX_default_ctor;
	uXXMVecdouble3x3& uX_callconv operator=(uXXMVecdouble3x3&&)uX_default_ctor;

    /**
     * Constructor initialization from 3 type __m128d.
     *
	 * @param Inxmmd_0 Value to copy from.
	 * @param Inxmmd_1 Value to copy from.
	 * @param Inxmmd_2 Value to copy from.
	 * @param Inxmmd_3 Value to copy from.
	 * @param Inxmmd_4 Value to copy from.
	 * @param Inxmmd_5 Value to copy from.
     */
	uX_constexpr uXXMVecdouble3x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, 
									const __m128d Inxmmd_3, const __m128d Inxmmd_4, const __m128d Inxmmd_5) : m128_xmmd_r{Inxmmd_0,Inxmmd_1,Inxmmd_2,Inxmmd_3,Inxmmd_4,Inxmmd_5} {}
	
	/**
     * Constructor initialization from type __m128d*.
     *
     * @param Inpxmmd Value to copy from.
     */
	uX_constexpr uXXMVecdouble3x3(uX_InReads(6) const __m128d* Inpxmmd) : m128_xmmd_r{Inpxmmd[0],Inpxmmd[1],Inpxmmd[2],Inpxmmd[3],Inpxmmd[4],Inpxmmd[5]} {}
	
	/**
     * Constructor initialization from 4x4 type doubles.
     *
	 * @param Indouble_X0 Value to copy from.
	 * @param Indouble_X1 Value to copy from.
	 * @param Indouble_X2 Value to copy from.
	 * @param Indouble_Y0 Value to copy from.
	 * @param Indouble_Y1 Value to copy from.
	 * @param Indouble_Y2 Value to copy from.
	 * @param Indouble_Z0 Value to copy from.
	 * @param Indouble_Z1 Value to copy from.
	 * @param Indouble_Z2 Value to copy from.
     */
	explicit uXXMVecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
							   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, 
							   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXXMVecdouble3x3(uX_InReads(9) const double* Inpdouble);

	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inpxmmd Value to copy from.
     */
	uXXMVecdouble3x3& uX_callconv operator=(uX_InReads(6) const __m128d* Inpxmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXXMVecdouble3x3& uX_callconv operator=(uX_InReads(9) const double* Inpdouble);

private:
	static const int m128_xmmd_p_lenght = 6;
	static const int m128_xmmd_p_size = 96;
	static const int m128_xmmd_size = 16;
	static const int m128_row_lenght = 3;
	static const int m128_column_lenght = 3;
	static const int m128_d_p_lenght = 9;
	static const int m128_d_p_size = 72;
	static const int m128_d_size = 8;

}uXGC_ALIGN16 uXXMVecdouble3x3;

typedef struct uXVC_ALIGN16 uXXMVecdouble4x3
{
	union
	{
		struct
		{
			double _11, _12, _13;
			double _21, _22, _23;
			double _31, _32, _33;
			double _41, _42, _43;
		};
		double               m128_d_m[4][3];
		double               m128_d_p[12];
		__m128d				m128_xmmd_r[8];
	};

	uXXMVecdouble4x3(void)uX_default_ctor;
	~uXXMVecdouble4x3(void)uX_default_ctor;

	uXXMVecdouble4x3(const uXXMVecdouble4x3&)uX_default_ctor;
	uXXMVecdouble4x3& uX_callconv operator=(const uXXMVecdouble4x3&)uX_default_ctor;

	uXXMVecdouble4x3(uXXMVecdouble4x3&&)uX_default_ctor;
	uXXMVecdouble4x3& uX_callconv operator=(uXXMVecdouble4x3&&)uX_default_ctor;

    /**
     * Constructor initialization from 8 type __m128d.
     *
	 * @param Inxmmd_0 Value to copy from.
	 * @param Inxmmd_1 Value to copy from.
	 * @param Inxmmd_2 Value to copy from.
	 * @param Inxmmd_3 Value to copy from.
	 * @param Inxmmd_4 Value to copy from.
	 * @param Inxmmd_5 Value to copy from.
	 * @param Inxmmd_6 Value to copy from.
	 * @param Inxmmd_7 Value to copy from.
     */
	uX_constexpr uXXMVecdouble4x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
									const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7) : m128_xmmd_r{Inxmmd_0,Inxmmd_1,Inxmmd_2,Inxmmd_3,Inxmmd_4,Inxmmd_5,Inxmmd_6,Inxmmd_7} {}
	
	/**
     * Constructor initialization from type __m128d*.
     *
     * @param Inpxmmd Value to copy from.
     */
	uX_constexpr uXXMVecdouble4x3(uX_InReads(8) const __m128d* Inpxmmd) : m128_xmmd_r{Inpxmmd[0],Inpxmmd[1],Inpxmmd[2],Inpxmmd[3],Inpxmmd[4],Inpxmmd[5],Inpxmmd[6],Inpxmmd[7]} {}

	/**
     * Constructor initialization from 4x4 type doubles.
     *
	 * @param Indouble_X0 Value to copy from.
	 * @param Indouble_X1 Value to copy from.
	 * @param Indouble_X2 Value to copy from.
	 * @param Indouble_Y0 Value to copy from.
	 * @param Indouble_Y1 Value to copy from.
	 * @param Indouble_Y2 Value to copy from.
	 * @param Indouble_Z0 Value to copy from.
	 * @param Indouble_Z1 Value to copy from.
	 * @param Indouble_Z2 Value to copy from.
	 * @param Indouble_W0 Value to copy from.
	 * @param Indouble_W1 Value to copy from.
	 * @param Indouble_W2 Value to copy from.
     */
	explicit uXXMVecdouble4x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
							   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, 
							   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, 
							   const double Indouble_W0, const double Indouble_W1, const double Indouble_W2);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXXMVecdouble4x3(uX_InReads(12) const double* Inpdouble);

	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inpxmmd Value to copy from.
     */
	uXXMVecdouble4x3& uX_callconv operator=(uX_InReads(8) const __m128d* Inpxmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXXMVecdouble4x3& uX_callconv operator=(uX_InReads(12) const double* Inpdouble);

private:
	static const int m128_xmmd_p_lenght = 8;
	static const int m128_xmmd_p_size = 128;
	static const int m128_xmmd_size = 16;
	static const int m128_row_lenght = 4;
	static const int m128_column_lenght = 3;
	static const int m128_d_p_lenght = 12;
	static const int m128_d_p_size = 96;
	static const int m128_d_size = 8;

}uXGC_ALIGN16 uXXMVecdouble4x3;

typedef struct uXVC_ALIGN16 uXXMVecdouble4x4
{
	union
	{
		struct
		{
			double _11, _12, _13, _14;
			double _21, _22, _23, _24;
			double _31, _32, _33, _34;
			double _41, _42, _43, _44;
		};
		double               m128_d_m[4][4];
		double               m128_d_p[16];
		__m128d				m128_xmmd_r[8];
	};

	uXXMVecdouble4x4(void)uX_default_ctor;
	~uXXMVecdouble4x4(void)uX_default_ctor;

	uXXMVecdouble4x4(const uXXMVecdouble4x4&)uX_default_ctor;
	uXXMVecdouble4x4& uX_callconv operator=(const uXXMVecdouble4x4&)uX_default_ctor;

	uXXMVecdouble4x4(uXXMVecdouble4x4&&)uX_default_ctor;
	uXXMVecdouble4x4& uX_callconv operator=(uXXMVecdouble4x4&&)uX_default_ctor;

    /**
     * Constructor initialization from 4 type __m128d.
     *
	 * @param Inxmmd_0 Value to copy from.
	 * @param Inxmmd_1 Value to copy from.
	 * @param Inxmmd_2 Value to copy from.
	 * @param Inxmmd_3 Value to copy from.
     */
	uX_constexpr uXXMVecdouble4x4(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
									const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7) : m128_xmmd_r{Inxmmd_0,Inxmmd_1,Inxmmd_2,Inxmmd_3,Inxmmd_4,Inxmmd_5,Inxmmd_6,Inxmmd_7} {}
	
	/**
     * Constructor initialization from type __m128d*.
     *
     * @param Inpxmmd Value to copy from.
     */
	uX_constexpr uXXMVecdouble4x4(uX_InReads(8) const __m128d* Inpxmmd) : m128_xmmd_r{Inpxmmd[0],Inpxmmd[1],Inpxmmd[2],Inpxmmd[3],Inpxmmd[4],Inpxmmd[5],Inpxmmd[6],Inpxmmd[7]} {}

	/**
     * Constructor initialization from 4x4 type doubles.
     *
	 * @param Indouble_X0 Value to copy from.
	 * @param Indouble_X1 Value to copy from.
	 * @param Indouble_X2 Value to copy from.
	 * @param Indouble_X3 Value to copy from.
	 * @param Indouble_Y0 Value to copy from.
	 * @param Indouble_Y1 Value to copy from.
	 * @param Indouble_Y2 Value to copy from.
	 * @param Indouble_Y3 Value to copy from.
	 * @param Indouble_Z0 Value to copy from.
	 * @param Indouble_Z1 Value to copy from.
	 * @param Indouble_Z2 Value to copy from.
	 * @param Indouble_Z3 Value to copy from.
	 * @param Indouble_W0 Value to copy from.
	 * @param Indouble_W1 Value to copy from.
	 * @param Indouble_W2 Value to copy from.
	 * @param Indouble_W3 Value to copy from.
     */
	explicit uXXMVecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
							   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
							   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
							   const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXXMVecdouble4x4(uX_InReads(16) const double* Inpdouble);

	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inpxmmd Value to copy from.
     */
	uXXMVecdouble4x4& uX_callconv operator=(uX_InReads(8) const __m128d* Inpxmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXXMVecdouble4x4& uX_callconv operator=(uX_InReads(16) const double* Inpdouble);

private:
	static const int m128_xmmd_p_lenght = 8;
	static const int m128_xmmd_p_size = 128;
	static const int m128_xmmd_size = 16;
	static const int m128_row_lenght = 4;
	static const int m128_column_lenght = 4;
	static const int m128_d_p_lenght = 16;
	static const int m128_d_p_size = 128;
	static const int m128_d_size = 8;

}uXGC_ALIGN16 uXXMVecdouble4x4;

#endif // uX_SSE2

//uX_PACK_POP

uX_EXTERNC_END

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_SSE_STRUCTS_H
