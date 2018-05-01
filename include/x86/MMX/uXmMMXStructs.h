
#pragma once

#ifndef uXm_MMX_STRUCTS_H
#define uXm_MMX_STRUCTS_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifndef _MMINTRIN_H_INCLUDED
#include <mmintrin.h>
#endif  /* _MMINTRIN_H_INCLUDED */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH8

struct __uXm64;

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

#if defined(uXm_MMX) && defined(uXm_X86)

	__uXm64(void)uXm_CTOR_DEFAULT;
	~__uXm64(void)uXm_CTOR_DEFAULT;
	
    /**
     * Constructor initialization from type __m64.
     *
     * @param InXmm Value to copy from.
     */
	__uXm64(const __m64 InXmm);
	
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
     * Assignment operator to convert from type __m64. 
     *
     * @param InXmm Value to copy from.
     */
	__uXm64& operator=(const __m64 InXmm);
	
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

#endif // uXm_MMX uXm_X86

}uXmGC_VEC_INTRINTYPE8 __uXm64;

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MMX_STRUCTS_H
