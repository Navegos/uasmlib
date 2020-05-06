
#pragma once

#ifndef uX_MMX_STRUCTS_H
#define uX_MMX_STRUCTS_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_MMX

#error MMX Structs not Uniplemented yet.

#ifndef _MMINTRIN_H_INCLUDED
#include <mmintrin.h>
#endif  /* _MMINTRIN_H_INCLUDED */

uX_EXTERNC_BEGIN
uX_PACK_PUSH8

struct __uX64;

typedef struct uXVC_VEC_INTRINTYPE8 __uX64
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

#if defined(uX_MMX) && defined(uX_X86)

	__uX64(void)uX_default;
	~__uX64(void)uX_default;
	
    /**
     * Constructor initialization from type __m64.
     *
     * @param Inxmm Value to copy from.
     */
	__uX64(const __m64 Inxmm);
	
    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uX64(const __int8* Inint8);
	
    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inint8 Value to copy from.
     */
	__uX64(const unsigned __int8* Inint8);

    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uX64(const __int16* Inint16);
	
    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inint16 Value to copy from.
     */
	__uX64(const unsigned __int16* Inint16);
	
    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uX64(const __int32* Inint32);
	
    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inint32 Value to copy from.
     */
	__uX64(const unsigned __int32* Inint32);

    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uX64(const __int64* Inint64);
	
    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inint64 Value to copy from.
     */
	__uX64(const unsigned __int64* Inint64);

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
     * @param Inxmm Value to copy from.
     */
	__uX64& operator=(const __m64 Inxmm);
	
    /**
     * Assignment operator to convert from type __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uX64& operator=(const __int8* Inint8);
	
    /**
     * Assignment operator to convert from type unsigned __int8*. 
     *
     * @param Inint8 Value to copy from.
     */
	__uX64& operator=(const unsigned __int8* Inint8);
	
    /**
     * Assignment operator to convert from type __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uX64& operator=(const __int16* Inint16);
	
    /**
     * Assignment operator to convert from type unsigned __int16*. 
     *
     * @param Inint16 Value to copy from.
     */
	__uX64& operator=(const unsigned __int16* Inint16);
	
    /**
     * Assignment operator to convert from type __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uX64& operator=(const __int32* Inint32);
	
    /**
     * Assignment operator to convert from type unsigned __int32*. 
     *
     * @param Inint32 Value to copy from.
     */
	__uX64& operator=(const unsigned __int32* Inint32);
	
    /**
     * Assignment operator to convert from type __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uX64& operator=(const __int64* Inint64);
	
    /**
     * Assignment operator to convert from type unsigned __int64*. 
     *
     * @param Inint64 Value to copy from.
     */
	__uX64& operator=(const unsigned __int64* Inint64);

#endif // uX_MMX uX_X86

}uXGC_VEC_INTRINTYPE8 __uX64;

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_MMX_STRUCTS_H
