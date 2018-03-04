#include "eXSSEConstVector.h"

#if defined(eX_SSE_INTRINSICS) && !defined(eX_NO_INTRINSICS_SUPPORT)

//------------------------------------------------------------------------------
// Conversion types for constants
//------------------------------------------------------------------------------

/*
* Default SSE 4x Float 32bits Vector, conversion type for constants.
*/
eXSSEFloatConstVector::operator __m128() const
{
    return __Xmm;
}

eXSSEFloatConstVector::operator const eXfloat_t*() const
{
    return _farray;
}

eXSSEFloatConstVector::operator __m128i() const
{
    return _mm_castps_si128(__Xmm);
}

# if defined(eX_USE_DOUBLE_PRECISION)
eXSSEFloatConstVector::operator __m128d() const
{
    return _mm_castps_pd(__Xmm);
}
# endif

#if defined(eX_USE_DOUBLE_PRECISION)

/*
* Default SSE 2x Double 64bits Vector, conversion type for constants.
*/
eXSSEDoubleConstVector::operator __m128d() const
{
    return __Xmmd;
}

eXSSEDoubleConstVector::operator const eXdouble_t*() const
{
    return _darray;
}

eXSSEDoubleConstVector::operator __m128i() const
{
    return _mm_castpd_si128(__Xmmd);
}

eXSSEDoubleConstVector::operator __m128() const
{
    return _mm_castpd_ps(__Xmmd);
}

#endif // eX_USE_DOUBLE_PRECISION

/*
* Default SSE 4x Signed Integer 32bits Vector, conversion type for constants.
*/
eXSSEInt32ConstVector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEInt32ConstVector::operator const eXint32_t*() const
{
    return _iarray;
}

eXSSEInt32ConstVector::operator __m128() const
{
    return _mm_castsi128_ps(__Xmmi);
}

# if defined(eX_USE_DOUBLE_PRECISION)
eXSSEInt32ConstVector::operator __m128d() const
{
    return _mm_castsi128_pd(__Xmmi);
}
# endif

/*
* Default SSE 4x Unsigned Integer 32bits Vector, conversion type for constants.
*/
eXSSEUint32ConstVector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEUint32ConstVector::operator const eXuint32_t*() const
{
    return _uarray;
}

eXSSEUint32ConstVector::operator __m128() const
{
    return _mm_castsi128_ps(__Xmmi);
}

# if defined(eX_USE_DOUBLE_PRECISION)
eXSSEUint32ConstVector::operator __m128d() const
{
    return _mm_castsi128_pd(__Xmmi);
}
# endif

/*
* Default SSE 2x Signed Integer 64bits Vector, conversion type for constants.
*/
eXSSEInt64ConstVector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEInt64ConstVector::operator const eXint64_t*() const
{
    return _iarray;
}

eXSSEInt64ConstVector::operator __m128() const
{
    return _mm_castsi128_ps(__Xmmi);
}

# if defined(eX_USE_DOUBLE_PRECISION)
eXSSEInt64ConstVector::operator __m128d() const
{
    return _mm_castsi128_pd(__Xmmi);
}
# endif

/*
* Default SSE 2x Unsigned Integer 64bits Vector, conversion type for constants.
*/
eXSSEUint64ConstVector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEUint64ConstVector::operator const eXuint64_t*() const
{
    return _uarray;
}

eXSSEUint64ConstVector::operator __m128() const
{
    return _mm_castsi128_ps(__Xmmi);
}

# if defined(eX_USE_DOUBLE_PRECISION)
eXSSEUint64ConstVector::operator __m128d() const
{
    return _mm_castsi128_pd(__Xmmi);
}
# endif

/*
* Default SSE 6x Signed Integer 16bits Vector, conversion type for constants.
*/
eXSSEInt16ConstVector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEInt16ConstVector::operator const eXint16_t*() const
{
    return _iarray;
}

eXSSEInt16ConstVector::operator __m128() const
{
    return _mm_castsi128_ps(__Xmmi);
}

# if defined(eX_USE_DOUBLE_PRECISION)
eXSSEInt16ConstVector::operator __m128d() const
{
    return _mm_castsi128_pd(__Xmmi);
}
# endif

/*
* Default SSE 8x Unsigned Integer 16bits Vector, conversion type for constants.
*/
eXSSEUint16ConstVector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEUint16ConstVector::operator const eXuint16_t*() const
{
    return _uarray;
}

eXSSEUint16ConstVector::operator __m128() const
{
    return _mm_castsi128_ps(__Xmmi);
}

# if defined(eX_USE_DOUBLE_PRECISION)
eXSSEUint16ConstVector::operator __m128d() const
{
    return _mm_castsi128_pd(__Xmmi);
}
# endif

/*
* Default SSE 16x Signed Integer 8bits Vector, conversion type for constants.
*/
eXSSEInt8ConstVector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEInt8ConstVector::operator const eXint8_t*() const
{
    return _iarray;
}

eXSSEInt8ConstVector::operator __m128() const
{
    return _mm_castsi128_ps(__Xmmi);
}

# if defined(eX_USE_DOUBLE_PRECISION)
eXSSEInt8ConstVector::operator __m128d() const
{
    return _mm_castsi128_pd(__Xmmi);
}
# endif

/*
* Default SSE 16x Unsigned Integer 8bits Vector, conversion type for constants.
*/
eXSSEUint8ConstVector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEUint8ConstVector::operator const eXuint8_t*() const
{
    return _uarray;
}

eXSSEUint8ConstVector::operator __m128() const
{
    return _mm_castsi128_ps(__Xmmi);
}

# if defined(eX_USE_DOUBLE_PRECISION)
eXSSEUint8ConstVector::operator __m128d() const
{
    return _mm_castsi128_pd(__Xmmi);
}
# endif

#endif // eX_NO_INTRINSICS
