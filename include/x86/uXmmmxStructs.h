
#pragma once

#ifndef uXm_MMX_STRUCTS_H
#define uXm_MMX_STRUCTS_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef _MMINTRIN_H_INCLUDED
#include <mmintrin.h>
#endif  /* _MMINTRIN_H_INCLUDED */

uXm_EXTERNCC_BEGIN

uXm_PACK_PUSH8

struct __uXm64ib;
struct __uXm64iw;
struct __uXm64id;
struct __uXm64iq;
struct __uXm64i;
struct __uXm64f;
struct __uXm64;

typedef struct uXmVC_VEC_INTRINTYPE8 __uXm64ib
{
	union
	{
		unsigned __int8     m128_ub[8];
		__int8              m64_ib[8];
	};

	/** Default constructor (no initialization). */
	__uXm64ib(void)uXm_CTOR_DEFAULT;

	/** Default destructor. */
	~__uXm64ib(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm64iw.
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm64ib(const __uXm64iw& InXmmiw);
	
    /**
     * Constructor initialization from type __uXm64id.
     *
     * @param InXmmid Value to copy from.
     */
	__uXm64ib(const __uXm64id& InXmmid);
	
    /**
     * Constructor initialization from type __uXm64iq.
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm64ib(const __uXm64iq& InXmmiq);
	
    /**
     * Constructor initialization from type __uXm64i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64ib(const __uXm64i& InXmmi);
	
    /**
     * Constructor initialization from type __m64.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64ib(const __m64& InXmm);
	
    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64ib(const __int8* Inint8);
	
    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64ib(const unsigned __int8* Inint8);

	/** Type cast operator to convert to __uXm64iw. */
	operator __uXm64iw(void) const;

	/** Type cast operator to convert to __uXm64id. */
	operator __uXm64id(void) const;

	/** Type cast operator to convert to __uXm64iq. */
	operator __uXm64iq(void) const;

	/** Type cast operator to convert to __uXm64i. */
	operator __uXm64i(void) const;

	/** Type cast operator to convert to __m64. */
	operator __m64(void) const;

	/** Type cast operator to convert to __int8*. */
	operator __int8*(void) const;

	/** Type cast operator to convert to unsigned __int8*. */
	operator unsigned __int8*(void) const;
	
    /**
     * Assignment operator to convert from type __uXm64iw. 
     *
     * @param InXmmiw Value to copy from.
     */
    __uXm64ib& operator=(const __uXm64iw& InXmmiw);
	
    /**
     * Assignment operator to convert from type __uXm64id. 
     *
     * @param InXmmid Value to copy from.
     */
    __uXm64ib& operator=(const __uXm64id& InXmmid);
	
    /**
     * Assignment operator to convert from type __uXm64iq. 
     *
     * @param InXmmiq Value to copy from.
     */
    __uXm64ib& operator=(const __uXm64iq& InXmmiq);
	
    /**
     * Assignment operator to convert from type __uXm64i. 
     *
     * @param InXmmi Value to copy from.
     */
    __uXm64ib& operator=(const __uXm64i& InXmmi);
	
    /**
     * Assignment operator to convert from type __m64. 
     *
     * @param InXmmi Value to copy from.
     */
    __uXm64ib& operator=(const __m64& InXmm);
	
    /**
     * Assignment operator to convert from type __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
    __uXm64ib& operator=(const __int8* Inint8);
	
    /**
     * Assignment operator to convert from type unsigned __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
    __uXm64ib& operator=(const unsigned __int8* Inint8);
	
}uXmGC_VEC_INTRINTYPE8 __uXm64ib;

typedef struct uXmVC_VEC_INTRINTYPE8 __uXm64iw
{
	union
	{
		unsigned __int16    m64_uw[4];
		__int16             m64_iw[4];
	};

	__uXm64iw(void)uXm_CTOR_DEFAULT;
	~__uXm64iw(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm64ib.
     *
     * @param InXmmib Value to copy from.
     */
	__uXm64iw(const __uXm64ib& InXmmib);
	
    /**
     * Constructor initialization from type __uXm64id.
     *
     * @param InXmmid Value to copy from.
     */
	__uXm64iw(const __uXm64id& InXmmid);
	
    /**
     * Constructor initialization from type __uXm64iq.
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm64iw(const __uXm64iq& InXmmiq);
	
    /**
     * Constructor initialization from type __uXm64i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64iw(const __uXm64i& InXmmi);
	
    /**
     * Constructor initialization from type __m64.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64iw(const __m64& InXmmi);
	
    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64iw(const __int16* Inint16);
	
    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64iw(const unsigned __int16* Inint16);

	/** Type cast operator to convert to __uXm64ib. */
	operator __uXm64ib(void) const;

	/** Type cast operator to convert to __uXm64id. */
	operator __uXm64id(void) const;

	/** Type cast operator to convert to __uXm64iq. */
	operator __uXm64iq(void) const;

	/** Type cast operator to convert to __uXm64i. */
	operator __uXm64i(void) const;

	/** Type cast operator to convert to __m64. */
	operator __m64(void) const;

	/** Type cast operator to convert to __int16*. */
	operator __int16*(void) const;

	/** Type cast operator to convert to unsigned __int16*. */
	operator unsigned __int16*(void) const;
	
    /**
     * Assignment operator to convert from type __uXm64ib. 
     *
     * @param InXmmib Value to copy from.
     */
	__uXm64iw& operator=(const __uXm64ib& InXmmib);
	
    /**
     * Assignment operator to convert from type __uXm64id. 
     *
     * @param InXmmid Value to copy from.
     */
	__uXm64iw& operator=(const __uXm64id& InXmmid);
	
    /**
     * Assignment operator to convert from type __uXm64iq. 
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm64iw& operator=(const __uXm64iq& InXmmiq);
	
    /**
     * Assignment operator to convert from type __uXm64i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64iw& operator=(const __uXm64i& InXmmi);
	
    /**
     * Assignment operator to convert from type __m64. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64iw& operator=(const __m64& InXmmi);
	
    /**
     * Assignment operator to convert from type __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64iw& operator=(const __int16* Inint16);
	
    /**
     * Assignment operator to convert from type unsigned __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64iw& operator=(const unsigned __int16* Inint16);
	
}uXmGC_VEC_INTRINTYPE8 __uXm64iw;

typedef struct uXmVC_VEC_INTRINTYPE8 __uXm64id
{
	union
	{
		unsigned __int32    m64_ud[2];
		__int32             m64_id[2];
	};
	
	__uXm64id(void)uXm_CTOR_DEFAULT;
	~__uXm64id(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm64ib.
     *
     * @param InXmmib Value to copy from.
     */
	__uXm64id(const __uXm64ib& InXmmib);
	
    /**
     * Constructor initialization from type __uXm64iw.
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm64id(const __uXm64iw& InXmmiw);
	
    /**
     * Constructor initialization from type __uXm64iq.
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm64id(const __uXm64iq& InXmmiq);
	
    /**
     * Constructor initialization from type __uXm64i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64id(const __uXm64i& InXmmi);
	
    /**
     * Constructor initialization from type __m64.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64id(const __m64& InXmmi);
	
    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64id(const __int32* Inint32);
	
    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64id(const unsigned __int32* Inint32);

	/** Type cast operator to convert to __uXm64ib. */
	operator __uXm64ib(void) const;

	/** Type cast operator to convert to __uXm64iw. */
	operator __uXm64iw(void) const;

	/** Type cast operator to convert to __uXm64iq. */
	operator __uXm64iq(void) const;

	/** Type cast operator to convert to __uXm64i. */
	operator __uXm64i(void) const;

	/** Type cast operator to convert to __m64. */
	operator __m64(void) const;

	/** Type cast operator to convert to __int32*. */
	operator __int32*(void) const;

	/** Type cast operator to convert to unsigned __int32*. */
	operator unsigned __int32*(void) const;
	
    /**
     * Assignment operator to convert from type __uXm64ib. 
     *
     * @param InXmmib Value to copy from.
     */
	__uXm64id& operator=(const __uXm64ib& InXmmib);
	
    /**
     * Assignment operator to convert from type __uXm64iw. 
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm64id& operator=(const __uXm64iw& InXmmiw);
	
    /**
     * Assignment operator to convert from type __uXm64iq. 
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm64id& operator=(const __uXm64iq& InXmmiq);
	
    /**
     * Assignment operator to convert from type __uXm64i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64id& operator=(const __uXm64i& InXmmi);
	
    /**
     * Assignment operator to convert from type __m64. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64id& operator=(const __m64& InXmmi);
	
    /**
     * Assignment operator to convert from type __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64id& operator=(const __int32* Inint32);
	
    /**
     * Assignment operator to convert from type unsigned __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64id& operator=(const unsigned __int32* Inint32);
	
}uXmGC_VEC_INTRINTYPE8 __uXm64id;

typedef struct uXmVC_VEC_INTRINTYPE8 __uXm64iq
{
	union
	{
		unsigned __int64    m64_uq;
		__int64             m64_iq;
	};
	
	__uXm64iq(void)uXm_CTOR_DEFAULT;
	~__uXm64iq(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm64ib.
     *
     * @param InXmmib Value to copy from.
     */
	__uXm64iq(const __uXm64ib& InXmmib);
	
    /**
     * Constructor initialization from type __uXm64iw.
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm64iq(const __uXm64iw& InXmmiw);
	
    /**
     * Constructor initialization from type __uXm64id.
     *
     * @param InXmmid Value to copy from.
     */
	__uXm64iq(const __uXm64id& InXmmid);
	
    /**
     * Constructor initialization from type __uXm64i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64iq(const __uXm64i& InXmmi);
	
    /**
     * Constructor initialization from type __m64.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64iq(const __m64& InXmmi);
	
    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64iq(const __int64* Inint64);
	
    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64iq(const unsigned __int64* Inint64);

	/** Type cast operator to convert to __uXm64ib. */
	operator __uXm64ib(void) const;

	/** Type cast operator to convert to __uXm64iw. */
	operator __uXm64iw(void) const;

	/** Type cast operator to convert to __uXm64id. */
	operator __uXm64id(void) const;

	/** Type cast operator to convert to __uXm64i. */
	operator __uXm64i(void) const;

	/** Type cast operator to convert to __m64. */
	operator __m64(void) const;

	/** Type cast operator to convert to __int64*. */
	operator __int64*(void) const;

	/** Type cast operator to convert to unsigned __int64*. */
	operator unsigned __int64*(void) const;
	
    /**
     * Assignment operator to convert from type __uXm64ib. 
     *
     * @param InXmmib Value to copy from.
     */
	__uXm64iq& operator=(const __uXm64ib& InXmmib);
	
    /**
     * Assignment operator to convert from type __uXm64iw. 
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm64iq& operator=(const __uXm64iw& InXmmiw);
	
    /**
     * Assignment operator to convert from type __uXm64id. 
     *
     * @param InXmmid Value to copy from.
     */
	__uXm64iq& operator=(const __uXm64id& InXmmid);
	
    /**
     * Assignment operator to convert from type __uXm64i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64iq& operator=(const __uXm64i& InXmmi);
	
    /**
     * Assignment operator to convert from type __m64. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64iq& operator=(const __m64& InXmmi);
	
    /**
     * Assignment operator to convert from type __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64iq& operator=(const __int64* Inint64);
	
    /**
     * Assignment operator to convert from type unsigned __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64iq& operator=(const unsigned __int64* Inint64);
	
}uXmGC_VEC_INTRINTYPE8 __uXm64iq;

typedef struct uXmVC_VEC_INTRINTYPE8 __uXm64i
{
	union
	{
		unsigned __int64    m64_uq;
		__int64             m64_iq;
		__int8              m64_ib[8];
		unsigned __int8     m64_ub[8];
		__int16             m64_iw[4];
		unsigned __int16    m64_uw[4];
		__int32             m64_id[2];
		unsigned __int32    m64_ud[2];
	};
	
	__uXm64i(void)uXm_CTOR_DEFAULT;
	~__uXm64i(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm64ib.
     *
     * @param InXmmib Value to copy from.
     */
	__uXm64i(const __uXm64ib& InXmmib);
	
    /**
     * Constructor initialization from type __uXm64iw.
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm64i(const __uXm64iw& InXmmiw);
	
    /**
     * Constructor initialization from type __uXm64id.
     *
     * @param InXmmid Value to copy from.
     */
	__uXm64i(const __uXm64id& InXmmid);
	
    /**
     * Constructor initialization from type __uXm64iq.
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm64i(const __uXm64iq& InXmmiq);
	
    /**
     * Constructor initialization from type __m64.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64i(const __m64& InXmmi);
	
    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64i(const __int8* Inint8);
	
    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64i(const unsigned __int8* Inint8);
	
    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64i(const __int16* Inint16);
	
    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64i(const unsigned __int16* Inint16);

    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64i(const __int32* Inint32);
	
    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64i(const unsigned __int32* Inint32);

    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64i(const __int64* Inint64);
	
    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64i(const unsigned __int64* Inint64);

	/** Type cast operator to convert to __uXm64ib. */
	operator __uXm64ib(void) const;

	/** Type cast operator to convert to __uXm64iw. */
	operator __uXm64iw(void) const;

	/** Type cast operator to convert to __uXm64id. */
	operator __uXm64id(void) const;

	/** Type cast operator to convert to __uXm64iq. */
	operator __uXm64iq(void) const;

	/** Type cast operator to convert to __m64. */
	operator __m64(void) const;

	/** Type cast operator to convert to __int8*. */
	operator __int8*(void) const;

	/** Type cast operator to convert to unsigned __int8*. */
	operator unsigned __int8*(void) const;

	/** Type cast operator to convert to __int16*. */
	operator __int16*(void) const;

	/** Type cast operator to convert to unsigned __int16*. */
	operator unsigned __int16*(void) const;

	/** Type cast operator to convert to __int32*. */
	operator __int32*(void) const;

	/** Type cast operator to convert to unsigned __int32*. */
	operator unsigned __int32*(void) const;

	/** Type cast operator to convert to __int64*. */
	operator __int64*(void) const;

	/** Type cast operator to convert to unsigned __int64*. */
	operator unsigned __int64*(void) const;

    /**
     * Assignment operator to convert from type __uXm64ib. 
     *
     * @param InXmmib Value to copy from.
     */
	__uXm64i& operator=(const __uXm64ib& InXmmib);
	
    /**
     * Assignment operator to convert from type __uXm64iw. 
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm64i& operator=(const __uXm64iw& InXmmiw);
	
    /**
     * Assignment operator to convert from type __uXm64id. 
     *
     * @param InXmmid Value to copy from.
     */
	__uXm64i& operator=(const __uXm64id& InXmmid);
	
    /**
     * Assignment operator to convert from type __uXm64iq. 
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm64i& operator=(const __uXm64iq& InXmmiq);
	
    /**
     * Assignment operator to convert from type __m64. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm64i& operator=(const __m64& InXmmi);
	
    /**
     * Assignment operator to convert from type __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64i& operator=(const __int8* Inint8);
	
    /**
     * Assignment operator to convert from type unsigned __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64i& operator=(const unsigned __int8* Inint8);
	
    /**
     * Assignment operator to convert from type __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64i& operator=(const __int16* Inint16);
	
    /**
     * Assignment operator to convert from type unsigned __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64i& operator=(const unsigned __int16* Inint16);
	
    /**
     * Assignment operator to convert from type __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64i& operator=(const __int32* Inint32);
	
    /**
     * Assignment operator to convert from type unsigned __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64i& operator=(const unsigned __int32* Inint32);
	
    /**
     * Assignment operator to convert from type __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64i& operator=(const __int64* Inint64);
	
    /**
     * Assignment operator to convert from type unsigned __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64i& operator=(const unsigned __int64* Inint64);
	
}uXmGC_VEC_INTRINTYPE8 __uXm64i;

typedef struct uXmVC_VEC_INTRINTYPE8 __uXm64f
{
	float               m64_f[2];
	
	__uXm64f(void)uXm_CTOR_DEFAULT;
	~__uXm64f(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm64.
     *
     * @param InXmm Value to copy from.
     */
	__uXm64f(const __uXm64& InXmm);
	
    /**
     * Constructor initialization from type __m64.
     *
     * @param InXmm Value to copy from.
     */
	__uXm64f(const __m64& InXmm);
	
    /**
     * Constructor initialization from type float*.
     *
     * @param Infloat Value to copy from.
     */
	__uXm64f(const float* Infloat);
	
	/** Type cast operator to convert to __uXm64. */
	operator __uXm64(void) const;

	/** Type cast operator to convert to __m64. */
	operator __m64(void) const;

	/** Type cast operator to convert to float*. */
	operator float*(void) const;

    /**
     * Assignment operator to convert from type __uXm64. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm64f& operator=(const __uXm64& InXmm);
	
    /**
     * Assignment operator to convert from type __m64. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm64f& operator=(const __m64& InXmm);
	
    /**
     * Assignment operator to convert from type float*. 
     *
     * @param Infloat Value to copy from.
     */
	__uXm64f& operator=(const float* Infloat);
	
}uXmGC_VEC_INTRINTYPE8 __uXm64f;

typedef struct uXmVC_VEC_INTRINTYPE8 __uXm64
{
	union
	{
		unsigned __int64    m64_uq;
		__int64             m64_iq;
		float               m64_f[2];
		unsigned __int32    m64_ud[2];
		__int32             m64_id[2];
		unsigned __int16    m64_uw[4];
		__int16             m64_iw[4];
		unsigned __int8     m64_ub[8];
		__int8              m64_ib[8];
	};
	
	__uXm64(void)uXm_CTOR_DEFAULT;
	~__uXm64(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm64f.
     *
     * @param InXmmf Value to copy from.
     */
	__uXm64(const __uXm64f& InXmmf);
	
    /**
     * Constructor initialization from type __m64.
     *
     * @param InXmm Value to copy from.
     */
	__uXm64(const __m64& InXmm);
	
    /**
     * Constructor initialization from type float*.
     *
     * @param Infloat Value to copy from.
     */
	__uXm64(const float* Infloat);

    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64(const __int8* Inint8);
	
    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64(const unsigned __int8* Inint8);

    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64(const __int16* Inint16);
	
    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64(const unsigned __int16* Inint16);
	
    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64(const __int32* Inint32);
	
    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64(const unsigned __int32* Inint32);

    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64(const __int64* Inint64);
	
    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64(const unsigned __int64* Inint64);

	/** Type cast operator to convert to __m64. */
	operator __m64(void) const;

	/** Type cast operator to convert to float*. */
	operator float*(void) const;

	/** Type cast operator to convert to __int8*. */
	operator __int8*(void) const;

	/** Type cast operator to convert to unsigned __int8*. */
	operator unsigned __int8*(void) const;

	/** Type cast operator to convert to __int16*. */
	operator __int16*(void) const;

	/** Type cast operator to convert to unsigned __int16*. */
	operator unsigned __int16*(void) const;

	/** Type cast operator to convert to __int32*. */
	operator __int32*(void) const;

	/** Type cast operator to convert to unsigned __int32*. */
	operator unsigned __int32*(void) const;

	/** Type cast operator to convert to __int64*. */
	operator __int64*(void) const;

	/** Type cast operator to convert to unsigned __int64*. */
	operator unsigned __int64*(void) const;

    /**
     * Assignment operator to convert from type __uXm64f. 
     *
     * @param InXmmf Value to copy from.
     */
	__uXm64& operator=(const __uXm64f& InXmmf);
	
    /**
     * Assignment operator to convert from type __m64. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm64& operator=(const __m64& InXmm);
	
    /**
     * Assignment operator to convert from type float*. 
     *
     * @param Infloat Value to copy from.
     */
	__uXm64& operator=(const float* Infloat);
	
    /**
     * Assignment operator to convert from type __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64& operator=(const __int8* Inint8);
	
    /**
     * Assignment operator to convert from type unsigned __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm64& operator=(const unsigned __int8* Inint8);
	
    /**
     * Assignment operator to convert from type __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64& operator=(const __int16* Inint16);
	
    /**
     * Assignment operator to convert from type unsigned __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm64& operator=(const unsigned __int16* Inint16);
	
    /**
     * Assignment operator to convert from type __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64& operator=(const __int32* Inint32);
	
    /**
     * Assignment operator to convert from type unsigned __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm64& operator=(const unsigned __int32* Inint32);
	
    /**
     * Assignment operator to convert from type __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64& operator=(const __int64* Inint64);
	
    /**
     * Assignment operator to convert from type unsigned __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm64& operator=(const unsigned __int64* Inint64);
	
}uXmGC_VEC_INTRINTYPE8 __uXm64;

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MMX_STRUCTS_H
