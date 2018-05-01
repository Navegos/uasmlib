
#pragma once

#ifndef uXm_SSE_STRUCTS_H
#define uXm_SSE_STRUCTS_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifndef _INCLUDED_MM2
#include <xmmintrin.h>
#endif  /* _INCLUDED_MM2 */

#ifndef _INCLUDED_EMM
#include <emmintrin.h>
#endif  /* _INCLUDED_EMM */

#ifndef uXm_MMX_STRUCTS_H
#include "../MMX/uXmMMXStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

#ifdef uXm_SSE
struct __uXm128f;
struct __uXm128;
#ifdef uXm_SSE2
struct __uXm128ib;
struct __uXm128iw;
struct __uXm128id;
struct __uXm128iq;
struct __uXm128i;
struct __uXm128fi;
struct __uXm128d;
struct __uXm128fd;
struct __uXm128di;
struct __uXm128fid;
#endif //SSE2
#endif //SSE

#ifdef uXm_SSE

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128f
{
	union
	{
		float               m128_f[4];
		__m128              m128;
		//__uXm128            Uxm128;
	};

	__uXm128f(void)uXm_CTOR_DEFAULT;
	~__uXm128f(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm128.
     *
     * @param InXmm Value to copy from.
     */
	__uXm128f(const __uXm128 InXmm);
	
    /**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	__uXm128f(const __m128 InXmm);
	
    /**
     * Constructor initialization from type float*.
     *
     * @param Infloat Value to copy from.
     */
	__uXm128f(const float* Infloat);
	
	/** Type cast operator to convert to __uXm128. */
	operator __uXm128(void) const;

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	operator float*(void) const;

    /**
     * Assignment operator to convert from type __uXm128. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm128f& operator=(const __uXm128 InXmm);
	
    /**
     * Assignment operator to convert from type __m128. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm128f& operator=(const __m128 InXmm);
	
    /**
     * Assignment operator to convert from type float*. 
     *
     * @param Infloat Value to copy from.
     */
	__uXm128f& operator=(const float* Infloat);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128f;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128
{
	union
	{
		float               m128_f[4];
		__int8              m128_ib[16];
		unsigned __int8     m128_ub[16];
		__int16             m128_iw[8];
		unsigned __int16    m128_uw[8];
		__int32             m128_id[4];
		unsigned __int32    m128_ud[4];
		__int64             m128_iq[2];
		unsigned __int64    m128_uq[2];
		__m128              m128;
	};
	
	__uXm128(void)uXm_CTOR_DEFAULT;
	~__uXm128(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm128f.
     *
     * @param InXmmf Value to copy from.
     */
	__uXm128(const __uXm128f InXmmf);
	
    /**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	__uXm128(const __m128 InXmm);
	
    /**
     * Constructor initialization from type float*.
     *
     * @param Infloat Value to copy from.
     */
	__uXm128(const float* Infloat);

	/** Type cast operator to convert to __uXm128f. */
	operator __uXm128f(void) const;

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to float*. */
	operator float*(void) const;

    /**
     * Assignment operator to convert from type __uXm128f. 
     *
     * @param InXmmf Value to copy from.
     */
	__uXm128& operator=(const __uXm128f InXmmf);
	
    /**
     * Assignment operator to convert from type __m128. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm128& operator=(const __m128 InXmm);
	
    /**
     * Assignment operator to convert from type float*. 
     *
     * @param Infloat Value to copy from.
     */
	__uXm128& operator=(const float* Infloat);
	
    /**
	 * Extract a single element. Use store function if extracting more than one element.
	 * Operator [] can only read an element, not write.
     * @param index Value to vector element position index.
     */
	float operator[] (unsigned int index) const;

}uXmGC_VEC_INTRINTYPE16 __uXm128;

#ifdef uXm_SSE2

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128ib
{
	union
	{
		__int8              m128_ib[16];
		unsigned __int8     m128_ub[16];
	};

	/** Default constructor (no initialization). */
	__uXm128ib(void)uXm_CTOR_DEFAULT;

	/** Default destructor. */
	~__uXm128ib(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128ib(const __int8* Inint8);
	
    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128ib(const unsigned __int8* Inint8);

	/** Type cast operator to convert to __int8*. */
	operator __int8*(void) const;

	/** Type cast operator to convert to unsigned __int8*. */
	operator unsigned __int8*(void) const;
	
    /**
     * Assignment operator to convert from type __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
    __uXm128ib& operator=(const __int8* Inint8);
	
    /**
     * Assignment operator to convert from type unsigned __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
    __uXm128ib& operator=(const unsigned __int8* Inint8);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128ib;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128iw
{
	union
	{
		__int16             m128_iw[8];
		unsigned __int16    m128_uw[8];
	};

	__uXm128iw(void)uXm_CTOR_DEFAULT;
	~__uXm128iw(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128iw(const __int16* Inint16);
	
    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128iw(const unsigned __int16* Inint16);

	/** Type cast operator to convert to __int16*. */
	operator __int16*(void) const;

	/** Type cast operator to convert to unsigned __int16*. */
	operator unsigned __int16*(void) const;
	
    /**
     * Assignment operator to convert from type __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128iw& operator=(const __int16* Inint16);
	
    /**
     * Assignment operator to convert from type unsigned __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128iw& operator=(const unsigned __int16* Inint16);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128iw;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128id
{
	union
	{
		__int32             m128_id[4];
		unsigned __int32    m128_ud[4];
	};
	
	__uXm128id(void)uXm_CTOR_DEFAULT;
	~__uXm128id(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128id(const __int32* Inint32);
	
    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128id(const unsigned __int32* Inint32);

	/** Type cast operator to convert to __int32*. */
	operator __int32*(void) const;

	/** Type cast operator to convert to unsigned __int32*. */
	operator unsigned __int32*(void) const;
	
    /**
     * Assignment operator to convert from type __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128id& operator=(const __int32* Inint32);
	
    /**
     * Assignment operator to convert from type unsigned __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128id& operator=(const unsigned __int32* Inint32);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128id;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128iq
{
	union
	{
		__int64             m128_iq[2];
		unsigned __int64    m128_uq[2];
	};
	
	__uXm128iq(void)uXm_CTOR_DEFAULT;
	~__uXm128iq(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128iq(const __int64* Inint64);
	
    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128iq(const unsigned __int64* Inint64);

	/** Type cast operator to convert to __int64*. */
	operator __int64*(void) const;

	/** Type cast operator to convert to unsigned __int64*. */
	operator unsigned __int64*(void) const;
	
    /**
     * Assignment operator to convert from type __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128iq& operator=(const __int64* Inint64);
	
    /**
     * Assignment operator to convert from type unsigned __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128iq& operator=(const unsigned __int64* Inint64);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128iq;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128i
{
	union
	{
		__int8              m128_ib[16];
		unsigned __int8     m128_ub[16];
		__int16             m128_iw[8];
		unsigned __int16    m128_uw[8];
		__int32             m128_id[4];
		unsigned __int32    m128_ud[4];
		__int64             m128_iq[2];
		unsigned __int64    m128_uq[2];
	};
	
	__uXm128i(void)uXm_CTOR_DEFAULT;
	~__uXm128i(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm128ib.
     *
     * @param InXmmib Value to copy from.
     */
	__uXm128i(const __uXm128ib InXmmib);
	
    /**
     * Constructor initialization from type __uXm128iw.
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm128i(const __uXm128iw InXmmiw);
	
    /**
     * Constructor initialization from type __uXm128id.
     *
     * @param InXmmid Value to copy from.
     */
	__uXm128i(const __uXm128id InXmmid);
	
    /**
     * Constructor initialization from type __uXm128iq.
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm128i(const __uXm128iq InXmmiq);
	
    /**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128i(const __m128i InXmmi);
	
    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128i(const __int8* Inint8);
	
    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128i(const unsigned __int8* Inint8);
	
    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128i(const __int16* Inint16);
	
    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128i(const unsigned __int16* Inint16);

    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128i(const __int32* Inint32);
	
    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128i(const unsigned __int32* Inint32);

    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128i(const __int64* Inint64);
	
    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128i(const unsigned __int64* Inint64);

	/** Type cast operator to convert to __uXm128ib. */
	operator __uXm128ib(void) const;

	/** Type cast operator to convert to __uXm128iw. */
	operator __uXm128iw(void) const;

	/** Type cast operator to convert to __uXm128id. */
	operator __uXm128id(void) const;

	/** Type cast operator to convert to __uXm128iq. */
	operator __uXm128iq(void) const;

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

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
     * Assignment operator to convert from type __uXm128ib. 
     *
     * @param InXmmib Value to copy from.
     */
	__uXm128i& operator=(const __uXm128ib InXmmib);
	
    /**
     * Assignment operator to convert from type __uXm128iw. 
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm128i& operator=(const __uXm128iw InXmmiw);
	
    /**
     * Assignment operator to convert from type __uXm128id. 
     *
     * @param InXmmid Value to copy from.
     */
	__uXm128i& operator=(const __uXm128id InXmmid);
	
    /**
     * Assignment operator to convert from type __uXm128iq. 
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm128i& operator=(const __uXm128iq InXmmiq);
	
    /**
     * Assignment operator to convert from type __m128i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128i& operator=(const __m128i InXmmi);
	
    /**
     * Assignment operator to convert from type __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128i& operator=(const __int8* Inint8);
	
    /**
     * Assignment operator to convert from type unsigned __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128i& operator=(const unsigned __int8* Inint8);
	
    /**
     * Assignment operator to convert from type __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128i& operator=(const __int16* Inint16);
	
    /**
     * Assignment operator to convert from type unsigned __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128i& operator=(const unsigned __int16* Inint16);
	
    /**
     * Assignment operator to convert from type __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128i& operator=(const __int32* Inint32);
	
    /**
     * Assignment operator to convert from type unsigned __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128i& operator=(const unsigned __int32* Inint32);
	
    /**
     * Assignment operator to convert from type __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128i& operator=(const __int64* Inint64);
	
    /**
     * Assignment operator to convert from type unsigned __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128i& operator=(const unsigned __int64* Inint64);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128i;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128fi
{
	union
	{
		float               m128_f[4];
		__int8              m128_ib[16];
		unsigned __int8     m128_ub[16];
		__int16             m128_iw[8];
		unsigned __int16    m128_uw[8];
		__int32             m128_id[4];
		unsigned __int32    m128_ud[4];
		__int64             m128_iq[2];
		unsigned __int64    m128_uq[2];
	};
	
	__uXm128fi(void)uXm_CTOR_DEFAULT;
	~__uXm128fi(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm128ib.
     *
     * @param InXmmib Value to copy from.
     */
	__uXm128fi(const __uXm128ib InXmmib);
	
    /**
     * Constructor initialization from type __uXm128iw.
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm128fi(const __uXm128iw InXmmiw);
	
    /**
     * Constructor initialization from type __uXm128id.
     *
     * @param InXmmid Value to copy from.
     */
	__uXm128fi(const __uXm128id InXmmid);
	
    /**
     * Constructor initialization from type __uXm128iq.
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm128fi(const __uXm128iq InXmmiq);
	
    /**
     * Constructor initialization from type __uXm128i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128fi(const __uXm128i InXmmi);
	
    /**
     * Constructor initialization from type __uXm128f.
     *
     * @param InXmmf Value to copy from.
     */
	__uXm128fi(const __uXm128f InXmmf);
	
    /**
     * Constructor initialization from type __uXm128.
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fi(const __uXm128 InXmm);
	
    /**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fi(const __m128 InXmm);
	
    /**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128fi(const __m128i InXmmi);
	
    /**
     * Constructor initialization from type float*.
     *
     * @param Infloat Value to copy from.
     */
	__uXm128fi(const float* Infloat);
	
    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128fi(const __int8* Inint8);
	
    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128fi(const unsigned __int8* Inint8);

    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128fi(const __int16* Inint16);
	
    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128fi(const unsigned __int16* Inint16);
	
    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128fi(const __int32* Inint32);
	
    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128fi(const unsigned __int32* Inint32);

    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128fi(const __int64* Inint64);
	
    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128fi(const unsigned __int64* Inint64);

	/** Type cast operator to convert to __uXm128ib. */
	operator __uXm128ib(void) const;

	/** Type cast operator to convert to __uXm128iw. */
	operator __uXm128iw(void) const;

	/** Type cast operator to convert to __uXm128id. */
	operator __uXm128id(void) const;

	/** Type cast operator to convert to __uXm128iq. */
	operator __uXm128iq(void) const;

	/** Type cast operator to convert to __uXm128i. */
	operator __uXm128i(void) const;

	/** Type cast operator to convert to __uXm128f. */
	operator __uXm128f(void) const;

	/** Type cast operator to convert to __uXm128. */
	operator __uXm128(void) const;

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

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
     * Assignment operator to convert from type __uXm128ib. 
     *
     * @param InXmmib Value to copy from.
     */
	__uXm128fi& operator=(const __uXm128ib InXmmib);
	
    /**
     * Assignment operator to convert from type __uXm128iw. 
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm128fi& operator=(const __uXm128iw InXmmiw);
	
    /**
     * Assignment operator to convert from type __uXm128id. 
     *
     * @param InXmmid Value to copy from.
     */
	__uXm128fi& operator=(const __uXm128id InXmmid);
	
    /**
     * Assignment operator to convert from type __uXm128iq. 
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm128fi& operator=(const __uXm128iq InXmmiq);
	
    /**
     * Assignment operator to convert from type __uXm128i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128fi& operator=(const __uXm128i InXmmi);
	
    /**
     * Assignment operator to convert from type __uXm128f. 
     *
     * @param InXmmf Value to copy from.
     */
	__uXm128fi& operator=(const __uXm128f InXmmf);
	
    /**
     * Assignment operator to convert from type __uXm128. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fi& operator=(const __uXm128 InXmm);
	
    /**
     * Assignment operator to convert from type __m128. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fi& operator=(const __m128 InXmm);
	
    /**
     * Assignment operator to convert from type __m128i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128fi& operator=(const __m128i InXmmi);
	
    /**
     * Assignment operator to convert from type float*. 
     *
     * @param Infloat Value to copy from.
     */
	__uXm128fi& operator=(const float* Infloat);
	
    /**
     * Assignment operator to convert from type __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128fi& operator=(const __int8* Inint8);
	
    /**
     * Assignment operator to convert from type unsigned __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128fi& operator=(const unsigned __int8* Inint8);
	
    /**
     * Assignment operator to convert from type __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128fi& operator=(const __int16* Inint16);
	
    /**
     * Assignment operator to convert from type unsigned __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128fi& operator=(const unsigned __int16* Inint16);
	
    /**
     * Assignment operator to convert from type __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128fi& operator=(const __int32* Inint32);
	
    /**
     * Assignment operator to convert from type unsigned __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128fi& operator=(const unsigned __int32* Inint32);
	
    /**
     * Assignment operator to convert from type __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128fi& operator=(const __int64* Inint64);
	
    /**
     * Assignment operator to convert from type unsigned __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128fi& operator=(const unsigned __int64* Inint64);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128fi;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128d
{
	double              m128_d[2];

	__uXm128d(void)uXm_CTOR_DEFAULT;
	~__uXm128d(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __m128d.
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128d(const __m128d InXmmd);
	
    /**
     * Constructor initialization from type double*.
     *
     * @param Indouble Value to copy from.
     */
	__uXm128d(const double* Indouble);
	
	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

	/** Type cast operator to convert to double*. */
	operator double*(void) const;

    /**
     * Assignment operator to convert from type __m128d. 
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128d& operator=(const __m128d InXmmd);
	
    /**
     * Assignment operator to convert from type double*. 
     *
     * @param Indouble Value to copy from.
     */
	__uXm128d& operator=(const double* Indouble);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128d;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128fd
{
	union
	{
		float               m128_f[4];
		double              m128_d[2];
	};
	
	__uXm128fd(void)uXm_CTOR_DEFAULT;
	~__uXm128fd(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm128f.
     *
     * @param InXmmf Value to copy from.
     */
	__uXm128fd(const __uXm128f InXmmf);
	
    /**
     * Constructor initialization from type __uXm128.
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fd(const __uXm128 InXmm);
	
    /**
     * Constructor initialization from type __uXm128d.
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fd(const __uXm128d InXmmd);
	
    /**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fd(const __m128 InXmm);
	
    /**
     * Constructor initialization from type __m128d.
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fd(const __m128d InXmmd);
	
    /**
     * Constructor initialization from type float*.
     *
     * @param Infloat Value to copy from.
     */
	__uXm128fd(const float* Infloat);
	
    /**
     * Constructor initialization from type unsigned double*.
     *
     * @param Indouble Value to copy from.
     */
	__uXm128fd(const double* Indouble);

	/** Type cast operator to convert to __uXm128f. */
	operator __uXm128f(void) const;

	/** Type cast operator to convert to __uXm128. */
	operator __uXm128(void) const;

	/** Type cast operator to convert to __uXm128d. */
	operator __uXm128d(void) const;

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

	/** Type cast operator to convert to float*. */
	operator float*(void) const;

	/** Type cast operator to convert to unsigned double*. */
	operator double*(void) const;
	
    /**
     * Assignment operator to convert from type __uXm128f. 
     *
     * @param InXmmf Value to copy from.
     */
	__uXm128fd& operator=(const __uXm128f InXmmf);
	
    /**
     * Assignment operator to convert from type __uXm128. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fd& operator=(const __uXm128 InXmm);
	
    /**
     * Assignment operator to convert from type __uXm128d. 
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fd& operator=(const __uXm128d InXmmd);
	
    /**
     * Assignment operator to convert from type __m128. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fd& operator=(const __m128 InXmm);
	
    /**
     * Assignment operator to convert from type __m128d. 
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fd& operator=(const __m128d InXmmd);
	
    /**
     * Assignment operator to convert from type float*. 
     *
     * @param Infloat Value to copy from.
     */
	__uXm128fd& operator=(const float* Infloat);
	
    /**
     * Assignment operator to convert from type unsigned double*. 
     *
     * @param Indouble Value to copy from.
     */
	__uXm128fd& operator=(const double* Indouble);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128fd;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128di
{
	union
	{
		double              m128_d[2];
		__int8              m128_ib[16];
		unsigned __int8     m128_ub[16];
		__int16             m128_iw[8];
		unsigned __int16    m128_uw[8];
		__int32             m128_id[4];
		unsigned __int32    m128_ud[4];
		__int64             m128_iq[2];
		unsigned __int64    m128_uq[2];
	};
	
	__uXm128di(void)uXm_CTOR_DEFAULT;
	~__uXm128di(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm128ib.
     *
     * @param InXmmib Value to copy from.
     */
	__uXm128di(const __uXm128ib InXmmib);
	
    /**
     * Constructor initialization from type __uXm128iw.
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm128di(const __uXm128iw InXmmiw);
	
    /**
     * Constructor initialization from type __uXm128id.
     *
     * @param InXmmid Value to copy from.
     */
	__uXm128di(const __uXm128id InXmmid);
	
    /**
     * Constructor initialization from type __uXm128iq.
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm128di(const __uXm128iq InXmmiq);
	
    /**
     * Constructor initialization from type __uXm128i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128di(const __uXm128i InXmmi);
	
    /**
     * Constructor initialization from type __uXm128d.
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128di(const __uXm128d InXmmd);
	
    /**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128di(const __m128i InXmmi);
	
    /**
     * Constructor initialization from type __m128d.
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128di(const __m128d InXmmd);
	
    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128di(const __int8* Inint8);
	
    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128di(const unsigned __int8* Inint8);

    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128di(const __int16* Inint16);
	
    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128di(const unsigned __int16* Inint16);
	
    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128di(const __int32* Inint32);
	
    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128di(const unsigned __int32* Inint32);

    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128di(const __int64* Inint64);
	
    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128di(const unsigned __int64* Inint64);

    /**
     * Constructor initialization from type double*.
     *
     * @param Indouble Value to copy from.
     */
	__uXm128di(const double* Indouble);
	
	/** Type cast operator to convert to __uXm128ib. */
	operator __uXm128ib(void) const;

	/** Type cast operator to convert to __uXm128iw. */
	operator __uXm128iw(void) const;

	/** Type cast operator to convert to __uXm128id. */
	operator __uXm128id(void) const;

	/** Type cast operator to convert to __uXm128iq. */
	operator __uXm128iq(void) const;

	/** Type cast operator to convert to __uXm128i. */
	operator __uXm128i(void) const;

	/** Type cast operator to convert to __uXm128d. */
	operator __uXm128d(void) const;

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

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

	/** Type cast operator to convert to double*. */
	operator double*(void) const;

    /**
     * Assignment operator to convert from type __uXm128ib. 
     *
     * @param InXmmib Value to copy from.
     */
	__uXm128di& operator=(const __uXm128ib InXmmib);
	
    /**
     * Assignment operator to convert from type __uXm128iw. 
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm128di& operator=(const __uXm128iw InXmmiw);
	
    /**
     * Assignment operator to convert from type __uXm128id. 
     *
     * @param InXmmid Value to copy from.
     */
	__uXm128di& operator=(const __uXm128id InXmmid);
	
    /**
     * Assignment operator to convert from type __uXm128iq. 
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm128di& operator=(const __uXm128iq InXmmiq);
	
    /**
     * Assignment operator to convert from type __uXm128i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128di& operator=(const __uXm128i InXmmi);
	
    /**
     * Assignment operator to convert from type __uXm128d. 
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128di& operator=(const __uXm128d InXmmd);
	
    /**
     * Assignment operator to convert from type __m128i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128di& operator=(const __m128i InXmmi);
	
    /**
     * Assignment operator to convert from type __m128d. 
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128di& operator=(const __m128d InXmmd);
	
    /**
     * Assignment operator to convert from type __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128di& operator=(const __int8* Inint8);
	
    /**
     * Assignment operator to convert from type unsigned __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128di& operator=(const unsigned __int8* Inint8);
	
    /**
     * Assignment operator to convert from type __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128di& operator=(const __int16* Inint16);
	
    /**
     * Assignment operator to convert from type unsigned __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128di& operator=(const unsigned __int16* Inint16);
	
    /**
     * Assignment operator to convert from type __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128di& operator=(const __int32* Inint32);
	
    /**
     * Assignment operator to convert from type unsigned __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128di& operator=(const unsigned __int32* Inint32);
	
    /**
     * Assignment operator to convert from type __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128di& operator=(const __int64* Inint64);
	
    /**
     * Assignment operator to convert from type unsigned __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128di& operator=(const unsigned __int64* Inint64);
	
    /**
     * Assignment operator to convert from type double*. 
     *
     * @param Indouble Value to copy from.
     */
	__uXm128di& operator=(const double* Indouble);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128di;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128fid
{
	union
	{
		float               m128_f[4];
		__int8              m128_ib[16];
		unsigned __int8     m128_ub[16];
		__int16             m128_iw[8];
		unsigned __int16    m128_uw[8];
		__int32             m128_id[4];
		unsigned __int32    m128_ud[4];
		__int64             m128_iq[2];
		unsigned __int64    m128_uq[2];
		double              m128_d[2];
	};
	
	__uXm128fid(void)uXm_CTOR_DEFAULT;
	~__uXm128fid(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __uXm128ib.
     *
     * @param InXmmib Value to copy from.
     */
	__uXm128fid(const __uXm128ib InXmmib);
	
    /**
     * Constructor initialization from type __uXm128iw.
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm128fid(const __uXm128iw InXmmiw);
	
    /**
     * Constructor initialization from type __uXm128id.
     *
     * @param InXmmid Value to copy from.
     */
	__uXm128fid(const __uXm128id InXmmid);
	
    /**
     * Constructor initialization from type __uXm128iq.
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm128fid(const __uXm128iq InXmmiq);
	
    /**
     * Constructor initialization from type __uXm128i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128fid(const __uXm128i InXmmi);
	
    /**
     * Constructor initialization from type __uXm128f.
     *
     * @param InXmmf Value to copy from.
     */
	__uXm128fid(const __uXm128f InXmmf);
	
    /**
     * Constructor initialization from type __uXm128.
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fid(const __uXm128 InXmm);
	
    /**
     * Constructor initialization from type __uXm128fi.
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fid(const __uXm128fi InXmmd);
	
    /**
     * Constructor initialization from type __uXm128d.
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fid(const __uXm128d InXmmd);
	
    /**
     * Constructor initialization from type __uXm128fd.
     *
     * @param InXmmfd Value to copy from.
     */
	__uXm128fid(const __uXm128fd InXmmfd);
	
    /**
     * Constructor initialization from type __uXm128di.
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fid(const __uXm128di InXmmd);
	
    /**
     * Constructor initialization from type __m128.
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fid(const __m128 InXmm);
	
    /**
     * Constructor initialization from type __m128i.
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128fid(const __m128i InXmmi);
	
    /**
     * Constructor initialization from type __m128d.
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fid(const __m128d InXmmd);
	
    /**
     * Constructor initialization from type float*.
     *
     * @param Infloat Value to copy from.
     */
	__uXm128fid(const float* Infloat);
	
    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128fid(const __int8* Inint8);
	
    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128fid(const unsigned __int8* Inint8);

    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128fid(const __int16* Inint16);
	
    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128fid(const unsigned __int16* Inint16);
	
    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128fid(const __int32* Inint32);
	
    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128fid(const unsigned __int32* Inint32);

    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128fid(const __int64* Inint64);
	
    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128fid(const unsigned __int64* Inint64);

    /**
     * Constructor initialization from type double*.
     *
     * @param Indouble Value to copy from.
     */
	__uXm128fid(const double* Indouble);
	
	/** Type cast operator to convert to __uXm128ib. */
	operator __uXm128ib(void) const;

	/** Type cast operator to convert to __uXm128iw. */
	operator __uXm128iw(void) const;

	/** Type cast operator to convert to __uXm128id. */
	operator __uXm128id(void) const;

	/** Type cast operator to convert to __uXm128iq. */
	operator __uXm128iq(void) const;

	/** Type cast operator to convert to __uXm128i. */
	operator __uXm128i(void) const;

	/** Type cast operator to convert to __uXm128f. */
	operator __uXm128f(void) const;

	/** Type cast operator to convert to __uXm128. */
	operator __uXm128(void) const;

	/** Type cast operator to convert to __uXm128fi. */
	operator __uXm128fi(void) const;

	/** Type cast operator to convert to __uXm128d. */
	operator __uXm128d(void) const;

	/** Type cast operator to convert to __uXm128fd. */
	operator __uXm128fd(void) const;

	/** Type cast operator to convert to __uXm128di. */
	operator __uXm128di(void) const;

	/** Type cast operator to convert to __m128. */
	operator __m128(void) const;

	/** Type cast operator to convert to __m128i. */
	operator __m128i(void) const;

	/** Type cast operator to convert to __m128d. */
	operator __m128d(void) const;

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

	/** Type cast operator to convert to double*. */
	operator double*(void) const;

    /**
     * Assignment operator to convert from type __uXm128ib. 
     *
     * @param InXmmib Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128ib InXmmib);
	
    /**
     * Assignment operator to convert from type __uXm128iw. 
     *
     * @param InXmmiw Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128iw InXmmiw);
	
    /**
     * Assignment operator to convert from type __uXm128id. 
     *
     * @param InXmmid Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128id InXmmid);
	
    /**
     * Assignment operator to convert from type __uXm128iq. 
     *
     * @param InXmmiq Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128iq InXmmiq);
	
    /**
     * Assignment operator to convert from type __uXm128i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128i InXmmi);
	
    /**
     * Assignment operator to convert from type __uXm128f. 
     *
     * @param InXmmf Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128f InXmmf);
	
    /**
     * Assignment operator to convert from type __uXm128. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128 InXmm);
	
    /**
     * Assignment operator to convert from type __uXm128fi. 
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128fi InXmmd);
	
    /**
     * Assignment operator to convert from type __uXm128d. 
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128d InXmmd);
	
    /**
     * Assignment operator to convert from type __uXm128fd. 
     *
     * @param InXmmfd Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128fd InXmmfd);
	
    /**
     * Assignment operator to convert from type __uXm128di. 
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fid& operator=(const __uXm128di InXmmd);
	
    /**
     * Assignment operator to convert from type __m128. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm128fid& operator=(const __m128 InXmm);
	
    /**
     * Assignment operator to convert from type __m128i. 
     *
     * @param InXmmi Value to copy from.
     */
	__uXm128fid& operator=(const __m128i InXmmi);
	
    /**
     * Assignment operator to convert from type __m128d. 
     *
     * @param InXmmd Value to copy from.
     */
	__uXm128fid& operator=(const __m128d InXmmd);
	
    /**
     * Assignment operator to convert from type float*. 
     *
     * @param Infloat Value to copy from.
     */
	__uXm128fid& operator=(const float* Infloat);
	
    /**
     * Assignment operator to convert from type __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128fid& operator=(const __int8* Inint8);
	
    /**
     * Assignment operator to convert from type unsigned __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uXm128fid& operator=(const unsigned __int8* Inint8);
	
    /**
     * Assignment operator to convert from type __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128fid& operator=(const __int16* Inint16);
	
    /**
     * Assignment operator to convert from type unsigned __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uXm128fid& operator=(const unsigned __int16* Inint16);
	
    /**
     * Assignment operator to convert from type __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128fid& operator=(const __int32* Inint32);
	
    /**
     * Assignment operator to convert from type unsigned __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uXm128fid& operator=(const unsigned __int32* Inint32);
	
    /**
     * Assignment operator to convert from type __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128fid& operator=(const __int64* Inint64);
	
    /**
     * Assignment operator to convert from type unsigned __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uXm128fid& operator=(const unsigned __int64* Inint64);
	
    /**
     * Assignment operator to convert from type double*. 
     *
     * @param Indouble Value to copy from.
     */
	__uXm128fid& operator=(const double* Indouble);
	
}uXmGC_VEC_INTRINTYPE16 __uXm128fid;

#endif //SSE2
#endif //SSE

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_SSE_STRUCTS_H
