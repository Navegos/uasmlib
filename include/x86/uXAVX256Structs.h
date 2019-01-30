
#pragma once

#ifndef uX_AVX256_STRUCTS_H
#define uX_AVX256_STRUCTS_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifndef _INCLUDED_IMM
#include <immintrin.h>
#endif  /* _INCLUDED_MM2 */

#ifdef uX_SSE

uX_EXTERNCC_BEGIN

//uX_PACK_PUSH16

// VECTORS'S

typedef struct uXVC_ALIGN16 uXYMVecfloat
{
	union
	{
		float               m256_f[8];
		__m256				m256_ymm;
	};

	uXYMVecfloat(void)uX_default_ctor;
	~uXYMVecfloat(void)uX_default_ctor;

	uXYMVecfloat(const uXYMVecfloat&)uX_default_ctor;
	uXYMVecfloat& uX_callconv operator=(const uXYMVecfloat&)uX_default_ctor;

	uXYMVecfloat(uXYMVecfloat&&)uX_default_ctor;
	uXYMVecfloat& uX_callconv operator=(uXYMVecfloat&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uX_constexpr uXYMVecfloat(const __m256 Inymm) : m256_ymm{Inymm} {}

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXYMVecfloat(uX_InReads(8) const float* Inpfloat);

	/** Type cast operator to convert to __m256. */
	operator __m256(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecfloat& uX_callconv operator=(const __m256 Inymm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXYMVecfloat& uX_callconv operator=(uX_InReads(8) const float* Inpfloat);

	uXYMVecfloat uX_callconv operator&(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator|(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator^(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator~();

	unsigned int uX_callconv operator&&(const uXYMVecfloat& Inymm_b);
	unsigned int uX_callconv operator||(const uXYMVecfloat& Inymm_b);
	unsigned int uX_callconv operator!();

	uXYMVecfloat& uX_callconv operator&=(const uXYMVecfloat Inymm_b);
	uXYMVecfloat& uX_callconv operator|=(const uXYMVecfloat Inymm_b);
	uXYMVecfloat& uX_callconv operator^=(const uXYMVecfloat Inymm_b);

	uXYMVecfloat uX_callconv operator+(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator-(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator*(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator/(const uXYMVecfloat Inymm_b);

	uXYMVecfloat& uX_callconv operator+=(const uXYMVecfloat Inymm_b);
	uXYMVecfloat& uX_callconv operator-=(const uXYMVecfloat Inymm_b);
	uXYMVecfloat& uX_callconv operator*=(const uXYMVecfloat Inymm_b);
	uXYMVecfloat& uX_callconv operator/=(const uXYMVecfloat Inymm_b);

	uXYMVecfloat& uX_callconv operator++();
	uXYMVecfloat& uX_callconv operator--();

	uXYMVecfloat uX_callconv operator++(int);
	uXYMVecfloat uX_callconv operator--(int);

	uXYMVecfloat uX_callconv operator-();

	uXYMVecfloat uX_callconv operator==(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator<(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator<=(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator>(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator>=(const uXYMVecfloat Inymm_b);
	uXYMVecfloat uX_callconv operator!=(const uXYMVecfloat Inymm_b);

private:
	static const int m256_ymm_size = 32;
	static const int m256_f_size = 4;

}uXGC_ALIGN16 uXYMVecfloat;

//static const uXYMVecfloat qwere = {{2.3f, 3.7f, 6.4f, 8.4f}};

typedef struct uXVC_ALIGN16 uXYMVecint8
{
	union
	{
		__int8              m256_ib[32];
		__m256i				m256_ymmi;
	};

	uXYMVecint8(void)uX_default_ctor;
	~uXYMVecint8(void)uX_default_ctor;

	uXYMVecint8(const uXYMVecint8&)uX_default_ctor;
	uXYMVecint8& uX_callconv operator=(const uXYMVecint8&)uX_default_ctor;

	uXYMVecint8(uXYMVecint8&&)uX_default_ctor;
	uXYMVecint8& uX_callconv operator=(uXYMVecint8&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uX_constexpr uXYMVecint8(const __m256i Inymmi) : m256_ymmi{Inymmi} {}

	/**
     * Constructor initialization from type __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	explicit uXYMVecint8(uX_InReads(32) const __int8* Inpint8);

	/** Type cast operator to convert to __m256i. */
	operator __m256i(void) const;

	/** Type cast operator to convert to __int8*. */
	/*operator __int8*(void) const;*/

	/**
     * Assignment operator to convert from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uXYMVecint8& uX_callconv operator=(const __m256i Inymmi);

	/**
     * Assignment operator to convert from type __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	uXYMVecint8& uX_callconv operator=(uX_InReads(32) const __int8* Inpint8);

private:
	static const int m256_ymmi_size = 32;
	static const int m256_int8_size = 1;

}uXGC_ALIGN16 uXYMVecint8;

typedef struct uXVC_ALIGN16 uXYMVecuint8
{
	union
	{
		unsigned __int8     m256_ub[32];
		__m256i				m256_ymmi;
	};

	uXYMVecuint8(void)uX_default_ctor;
	~uXYMVecuint8(void)uX_default_ctor;

	uXYMVecuint8(const uXYMVecuint8&)uX_default_ctor;
	uXYMVecuint8& uX_callconv operator=(const uXYMVecuint8&)uX_default_ctor;

	uXYMVecuint8(uXYMVecuint8&&)uX_default_ctor;
	uXYMVecuint8& uX_callconv operator=(uXYMVecuint8&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uX_constexpr uXYMVecuint8(const __m256i Inymmi) : m256_ymmi{Inymmi} {}

	/**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	explicit uXYMVecuint8(uX_InReads(32) const unsigned __int8* Inpint8);

	/** Type cast operator to convert to __m256i. */
	operator __m256i(void) const;

	/** Type cast operator to convert to unsigned __int8*. */
	/*operator unsigned __int8*(void) const;*/

	/**
     * Assignment operator to convert from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uXYMVecuint8& uX_callconv operator=(const __m256i Inymmi);

	/**
     * Assignment operator to convert from type unsigned __int8*.
     *
     * @param Inpint8 Value to copy from.
     */
	uXYMVecuint8& uX_callconv operator=(uX_InReads(32) const unsigned __int8* Inpint8);

private:
	static const int m256_ymmi_size = 32;
	static const int m256_uint8_size = 1;

}uXGC_ALIGN16 uXYMVecuint8;

typedef struct uXVC_ALIGN16 uXYMVecint16
{
	union
	{
		__int16             m256_iw[16];
		__m256i				m256_ymmi;
	};

	uXYMVecint16(void)uX_default_ctor;
	~uXYMVecint16(void)uX_default_ctor;

	uXYMVecint16(const uXYMVecint16&)uX_default_ctor;
	uXYMVecint16& uX_callconv operator=(const uXYMVecint16&)uX_default_ctor;

	uXYMVecint16(uXYMVecint16&&)uX_default_ctor;
	uXYMVecint16& uX_callconv operator=(uXYMVecint16&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uX_constexpr uXYMVecint16(const __m256i Inymmi) : m256_ymmi{Inymmi} {}

	/**
     * Constructor initialization from type __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	explicit uXYMVecint16(uX_InReads(16) const __int16* Inpint16);

	/** Type cast operator to convert to __m256i. */
	operator __m256i(void) const;

	/** Type cast operator to convert to __int16*. */
	/*operator __int16*(void) const;*/

	/**
     * Assignment operator to convert from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uXYMVecint16& uX_callconv operator=(const __m256i Inymmi);

	/**
     * Assignment operator to convert from type __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	uXYMVecint16& uX_callconv operator=(uX_InReads(16) const __int16* Inpint16);

private:
	static const int m256_ymmi_size = 32;
	static const int m256_int16_size = 2;

}uXGC_ALIGN16 uXYMVecint16;

typedef struct uXVC_ALIGN16 uXYMVecuint16
{
	union
	{
		unsigned __int16    m256_uw[16];
		__m256i				m256_ymmi;
	};

	uXYMVecuint16(void)uX_default_ctor;
	~uXYMVecuint16(void)uX_default_ctor;

	uXYMVecuint16(const uXYMVecuint16&)uX_default_ctor;
	uXYMVecuint16& uX_callconv operator=(const uXYMVecuint16&)uX_default_ctor;

	uXYMVecuint16(uXYMVecuint16&&)uX_default_ctor;
	uXYMVecuint16& uX_callconv operator=(uXYMVecuint16&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uX_constexpr uXYMVecuint16(const __m256i Inymmi) : m256_ymmi{Inymmi} {}

	/**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	explicit uXYMVecuint16(uX_InReads(16) const unsigned __int16* Inpint16);

	/** Type cast operator to convert to __m256i. */
	operator __m256i(void) const;

	/** Type cast operator to convert to unsigned __int16*. */
	/*operator unsigned __int16*(void) const;*/

	/**
     * Assignment operator to convert from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uXYMVecuint16& uX_callconv operator=(const __m256i Inymmi);

	/**
     * Assignment operator to convert from type unsigned __int16*.
     *
     * @param Inpint16 Value to copy from.
     */
	uXYMVecuint16& uX_callconv operator=(uX_InReads(16) const unsigned __int16* Inpint16);

private:
	static const int m256_ymmi_size = 32;
	static const int m256_uint16_size = 2;

}uXGC_ALIGN16 uXYMVecuint16;

typedef struct uXVC_ALIGN16 uXYMVecint32
{
	union
	{
		__int32             m256_id[8];
		__m256i				m256_ymmi;
	};

	uXYMVecint32(void)uX_default_ctor;
	~uXYMVecint32(void)uX_default_ctor;

	uXYMVecint32(const uXYMVecint32&)uX_default_ctor;
	uXYMVecint32& uX_callconv operator=(const uXYMVecint32&)uX_default_ctor;

	uXYMVecint32(uXYMVecint32&&)uX_default_ctor;
	uXYMVecint32& uX_callconv operator=(uXYMVecint32&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uX_constexpr uXYMVecint32(const __m256i Inymmi) : m256_ymmi{Inymmi} {}

	/**
     * Constructor initialization from type __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	explicit uXYMVecint32(uX_InReads(8) const __int32* Inpint32);

	/** Type cast operator to convert to __m256i. */
	operator __m256i(void) const;

	/** Type cast operator to convert to __int32*. */
	/*operator __int32*(void) const;*/

	/**
     * Assignment operator to convert from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uXYMVecint32& uX_callconv operator=(const __m256i Inymmi);

	/**
     * Assignment operator to convert from type __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	uXYMVecint32& uX_callconv operator=(uX_InReads(8) const __int32* Inpint32);

private:
	static const int m256_ymmi_size = 32;
	static const int m256_int32_size = 4;

}uXGC_ALIGN16 uXYMVecint32;

typedef struct uXVC_ALIGN16 uXYMVecuint32
{
	union
	{
		unsigned __int32    m256_ud[8];
		__m256i				m256_ymmi;
	};

	uXYMVecuint32(void)uX_default_ctor;
	~uXYMVecuint32(void)uX_default_ctor;

	uXYMVecuint32(const uXYMVecuint32&)uX_default_ctor;
	uXYMVecuint32& uX_callconv operator=(const uXYMVecuint32&)uX_default_ctor;

	uXYMVecuint32(uXYMVecuint32&&)uX_default_ctor;
	uXYMVecuint32& uX_callconv operator=(uXYMVecuint32&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uX_constexpr uXYMVecuint32(const __m256i Inymmi) : m256_ymmi{Inymmi} {}

	/**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	explicit uXYMVecuint32(uX_InReads(8) const unsigned __int32* Inpint32);

	/** Type cast operator to convert to __m256i. */
	operator __m256i(void) const;

	/** Type cast operator to convert to unsigned __int32*. */
	/*operator unsigned __int32*(void) const;*/

	/**
     * Assignment operator to convert from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uXYMVecuint32& uX_callconv operator=(const __m256i Inymmi);

	/**
     * Assignment operator to convert from type unsigned __int32*.
     *
     * @param Inpint32 Value to copy from.
     */
	uXYMVecuint32& uX_callconv operator=(uX_InReads(8) const unsigned __int32* Inpint32);

private:
	static const int m256_ymmi_size = 32;
	static const int m256_uint32_size = 4;

}uXGC_ALIGN16 uXYMVecuint32;

typedef struct uXVC_ALIGN16 uXYMVecint64
{
	union
	{
		__int64             m256_iq[4];
		__m256i				m256_ymmi;
	};

	uXYMVecint64(void)uX_default_ctor;
	~uXYMVecint64(void)uX_default_ctor;

	uXYMVecint64(const uXYMVecint64&)uX_default_ctor;
	uXYMVecint64& uX_callconv operator=(const uXYMVecint64&)uX_default_ctor;

	uXYMVecint64(uXYMVecint64&&)uX_default_ctor;
	uXYMVecint64& uX_callconv operator=(uXYMVecint64&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uX_constexpr uXYMVecint64(const __m256i Inymmi) : m256_ymmi{Inymmi} {}

	/**
     * Constructor initialization from type __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	explicit uXYMVecint64(uX_InReads(4) const __int64* Inpint64);

	/** Type cast operator to convert to __m256i. */
	operator __m256i(void) const;

	/** Type cast operator to convert to __int64*. */
	/*operator __int64*(void) const;*/

	/**
     * Assignment operator to convert from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uXYMVecint64& uX_callconv operator=(const __m256i Inymmi);

	/**
     * Assignment operator to convert from type __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	uXYMVecint64& uX_callconv operator=(uX_InReads(4) const __int64* Inpint64);

private:
	static const int m256_ymmi_size = 32;
	static const int m256_int64_size = 8;

}uXGC_ALIGN16 uXYMVecint64;

typedef struct uXVC_ALIGN16 uXYMVecuint64
{
	union
	{
		unsigned __int64    m256_uq[4];
		__m256i				m256_ymmi;
	};

	uXYMVecuint64(void)uX_default_ctor;
	~uXYMVecuint64(void)uX_default_ctor;

	uXYMVecuint64(const uXYMVecuint64&)uX_default_ctor;
	uXYMVecuint64& uX_callconv operator=(const uXYMVecuint64&)uX_default_ctor;

	uXYMVecuint64(uXYMVecuint64&&)uX_default_ctor;
	uXYMVecuint64& uX_callconv operator=(uXYMVecuint64&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uX_constexpr uXYMVecuint64(const __m256i Inymmi) : m256_ymmi{Inymmi} {}

	/**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	explicit uXYMVecuint64(uX_InReads(4) const unsigned __int64* Inpint64);

	/** Type cast operator to convert to __m256i. */
	operator __m256i(void) const;

	/** Type cast operator to convert to unsigned __int64*. */
	/*operator unsigned __int64*(void) const;*/

	/**
     * Assignment operator to convert from type __m256i.
     *
     * @param Inymmi Value to copy from.
     */
	uXYMVecuint64& uX_callconv operator=(const __m256i Inymmi);

	/**
     * Assignment operator to convert from type unsigned __int64*.
     *
     * @param Inpint64 Value to copy from.
     */
	uXYMVecuint64& uX_callconv operator=(uX_InReads(4) const unsigned __int64* Inpint64);

private:
	static const int m256_ymmi_size = 32;
	static const int m256_uint64_size = 8;

}uXGC_ALIGN16 uXYMVecuint64;

typedef struct uXVC_ALIGN16 uXYMVecdouble
{
	union
	{
		double              m256_d[4];
		__m256d				m256_ymmd;
	};

	uXYMVecdouble(void)uX_default_ctor;
	~uXYMVecdouble(void)uX_default_ctor;

	uXYMVecdouble(const uXYMVecdouble&)uX_default_ctor;
	uXYMVecdouble& uX_callconv operator=(const uXYMVecdouble&)uX_default_ctor;

	uXYMVecdouble(uXYMVecdouble&&)uX_default_ctor;
	uXYMVecdouble& uX_callconv operator=(uXYMVecdouble&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256d.
     *
     * @param Inymmd Value to copy from.
     */
	uX_constexpr uXYMVecdouble(const __m256d Inymmd) : m256_ymmd{Inymmd} {}

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXYMVecdouble(uX_InReads(4) const double* Inpdouble);

	/** Type cast operator to convert to __m256d. */
	operator __m256d(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m256d.
     *
     * @param Inymmd Value to copy from.
     */
	uXYMVecdouble& uX_callconv operator=(const __m256d Inymmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXYMVecdouble& uX_callconv operator=(uX_InReads(4) const double* Inpdouble);

private:
	static const int m256_ymmd_size = 32;
	static const int m256_double_size = 8;

}uXGC_ALIGN16 uXYMVecdouble;

// Elementary Structs

typedef struct uXVC_ALIGN16 uXYMVecfloat1
{
	union
	{
		float               m256_f;
		__m256				m256_ymm;
	};

	uXYMVecfloat1(void)uX_default_ctor;
	~uXYMVecfloat1(void)uX_default_ctor;

	uXYMVecfloat1(const uXYMVecfloat1&)uX_default_ctor;
	uXYMVecfloat1& uX_callconv operator=(const uXYMVecfloat1&)uX_default_ctor;

	uXYMVecfloat1(uXYMVecfloat1&&)uX_default_ctor;
	uXYMVecfloat1& uX_callconv operator=(uXYMVecfloat1&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uX_constexpr uXYMVecfloat1(const __m256 Inymm) : m256_ymm{Inymm} {}

	/**
     * Constructor initialization from type float.
     *
     * @param Infloat Value to copy from.
     */
	explicit uXYMVecfloat1(const float Infloat);
	
	/** Type cast operator to convert to __m256. */
	operator __m256(void) const;

	/** Type cast operator to convert to float. */
	/*operator float(void) const;*/

	/**
     * Assignment operator to convert from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecfloat1& uX_callconv operator=(const __m256 Inymm);

	/**
     * Assignment operator to convert from type float.
     *
     * @param Infloat Value to copy from.
     */
	uXYMVecfloat1& uX_callconv operator=(const float Infloat);

private:
	static const int m256_ymm_size = 32;
	static const int m256_f_size = 4;

}uXGC_ALIGN16 uXYMVecfloat1;

typedef struct uXVC_ALIGN16 uXYMVecfloat2
{
	union
	{
		float               m256_f[2];
		__m256				m256_ymm;
	};

	uXYMVecfloat2(void)uX_default_ctor;
	~uXYMVecfloat2(void)uX_default_ctor;

	uXYMVecfloat2(const uXYMVecfloat2&)uX_default_ctor;
	uXYMVecfloat2& uX_callconv operator=(const uXYMVecfloat2&)uX_default_ctor;

	uXYMVecfloat2(uXYMVecfloat2&&)uX_default_ctor;
	uXYMVecfloat2& uX_callconv operator=(uXYMVecfloat2&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uX_constexpr uXYMVecfloat2(const __m256 Inymm) : m256_ymm{Inymm} {}

	/**
     * Constructor initialization from 2 type float.
     *
     * @param Infloat_X Value to copy from.
     * @param Infloat_Y Value to copy from.
     */
	explicit uXYMVecfloat2(const float Infloat_X, const float Infloat_Y);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXYMVecfloat2(uX_InReads(2) const float* Inpfloat);

	/** Type cast operator to convert to __m256. */
	operator __m256(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecfloat2& uX_callconv operator=(const __m256 Inymm);
	
	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXYMVecfloat2& uX_callconv operator=(uX_InReads(2) const float* Inpfloat);

private:
	static const int m256_ymm_size = 32;
	static const int m256_f_p_lenght = 2;
	static const int m256_f_p_size = 8;
	static const int m256_f_size = 4;

}uXGC_ALIGN16 uXYMVecfloat2;

typedef struct uXVC_ALIGN16 uXYMVecfloat3
{
	union
	{
		float               m256_f[3];
		__m256				m256_ymm;
	};

	uXYMVecfloat3(void)uX_default_ctor;
	~uXYMVecfloat3(void)uX_default_ctor;

	uXYMVecfloat3(const uXYMVecfloat3&)uX_default_ctor;
	uXYMVecfloat3& uX_callconv operator=(const uXYMVecfloat3&)uX_default_ctor;

	uXYMVecfloat3(uXYMVecfloat3&&)uX_default_ctor;
	uXYMVecfloat3& uX_callconv operator=(uXYMVecfloat3&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uX_constexpr uXYMVecfloat3(const __m256 Inymm) : m256_ymm{Inymm} {}
	
	/**
     * Constructor initialization from 3 type float.
     *
     * @param Infloat_X Value to copy from.
	 * @param Infloat_Y Value to copy from.
	 * @param Infloat_Z Value to copy from.
     */
	explicit uXYMVecfloat3(const float Infloat_X, const float Infloat_Y, const float Infloat_Z);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXYMVecfloat3(uX_InReads(3) const float* Inpfloat);

	/** Type cast operator to convert to __m256. */
	operator __m256(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecfloat3& uX_callconv operator=(const __m256 Inymm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXYMVecfloat3& uX_callconv operator=(uX_InReads(3) const float* Inpfloat);

private:
	static const int m256_ymm_size = 32;
	static const int m256_f_p_lenght = 3;
	static const int m256_f_p_size = 12;
	static const int m256_f_size = 4;

}uXGC_ALIGN16 uXYMVecfloat3;

typedef struct uXVC_ALIGN16 uXYMVecfloat4
{
	union
	{
		float               m256_f[4];
		__m256				m256_ymm;
	};

	uXYMVecfloat4(void)uX_default_ctor;
	~uXYMVecfloat4(void)uX_default_ctor;

	uXYMVecfloat4(const uXYMVecfloat4&)uX_default_ctor;
	uXYMVecfloat4& uX_callconv operator=(const uXYMVecfloat4&)uX_default_ctor;

	uXYMVecfloat4(uXYMVecfloat4&&)uX_default_ctor;
	uXYMVecfloat4& uX_callconv operator=(uXYMVecfloat4&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uX_constexpr uXYMVecfloat4(const __m256 Inymm) : m256_ymm{Inymm} {}
	
	/**
     * Constructor initialization from 4 type float.
     *
     * @param Infloat_X Value to copy from.
	 * @param Infloat_Y Value to copy from.
	 * @param Infloat_Z Value to copy from.
	 * @param Infloat_W Value to copy from.
     */
	explicit uXYMVecfloat4(const float Infloat_X, const float Infloat_Y, const float Infloat_Z, const float Infloat_W);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXYMVecfloat4(uX_InReads(4) const float* Inpfloat);

	/** Type cast operator to convert to __m256. */
	operator __m256(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m256.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecfloat4& uX_callconv operator=(const __m256 Inymm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXYMVecfloat4& uX_callconv operator=(uX_InReads(4) const float* Inpfloat);

private:
	static const int m256_ymm_size = 32;
	static const int m256_f_p_lenght = 4;
	static const int m256_f_p_size = 16;
	static const int m256_f_size = 4;

}uXGC_ALIGN16 uXYMVecfloat4;

// double precision

typedef struct uXVC_ALIGN16 uXYMVecdouble1
{
	union
	{
		double              m256_d;
		__m256d				m256_ymmd;
	};

	uXYMVecdouble1(void)uX_default_ctor;
	~uXYMVecdouble1(void)uX_default_ctor;

	uXYMVecdouble1(const uXYMVecdouble1&)uX_default_ctor;
	uXYMVecdouble1& uX_callconv operator=(const uXYMVecdouble1&)uX_default_ctor;

	uXYMVecdouble1(uXYMVecdouble1&&)uX_default_ctor;
	uXYMVecdouble1& uX_callconv operator=(uXYMVecdouble1&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256d.
     *
     * @param Inymm Value to copy from.
     */
	uX_constexpr uXYMVecdouble1(const __m256d Inymmd) : m256_ymmd{Inymmd} {}

	/**
     * Constructor initialization from type double.
     *
     * @param Indouble Value to copy from.
     */
	explicit uXYMVecdouble1(const double Indouble);
	
	/** Type cast operator to convert to __m256d. */
	operator __m256d(void) const;

	/** Type cast operator to convert to double. */
	/*operator double(void) const;*/

	/**
     * Assignment operator to convert from type __m256d.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecdouble1& uX_callconv operator=(const __m256d Inymmd);

	/**
     * Assignment operator to convert from type double.
     *
     * @param Indouble Value to copy from.
     */
	uXYMVecdouble1& uX_callconv operator=(const double Indouble);

private:
	static const int m256_ymm_size = 32;
	static const int m256_d_size = 8;

}uXGC_ALIGN16 uXYMVecdouble1;

typedef struct uXVC_ALIGN16 uXYMVecdouble2
{
	union
	{
		double              m256_d[2];
		__m256d				m256_ymmd;
	};

	uXYMVecdouble2(void)uX_default_ctor;
	~uXYMVecdouble2(void)uX_default_ctor;

	uXYMVecdouble2(const uXYMVecdouble2&)uX_default_ctor;
	uXYMVecdouble2& uX_callconv operator=(const uXYMVecdouble2&)uX_default_ctor;

	uXYMVecdouble2(uXYMVecdouble2&&)uX_default_ctor;
	uXYMVecdouble2& uX_callconv operator=(uXYMVecdouble2&&)uX_default_ctor;

	/**
     * Constructor initialization from type __m256d.
     *
     * @param Inymm Value to copy from.
     */
	uX_constexpr uXYMVecdouble2(const __m256d Inymmd) : m256_ymmd{Inymmd} {}

	/**
     * Constructor initialization from 2 type double.
     *
     * @param Indouble_X Value to copy from.
     * @param Indouble_Y Value to copy from.
     */
	explicit uXYMVecdouble2(const double Indouble_X, const double Indouble_Y);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXYMVecdouble2(uX_InReads(2) const double* Inpdouble);

	/** Type cast operator to convert to __m256d. */
	operator __m256d(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m256d.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecdouble2& uX_callconv operator=(const __m256d Inymmd);
	
	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXYMVecdouble2& uX_callconv operator=(uX_InReads(2) const double* Inpdouble);

private:
	static const int m256_ymm_size = 32;
	static const int m256_d_p_lenght = 2;
	static const int m256_d_p_size = 16;
	static const int m256_d_size = 8;

}uXGC_ALIGN16 uXYMVecdouble2;

typedef struct uXVC_ALIGN16 uXYMVecdouble3
{
	union
	{
		double              m256_d[3];
		__m256d				m256_ymmd;
	};

	uXYMVecdouble3(void)uX_default_ctor;
	~uXYMVecdouble3(void)uX_default_ctor;

	uXYMVecdouble3(const uXYMVecdouble3&)uX_default_ctor;
	uXYMVecdouble3& uX_callconv operator=(const uXYMVecdouble3&)uX_default_ctor;

	uXYMVecdouble3(uXYMVecdouble3&&)uX_default_ctor;
	uXYMVecdouble3& uX_callconv operator=(uXYMVecdouble3&&)uX_default_ctor;
	
	/**
     * Constructor initialization from 2 type __m256d.
     *
     * @param Inymmd Value to copy from.
     */
	uX_constexpr uXYMVecdouble3(const __m256d Inymmd) : m256_ymmd{Inymmd} {}
	
	/**
     * Constructor initialization from 3 type double.
     *
     * @param Indouble_X Value to copy from.
	 * @param Indouble_Y Value to copy from.
	 * @param Indouble_Z Value to copy from.
     */
	explicit uXYMVecdouble3(const double Indouble_X, const double Indouble_Y, const double Indouble_Z);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXYMVecdouble3(uX_InReads(3) const double* Inpdouble);
	
	/** Type cast operator to convert to __m256d*. */
	operator __m256d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/
	
	/**
     * Assignment operator to convert from type __m256d*.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecdouble3& uX_callconv operator=(const __m256d Inymmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXYMVecdouble3& uX_callconv operator=(uX_InReads(3) const double* Inpdouble);

private:
	static const int m256_ymm_size = 32;
	static const int m256_d_p_lenght = 3;
	static const int m256_d_p_size = 24;
	static const int m256_d_size = 8;

}uXGC_ALIGN16 uXYMVecdouble3;

typedef struct uXVC_ALIGN16 uXYMVecdouble4
{
	union
	{
		double              m256_d[4];
		__m256d				m256_ymmd;
	};

	uXYMVecdouble4(void)uX_default_ctor;
	~uXYMVecdouble4(void)uX_default_ctor;

	uXYMVecdouble4(const uXYMVecdouble4&)uX_default_ctor;
	uXYMVecdouble4& uX_callconv operator=(const uXYMVecdouble4&)uX_default_ctor;

	uXYMVecdouble4(uXYMVecdouble4&&)uX_default_ctor;
	uXYMVecdouble4& uX_callconv operator=(uXYMVecdouble4&&)uX_default_ctor;

	/**
     * Constructor initialization from 2 type __m256d.
     *
     * @param Inymmd Value to copy from.
     */
	uX_constexpr uXYMVecdouble4(const __m256d Inymmd) : m256_ymmd{Inymmd} {}
	
	/**
     * Constructor initialization from 4 type double.
     *
     * @param Indouble_X Value to copy from.
	 * @param Indouble_Y Value to copy from.
	 * @param Indouble_Z Value to copy from.
	 * @param Indouble_W Value to copy from.
     */
	explicit uXYMVecdouble4(const double Indouble_X, const double Indouble_Y, const double Indouble_Z, const double Indouble_W);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXYMVecdouble4(uX_InReads(4) const double* Inpdouble);

	/** Type cast operator to convert to __m256d*. */
	operator __m256d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/
	
	/**
     * Assignment operator to convert from type __m256d*.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecdouble4& uX_callconv operator=(const __m256d Inymmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXYMVecdouble4& uX_callconv operator=(uX_InReads(4) const double* Inpdouble);

private:
	static const int m256_ymm_size = 32;
	static const int m256_d_p_lenght = 4;
	static const int m256_d_p_size = 32;
	static const int m256_d_size = 8;

}uXGC_ALIGN16 uXYMVecdouble4;

// MATRIX'S

typedef struct uXVC_ALIGN16 uXYMVecfloat3x3
{
	union
	{
		struct
		{
			float _11, _12, _13;
			float _21, _22, _23;
			float _31, _32, _33;
		};
		float               m256_f_m[3][3];
		float               m256_f_p[9];
		__m256				m256_ymm_r[2];
	};

	uXYMVecfloat3x3(void)uX_default_ctor;
	~uXYMVecfloat3x3(void)uX_default_ctor;

	uXYMVecfloat3x3(const uXYMVecfloat3x3&)uX_default_ctor;
	uXYMVecfloat3x3& uX_callconv operator=(const uXYMVecfloat3x3&)uX_default_ctor;

	uXYMVecfloat3x3(uXYMVecfloat3x3&&)uX_default_ctor;
	uXYMVecfloat3x3& uX_callconv operator=(uXYMVecfloat3x3&&)uX_default_ctor;

    /**
     * Constructor initialization from 3 type __m256.
     *
	 * @param Inymm_0 Value to copy from.
	 * @param Inymm_1 Value to copy from.
     */
	uX_constexpr uXYMVecfloat3x3(const __m256 Inymm_0, const __m256 Inymm_1) : m256_ymm_r{Inymm_0,Inymm_1} {}
	
	/**
     * Constructor initialization from type __m256*.
     *
     * @param Inpymm Value to copy from.
     */
	uX_constexpr uXYMVecfloat3x3(uX_InReads(2) const __m256* Inpymm) : m256_ymm_r{Inpymm[0],Inpymm[1]} {}
	
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
	explicit uXYMVecfloat3x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
							  const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, 
							  const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXYMVecfloat3x3(uX_InReads(9) const float* Inpfloat);

	/** Type cast operator to convert to __m256*. */
	operator __m256*(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m256*.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecfloat3x3& uX_callconv operator=(uX_InReads(2) const __m256* Inpymm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXYMVecfloat3x3& uX_callconv operator=(uX_InReads(9) const float* Inpfloat);

private:
	static const int m256_ymm_p_lenght = 2;
	static const int m256_ymm_p_size = 64;
	static const int m256_ymm_size = 32;
	static const int m256_row_lenght = 3;
	static const int m256_column_lenght = 3;
	static const int m256_f_p_lenght = 9;
	static const int m256_f_p_size = 36;
	static const int m256_f_size = 4;

}uXGC_ALIGN16 uXYMVecfloat3x3;

typedef struct uXVC_ALIGN16 uXYMVecfloat4x3
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
		float               m256_f_m[4][3];
		float               m256_f_p[12];
		__m256				m256_ymm_r[2];
	};

	uXYMVecfloat4x3(void)uX_default_ctor;
	~uXYMVecfloat4x3(void)uX_default_ctor;

	uXYMVecfloat4x3(const uXYMVecfloat4x3&)uX_default_ctor;
	uXYMVecfloat4x3& uX_callconv operator=(const uXYMVecfloat4x3&)uX_default_ctor;

	uXYMVecfloat4x3(uXYMVecfloat4x3&&)uX_default_ctor;
	uXYMVecfloat4x3& uX_callconv operator=(uXYMVecfloat4x3&&)uX_default_ctor;

    /**
     * Constructor initialization from 4 type __m256.
     *
	 * @param Inymm_0 Value to copy from.
	 * @param Inymm_1 Value to copy from.
     */
	uX_constexpr uXYMVecfloat4x3(const __m256 Inymm_0, const __m256 Inymm_1) : m256_ymm_r{Inymm_0,Inymm_1} {}
	
	/**
     * Constructor initialization from type __m256*.
     *
     * @param Inpymm Value to copy from.
     */
	uX_constexpr uXYMVecfloat4x3(uX_InReads(2) const __m256* Inpymm) : m256_ymm_r{Inpymm[0],Inpymm[1]} {}

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
	explicit uXYMVecfloat4x3(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2,
							  const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, 
							  const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, 
							  const float Infloat_W0, const float Infloat_W1, const float Infloat_W2);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXYMVecfloat4x3(uX_InReads(12) const float* Inpfloat);

	/** Type cast operator to convert to __m256*. */
	operator __m256*(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m256*.
     *
     * @param Inymm Value to copy from.
     */
	uXYMVecfloat4x3& uX_callconv operator=(uX_InReads(2) const __m256* Inpymm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXYMVecfloat4x3& uX_callconv operator=(uX_InReads(12) const float* Inpfloat);

private:
	static const int m256_ymm_p_lenght = 2;
	static const int m256_ymm_p_size = 64;
	static const int m256_ymm_size = 32;
	static const int m256_row_lenght = 4;
	static const int m256_column_lenght = 3;
	static const int m256_f_p_lenght = 12;
	static const int m256_f_p_size = 48;
	static const int m256_f_size = 4;

}uXGC_ALIGN16 uXYMVecfloat4x3;

typedef struct uXVC_ALIGN16 uXYMVecfloat4x4
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
		float               m256_f_m[4][4];
		float               m256_f_p[16];
		__m256				m256_ymm_r[2];
	};

	uXYMVecfloat4x4(void)uX_default_ctor;
	~uXYMVecfloat4x4(void)uX_default_ctor;

	uXYMVecfloat4x4(const uXYMVecfloat4x4&)uX_default_ctor;
	uXYMVecfloat4x4& uX_callconv operator=(const uXYMVecfloat4x4&)uX_default_ctor;

	uXYMVecfloat4x4(uXYMVecfloat4x4&&)uX_default_ctor;
	uXYMVecfloat4x4& uX_callconv operator=(uXYMVecfloat4x4&&)uX_default_ctor;

    /**
     * Constructor initialization from 4 type __m256.
     *
	 * @param Inymm_0 Value to copy from.
	 * @param Inymm_1 Value to copy from.
	 * @param Inymm_2 Value to copy from.
	 * @param Inymm_3 Value to copy from.
     */
	uX_constexpr uXYMVecfloat4x4(const __m256 Inymm_0, const __m256 Inymm_1) : m256_ymm_r{Inymm_0,Inymm_1} {}
	
	/**
     * Constructor initialization from type __m256*.
     *
     * @param Inpymm Value to copy from.
     */
	uX_constexpr uXYMVecfloat4x4(uX_InReads(2) const __m256* Inpymm) : m256_ymm_r{Inpymm[0],Inpymm[1]} {}

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
	explicit uXYMVecfloat4x4(const float Infloat_X0, const float Infloat_X1, const float Infloat_X2, const float Infloat_X3,
							  const float Infloat_Y0, const float Infloat_Y1, const float Infloat_Y2, const float Infloat_Y3,
							  const float Infloat_Z0, const float Infloat_Z1, const float Infloat_Z2, const float Infloat_Z3,
							  const float Infloat_W0, const float Infloat_W1, const float Infloat_W2, const float Infloat_W3);

	/**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	explicit uXYMVecfloat4x4(uX_InReads(16) const float* Inpfloat);

	/** Type cast operator to convert to __m256*. */
	operator __m256*(void) const;

	/** Type cast operator to convert to float*. */
	/*operator float*(void) const;*/

	/**
     * Assignment operator to convert from type __m256*.
     *
     * @param Inpymm Value to copy from.
     */
	uXYMVecfloat4x4& uX_callconv operator=(uX_InReads(2) const __m256* Inpymm);

	/**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat Value to copy from.
     */
	uXYMVecfloat4x4& uX_callconv operator=(uX_InReads(16) const float* Inpfloat);

private:
	static const int m256_ymm_p_lenght = 2;
	static const int m256_ymm_p_size = 64;
	static const int m256_ymm_size = 32;
	static const int m256_row_lenght = 4;
	static const int m256_column_lenght = 4;
	static const int m256_f_p_lenght = 16;
	static const int m256_f_p_size = 64;
	static const int m256_f_size = 4;

}uXGC_ALIGN16 uXYMVecfloat4x4;

typedef struct uXVC_ALIGN16 uXYMVecdouble3x3
{
	union
	{
		struct
		{
			double _11, _12, _13;
			double _21, _22, _23;
			double _31, _32, _33;
		};
		double               m256_d_m[3][3];
		double               m256_d_p[9];
		__m256d				m256_ymmd_r[3];
	};

	uXYMVecdouble3x3(void)uX_default_ctor;
	~uXYMVecdouble3x3(void)uX_default_ctor;

	uXYMVecdouble3x3(const uXYMVecdouble3x3&)uX_default_ctor;
	uXYMVecdouble3x3& uX_callconv operator=(const uXYMVecdouble3x3&)uX_default_ctor;

	uXYMVecdouble3x3(uXYMVecdouble3x3&&)uX_default_ctor;
	uXYMVecdouble3x3& uX_callconv operator=(uXYMVecdouble3x3&&)uX_default_ctor;

    /**
     * Constructor initialization from 3 type __m256d.
     *
	 * @param Inymmd_0 Value to copy from.
	 * @param Inymmd_1 Value to copy from.
	 * @param Inymmd_2 Value to copy from.
	 * @param Inymmd_3 Value to copy from.
	 * @param Inymmd_4 Value to copy from.
	 * @param Inymmd_5 Value to copy from.
     */
	uX_constexpr uXYMVecdouble3x3(const __m256d Inymmd_0, const __m256d Inymmd_1, const __m256d Inymmd_2) : m256_ymmd_r{Inymmd_0,Inymmd_1,Inymmd_2} {}
	
	/**
     * Constructor initialization from type __m256d*.
     *
     * @param Inpymmd Value to copy from.
     */
	uX_constexpr uXYMVecdouble3x3(uX_InReads(3) const __m256d* Inpymmd) : m256_ymmd_r{Inpymmd[0],Inpymmd[1],Inpymmd[2]} {}
	
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
	explicit uXYMVecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
							   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, 
							   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXYMVecdouble3x3(uX_InReads(9) const double* Inpdouble);

	/** Type cast operator to convert to __m256d*. */
	operator __m256d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m256d*.
     *
     * @param Inpymmd Value to copy from.
     */
	uXYMVecdouble3x3& uX_callconv operator=(uX_InReads(3) const __m256d* Inpymmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXYMVecdouble3x3& uX_callconv operator=(uX_InReads(9) const double* Inpdouble);

private:
	static const int m256_ymmd_p_lenght = 3;
	static const int m256_ymmd_p_size = 96;
	static const int m256_ymmd_size = 32;
	static const int m256_row_lenght = 3;
	static const int m256_column_lenght = 3;
	static const int m256_d_p_lenght = 9;
	static const int m256_d_p_size = 72;
	static const int m256_d_size = 8;

}uXGC_ALIGN16 uXYMVecdouble3x3;

typedef struct uXVC_ALIGN16 uXYMVecdouble4x3
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
		double               m256_d_m[4][3];
		double               m256_d_p[12];
		__m256d				m256_ymmd_r[3];
	};

	uXYMVecdouble4x3(void)uX_default_ctor;
	~uXYMVecdouble4x3(void)uX_default_ctor;

	uXYMVecdouble4x3(const uXYMVecdouble4x3&)uX_default_ctor;
	uXYMVecdouble4x3& uX_callconv operator=(const uXYMVecdouble4x3&)uX_default_ctor;

	uXYMVecdouble4x3(uXYMVecdouble4x3&&)uX_default_ctor;
	uXYMVecdouble4x3& uX_callconv operator=(uXYMVecdouble4x3&&)uX_default_ctor;

    /**
     * Constructor initialization from 8 type __m256d.
     *
	 * @param Inymmd_0 Value to copy from.
	 * @param Inymmd_1 Value to copy from.
	 * @param Inymmd_2 Value to copy from.
	 * @param Inymmd_3 Value to copy from.
	 * @param Inymmd_4 Value to copy from.
	 * @param Inymmd_5 Value to copy from.
	 * @param Inymmd_6 Value to copy from.
	 * @param Inymmd_7 Value to copy from.
     */
	uX_constexpr uXYMVecdouble4x3(const __m256d Inymmd_0, const __m256d Inymmd_1, 
									const __m256d Inymmd_2) : m256_ymmd_r{Inymmd_0,Inymmd_1,Inymmd_2} {}
	
	/**
     * Constructor initialization from type __m256d*.
     *
     * @param Inpymmd Value to copy from.
     */
	uX_constexpr uXYMVecdouble4x3(uX_InReads(3) const __m256d* Inpymmd) : m256_ymmd_r{Inpymmd[0],Inpymmd[1],Inpymmd[2]} {}

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
	explicit uXYMVecdouble4x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
							   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, 
							   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, 
							   const double Indouble_W0, const double Indouble_W1, const double Indouble_W2);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXYMVecdouble4x3(uX_InReads(12) const double* Inpdouble);

	/** Type cast operator to convert to __m256d*. */
	operator __m256d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m256d*.
     *
     * @param Inpymmd Value to copy from.
     */
	uXYMVecdouble4x3& uX_callconv operator=(uX_InReads(3) const __m256d* Inpymmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXYMVecdouble4x3& uX_callconv operator=(uX_InReads(12) const double* Inpdouble);

private:
	static const int m256_ymmd_p_lenght = 3;
	static const int m256_ymmd_p_size = 96;
	static const int m256_ymmd_size = 32;
	static const int m256_row_lenght = 4;
	static const int m256_column_lenght = 3;
	static const int m256_d_p_lenght = 12;
	static const int m256_d_p_size = 96;
	static const int m256_d_size = 8;

}uXGC_ALIGN16 uXYMVecdouble4x3;

typedef struct uXVC_ALIGN16 uXYMVecdouble4x4
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
		double               m256_d_m[4][4];
		double               m256_d_p[16];
		__m256d				m256_ymmd_r[4];
	};

	uXYMVecdouble4x4(void)uX_default_ctor;
	~uXYMVecdouble4x4(void)uX_default_ctor;

	uXYMVecdouble4x4(const uXYMVecdouble4x4&)uX_default_ctor;
	uXYMVecdouble4x4& uX_callconv operator=(const uXYMVecdouble4x4&)uX_default_ctor;

	uXYMVecdouble4x4(uXYMVecdouble4x4&&)uX_default_ctor;
	uXYMVecdouble4x4& uX_callconv operator=(uXYMVecdouble4x4&&)uX_default_ctor;

    /**
     * Constructor initialization from 4 type __m256d.
     *
	 * @param Inymmd_0 Value to copy from.
	 * @param Inymmd_1 Value to copy from.
	 * @param Inymmd_2 Value to copy from.
	 * @param Inymmd_3 Value to copy from.
     */
	uX_constexpr uXYMVecdouble4x4(const __m256d Inymmd_0, const __m256d Inymmd_1, 
									const __m256d Inymmd_2, const __m256d Inymmd_3) : m256_ymmd_r{Inymmd_0,Inymmd_1,Inymmd_2,Inymmd_3} {}
	
	/**
     * Constructor initialization from type __m256d*.
     *
     * @param Inpymmd Value to copy from.
     */
	uX_constexpr uXYMVecdouble4x4(uX_InReads(4) const __m256d* Inpymmd) : m256_ymmd_r{Inpymmd[0],Inpymmd[1],Inpymmd[2],Inpymmd[3]} {}

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
	explicit uXYMVecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
							   const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
							   const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
							   const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3);

	/**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	explicit uXYMVecdouble4x4(uX_InReads(16) const double* Inpdouble);

	/** Type cast operator to convert to __m256d*. */
	operator __m256d*(void) const;

	/** Type cast operator to convert to double*. */
	/*operator double*(void) const;*/

	/**
     * Assignment operator to convert from type __m256d*.
     *
     * @param Inpymmd Value to copy from.
     */
	uXYMVecdouble4x4& uX_callconv operator=(uX_InReads(4) const __m256d* Inpymmd);

	/**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble Value to copy from.
     */
	uXYMVecdouble4x4& uX_callconv operator=(uX_InReads(16) const double* Inpdouble);

private:
	static const int m256_ymmd_p_lenght = 4;
	static const int m256_ymmd_p_size = 128;
	static const int m256_ymmd_size = 32;
	static const int m256_row_lenght = 4;
	static const int m256_column_lenght = 4;
	static const int m256_d_p_lenght = 16;
	static const int m256_d_p_size = 128;
	static const int m256_d_size = 8;

}uXGC_ALIGN16 uXYMVecdouble4x4;

//uX_PACK_POP

uX_EXTERNC_END

#endif //SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_AVX256_STRUCTS_H
