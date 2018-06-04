
#pragma once

#ifndef uXm_SSE_STRUCTS_H
#define uXm_SSE_STRUCTS_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifndef _INCLUDED_MM2
#include <xmmintrin.h>
#endif  /* _INCLUDED_MM2 */

#ifdef uXm_SSE2
#ifndef _INCLUDED_EMM
#include <emmintrin.h>
#endif  /* _INCLUDED_EMM */
#endif // uXm_SSE2

#ifdef uXm_SSE

uXm_EXTERNCC_BEGIN

//uXm_PACK_PUSH16

// VECTORS'S

typedef struct uXmVC_ALIGN16 uXmXMVecfloat
{
	union
	{
		float               m128_f[4];
		__m128				m128_xmm;
	};

	uXmXMVecfloat(void)uXm_default_ctor;
	~uXmXMVecfloat(void)uXm_default_ctor;

	uXmXMVecfloat(const uXmXMVecfloat&)uXm_default_ctor;
	uXmXMVecfloat& uXm_callconv operator=(const uXmXMVecfloat&)uXm_default_ctor;

	uXmXMVecfloat(uXmXMVecfloat&&)uXm_default_ctor;
	uXmXMVecfloat& uXm_callconv operator=(uXmXMVecfloat&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat(const __m128 InXmm) : m128_xmm{InXmm} {}

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXmXMVecfloat(uXm_InReads(4) const float* Inpfloat);

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecfloat& uXm_callconv operator=(const __m128 InXmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXmXMVecfloat& uXm_callconv operator=(uXm_InReads(4) const float* Inpfloat);

	uXmXMVecfloat uXm_callconv operator&(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator|(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator^(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator~();

	unsigned int uXm_callconv operator&&(const uXmXMVecfloat& InXmm_b);
	unsigned int uXm_callconv operator||(const uXmXMVecfloat& InXmm_b);
	unsigned int uXm_callconv operator!();

	uXmXMVecfloat& uXm_callconv operator&=(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat& uXm_callconv operator|=(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat& uXm_callconv operator^=(const uXmXMVecfloat InXmm_b);

	uXmXMVecfloat uXm_callconv operator+(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator-(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator*(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator/(const uXmXMVecfloat InXmm_b);

	uXmXMVecfloat& uXm_callconv operator+=(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat& uXm_callconv operator-=(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat& uXm_callconv operator*=(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat& uXm_callconv operator/=(const uXmXMVecfloat InXmm_b);

	uXmXMVecfloat& uXm_callconv operator++();
	uXmXMVecfloat& uXm_callconv operator--();

	uXmXMVecfloat uXm_callconv operator++(int);
	uXmXMVecfloat uXm_callconv operator--(int);

	uXmXMVecfloat uXm_callconv operator-();

	uXmXMVecfloat uXm_callconv operator==(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator<(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator<=(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator>(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator>=(const uXmXMVecfloat InXmm_b);
	uXmXMVecfloat uXm_callconv operator!=(const uXmXMVecfloat InXmm_b);

}uXmGC_ALIGN16 uXmXMVecfloat;

//static const uXmXMVecfloat qwere = {{2.3f, 3.7f, 6.4f, 8.4f}};

#ifdef uXm_SSE2
typedef struct uXmVC_ALIGN16 uXmXMVecint8
{
	union
	{
		__int8              m128_ib[16];
		__m128i				m128_xmmi;
	};

	uXmXMVecint8(void)uXm_default_ctor;
	~uXmXMVecint8(void)uXm_default_ctor;

	uXmXMVecint8(const uXmXMVecint8&)uXm_default_ctor;
	uXmXMVecint8& uXm_callconv operator=(const uXmXMVecint8&)uXm_default_ctor;

	uXmXMVecint8(uXmXMVecint8&&)uXm_default_ctor;
	uXmXMVecint8& uXm_callconv operator=(uXmXMVecint8&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXm_constexpr uXmXMVecint8(const __m128i InXmmi) : m128_xmmi{InXmmi} {}

	/**
     * Constructor initialization from type __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	explicit uXmXMVecint8(uXm_InReads(16) const __int8* Inpint8);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __int8*. */
	/*operator __int8*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXmXMVecint8& uXm_callconv operator=(const __m128i InXmmi);

	/**
     * Assignment operator to convert from type __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	uXmXMVecint8& uXm_callconv operator=(uXm_InReads(16) const __int8* Inpint8);

}uXmGC_ALIGN16 uXmXMVecint8;

typedef struct uXmVC_ALIGN16 uXmXMVecuint8
{
	union
	{
		unsigned __int8     m128_ub[16];
		__m128i				m128_xmmi;
	};

	uXmXMVecuint8(void)uXm_default_ctor;
	~uXmXMVecuint8(void)uXm_default_ctor;

	uXmXMVecuint8(const uXmXMVecuint8&)uXm_default_ctor;
	uXmXMVecuint8& uXm_callconv operator=(const uXmXMVecuint8&)uXm_default_ctor;

	uXmXMVecuint8(uXmXMVecuint8&&)uXm_default_ctor;
	uXmXMVecuint8& uXm_callconv operator=(uXmXMVecuint8&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXm_constexpr uXmXMVecuint8(const __m128i InXmmi) : m128_xmmi{InXmmi} {}

	/**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	explicit uXmXMVecuint8(uXm_InReads(16) const unsigned __int8* Inpint8);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to unsigned __int8*. */
	/*operator unsigned __int8*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXmXMVecuint8& uXm_callconv operator=(const __m128i InXmmi);

	/**
     * Assignment operator to convert from type unsigned __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	uXmXMVecuint8& uXm_callconv operator=(uXm_InReads(16) const unsigned __int8* Inpint8);

}uXmGC_ALIGN16 uXmXMVecuint8;

typedef struct uXmVC_ALIGN16 uXmXMVecint16
{
	union
	{
		__int16             m128_iw[8];
		__m128i				m128_xmmi;
	};

	uXmXMVecint16(void)uXm_default_ctor;
	~uXmXMVecint16(void)uXm_default_ctor;

	uXmXMVecint16(const uXmXMVecint16&)uXm_default_ctor;
	uXmXMVecint16& uXm_callconv operator=(const uXmXMVecint16&)uXm_default_ctor;

	uXmXMVecint16(uXmXMVecint16&&)uXm_default_ctor;
	uXmXMVecint16& uXm_callconv operator=(uXmXMVecint16&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXm_constexpr uXmXMVecint16(const __m128i InXmmi) : m128_xmmi{InXmmi} {}

	/**
     * Constructor initialization from type __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	explicit uXmXMVecint16(uXm_InReads(8) const __int16* Inpint16);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __int16*. */
	/*operator __int16*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXmXMVecint16& uXm_callconv operator=(const __m128i InXmmi);

	/**
     * Assignment operator to convert from type __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	uXmXMVecint16& uXm_callconv operator=(uXm_InReads(8) const __int16* Inpint16);

}uXmGC_ALIGN16 uXmXMVecint16;

typedef struct uXmVC_ALIGN16 uXmXMVecuint16
{
	union
	{
		unsigned __int16    m128_uw[8];
		__m128i				m128_xmmi;
	};

	uXmXMVecuint16(void)uXm_default_ctor;
	~uXmXMVecuint16(void)uXm_default_ctor;

	uXmXMVecuint16(const uXmXMVecuint16&)uXm_default_ctor;
	uXmXMVecuint16& uXm_callconv operator=(const uXmXMVecuint16&)uXm_default_ctor;

	uXmXMVecuint16(uXmXMVecuint16&&)uXm_default_ctor;
	uXmXMVecuint16& uXm_callconv operator=(uXmXMVecuint16&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXm_constexpr uXmXMVecuint16(const __m128i InXmmi) : m128_xmmi{InXmmi} {}

	/**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	explicit uXmXMVecuint16(uXm_InReads(8) const unsigned __int16* Inpint16);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to unsigned __int16*. */
	/*operator unsigned __int16*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXmXMVecuint16& uXm_callconv operator=(const __m128i InXmmi);

	/**
     * Assignment operator to convert from type unsigned __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	uXmXMVecuint16& uXm_callconv operator=(uXm_InReads(8) const unsigned __int16* Inpint16);

}uXmGC_ALIGN16 uXmXMVecuint16;

typedef struct uXmVC_ALIGN16 uXmXMVecint32
{
	union
	{
		__int32             m128_id[4];
		__m128i				m128_xmmi;
	};

	uXmXMVecint32(void)uXm_default_ctor;
	~uXmXMVecint32(void)uXm_default_ctor;

	uXmXMVecint32(const uXmXMVecint32&)uXm_default_ctor;
	uXmXMVecint32& uXm_callconv operator=(const uXmXMVecint32&)uXm_default_ctor;

	uXmXMVecint32(uXmXMVecint32&&)uXm_default_ctor;
	uXmXMVecint32& uXm_callconv operator=(uXmXMVecint32&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXm_constexpr uXmXMVecint32(const __m128i InXmmi) : m128_xmmi{InXmmi} {}

	/**
     * Constructor initialization from type __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	explicit uXmXMVecint32(uXm_InReads(4) const __int32* Inpint32);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __int32*. */
	/*operator __int32*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXmXMVecint32& uXm_callconv operator=(const __m128i InXmmi);

	/**
     * Assignment operator to convert from type __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	uXmXMVecint32& uXm_callconv operator=(uXm_InReads(4) const __int32* Inpint32);

}uXmGC_ALIGN16 uXmXMVecint32;

typedef struct uXmVC_ALIGN16 uXmXMVecuint32
{
	union
	{
		unsigned __int32    m128_ud[4];
		__m128i				m128_xmmi;
	};

	uXmXMVecuint32(void)uXm_default_ctor;
	~uXmXMVecuint32(void)uXm_default_ctor;

	uXmXMVecuint32(const uXmXMVecuint32&)uXm_default_ctor;
	uXmXMVecuint32& uXm_callconv operator=(const uXmXMVecuint32&)uXm_default_ctor;

	uXmXMVecuint32(uXmXMVecuint32&&)uXm_default_ctor;
	uXmXMVecuint32& uXm_callconv operator=(uXmXMVecuint32&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXm_constexpr uXmXMVecuint32(const __m128i InXmmi) : m128_xmmi{InXmmi} {}

	/**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	explicit uXmXMVecuint32(uXm_InReads(4) const unsigned __int32* Inpint32);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to unsigned __int32*. */
	/*operator unsigned __int32*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXmXMVecuint32& uXm_callconv operator=(const __m128i InXmmi);

	/**
     * Assignment operator to convert from type unsigned __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	uXmXMVecuint32& uXm_callconv operator=(uXm_InReads(4) const unsigned __int32* Inpint32);

}uXmGC_ALIGN16 uXmXMVecuint32;

typedef struct uXmVC_ALIGN16 uXmXMVecint64
{
	union
	{
		__int64             m128_iq[2];
		__m128i				m128_xmmi;
	};

	uXmXMVecint64(void)uXm_default_ctor;
	~uXmXMVecint64(void)uXm_default_ctor;

	uXmXMVecint64(const uXmXMVecint64&)uXm_default_ctor;
	uXmXMVecint64& uXm_callconv operator=(const uXmXMVecint64&)uXm_default_ctor;

	uXmXMVecint64(uXmXMVecint64&&)uXm_default_ctor;
	uXmXMVecint64& uXm_callconv operator=(uXmXMVecint64&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXm_constexpr uXmXMVecint64(const __m128i InXmmi) : m128_xmmi{InXmmi} {}

	/**
     * Constructor initialization from type __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	explicit uXmXMVecint64(uXm_InReads(2) const __int64* Inpint64);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __int64*. */
	/*operator __int64*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXmXMVecint64& uXm_callconv operator=(const __m128i InXmmi);

	/**
     * Assignment operator to convert from type __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	uXmXMVecint64& uXm_callconv operator=(uXm_InReads(2) const __int64* Inpint64);

}uXmGC_ALIGN16 uXmXMVecint64;

typedef struct uXmVC_ALIGN16 uXmXMVecuint64
{
	union
	{
		unsigned __int64    m128_uq[2];
		__m128i				m128_xmmi;
	};

	uXmXMVecuint64(void)uXm_default_ctor;
	~uXmXMVecuint64(void)uXm_default_ctor;

	uXmXMVecuint64(const uXmXMVecuint64&)uXm_default_ctor;
	uXmXMVecuint64& uXm_callconv operator=(const uXmXMVecuint64&)uXm_default_ctor;

	uXmXMVecuint64(uXmXMVecuint64&&)uXm_default_ctor;
	uXmXMVecuint64& uXm_callconv operator=(uXmXMVecuint64&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXm_constexpr uXmXMVecuint64(const __m128i InXmmi) : m128_xmmi{InXmmi} {}

	/**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	explicit uXmXMVecuint64(uXm_InReads(2) const unsigned __int64* Inpint64);

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to unsigned __int64*. */
	/*operator unsigned __int64*(void) const;*/

	/**
     * Assignment operator to convert from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	uXmXMVecuint64& uXm_callconv operator=(const __m128i InXmmi);

	/**
     * Assignment operator to convert from type unsigned __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	uXmXMVecuint64& uXm_callconv operator=(uXm_InReads(2) const unsigned __int64* Inpint64);

}uXmGC_ALIGN16 uXmXMVecuint64;

typedef struct uXmVC_ALIGN16 uXmXMVecdouble
{
	union
	{
		double              m128_d[2];
		__m128d				m128_xmmd;
	};

	uXmXMVecdouble(void)uXm_default_ctor;
	~uXmXMVecdouble(void)uXm_default_ctor;

	uXmXMVecdouble(const uXmXMVecdouble&)uXm_default_ctor;
	uXmXMVecdouble& uXm_callconv operator=(const uXmXMVecdouble&)uXm_default_ctor;

	uXmXMVecdouble(uXmXMVecdouble&&)uXm_default_ctor;
	uXmXMVecdouble& uXm_callconv operator=(uXmXMVecdouble&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128d.
     *
     * @param InXmmd Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble(const __m128d InXmmd) : m128_xmmd{InXmmd} {}

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXmXMVecdouble(uXm_InReads(2) const double* Inpdouble);

	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d.
     *
     * @param InXmmd Value to copy from.
     */
	uXmXMVecdouble& uXm_callconv operator=(const __m128d InXmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXmXMVecdouble& uXm_callconv operator=(uXm_InReads(2) const double* Inpdouble);

}uXmGC_ALIGN16 uXmXMVecdouble;
#endif // uXm_SSE2

// Elementary Structs

typedef struct uXmVC_ALIGN16 uXmXMVecfloat1
{
	union
	{
		float               m128_f;
		__m128				m128_xmm;
	};

	uXmXMVecfloat1(void)uXm_default_ctor;
	~uXmXMVecfloat1(void)uXm_default_ctor;

	uXmXMVecfloat1(const uXmXMVecfloat1&)uXm_default_ctor;
	uXmXMVecfloat1& uXm_callconv operator=(const uXmXMVecfloat1&)uXm_default_ctor;

	uXmXMVecfloat1(uXmXMVecfloat1&&)uXm_default_ctor;
	uXmXMVecfloat1& uXm_callconv operator=(uXmXMVecfloat1&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat1(const __m128 InXmm) : m128_xmm{InXmm} {}

	/**
     * Constructor initialization from type float.
     *
     * @param Infloat Value to copy from.
     */
	explicit uXmXMVecfloat1(const float Infloat);
	
	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float. */
	/*operator float(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecfloat1& uXm_callconv operator=(const __m128 InXmm);

	/**
     * Assignment operator to convert from type float.
     *
     * @param Infloat Value to copy from.
     */
	uXmXMVecfloat1& uXm_callconv operator=(const float Infloat);

private:
	static const int m128_xmm_size = 16;
	static const int m128_f_size = 4;

}uXmGC_ALIGN16 uXmXMVecfloat1;

typedef struct uXmVC_ALIGN16 uXmXMVecfloat2
{
	union
	{
		float               m128_f[2];
		__m128				m128_xmm;
	};

	uXmXMVecfloat2(void)uXm_default_ctor;
	~uXmXMVecfloat2(void)uXm_default_ctor;

	uXmXMVecfloat2(const uXmXMVecfloat2&)uXm_default_ctor;
	uXmXMVecfloat2& uXm_callconv operator=(const uXmXMVecfloat2&)uXm_default_ctor;

	uXmXMVecfloat2(uXmXMVecfloat2&&)uXm_default_ctor;
	uXmXMVecfloat2& uXm_callconv operator=(uXmXMVecfloat2&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat2(const __m128 InXmm) : m128_xmm{InXmm} {}

	/**
     * Constructor initialization from 2 type float.
     *
     * @param Infloat_X Value to copy from.
     * @param Infloat_Y Value to copy from.
     */
	explicit uXmXMVecfloat2(const float Infloat_X, const float Infloat_Y);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXmXMVecfloat2(uXm_InReads(2) const float* Inpfloat);

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecfloat2& uXm_callconv operator=(const __m128 InXmm);
	
	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXmXMVecfloat2& uXm_callconv operator=(uXm_InReads(2) const float* Inpfloat);

private:
	static const int m128_xmm_size = 16;
	static const int m128_f_p_lenght = 2;
	static const int m128_f_p_size = 8;
	static const int m128_f_size = 4;

}uXmGC_ALIGN16 uXmXMVecfloat2;

typedef struct uXmVC_ALIGN16 uXmXMVecfloat3
{
	union
	{
		float               m128_f[3];
		__m128				m128_xmm;
	};

	uXmXMVecfloat3(void)uXm_default_ctor;
	~uXmXMVecfloat3(void)uXm_default_ctor;

	uXmXMVecfloat3(const uXmXMVecfloat3&)uXm_default_ctor;
	uXmXMVecfloat3& uXm_callconv operator=(const uXmXMVecfloat3&)uXm_default_ctor;

	uXmXMVecfloat3(uXmXMVecfloat3&&)uXm_default_ctor;
	uXmXMVecfloat3& uXm_callconv operator=(uXmXMVecfloat3&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat3(const __m128 InXmm) : m128_xmm{InXmm} {}
	
	/**
     * Constructor initialization from 3 type float.
     *
     * @param Infloat_X Value to copy from.
	 * @param Infloat_Y Value to copy from.
	 * @param Infloat_Z Value to copy from.
     */
	explicit uXmXMVecfloat3(const float Infloat_X, const float Infloat_Y, const float Infloat_Z);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXmXMVecfloat3(uXm_InReads(3) const float* Inpfloat);

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecfloat3& uXm_callconv operator=(const __m128 InXmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXmXMVecfloat3& uXm_callconv operator=(uXm_InReads(3) const float* Inpfloat);

private:
	static const int m128_xmm_size = 16;
	static const int m128_f_p_lenght = 3;
	static const int m128_f_p_size = 12;
	static const int m128_f_size = 4;

}uXmGC_ALIGN16 uXmXMVecfloat3;

typedef struct uXmVC_ALIGN16 uXmXMVecfloat4
{
	union
	{
		float               m128_f[4];
		__m128				m128_xmm;
	};

	uXmXMVecfloat4(void)uXm_default_ctor;
	~uXmXMVecfloat4(void)uXm_default_ctor;

	uXmXMVecfloat4(const uXmXMVecfloat4&)uXm_default_ctor;
	uXmXMVecfloat4& uXm_callconv operator=(const uXmXMVecfloat4&)uXm_default_ctor;

	uXmXMVecfloat4(uXmXMVecfloat4&&)uXm_default_ctor;
	uXmXMVecfloat4& uXm_callconv operator=(uXmXMVecfloat4&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat4(const __m128 InXmm) : m128_xmm{InXmm} {}
	
	/**
     * Constructor initialization from 4 type float.
     *
     * @param Infloat_X Value to copy from.
	 * @param Infloat_Y Value to copy from.
	 * @param Infloat_Z Value to copy from.
	 * @param Infloat_W Value to copy from.
     */
	explicit uXmXMVecfloat4(const float Infloat_X, const float Infloat_Y, const float Infloat_Z, const float Infloat_W);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXmXMVecfloat4(uXm_InReads(4) const float* Inpfloat);

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecfloat4& uXm_callconv operator=(const __m128 InXmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXmXMVecfloat4& uXm_callconv operator=(uXm_InReads(4) const float* Inpfloat);

private:
	static const int m128_xmm_size = 16;
	static const int m128_f_p_lenght = 4;
	static const int m128_f_p_size = 16;
	static const int m128_f_size = 4;

}uXmGC_ALIGN16 uXmXMVecfloat4;

// double precision

#ifdef uXm_SSE2
typedef struct uXmVC_ALIGN16 uXmXMVecdouble1
{
	union
	{
		double              m128_d;
		__m128d				m128_xmmd;
	};

	uXmXMVecdouble1(void)uXm_default_ctor;
	~uXmXMVecdouble1(void)uXm_default_ctor;

	uXmXMVecdouble1(const uXmXMVecdouble1&)uXm_default_ctor;
	uXmXMVecdouble1& uXm_callconv operator=(const uXmXMVecdouble1&)uXm_default_ctor;

	uXmXMVecdouble1(uXmXMVecdouble1&&)uXm_default_ctor;
	uXmXMVecdouble1& uXm_callconv operator=(uXmXMVecdouble1&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128d.
     *
     * @param InXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble1(const __m128d InXmmd) : m128_xmmd{InXmmd} {}

	/**
     * Constructor initialization from type double.
     *
     * @param Indouble Value to copy from.
     */
	explicit uXmXMVecdouble1(const double Indouble);
	
	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

	/** Type cast operator to convert to double. */
	/*operator double(void) const;*/

	/**
     * Assignment operator to convert from type __m128d.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecdouble1& uXm_callconv operator=(const __m128d InXmmd);

	/**
     * Assignment operator to convert from type double.
     *
     * @param Indouble Value to copy from.
     */
	uXmXMVecdouble1& uXm_callconv operator=(const double Indouble);

private:
	static const int m128_xmm_size = 16;
	static const int m128_d_size = 8;

}uXmGC_ALIGN16 uXmXMVecdouble1;

typedef struct uXmVC_ALIGN16 uXmXMVecdouble2
{
	union
	{
		double              m128_d[2];
		__m128d				m128_xmmd;
	};

	uXmXMVecdouble2(void)uXm_default_ctor;
	~uXmXMVecdouble2(void)uXm_default_ctor;

	uXmXMVecdouble2(const uXmXMVecdouble2&)uXm_default_ctor;
	uXmXMVecdouble2& uXm_callconv operator=(const uXmXMVecdouble2&)uXm_default_ctor;

	uXmXMVecdouble2(uXmXMVecdouble2&&)uXm_default_ctor;
	uXmXMVecdouble2& uXm_callconv operator=(uXmXMVecdouble2&&)uXm_default_ctor;

	/**
     * Constructor initialization from type __m128d.
     *
     * @param InXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble2(const __m128d InXmmd) : m128_xmmd{InXmmd} {}

	/**
     * Constructor initialization from 2 type double.
     *
     * @param Indouble_X Value to copy from.
     * @param Indouble_Y Value to copy from.
     */
	explicit uXmXMVecdouble2(const double Indouble_X, const double Indouble_Y);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXmXMVecdouble2(uXm_InReads(2) const double* Inpdouble);

	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecdouble2& uXm_callconv operator=(const __m128d InXmmd);
	
	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXmXMVecdouble2& uXm_callconv operator=(uXm_InReads(2) const double* Inpdouble);

private:
	static const int m128_xmm_size = 16;
	static const int m128_d_p_lenght = 2;
	static const int m128_d_p_size = 16;
	static const int m128_d_size = 8;

}uXmGC_ALIGN16 uXmXMVecdouble2;

typedef struct uXmVC_ALIGN16 uXmXMVecdouble3
{
	union
	{
		double              m128_d[3];
		__m128d				m128_xmmd[2];
	};

	uXmXMVecdouble3(void)uXm_default_ctor;
	~uXmXMVecdouble3(void)uXm_default_ctor;

	uXmXMVecdouble3(const uXmXMVecdouble3&)uXm_default_ctor;
	uXmXMVecdouble3& uXm_callconv operator=(const uXmXMVecdouble3&)uXm_default_ctor;

	uXmXMVecdouble3(uXmXMVecdouble3&&)uXm_default_ctor;
	uXmXMVecdouble3& uXm_callconv operator=(uXmXMVecdouble3&&)uXm_default_ctor;
	
	/**
     * Constructor initialization from 2 type __m128d.
     *
     * @param InXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble3(const __m128d InXmmd_0, const __m128d InXmmd_1) : m128_xmmd{InXmmd_0,InXmmd_1} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param InpXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble3(uXm_InReads(2) const __m128d* InpXmmd) : m128_xmmd{InpXmmd[0],InpXmmd[1]} {}

	/**
     * Constructor initialization from 3 type double.
     *
     * @param Indouble_X Value to copy from.
	 * @param Indouble_Y Value to copy from.
	 * @param Indouble_Z Value to copy from.
     */
	explicit uXmXMVecdouble3(const double Indouble_X, const double Indouble_Y, const double Indouble_Z);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXmXMVecdouble3(uXm_InReads(3) const double* Inpdouble);
	
	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/
	
	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecdouble3& uXm_callconv operator=(uXm_InReads(2) const __m128d* InpXmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXmXMVecdouble3& uXm_callconv operator=(uXm_InReads(3) const double* Inpdouble);

private:
	static const int m128_xmm_p_lenght = 2;
	static const int m128_xmm_p_size = 32;
	static const int m128_xmm_size = 16;
	static const int m128_d_p_lenght = 3;
	static const int m128_d_p_size = 24;
	static const int m128_d_size = 8;

}uXmGC_ALIGN16 uXmXMVecdouble3;

typedef struct uXmVC_ALIGN16 uXmXMVecdouble4
{
	union
	{
		double              m128_d[4];
		__m128d				m128_xmmd[2];
	};

	uXmXMVecdouble4(void)uXm_default_ctor;
	~uXmXMVecdouble4(void)uXm_default_ctor;

	uXmXMVecdouble4(const uXmXMVecdouble4&)uXm_default_ctor;
	uXmXMVecdouble4& uXm_callconv operator=(const uXmXMVecdouble4&)uXm_default_ctor;

	uXmXMVecdouble4(uXmXMVecdouble4&&)uXm_default_ctor;
	uXmXMVecdouble4& uXm_callconv operator=(uXmXMVecdouble4&&)uXm_default_ctor;

	/**
     * Constructor initialization from 2 type __m128d.
     *
     * @param InXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble4(const __m128d InXmmd_0, const __m128d InXmmd_1) : m128_xmmd{InXmmd_0,InXmmd_1} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param InpXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble4(uXm_InReads(2) const __m128d* InpXmmd) : m128_xmmd{InpXmmd[0],InpXmmd[1]} {}

	/**
     * Constructor initialization from 4 type double.
     *
     * @param Indouble_X Value to copy from.
	 * @param Indouble_Y Value to copy from.
	 * @param Indouble_Z Value to copy from.
	 * @param Indouble_W Value to copy from.
     */
	explicit uXmXMVecdouble4(const double Indouble_X, const double Indouble_Y, const double Indouble_Z, const double Indouble_W);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXmXMVecdouble4(uXm_InReads(4) const double* Inpdouble);

	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/
	
	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecdouble4& uXm_callconv operator=(uXm_InReads(2) const __m128d* InpXmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXmXMVecdouble4& uXm_callconv operator=(uXm_InReads(4) const double* Inpdouble);

private:
	static const int m128_xmm_p_lenght = 2;
	static const int m128_xmm_p_size = 32;
	static const int m128_xmm_size = 16;
	static const int m128_d_p_lenght = 4;
	static const int m128_d_p_size = 32;
	static const int m128_d_size = 8;

}uXmGC_ALIGN16 uXmXMVecdouble4;
#endif // uXm_SSE2

// MATRIX'S

typedef struct uXmVC_ALIGN16 uXmXMVecfloat3x3
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

	uXmXMVecfloat3x3(void)uXm_default_ctor;
	~uXmXMVecfloat3x3(void)uXm_default_ctor;

	uXmXMVecfloat3x3(const uXmXMVecfloat3x3&)uXm_default_ctor;
	uXmXMVecfloat3x3& uXm_callconv operator=(const uXmXMVecfloat3x3&)uXm_default_ctor;

	uXmXMVecfloat3x3(uXmXMVecfloat3x3&&)uXm_default_ctor;
	uXmXMVecfloat3x3& uXm_callconv operator=(uXmXMVecfloat3x3&&)uXm_default_ctor;

    /**
     * Constructor initialization from 3 type __m128.
     *
	 * @param InXmm_0 Value to copy from.
	 * @param InXmm_1 Value to copy from.
	 * @param InXmm_2 Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat3x3(const __m128 InXmm_0, const __m128 InXmm_1, const __m128 InXmm_2) : m128_xmm_r{InXmm_0,InXmm_1,InXmm_2} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param InpXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat3x3(uXm_InReads(3) const __m128* InpXmm) : m128_xmm_r{InpXmm[0],InpXmm[1],InpXmm[2]} {}
	

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
	explicit uXmXMVecfloat3x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
							  const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, 
							  const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXmXMVecfloat3x3(uXm_InReads(9) const float* Inpfloat);

	/** Type cast operator to convert to __m128*. */
	operator __m128*(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128*.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecfloat3x3& uXm_callconv operator=(uXm_InReads(3) const __m128* InpXmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXmXMVecfloat3x3& uXm_callconv operator=(uXm_InReads(9) const float* Inpfloat);

private:
	static const int m128_xmm_p_lenght = 3;
	static const int m128_xmm_p_size = 48;
	static const int m128_xmm_size = 16;
	static const int m128_row_lenght = 3;
	static const int m128_column_lenght = 3;
	static const int m128_f_p_lenght = 9;
	static const int m128_f_p_size = 36;
	static const int m128_f_size = 4;

}uXmGC_ALIGN16 uXmXMVecfloat3x3;

typedef struct uXmVC_ALIGN16 uXmXMVecfloat4x3
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

	uXmXMVecfloat4x3(void)uXm_default_ctor;
	~uXmXMVecfloat4x3(void)uXm_default_ctor;

	uXmXMVecfloat4x3(const uXmXMVecfloat4x3&)uXm_default_ctor;
	uXmXMVecfloat4x3& uXm_callconv operator=(const uXmXMVecfloat4x3&)uXm_default_ctor;

	uXmXMVecfloat4x3(uXmXMVecfloat4x3&&)uXm_default_ctor;
	uXmXMVecfloat4x3& uXm_callconv operator=(uXmXMVecfloat4x3&&)uXm_default_ctor;

    /**
     * Constructor initialization from 4 type __m128.
     *
	 * @param InXmm_0 Value to copy from.
	 * @param InXmm_1 Value to copy from.
	 * @param InXmm_2 Value to copy from.
	 * @param InXmm_3 Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat4x3(const __m128 InXmm_0, const __m128 InXmm_1, const __m128 InXmm_2, const __m128 InXmm_3) : m128_xmm_r{InXmm_0,InXmm_1,InXmm_2,InXmm_3} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param InpXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat4x3(uXm_InReads(4) const __m128* InpXmm) : m128_xmm_r{InpXmm[0],InpXmm[1],InpXmm[2],InpXmm[3]} {}

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
	explicit uXmXMVecfloat4x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
							  const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, 
							  const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, 
							  const float Infloat_W0, const float Infloat_W1, const float Infloat_W2);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXmXMVecfloat4x3(uXm_InReads(12) const float* Inpfloat);

	/** Type cast operator to convert to __m128*. */
	operator __m128*(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128*.
     *
     * @param InXmm Value to copy from.
     */
	uXmXMVecfloat4x3& uXm_callconv operator=(uXm_InReads(4) const __m128* InpXmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXmXMVecfloat4x3& uXm_callconv operator=(uXm_InReads(12) const float* Inpfloat);

private:
	static const int m128_xmm_p_lenght = 4;
	static const int m128_xmm_p_size = 64;
	static const int m128_xmm_size = 16;
	static const int m128_row_lenght = 4;
	static const int m128_column_lenght = 3;
	static const int m128_f_p_lenght = 12;
	static const int m128_f_p_size = 48;
	static const int m128_f_size = 4;

}uXmGC_ALIGN16 uXmXMVecfloat4x3;

typedef struct uXmVC_ALIGN16 uXmXMVecfloat4x4
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

	uXmXMVecfloat4x4(void)uXm_default_ctor;
	~uXmXMVecfloat4x4(void)uXm_default_ctor;

	uXmXMVecfloat4x4(const uXmXMVecfloat4x4&)uXm_default_ctor;
	uXmXMVecfloat4x4& uXm_callconv operator=(const uXmXMVecfloat4x4&)uXm_default_ctor;

	uXmXMVecfloat4x4(uXmXMVecfloat4x4&&)uXm_default_ctor;
	uXmXMVecfloat4x4& uXm_callconv operator=(uXmXMVecfloat4x4&&)uXm_default_ctor;

    /**
     * Constructor initialization from 4 type __m128.
     *
	 * @param InXmm_0 Value to copy from.
	 * @param InXmm_1 Value to copy from.
	 * @param InXmm_2 Value to copy from.
	 * @param InXmm_3 Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat4x4(const __m128 InXmm_0, const __m128 InXmm_1, const __m128 InXmm_2, const __m128 InXmm_3) : m128_xmm_r{InXmm_0,InXmm_1,InXmm_2,InXmm_3} {}
	
	/**
     * Constructor initialization from type __m128*.
     *
     * @param InpXmm Value to copy from.
     */
	uXm_constexpr uXmXMVecfloat4x4(uXm_InReads(4) const __m128* InpXmm) : m128_xmm_r{InpXmm[0],InpXmm[1],InpXmm[2],InpXmm[3]} {}

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
	explicit uXmXMVecfloat4x4(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2, const float Infloat_X3,
							  const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, const float Infloat_Y3,
							  const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, const float Infloat_Z3,
							  const float Infloat_W0, const float Infloat_W1, const float Infloat_W2, const float Infloat_W3);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXmXMVecfloat4x4(uXm_InReads(16) const float* Inpfloat);

	/** Type cast operator to convert to __m128*. */
	operator __m128*(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m128*.
     *
     * @param InpXmm Value to copy from.
     */
	uXmXMVecfloat4x4& uXm_callconv operator=(uXm_InReads(4) const __m128* InpXmm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXmXMVecfloat4x4& uXm_callconv operator=(uXm_InReads(16) const float* Inpfloat);

private:
	static const int m128_xmm_p_lenght = 4;
	static const int m128_xmm_p_size = 64;
	static const int m128_xmm_size = 16;
	static const int m128_row_lenght = 4;
	static const int m128_column_lenght = 4;
	static const int m128_f_p_lenght = 16;
	static const int m128_f_p_size = 64;
	static const int m128_f_size = 4;

}uXmGC_ALIGN16 uXmXMVecfloat4x4;

#ifdef uXm_SSE2
typedef struct uXmVC_ALIGN16 uXmXMVecdouble3x3
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

	uXmXMVecdouble3x3(void)uXm_default_ctor;
	~uXmXMVecdouble3x3(void)uXm_default_ctor;

	uXmXMVecdouble3x3(const uXmXMVecdouble3x3&)uXm_default_ctor;
	uXmXMVecdouble3x3& uXm_callconv operator=(const uXmXMVecdouble3x3&)uXm_default_ctor;

	uXmXMVecdouble3x3(uXmXMVecdouble3x3&&)uXm_default_ctor;
	uXmXMVecdouble3x3& uXm_callconv operator=(uXmXMVecdouble3x3&&)uXm_default_ctor;

    /**
     * Constructor initialization from 3 type __m128d.
     *
	 * @param InXmmd_0 Value to copy from.
	 * @param InXmmd_1 Value to copy from.
	 * @param InXmmd_2 Value to copy from.
	 * @param InXmmd_3 Value to copy from.
	 * @param InXmmd_4 Value to copy from.
	 * @param InXmmd_5 Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble3x3(const __m128d InXmmd_0, const __m128d InXmmd_1, const __m128d InXmmd_2, 
									const __m128d InXmmd_3, const __m128d InXmmd_4, const __m128d InXmmd_5) : m128_xmmd_r{InXmmd_0,InXmmd_1,InXmmd_2,InXmmd_3,InXmmd_4,InXmmd_5} {}
	
	/**
     * Constructor initialization from type __m128d*.
     *
     * @param InpXmmd Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble3x3(uXm_InReads(6) const __m128d* InpXmmd) : m128_xmmd_r{InpXmmd[0],InpXmmd[1],InpXmmd[2],InpXmmd[3],InpXmmd[4],InpXmmd[5]} {}
	
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
	explicit uXmXMVecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
							   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, 
							   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXmXMVecdouble3x3(uXm_InReads(9) const double* Inpdouble);

	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param InpXmmd Value to copy from.
     */
	uXmXMVecdouble3x3& uXm_callconv operator=(uXm_InReads(6) const __m128d* InpXmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXmXMVecdouble3x3& uXm_callconv operator=(uXm_InReads(9) const double* Inpdouble);

private:
	static const int m128_xmmd_p_lenght = 6;
	static const int m128_xmmd_p_size = 96;
	static const int m128_xmmd_size = 16;
	static const int m128_row_lenght = 3;
	static const int m128_column_lenght = 3;
	static const int m128_d_p_lenght = 9;
	static const int m128_d_p_size = 72;
	static const int m128_d_size = 8;

}uXmGC_ALIGN16 uXmXMVecdouble3x3;

typedef struct uXmVC_ALIGN16 uXmXMVecdouble4x3
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

	uXmXMVecdouble4x3(void)uXm_default_ctor;
	~uXmXMVecdouble4x3(void)uXm_default_ctor;

	uXmXMVecdouble4x3(const uXmXMVecdouble4x3&)uXm_default_ctor;
	uXmXMVecdouble4x3& uXm_callconv operator=(const uXmXMVecdouble4x3&)uXm_default_ctor;

	uXmXMVecdouble4x3(uXmXMVecdouble4x3&&)uXm_default_ctor;
	uXmXMVecdouble4x3& uXm_callconv operator=(uXmXMVecdouble4x3&&)uXm_default_ctor;

    /**
     * Constructor initialization from 8 type __m128d.
     *
	 * @param InXmmd_0 Value to copy from.
	 * @param InXmmd_1 Value to copy from.
	 * @param InXmmd_2 Value to copy from.
	 * @param InXmmd_3 Value to copy from.
	 * @param InXmmd_4 Value to copy from.
	 * @param InXmmd_5 Value to copy from.
	 * @param InXmmd_6 Value to copy from.
	 * @param InXmmd_7 Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble4x3(const __m128d InXmmd_0, const __m128d InXmmd_1, const __m128d InXmmd_2, const __m128d InXmmd_3,
									const __m128d InXmmd_4, const __m128d InXmmd_5, const __m128d InXmmd_6, const __m128d InXmmd_7) : m128_xmmd_r{InXmmd_0,InXmmd_1,InXmmd_2,InXmmd_3,InXmmd_4,InXmmd_5,InXmmd_6,InXmmd_7} {}
	
	/**
     * Constructor initialization from type __m128d*.
     *
     * @param InpXmmd Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble4x3(uXm_InReads(8) const __m128d* InpXmmd) : m128_xmmd_r{InpXmmd[0],InpXmmd[1],InpXmmd[2],InpXmmd[3],InpXmmd[4],InpXmmd[5],InpXmmd[6],InpXmmd[7]} {}

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
	explicit uXmXMVecdouble4x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
							   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, 
							   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, 
							   const double Indouble_W0, const double Indouble_W1, const double Indouble_W2);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXmXMVecdouble4x3(uXm_InReads(12) const double* Inpdouble);

	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param InpXmmd Value to copy from.
     */
	uXmXMVecdouble4x3& uXm_callconv operator=(uXm_InReads(8) const __m128d* InpXmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXmXMVecdouble4x3& uXm_callconv operator=(uXm_InReads(12) const double* Inpdouble);

private:
	static const int m128_xmmd_p_lenght = 8;
	static const int m128_xmmd_p_size = 128;
	static const int m128_xmmd_size = 16;
	static const int m128_row_lenght = 4;
	static const int m128_column_lenght = 3;
	static const int m128_d_p_lenght = 12;
	static const int m128_d_p_size = 96;
	static const int m128_d_size = 8;

}uXmGC_ALIGN16 uXmXMVecdouble4x3;

typedef struct uXmVC_ALIGN16 uXmXMVecdouble4x4
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

	uXmXMVecdouble4x4(void)uXm_default_ctor;
	~uXmXMVecdouble4x4(void)uXm_default_ctor;

	uXmXMVecdouble4x4(const uXmXMVecdouble4x4&)uXm_default_ctor;
	uXmXMVecdouble4x4& uXm_callconv operator=(const uXmXMVecdouble4x4&)uXm_default_ctor;

	uXmXMVecdouble4x4(uXmXMVecdouble4x4&&)uXm_default_ctor;
	uXmXMVecdouble4x4& uXm_callconv operator=(uXmXMVecdouble4x4&&)uXm_default_ctor;

    /**
     * Constructor initialization from 4 type __m128d.
     *
	 * @param InXmmd_0 Value to copy from.
	 * @param InXmmd_1 Value to copy from.
	 * @param InXmmd_2 Value to copy from.
	 * @param InXmmd_3 Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble4x4(const __m128d InXmmd_0, const __m128d InXmmd_1, const __m128d InXmmd_2, const __m128d InXmmd_3,
									const __m128d InXmmd_4, const __m128d InXmmd_5, const __m128d InXmmd_6, const __m128d InXmmd_7) : m128_xmmd_r{InXmmd_0,InXmmd_1,InXmmd_2,InXmmd_3,InXmmd_4,InXmmd_5,InXmmd_6,InXmmd_7} {}
	
	/**
     * Constructor initialization from type __m128d*.
     *
     * @param InpXmmd Value to copy from.
     */
	uXm_constexpr uXmXMVecdouble4x4(uXm_InReads(8) const __m128d* InpXmmd) : m128_xmmd_r{InpXmmd[0],InpXmmd[1],InpXmmd[2],InpXmmd[3],InpXmmd[4],InpXmmd[5],InpXmmd[6],InpXmmd[7]} {}

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
	explicit uXmXMVecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
							   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
							   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
							   const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXmXMVecdouble4x4(uXm_InReads(16) const double* Inpdouble);

	/** Type cast operator to convert to __m128d*. */
	operator __m128d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m128d*.
     *
     * @param InpXmmd Value to copy from.
     */
	uXmXMVecdouble4x4& uXm_callconv operator=(uXm_InReads(8) const __m128d* InpXmmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXmXMVecdouble4x4& uXm_callconv operator=(uXm_InReads(16) const double* Inpdouble);

private:
	static const int m128_xmmd_p_lenght = 8;
	static const int m128_xmmd_p_size = 128;
	static const int m128_xmmd_size = 16;
	static const int m128_row_lenght = 4;
	static const int m128_column_lenght = 4;
	static const int m128_d_p_lenght = 16;
	static const int m128_d_p_size = 128;
	static const int m128_d_size = 8;

}uXmGC_ALIGN16 uXmXMVecdouble4x4;

#endif // uXm_SSE2

//uXm_PACK_POP

uXm_EXTERNC_END

#endif //SSE

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_SSE_STRUCTS_H
