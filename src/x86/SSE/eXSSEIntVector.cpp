
#include "eXSSEIntVector.h"
#include "eXTypes.h"
#include "eXCpuDetect.h"

eXSSEIntVector::eXSSEIntVector(const __m128i& InXmmi) 
{
    __Xmmi = InXmmi;
}

eX_VECCALL(eXSSEIntVector&) eXSSEIntVector::operator=(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
    return *this;
}

eXSSEIntVector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEIntVector::eXSSEIntVector(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
}

eX_VECCALL(eXSSEIntVector&) eXSSEIntVector::operator=(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEIntVector&) eXSSEIntVector::Loadu(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEIntVector&) eXSSEIntVector::Load(const void* InPtr)
{
    __Xmmi = _mm_load_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(void) eXSSEIntVector::Storeu(void* OutPtr) const
{
    _mm_storeu_si128(reinterpret_cast<__m128i*>(OutPtr), __Xmmi);
}

eX_VECCALL(void) eXSSEIntVector::Store(void* OutPtr) const
{
    _mm_store_si128(reinterpret_cast<__m128i*>(OutPtr), __Xmmi);
}

eX_VECCALL(void) eXSSEIntVector::Stream(void* OutPtr) const
{
    _mm_stream_si128(reinterpret_cast<__m128i*>(OutPtr), __Xmmi);
}

eX_VECCALL(eXSSEIntVector&) eXSSEIntVector::SetZero(void)
{
    __Xmmi = _mm_setzero_si128();
    return *this;
}

eX_VECCALL(eXSSEIntVector&) eXSSEIntVector::Set_from_ps(const __m128& InXmm)
{
    __Xmmi = _mm_castps_si128(InXmm);
    return *this;
}

eX_VECCALL(eXSSEIntVector&) eXSSEIntVector::Set_from_pd(const __m128d& InXmmd)
{
    __Xmmi = _mm_castpd_si128(InXmmd);
    return *this;
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Cast_from_ps(const __m128& InXmm)
{
    return _mm_castps_si128(InXmm);
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Cast_from_pd(const __m128d& InXmmd)
{
    return _mm_castpd_si128(InXmmd);
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Convert_from_pd(const __m128d& InXmmd, eXuint32_t MulExponent)
{
	return _mm_castpd_si128(InXmmd);
}

eX_VECCALL(__m128i) eXSSEIntVector::Get() const
{
	return __Xmmi;
}

eX_VECCALL(void) eXSSEIntVector::MaskMove(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b, eXchar_t* OutP)
{
    return _mm_maskmoveu_si128(InXmmi_a, InXmmi_b, OutP);
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Select(const eXSSEIntVector& InXmmi_s, const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    if (eX_has_SSE41())
    {
        return _mm_blendv_epi8(InXmmi_b, InXmmi_a, InXmmi_s);
    }
    else
    {
        return _mm_or_si128(_mm_and_si128(InXmmi_s, InXmmi_a), _mm_andnot_si128(InXmmi_s, InXmmi_b));
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*               Generate compile-time constant vector                 */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <eXint64_t i0, eXint64_t i1>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Constant_int64()
{
    static const union
    {
        eXint64_t i[2];
        __m128i xmmi;
    } u = { { i0, i1 } };
    return u.xmmi;
}

template <eXuint64_t i0, eXuint64_t i1>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Constant_uint64()
{
    static const union
    {
        eXuint64_t i[2];
        __m128i xmmi;
    } u = { { i0, i1 } };
    return u.xmmi;
}

template <eXint32_t i0, eXint32_t i1, eXint32_t i2, eXint32_t i3>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Constant_int32()
{
    static const union
    {
        eXint32_t i[4];
        __m128i xmmi;
    } u = { { i0, i1, i2, i3 } };
    return u.xmmi;
}

template <eXuint32_t i0, eXuint32_t i1, eXuint32_t i2, eXuint32_t i3>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Constant_uint32()
{
    static const union
    {
        eXuint32_t i[4];
        __m128i xmmi;
    } u = { { i0, i1, i2, i3 } };
    return u.xmmi;
}

template <eXint16_t i0, eXint16_t i1, eXint16_t i2, eXint16_t i3, eXint16_t i4, eXint16_t i5, eXint16_t i6, eXint16_t i7>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Constant_int16()
{
    static const union
    {
        eXint16_t i[8];
        __m128i xmmi;
    } u = { { i0, i1, i2, i3, i4, i5, i6, i7 } };
    return u.xmmi;
}

template <eXuint16_t i0, eXuint16_t i1, eXuint16_t i2, eXuint16_t i3, eXuint16_t i4, eXuint16_t i5, eXuint16_t i6, eXuint16_t i7>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Constant_uint16()
{
    static const union
    {
        eXuint16_t i[8];
        __m128i xmmi;
    } u = { { i0, i1, i2, i3, i4, i5, i6, i7 } };
    return u.xmmi;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::And(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return _mm_and_si128(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Or(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return _mm_or_si128(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Xor(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return _mm_xor_si128(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Not(const eXSSEIntVector& InXmmi_a)
{
    return _mm_xor_si128(InXmmi_a, _mm_set1_epi32(-1));
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::AndNot(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return _mm_andnot_si128(InXmmi_b, InXmmi_a);
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Horizontal_And(const eXSSEIntVector& InXmmi_a)
{
    __m128i t1 = _mm_unpackhi_epi64(InXmmi_a, InXmmi_a);                  // get 64 bits down
    __m128i t2 = _mm_and_si128(InXmmi_a, t1);                      // and 64 bits
#ifndef eX_X64
    __m128i t3 = _mm_srli_epi64(t2, 32);                    // get 32 bits down
    __m128i t4 = _mm_and_si128(t2, t3);                     // and 32 bits
#endif  // eX_X64
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Horizontal_Or(const eXSSEIntVector& InXmmi_a)
{
    __m128i t1 = _mm_unpackhi_epi64(InXmmi_a, InXmmi_a);                  // get 64 bits down
    __m128i t2 = _mm_or_si128(InXmmi_a, t1);                       // and 64 bits
#ifndef eX_X64
    __m128i t3 = _mm_srli_epi64(t2, 32);                    // get 32 bits down
    __m128i t4 = _mm_or_si128(t2, t3);                      // and 32 bits
#endif  // eX_X64
}

eX_VECCALL(eXbool_t) eXSSEIntVector::bAnd(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return (_mm_movemask_epi8(_mm_and_si128(InXmmi_a, InXmmi_b)) == 0xFFFF);
}

eX_VECCALL(eXbool_t) eXSSEIntVector::bOr(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return (_mm_movemask_epi8(_mm_or_si128(InXmmi_a, InXmmi_b)) != 0);
}

eX_VECCALL(eXbool_t) eXSSEIntVector::bHorizontal_And(const eXSSEIntVector& InXmmi_a)
{
    if (eX_has_SSE41())  // SSE4.1 supported. Use PTEST
    {
        return _mm_testc_si128(InXmmi_a, constant4i<-1, -1, -1, -1>()) != 0;
    }
    else  // SSE2
    {
        __m128i t1 = _mm_unpackhi_epi64(InXmmi_a, InXmmi_a);                  // get 64 bits down
        __m128i t2 = _mm_and_si128(InXmmi_a, t1);                      // and 64 bits
#ifdef eX_X64
        eXint64_t t5 = _mm_cvtsi128_si64(t2);                    // transfer 64 bits to integer
        return  t5 == reinterpret_cast<eXint64_t>(-1);
#else
        __m128i t3 = _mm_srli_epi64(t2, 32);                    // get 32 bits down
        __m128i t4 = _mm_and_si128(t2, t3);                     // and 32 bits
        int     t5 = _mm_cvtsi128_si32(t4);                    // transfer 32 bits to integer
        return  t5 == -1;
#endif  // eX_X64
    }
}

eX_VECCALL(eXbool_t) eXSSEIntVector::bHorizontal_Or(const eXSSEIntVector& InXmmi_a)
{
    if (eX_has_SSE41())  // SSE4.1 supported. Use PTEST
    {
        return !_mm_testz_si128(InXmmi_a, InXmmi_a);
    }
    else  // SSE2
    {
        __m128i t1 = _mm_unpackhi_epi64(InXmmi_a, InXmmi_a);                  // get 64 bits down
        __m128i t2 = _mm_or_si128(InXmmi_a, t1);                       // and 64 bits
#ifdef eX_X64
        eXint64_t t5 = _mm_cvtsi128_si64(t2);                    // transfer 64 bits to integer
        return  t5 != reinterpret_cast<eXint64_t>(0);
#else
        __m128i t3 = _mm_srli_epi64(t2, 32);                    // get 32 bits down
        __m128i t4 = _mm_or_si128(t2, t3);                      // and 32 bits
        int     t5 = _mm_cvtsi128_si32(t4);                    // transfer to integer
        return  t5 != 0;
#endif  // eX_X64
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                      Vector permute functions                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */


template <int i0, int i1, int i2, int i3, int i4, int i5, int i6, int i7,
    int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15 >
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Permute_int8(const eXSSEIntVector& a)
{
    __m128i temp;

    // Combine all even indexes into a single bitfield, with 4 bits for each
    const eXuint32_t me = (i0 & 15) | (i2 & 15) << 4 | (i4 & 15) << 8 | (i6 & 15) << 12
        | (i8 & 15) << 16 | (i10 & 15) << 20 | (i12 & 15) << 24 | (i14 & 15) << 28;

    // Combine all odd indexes into a single bitfield, with 4 bits for each
    const eXuint32_t mo = (i1 & 15) | (i3 & 15) << 4 | (i5 & 15) << 8 | (i7 & 15) << 12
        | (i9 & 15) << 16 | (i11 & 15) << 20 | (i13 & 15) << 24 | (i15 & 15) << 28;

    // Mask indicating sign of all even indexes, with 4 bits for each, 0 for negative, 0xF for non-negative
    const eXuint32_t se = (i0 < 0 ? 0 : 0xF) | (i2 < 0 ? 0 : 0xF) << 4 | (i4 < 0 ? 0 : 0xF) << 8 | (i6 < 0 ? 0 : 0xF) << 12
        | (i8 < 0 ? 0 : 0xF) << 16 | (i10 < 0 ? 0 : 0xF) << 20 | (i12 < 0 ? 0 : 0xF) << 24 | (i14 < 0 ? 0 : 0xF) << 28;

    // Mask indicating sign of all odd indexes, with 4 bits for each, 0 for negative, 0xF for non-negative
    const eXuint32_t so = (i1 < 0 ? 0 : 0xF) | (i3 < 0 ? 0 : 0xF) << 4 | (i5 < 0 ? 0 : 0xF) << 8 | (i7 < 0 ? 0 : 0xF) << 12
        | (i9 < 0 ? 0 : 0xF) << 16 | (i11 < 0 ? 0 : 0xF) << 20 | (i13 < 0 ? 0 : 0xF) << 24 | (i15 < 0 ? 0 : 0xF) << 28;

    // Mask indicating sign of all indexes, with 2 bits for each, 0 for negative (means set to zero or don't care), 0x3 for non-negative
    const eXuint32_t ss = (se & 0x33333333) | (so & 0xCCCCCCCC);

    // Mask indicating required zeroing of all indexes, with 2 bits for each, 0 for index = -1, 3 for index >= 0 or -256
    const eXuint32_t ssz = ((i0 & 0x80) ? 0 : 3) | ((i1 & 0x80) ? 0 : 3) << 2 | ((i2 & 0x80) ? 0 : 3) << 4 | ((i3 & 0x80) ? 0 : 3) << 6 |
        ((i4 & 0x80) ? 0 : 3) << 8 | ((i5 & 0x80) ? 0 : 3) << 10 | ((i6 & 0x80) ? 0 : 3) << 12 | ((i7 & 0x80) ? 0 : 3) << 14 |
        ((i8 & 0x80) ? 0 : 3) << 16 | ((i9 & 0x80) ? 0 : 3) << 18 | ((i10 & 0x80) ? 0 : 3) << 20 | ((i11 & 0x80) ? 0 : 3) << 22 |
        ((i12 & 0x80) ? 0 : 3) << 24 | ((i13 & 0x80) ? 0 : 3) << 26 | ((i14 & 0x80) ? 0 : 3) << 28 | ((i15 & 0x80) ? 0 : 3) << 30;

    // These indexes are used only to avoid bogus compiler warnings in false branches
    const eXint32_t I0 = i0 > 0 ? (i0 & 0xF) : 0;
    const eXint32_t I15 = i15 > 0 ? (i15 & 0xF) : 0;

    // special case: all zero
    if (ss == 0)
    {
        return _mm_setzero_si128();
    }

    // remember if extra zeroing is needed
    eXbool_t do_and_zero = (ssz != 0xFFFFFFFFu);

    // check for special shortcut cases
    int shortcut = 0;

    // check if any permutation
    if (((me ^ 0xECA86420) & se) == 0 && ((mo ^ 0xFDB97531) & so) == 0)
    {
        shortcut = 1;
    }
    // check if we can use punpcklbw
    else if (((me ^ 0x76543210) & se) == 0 && ((mo ^ 0x76543210) & so) == 0)
    {
        shortcut = 2;
    }
    // check if we can use punpckhbw
    else if (((me ^ 0xFEDCBA98) & se) == 0 && ((mo ^ 0xFEDCBA98) & so) == 0)
    {
        shortcut = 3;
    }

#if defined (_MSC_VER) && ! defined(__INTEL_COMPILER)
#pragma warning(disable: 4307)  // disable MS warning C4307: '+' : integral constant overflow
#endif

    // check if we can use byte shift right
    else if (i0 > 0 && ((me ^ (reinterpret_cast<eXuint32_t>(I0) * 0x11111111u + 0xECA86420u)) & se) == 0 &&
        ((mo ^ (reinterpret_cast<eXuint32_t>(I0) * 0x11111111u + 0xFDB97531u)) & so) == 0)
    {
        shortcut = 4;
        do_and_zero = ((0xFFFFFFFFu >> 2 * I0) & ~ssz) != 0;
    }
    // check if we can use byte shift left
    else if (i15 >= 0 && i15 < 15 &&
        ((mo ^ (reinterpret_cast<eXuint32_t>(I15 * 0x11111111u) - (0x02468ACEu & so))) & so) == 0 &&
             ((me ^ (reinterpret_cast<eXuint32_t>(I15 * 0x11111111u) - (0x13579BDFu & se))) & se) == 0)
    {
        shortcut = 5;
        do_and_zero = ((0xFFFFFFFFu << 2 * (15 - I15)) & ~ssz) != 0;
    }

    if (eX_has_SSSE3) // SSSE3 (PSHUFB available only under SSSE3)
    {
        // special case: rotate
        if (i0 > 0 && i0 < 16 && i1 == ((i0 + 1) & 15) && i2 == ((i0 + 2) & 15) && i3 == ((i0 + 3) & 15) && i4 == ((i0 + 4) & 15) && i5 == ((i0 + 5) & 15) && i6 == ((i0 + 6) & 15) && i7 == ((i0 + 7) & 15)
            && i8 == ((i0 + 8) & 15) && i9 == ((i0 + 9) & 15) && i10 == ((i0 + 10) & 15) && i11 == ((i0 + 11) & 15) && i12 == ((i0 + 12) & 15) && i13 == ((i0 + 13) & 15) && i14 == ((i0 + 14) & 15) && i15 == ((i0 + 15) & 15))
        {
            temp = _mm_alignr_epi8(a, a, i0 & 15);
            shortcut = -1;
        }
        if (shortcut == 0 || do_and_zero)
        {
            // general case: use PSHUFB
            __m128i mask = Constant_int32<
                (i0 & 0xFF) | (i1 & 0xFF) << 8 | (i2 & 0xFF) << 16 | (i3 & 0xFF) << 24,
                (i4 & 0xFF) | (i5 & 0xFF) << 8 | (i6 & 0xFF) << 16 | (i7 & 0xFF) << 24,
                (i8 & 0xFF) | (i9 & 0xFF) << 8 | (i10 & 0xFF) << 16 | (i11 & 0xFF) << 24,
                (i12 & 0xFF) | (i13 & 0xFF) << 8 | (i14 & 0xFF) << 16 | (i15 & 0xFF) << 24 >();
            temp = _mm_shuffle_epi8(a, mask);
            shortcut = -1;
            do_and_zero = false;
        }
    }

    // Check if we can use 16-bit permute. Even numbered indexes must be even and odd numbered
    // indexes must be equal to the preceding index + 1, except for negative indexes.
    if (shortcut == 0 && (me & 0x11111111 & se) == 0 && ((mo ^ 0x11111111) & 0x11111111 & so) == 0 && ((me ^ mo) & 0xEEEEEEEE & se & so) == 0)
    {
        temp = Permute_int16<
            i0 >= 0 ? i0 / 2 : i1 >= 0 ? i1 / 2 : (i0 | i1),
            i2 >= 0 ? i2 / 2 : i3 >= 0 ? i3 / 2 : (i2 | i3),
            i4 >= 0 ? i4 / 2 : i5 >= 0 ? i5 / 2 : (i4 | i5),
            i6 >= 0 ? i6 / 2 : i7 >= 0 ? i7 / 2 : (i6 | i7),
            i8 >= 0 ? i8 / 2 : i9 >= 0 ? i9 / 2 : (i8 | i9),
            i10 >= 0 ? i10 / 2 : i11 >= 0 ? i11 / 2 : (i10 | i11),
            i12 >= 0 ? i12 / 2 : i13 >= 0 ? i13 / 2 : (i12 | i13),
            i14 >= 0 ? i14 / 2 : i15 >= 0 ? i15 / 2 : (i14 | i15)>(a);
        shortcut = 100;
        do_and_zero = (se != so && ssz != 0xFFFFFFFFu);
    }

    // Check if we can use 16-bit permute with bytes swapped. Even numbered indexes must be odd and odd 
    // numbered indexes must be equal to the preceding index - 1, except for negative indexes.
    // (this case occurs when reversing byte order)
    if (shortcut == 0 && ((me ^ 0x11111111) & 0x11111111 & se) == 0 && (mo & 0x11111111 & so) == 0 && ((me ^ mo) & 0xEEEEEEEE & se & so) == 0)
    {
        eXSSEIntVector swapped = Rotate_left_int16(a, 8); // swap odd and even bytes
        temp = Permute_int16<
            i0 >= 0 ? i0 / 2 : i1 >= 0 ? i1 / 2 : (i0 | i1),
            i2 >= 0 ? i2 / 2 : i3 >= 0 ? i3 / 2 : (i2 | i3),
            i4 >= 0 ? i4 / 2 : i5 >= 0 ? i5 / 2 : (i4 | i5),
            i6 >= 0 ? i6 / 2 : i7 >= 0 ? i7 / 2 : (i6 | i7),
            i8 >= 0 ? i8 / 2 : i9 >= 0 ? i9 / 2 : (i8 | i9),
            i10 >= 0 ? i10 / 2 : i11 >= 0 ? i11 / 2 : (i10 | i11),
            i12 >= 0 ? i12 / 2 : i13 >= 0 ? i13 / 2 : (i12 | i13),
            i14 >= 0 ? i14 / 2 : i15 >= 0 ? i15 / 2 : (i14 | i15) >(swapped);
        shortcut = 101;
        do_and_zero = (se != so && ssz != 0xFFFFFFFFu);
    }

    // all shortcuts end here
    if (shortcut)
    {
        switch (shortcut)
        {
            case 1:
                temp = a;  break;
            case 2:
                temp = _mm_unpacklo_epi8(a, a);  break;
            case 3:
                temp = _mm_unpackhi_epi8(a, a);  break;
            case 4:
                temp = _mm_srli_si128(a, I0);  break;
            case 5:
                temp = _mm_slli_si128(a, 15 - I15);  break;
            default:
                break;  // result is already in temp
        }
        if (do_and_zero)
        {
            // additional zeroing needed
            __m128i maskz = Constant_int32<
                (i0 < 0 ? 0 : 0xFF) | (i1 < 0 ? 0 : 0xFF00) | (i2 < 0 ? 0 : 0xFF0000) | (i3 < 0 ? 0 : 0xFF000000),
                (i4 < 0 ? 0 : 0xFF) | (i5 < 0 ? 0 : 0xFF00) | (i6 < 0 ? 0 : 0xFF0000) | (i7 < 0 ? 0 : 0xFF000000),
                (i8 < 0 ? 0 : 0xFF) | (i9 < 0 ? 0 : 0xFF00) | (i10 < 0 ? 0 : 0xFF0000) | (i11 < 0 ? 0 : 0xFF000000),
                (i12 < 0 ? 0 : 0xFF) | (i13 < 0 ? 0 : 0xFF00) | (i14 < 0 ? 0 : 0xFF0000) | (i15 < 0 ? 0 : 0xFF000000) >();
            temp = _mm_and_si128(temp, maskz);
        }
        return temp;
    }

    // complicated cases: use 16-bit permute up to four times
    const eXbool_t e2e = (~me & 0x11111111 & se) != 0;  // even bytes of source to even bytes of destination
    const eXbool_t e2o = (~mo & 0x11111111 & so) != 0;  // even bytes of source to odd  bytes of destination
    const eXbool_t o2e = (me & 0x11111111 & se) != 0;  // odd  bytes of source to even bytes of destination
    const eXbool_t o2o = (mo & 0x11111111 & so) != 0;  // odd  bytes of source to odd  bytes of destination

    eXSSEIntVector swapped, te2e, te2o, to2e, to2o, combeven, combodd;

    if (e2o || o2e) swapped = Rotate_left_int16(a, 8); // swap odd and even bytes

                                                        // even-to-even bytes
    if (e2e) te2e = Permute_int16<(i0 & 1) ? -1 : i0 / 2, (i2 & 1) ? -1 : i2 / 2, (i4 & 1) ? -1 : i4 / 2, (i6 & 1) ? -1 : i6 / 2,
        (i8 & 1) ? -1 : i8 / 2, (i10 & 1) ? -1 : i10 / 2, (i12 & 1) ? -1 : i12 / 2, (i14 & 1) ? -1 : i14 / 2>(a);
    // odd-to-even bytes
    if (o2e) to2e = Permute_int16<(i0 & 1) ? i0 / 2 : -1, (i2 & 1) ? i2 / 2 : -1, (i4 & 1) ? i4 / 2 : -1, (i6 & 1) ? i6 / 2 : -1,
        (i8 & 1) ? i8 / 2 : -1, (i10 & 1) ? i10 / 2 : -1, (i12 & 1) ? i12 / 2 : -1, (i14 & 1) ? i14 / 2 : -1>(swapped);
    // even-to-odd bytes
    if (e2o) te2o = Permute_int16<(i1 & 1) ? -1 : i1 / 2, (i3 & 1) ? -1 : i3 / 2, (i5 & 1) ? -1 : i5 / 2, (i7 & 1) ? -1 : i7 / 2,
        (i9 & 1) ? -1 : i9 / 2, (i11 & 1) ? -1 : i11 / 2, (i13 & 1) ? -1 : i13 / 2, (i15 & 1) ? -1 : i15 / 2>(swapped);
    // odd-to-odd bytes
    if (o2o) to2o = Permute_int16<(i1 & 1) ? i1 / 2 : -1, (i3 & 1) ? i3 / 2 : -1, (i5 & 1) ? i5 / 2 : -1, (i7 & 1) ? i7 / 2 : -1,
        (i9 & 1) ? i9 / 2 : -1, (i11 & 1) ? i11 / 2 : -1, (i13 & 1) ? i13 / 2 : -1, (i15 & 1) ? i15 / 2 : -1>(a);

    if (e2e && o2e) combeven = te2e | to2e;
    else if (e2e)   combeven = te2e;
    else if (o2e)   combeven = to2e;
    else            combeven = _mm_setzero_si128();

    if (e2o && o2o) combodd = te2o | to2o;
    else if (e2o)   combodd = te2o;
    else if (o2o)   combodd = to2o;
    else            combodd = _mm_setzero_si128();

    __m128i maske = Constant_int32<     // mask used even bytes
        (i0 < 0 ? 0 : 0xFF) | (i2 < 0 ? 0 : 0xFF0000),
        (i4 < 0 ? 0 : 0xFF) | (i6 < 0 ? 0 : 0xFF0000),
        (i8 < 0 ? 0 : 0xFF) | (i10 < 0 ? 0 : 0xFF0000),
        (i12 < 0 ? 0 : 0xFF) | (i14 < 0 ? 0 : 0xFF0000) >();
    __m128i masko = Constant_int32<     // mask used odd bytes
        (i1 < 0 ? 0 : 0xFF00) | (i3 < 0 ? 0 : 0xFF000000),
        (i5 < 0 ? 0 : 0xFF00) | (i7 < 0 ? 0 : 0xFF000000),
        (i9 < 0 ? 0 : 0xFF00) | (i11 < 0 ? 0 : 0xFF000000),
        (i13 < 0 ? 0 : 0xFF00) | (i15 < 0 ? 0 : 0xFF000000) >();

    return  _mm_or_si128(            // combine even and odd bytes
                         _mm_and_si128(combeven, maske),
                         _mm_and_si128(combodd, masko));
}

template <int i0, int i1, int i2, int i3, int i4, int i5, int i6, int i7,
    int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15 >
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Permute_uint8(const eXSSEIntVector& a)
{
    return Permute_int16<i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15>(a));
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Vector blend functions                        */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <int i0, int i1>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Blend_int64(const eXSSEIntVector& a, const eXSSEIntVector& b)
{
    // Combine all the indexes into a single bitfield, with 8 bits for each
    const eXint32_t m1 = (i0 & 3) | (i1 & 3) << 8;

    // Mask to zero out negative indexes
    const eXint32_t mz = (i0 < 0 ? 0 : 0xFF) | (i1 < 0 ? 0 : 0xFF) << 8;

    // no elements from b
    if ((m1 & 0x0202 & mz) == 0)
    {
        return Permute_int64<i0, i1>(a);
    }
    // no elements from a
    if (((m1 ^ 0x0202) & 0x0202 & mz) == 0)
    {
        return Permute_int64<i0 & ~2, i1 & ~2>(b);
    }
    // (all cases where one index is -1 or -256 would go to the above cases)

    // special case: PUNPCKLQDQ 
    if (i0 == 0 && i1 == 2)
    {
        return _mm_unpacklo_epi64(a, b);
    }
    if (i0 == 2 && i1 == 0)
    {
        return _mm_unpacklo_epi64(b, a);
    }
    // special case: PUNPCKHQDQ 
    if (i0 == 1 && i1 == 3)
    {
        return _mm_unpackhi_epi64(a, b);
    }
    if (i0 == 3 && i1 == 1)
    {
        return _mm_unpackhi_epi64(b, a);
    }
    if (eX_has_SSSE3())
    {
        // special case: shift left
        if (i0 == 1 && i1 == 2)
        {
            return _mm_alignr_epi8(b, a, 8);
        }
        // special case: shift right
        if (i0 == 3 && i1 == 0)
        {
            return _mm_alignr_epi8(a, b, 8);
        }
    }

    if (eX_has_SSE41())
    {
        if (((m1 & ~0x0202) ^ 0x0100) == 0 && mz == 0xFFFF)
        {
            // blending without permuting
            return _mm_blend_epi16(a, b, (i0 >> 1 & 1) * 0xF | ((i1 >> 1 & 1) * 0xF) << 4);
        }
    }

    // general case. combine two permutes 
    // (all cases are caught by the above special cases if SSE4.1 or higher is supported)
    __m128i a1, b1;
    a1 = Permute_int64< reinterpret_cast<eXuint32_t>(i0 < 2 ? i0 : -1), reinterpret_cast<eXuint32_t>(i1 < 2 ? i1 : -1) >(a);
    b1 = Permute_int64< reinterpret_cast<eXuint32_t>((i0 ^ 2) < 2 ? (i0 ^ 2) : -1), reinterpret_cast<eXuint32_t>((i1 ^ 2) < 2 ? (i1 ^ 2) : -1) > (b);
    return  _mm_or_si128(a1, b1);
}

template <int i0, int i1>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Blend_uint64(const eXSSEIntVector& a, const eXSSEIntVector& b)
{
    return Blend_int64<i0, i1>((__m128i)a, (__m128i)b);
}

template <int i0, int i1, int i2, int i3>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Blend_int32(const eXSSEIntVector& a, const eXSSEIntVector& b)
{

    // Combine all the indexes into a single bitfield, with 8 bits for each
    const eXint32_t m1 = (i0 & 7) | (i1 & 7) << 8 | (i2 & 7) << 16 | (i3 & 7) << 24;

    // Mask to zero out negative indexes
    const eXint32_t mz = (i0 < 0 ? 0 : 0xFF) | (i1 < 0 ? 0 : 0xFF) << 8 | (i2 < 0 ? 0 : 0xFF) << 16 | (i3 < 0 ? 0 : 0xFF) << 24;

    // Some elements must be set to zero
    const eXbool_t do_zero = (mz != -1) && ((i0 | i1 | i2 | i3) & 0x80) != 0;

    // temp contains temporary result, some zeroing needs to be done
    eXbool_t zeroing_pending = false;

    // partially finished result
    __m128i temp;
#if defined (_MSC_VER) || defined (__clang__)
    temp = a;  // avoid spurious warning message for temp unused
#endif

               // special case: no elements from b
    if ((m1 & 0x04040404 & mz) == 0)
    {
        return Permute_int32<i0, i1, i2, i3>(a);
    }

    // special case: no elements from a
    if (((m1 ^ 0x04040404) & 0x04040404 & mz) == 0)
    {
        return Permute_int32<i0&~4, i1&~4, i2&~4, i3&~4>(b);
    }

    // special case: PUNPCKLDQ
    if (((m1 ^ 0x05010400) & mz) == 0)
    {
        temp = _mm_unpacklo_epi32(a, b);
        if (do_zero) zeroing_pending = true; else return temp;
    }
    if (((m1 ^ 0x01050004) & mz) == 0)
    {
        temp = _mm_unpacklo_epi32(b, a);
        if (do_zero) zeroing_pending = true; else return temp;
    }

    // special case: PUNPCKHDQ 
    if (((m1 ^ 0x07030602) & mz) == 0)
    {
        temp = _mm_unpackhi_epi32(a, b);
        if (do_zero) zeroing_pending = true; else return temp;
    }
    if (((m1 ^ 0x03070206) & mz) == 0)
    {
        temp = _mm_unpackhi_epi32(b, a);
        if (do_zero) zeroing_pending = true; else return temp;
    }

    if (eX_has_SSSE3())
    {
        // special case: shift left
        if (i0 > 0 && i0 < 4 && ((m1 ^ ((i0 & 3) * 0x01010101u + 0x03020100u)) & mz) == 0)
        {
            temp = _mm_alignr_epi8(b, a, (i0 & 3) * 4);
            if (do_zero) zeroing_pending = true; else return temp;
        }

        // special case: shift right
        if (i0 > 4 && i0 < 8 && ((m1 ^ 0x04040404 ^ ((i0 & 3) * 0x01010101u + 0x03020100u)) & mz) == 0)
        {
            temp = _mm_alignr_epi8(a, b, (i0 & 3) * 4);
            if (do_zero) zeroing_pending = true; else return temp;
        }
    }

    if (eX_has_SSE41())
    {
        if ((((m1 & ~0x04040404) ^ 0x03020100) & mz) == 0)
        {
            // blending without permuting
            temp = _mm_blend_epi16(a, b, ((i0 >> 2) & 1) * 3 | ((((i1 >> 2) & 1) * 3) << 2) | ((((i2 >> 2) & 1) * 3) << 4) | ((((i3 >> 2) & 1) * 3) << 6));
            if (do_zero) zeroing_pending = true; else return temp;
        }
    }

    if (zeroing_pending)
    {
        // additional zeroing of temp needed
        __m128i maskz = Constant_int32< (i0 < 0 ? 0 : -1), (i1 < 0 ? 0 : -1), (i2 < 0 ? 0 : -1), (i3 < 0 ? 0 : -1) >();
        return _mm_and_si128(temp, maskz);
    }

    // general case
    if (eX_has_XOP())
    {
        __m128i mask = Constant_int32<
            i0 < 0 ? 0x80808080 : (i0 * 4 & 31) + (((i0 * 4 & 31) + 1) << 8) + (((i0 * 4 & 31) + 2) << 16) + (((i0 * 4 & 31) + 3) << 24),
            i1 < 0 ? 0x80808080 : (i1 * 4 & 31) + (((i1 * 4 & 31) + 1) << 8) + (((i1 * 4 & 31) + 2) << 16) + (((i1 * 4 & 31) + 3) << 24),
            i2 < 0 ? 0x80808080 : (i2 * 4 & 31) + (((i2 * 4 & 31) + 1) << 8) + (((i2 * 4 & 31) + 2) << 16) + (((i2 * 4 & 31) + 3) << 24),
            i3 < 0 ? 0x80808080 : (i3 * 4 & 31) + (((i3 * 4 & 31) + 1) << 8) + (((i3 * 4 & 31) + 2) << 16) + (((i3 * 4 & 31) + 3) << 24) >();
        return _mm_perm_epi8(a, b, mask);
    }
    else  // combine two permutes
    {
        __m128i a1 = Permute_int32<
            reinterpret_cast<eXuint32_t>(i0 < 4 ? i0 : -1),
            reinterpret_cast<eXuint32_t>(i1 < 4 ? i1 : -1),
            reinterpret_cast<eXuint32_t>(i2 < 4 ? i2 : -1),
            reinterpret_cast<eXuint32_t>(i3 < 4 ? i3 : -1) >(a);
        __m128i b1 = Permute_int32<
            reinterpret_cast<eXuint32_t>((i0 ^ 4) < 4 ? (i0 ^ 4) : -1),
            reinterpret_cast<eXuint32_t>((i1 ^ 4) < 4 ? (i1 ^ 4) : -1),
            reinterpret_cast<eXuint32_t>((i2 ^ 4) < 4 ? (i2 ^ 4) : -1),
            reinterpret_cast<eXuint32_t>((i3 ^ 4) < 4 ? (i3 ^ 4) : -1) > (b);
        return  _mm_or_si128(a1, b1);
    }
}

template <int i0, int i1, int i2, int i3>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Blend_uint32(const eXSSEIntVector& a, const eXSSEIntVector& b)
{
    return Blend_int32<i0, i1, i2, i3>(a, b);
}

template <int i0, int i1, int i2, int i3, int i4, int i5, int i6, int i7>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Blend_int16(const eXSSEIntVector& a, const eXSSEIntVector& b)
{

    // Combine all the indexes into a single bitfield, with 4 bits for each
    const eXint32_t m1 = (i0 & 0xF) | (i1 & 0xF) << 4 | (i2 & 0xF) << 8 | (i3 & 0xF) << 12
        | (i4 & 0xF) << 16 | (i5 & 0xF) << 20 | (i6 & 0xF) << 24 | (i7 & 0xF) << 28;

    // Mask to zero out negative indexes
    const eXint32_t mz = (i0 < 0 ? 0 : 0xF) | (i1 < 0 ? 0 : 0xF) << 4 | (i2 < 0 ? 0 : 0xF) << 8 | (i3 < 0 ? 0 : 0xF) << 12
        | (i4 < 0 ? 0 : 0xF) << 16 | (i5 < 0 ? 0 : 0xF) << 20 | (i6 < 0 ? 0 : 0xF) << 24 | (i7 < 0 ? 0 : 0xF) << 28;

    // Some elements must be set to zero
    const eXbool_t do_zero = (mz != -1) && ((i0 | i1 | i2 | i3 | i4 | i5 | i6 | i7) & 0x80) != 0;

    // temp contains temporary result, some zeroing needs to be done
    eXbool_t zeroing_pending = false;

    // partially finished result
    __m128i temp;

    if ((m1 & 0x88888888 & mz) == 0)
    {
        // no elements from b
        return Permute_int16<i0, i1, i2, i3, i4, i5, i6, i7>(a);
    }

    if (((m1 ^ 0x88888888) & 0x88888888 & mz) == 0)
    {
        // no elements from a
        return Permute_int16<i0&~8, i1&~8, i2&~8, i3&~8, i4&~8, i5&~8, i6&~8, i7&~8>(b);
    }

    // special case: PUNPCKLWD 
    if (((m1 ^ 0xB3A29180) & mz) == 0)
    {
        temp = _mm_unpacklo_epi16(a, b);
        if (do_zero) zeroing_pending = true; else return temp;
    }
    if (((m1 ^ 0x3B2A1908) & mz) == 0)
    {
        temp = _mm_unpacklo_epi16(b, a);
        if (do_zero) zeroing_pending = true; else return temp;
    }
    // special case: PUNPCKHWD 
    if (((m1 ^ 0xF7E6D5C4) & mz) == 0)
    {
        temp = _mm_unpackhi_epi16(a, b);
        if (do_zero) zeroing_pending = true; else return temp;
    }
    if (((m1 ^ 0x7F6E5D4C) & mz) == 0)
    {
        temp = _mm_unpackhi_epi16(b, a);
        if (do_zero) zeroing_pending = true; else return temp;
    }

    if (eX_has_SSSE3())
    {
        // special case: shift left
        if (i0 > 0 && i0 < 8 && ((m1 ^ ((i0 & 7) * 0x11111111u + 0x76543210u)) & mz) == 0)
        {
            temp = _mm_alignr_epi8(b, a, (i0 & 7) * 2);
            if (do_zero) zeroing_pending = true; else return temp;
        }

        // special case: shift right
        if (i0 > 8 && i0 < 16 && ((m1 ^ 0x88888888 ^ ((i0 & 7) * 0x11111111u + 0x76543210u)) & mz) == 0)
        {
            temp = _mm_alignr_epi8(a, b, (i0 & 7) * 2);
            if (do_zero) zeroing_pending = true; else return temp;
        }
    }

    if (eX_has_SSE41())
    {
        // special case: blending without permuting
        if ((((m1 & ~0x88888888) ^ 0x76543210) & mz) == 0)
        {
            temp = _mm_blend_epi16(a, b, (i0 >> 3 & 1) | (i1 >> 3 & 1) << 1 | (i2 >> 3 & 1) << 2 | (i3 >> 3 & 1) << 3
                                   | (i4 >> 3 & 1) << 4 | (i5 >> 3 & 1) << 5 | (i6 >> 3 & 1) << 6 | (i7 >> 3 & 1) << 7);
            if (do_zero) zeroing_pending = true; else return temp;
        }
    }

    if (zeroing_pending)
    {
        // additional zeroing of temp needed
        __m128i maskz = Constant_int32<
            (i0 < 0 ? 0 : 0xFFFF) | (i1 < 0 ? 0 : 0xFFFF0000),
            (i2 < 0 ? 0 : 0xFFFF) | (i3 < 0 ? 0 : 0xFFFF0000),
            (i4 < 0 ? 0 : 0xFFFF) | (i5 < 0 ? 0 : 0xFFFF0000),
            (i6 < 0 ? 0 : 0xFFFF) | (i7 < 0 ? 0 : 0xFFFF0000) >();
        return _mm_and_si128(temp, maskz);
    }

    // general case
    if (eX_has_XOP())
    {
        __m128i mask = Constant_int32<
            (i0 < 0 ? 0x8080 : (i0 * 2 & 31) | ((i0 * 2 & 31) + 1) << 8) | (i1 < 0 ? 0x80800000 : ((i1 * 2 & 31) << 16) | ((i1 * 2 & 31) + 1) << 24),
            (i2 < 0 ? 0x8080 : (i2 * 2 & 31) | ((i2 * 2 & 31) + 1) << 8) | (i3 < 0 ? 0x80800000 : ((i3 * 2 & 31) << 16) | ((i3 * 2 & 31) + 1) << 24),
            (i4 < 0 ? 0x8080 : (i4 * 2 & 31) | ((i4 * 2 & 31) + 1) << 8) | (i5 < 0 ? 0x80800000 : ((i5 * 2 & 31) << 16) | ((i5 * 2 & 31) + 1) << 24),
            (i6 < 0 ? 0x8080 : (i6 * 2 & 31) | ((i6 * 2 & 31) + 1) << 8) | (i7 < 0 ? 0x80800000 : ((i7 * 2 & 31) << 16) | ((i7 * 2 & 31) + 1) << 24) >();
        return _mm_perm_epi8(a, b, mask);
    }
    else
    {
        // combine two permutes
        __m128i a1 = Permute_int16<
            reinterpret_cast<eXuint32_t>(i0 < 8 ? i0 : -1),
            reinterpret_cast<eXuint32_t>(i1 < 8 ? i1 : -1),
            reinterpret_cast<eXuint32_t>(i2 < 8 ? i2 : -1),
            reinterpret_cast<eXuint32_t>(i3 < 8 ? i3 : -1),
            reinterpret_cast<eXuint32_t>(i4 < 8 ? i4 : -1),
            reinterpret_cast<eXuint32_t>(i5 < 8 ? i5 : -1),
            reinterpret_cast<eXuint32_t>(i6 < 8 ? i6 : -1),
            reinterpret_cast<eXuint32_t>(i7 < 8 ? i7 : -1) >(a);
        __m128i b1 = Permute_int16<
            reinterpret_cast<eXuint32_t>((i0 ^ 8) < 8 ? (i0 ^ 8) : -1),
            reinterpret_cast<eXuint32_t>((i1 ^ 8) < 8 ? (i1 ^ 8) : -1),
            reinterpret_cast<eXuint32_t>((i2 ^ 8) < 8 ? (i2 ^ 8) : -1),
            reinterpret_cast<eXuint32_t>((i3 ^ 8) < 8 ? (i3 ^ 8) : -1),
            reinterpret_cast<eXuint32_t>((i4 ^ 8) < 8 ? (i4 ^ 8) : -1),
            reinterpret_cast<eXuint32_t>((i5 ^ 8) < 8 ? (i5 ^ 8) : -1),
            reinterpret_cast<eXuint32_t>((i6 ^ 8) < 8 ? (i6 ^ 8) : -1),
            reinterpret_cast<eXuint32_t>((i7 ^ 8) < 8 ? (i7 ^ 8) : -1) >(b);
        return   _mm_or_si128(a1, b1);
    }
}

template <int i0, int i1, int i2, int i3, int i4, int i5, int i6, int i7>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Blend_uint16(const eXSSEIntVector& a, const eXSSEIntVector& b)
{
    return Blend_int16<i0, i1, i2, i3, i4, i5, i6, i7>(a, b);
}

template <int i0, int i1, int i2, int i3, int i4, int i5, int i6, int i7,
    int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15 >
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Blend_int8(const eXSSEIntVector& a, const eXSSEIntVector& b)
{

    // Combine bit 0-3 of all even indexes into a single bitfield, with 4 bits for each
    const eXint32_t me = (i0 & 15) | (i2 & 15) << 4 | (i4 & 15) << 8 | (i6 & 15) << 12
        | (i8 & 15) << 16 | (i10 & 15) << 20 | (i12 & 15) << 24 | (i14 & 15) << 28;

    // Combine bit 0-3 of all odd indexes into a single bitfield, with 4 bits for each
    const eXint32_t mo = (i1 & 15) | (i3 & 15) << 4 | (i5 & 15) << 8 | (i7 & 15) << 12
        | (i9 & 15) << 16 | (i11 & 15) << 20 | (i13 & 15) << 24 | (i15 & 15) << 28;

    // Mask indicating sign of all even indexes, with 4 bits for each, 0 for negative, 0xF for non-negative
    const eXint32_t se = (i0 < 0 ? 0 : 0xF) | (i2 < 0 ? 0 : 0xF) << 4 | (i4 < 0 ? 0 : 0xF) << 8 | (i6 < 0 ? 0 : 0xF) << 12
        | (i8 < 0 ? 0 : 0xF) << 16 | (i10 < 0 ? 0 : 0xF) << 20 | (i12 < 0 ? 0 : 0xF) << 24 | (i14 < 0 ? 0 : 0xF) << 28;

    // Mask indicating sign of all odd indexes, with 4 bits for each, 0 for negative, 0xF for non-negative
    const eXint32_t so = (i1 < 0 ? 0 : 0xF) | (i3 < 0 ? 0 : 0xF) << 4 | (i5 < 0 ? 0 : 0xF) << 8 | (i7 < 0 ? 0 : 0xF) << 12
        | (i9 < 0 ? 0 : 0xF) << 16 | (i11 < 0 ? 0 : 0xF) << 20 | (i13 < 0 ? 0 : 0xF) << 24 | (i15 < 0 ? 0 : 0xF) << 28;

    // Combine bit 4 of all even indexes into a single bitfield, with 4 bits for each
    const eXint32_t ne = (i0 & 16) >> 4 | (i2 & 16) | (i4 & 16) << 4 | (i6 & 16) << 8
        | (i8 & 16) << 12 | (i10 & 16) << 16 | (i12 & 16) << 20 | (i14 & 16) << 24;

    // Combine bit 4 of all odd indexes into a single bitfield, with 4 bits for each
    const eXint32_t no = (i1 & 16) >> 4 | (i3 & 16) | (i5 & 16) << 4 | (i7 & 16) << 8
        | (i9 & 16) << 12 | (i11 & 16) << 16 | (i13 & 16) << 20 | (i15 & 16) << 24;

    // Check if zeroing needed
    const eXbool_t do_zero = ((i0 | i1 | i2 | i3 | i4 | i5 | i6 | i7 | i8 | i9 | i10 | i11 | i12 | i13 | i14 | i15) & 0x80) != 0; // needs zeroing

    // no elements from b
    if (((ne & se) | (no & so)) == 0)
    {
        return Permute_int8<i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15>(a);
    }

    // no elements from a
    if ((((ne ^ 0x11111111) & se) | ((no ^ 0x11111111) & so)) == 0)
    {
        return Permute_int8<i0 ^ 16, i1 ^ 16, i2 ^ 16, i3 ^ 16, i4 ^ 16, i5 ^ 16, i6 ^ 16, i7 ^ 16, i8 ^ 16, i9 ^ 16, i10 ^ 16, i11 ^ 16, i12 ^ 16, i13 ^ 16, i14 ^ 16, i15 ^ 16>(b);
    }
    __m128i t;

    // check if we can use punpcklbw
    if (((me ^ 0x76543210) & se) == 0 && ((mo ^ 0x76543210) & so) == 0)
    {
        if ((ne & se) == 0 && ((no ^ 0x11111111) & so) == 0)
        {
            t = _mm_unpacklo_epi8(a, b);
        }
        if ((no & so) == 0 && ((ne ^ 0x11111111) & se) == 0)
        {
            t = _mm_unpacklo_epi8(b, a);
        }
        if (do_zero)
        {
            // additional zeroing needed
            __m128i maskz = Constant_int32<
                (i0 < 0 ? 0 : 0xFF) | (i1 < 0 ? 0 : 0xFF00) | (i2 < 0 ? 0 : 0xFF0000) | (i3 < 0 ? 0 : 0xFF000000),
                (i4 < 0 ? 0 : 0xFF) | (i5 < 0 ? 0 : 0xFF00) | (i6 < 0 ? 0 : 0xFF0000) | (i7 < 0 ? 0 : 0xFF000000),
                (i8 < 0 ? 0 : 0xFF) | (i9 < 0 ? 0 : 0xFF00) | (i10 < 0 ? 0 : 0xFF0000) | (i11 < 0 ? 0 : 0xFF000000),
                (i12 < 0 ? 0 : 0xFF) | (i13 < 0 ? 0 : 0xFF00) | (i14 < 0 ? 0 : 0xFF0000) | (i15 < 0 ? 0 : 0xFF000000) >();
            t = _mm_and_si128(t, maskz);
        }
        return t;
    }

    // check if we can use punpckhbw
    if (((me ^ 0xFEDCBA98) & se) == 0 && ((mo ^ 0xFEDCBA98) & so) == 0)
    {
        if ((ne & se) == 0 && ((no ^ 0x11111111) & so) == 0)
        {
            t = _mm_unpackhi_epi8(a, b);
        }
        if ((no & so) == 0 && ((ne ^ 0x11111111) & se) == 0)
        {
            t = _mm_unpackhi_epi8(b, a);
        }
        if (do_zero)
        {
            // additional zeroing needed
            __m128i maskz = Constant_int32<
                (i0 < 0 ? 0 : 0xFF) | (i1 < 0 ? 0 : 0xFF00) | (i2 < 0 ? 0 : 0xFF0000) | (i3 < 0 ? 0 : 0xFF000000),
                (i4 < 0 ? 0 : 0xFF) | (i5 < 0 ? 0 : 0xFF00) | (i6 < 0 ? 0 : 0xFF0000) | (i7 < 0 ? 0 : 0xFF000000),
                (i8 < 0 ? 0 : 0xFF) | (i9 < 0 ? 0 : 0xFF00) | (i10 < 0 ? 0 : 0xFF0000) | (i11 < 0 ? 0 : 0xFF000000),
                (i12 < 0 ? 0 : 0xFF) | (i13 < 0 ? 0 : 0xFF00) | (i14 < 0 ? 0 : 0xFF0000) | (i15 < 0 ? 0 : 0xFF000000) >();
            t = _mm_and_si128(t, maskz);
        }
        return t;
    }

    if (eX_has_SSSE3())
    {
        // special case: shift left
        if (i0 > 0 && i0 < 16 && i1 == i0 + 1 && i2 == i0 + 2 && i3 == i0 + 3 && i4 == i0 + 4 && i5 == i0 + 5 && i6 == i0 + 6 && i7 == i0 + 7 &&
            i8 == i0 + 8 && i9 == i0 + 9 && i10 == i0 + 10 && i11 == i0 + 11 && i12 == i0 + 12 && i13 == i0 + 13 && i14 == i0 + 14 && i15 == i0 + 15)
        {
            return _mm_alignr_epi8(b, a, (i0 & 15));
        }

        // special case: shift right
        if (i0 > 15 && i0 < 32 && i1 == ((i0 + 1) & 31) && i2 == ((i0 + 2) & 31) && i3 == ((i0 + 3) & 31) && i4 == ((i0 + 4) & 31) && i5 == ((i0 + 5) & 31) && i6 == ((i0 + 6) & 31) && i7 == ((i0 + 7) & 31) &&
            i8 == ((i0 + 8) & 31) && i9 == ((i0 + 9) & 31) && i10 == ((i0 + 10) & 31) && i11 == ((i0 + 11) & 31) && i12 == ((i0 + 12) & 31) && i13 == ((i0 + 13) & 31) && i14 == ((i0 + 14) & 31) && i15 == ((i0 + 15) & 31))
        {
            return _mm_alignr_epi8(a, b, (i0 & 15));
        }
    }

    if (eX_has_SSE41())
    {
        // special case: blend without permute
        if (((me ^ 0xECA86420) & se) == 0 && ((mo ^ 0xFDB97531) & so) == 0)
        {
            __m128i maskbl = Constant_int32<
                ((i0 & 16) ? 0xFF : 0) | ((i1 & 16) ? 0xFF00 : 0) | ((i2 & 16) ? 0xFF0000 : 0) | ((i3 & 16) ? 0xFF000000 : 0),
                ((i4 & 16) ? 0xFF : 0) | ((i5 & 16) ? 0xFF00 : 0) | ((i6 & 16) ? 0xFF0000 : 0) | ((i7 & 16) ? 0xFF000000 : 0),
                ((i8 & 16) ? 0xFF : 0) | ((i9 & 16) ? 0xFF00 : 0) | ((i10 & 16) ? 0xFF0000 : 0) | ((i11 & 16) ? 0xFF000000 : 0),
                ((i12 & 16) ? 0xFF : 0) | ((i13 & 16) ? 0xFF00 : 0) | ((i14 & 16) ? 0xFF0000 : 0) | ((i15 & 16) ? 0xFF000000 : 0) >();
            t = _mm_blendv_epi8(a, b, maskbl);
            if (do_zero)
            {
                // additional zeroing needed
                __m128i maskz = Constant_int32<
                    (i0 < 0 ? 0 : 0xFF) | (i1 < 0 ? 0 : 0xFF00) | (i2 < 0 ? 0 : 0xFF0000) | (i3 < 0 ? 0 : 0xFF000000),
                    (i4 < 0 ? 0 : 0xFF) | (i5 < 0 ? 0 : 0xFF00) | (i6 < 0 ? 0 : 0xFF0000) | (i7 < 0 ? 0 : 0xFF000000),
                    (i8 < 0 ? 0 : 0xFF) | (i9 < 0 ? 0 : 0xFF00) | (i10 < 0 ? 0 : 0xFF0000) | (i11 < 0 ? 0 : 0xFF000000),
                    (i12 < 0 ? 0 : 0xFF) | (i13 < 0 ? 0 : 0xFF00) | (i14 < 0 ? 0 : 0xFF0000) | (i15 < 0 ? 0 : 0xFF000000) >();
                t = _mm_and_si128(t, maskz);
            }
            return t;
        }
    }

    if (eX_has_XOP())
    {
        __m128i mask = Constant_int32<
            (i0 < 0 ? 0x80 : (i0 & 31)) | (i1 < 0 ? 0x80 : (i1 & 31)) << 8 | (i2 < 0 ? 0x80 : (i2 & 31)) << 16 | (i3 < 0 ? 0x80 : (i3 & 31)) << 24,
            (i4 < 0 ? 0x80 : (i4 & 31)) | (i5 < 0 ? 0x80 : (i5 & 31)) << 8 | (i6 < 0 ? 0x80 : (i6 & 31)) << 16 | (i7 < 0 ? 0x80 : (i7 & 31)) << 24,
            (i8 < 0 ? 0x80 : (i8 & 31)) | (i9 < 0 ? 0x80 : (i9 & 31)) << 8 | (i10 < 0 ? 0x80 : (i10 & 31)) << 16 | (i11 < 0 ? 0x80 : (i11 & 31)) << 24,
            (i12 < 0 ? 0x80 : (i12 & 31)) | (i13 < 0 ? 0x80 : (i13 & 31)) << 8 | (i14 < 0 ? 0x80 : (i14 & 31)) << 16 | (i15 < 0 ? 0x80 : (i15 & 31)) << 24 >();
        return _mm_perm_epi8(a, b, mask);
    }
    else if (eX_has_SSSE3())
    {
        // general case. Use PSHUFB
        __m128i maska = Constant_int32<
            ((i0 & 0x90) ? 0xFF : (i0 & 15)) | ((i1 & 0x90) ? 0xFF : (i1 & 15)) << 8 | ((i2 & 0x90) ? 0xFF : (i2 & 15)) << 16 | ((i3 & 0x90) ? 0xFF : (i3 & 15)) << 24,
            ((i4 & 0x90) ? 0xFF : (i4 & 15)) | ((i5 & 0x90) ? 0xFF : (i5 & 15)) << 8 | ((i6 & 0x90) ? 0xFF : (i6 & 15)) << 16 | ((i7 & 0x90) ? 0xFF : (i7 & 15)) << 24,
            ((i8 & 0x90) ? 0xFF : (i8 & 15)) | ((i9 & 0x90) ? 0xFF : (i9 & 15)) << 8 | ((i10 & 0x90) ? 0xFF : (i10 & 15)) << 16 | ((i11 & 0x90) ? 0xFF : (i11 & 15)) << 24,
            ((i12 & 0x90) ? 0xFF : (i12 & 15)) | ((i13 & 0x90) ? 0xFF : (i13 & 15)) << 8 | ((i14 & 0x90) ? 0xFF : (i14 & 15)) << 16 | ((i15 & 0x90) ? 0xFF : (i15 & 15)) << 24 >();
        __m128i maskb = Constant_int32<
            (((i0 ^ 0x10) & 0x90) ? 0xFF : (i0 & 15)) | (((i1 ^ 0x10) & 0x90) ? 0xFF : (i1 & 15)) << 8 | (((i2 ^ 0x10) & 0x90) ? 0xFF : (i2 & 15)) << 16 | (((i3 ^ 0x10) & 0x90) ? 0xFF : (i3 & 15)) << 24,
            (((i4 ^ 0x10) & 0x90) ? 0xFF : (i4 & 15)) | (((i5 ^ 0x10) & 0x90) ? 0xFF : (i5 & 15)) << 8 | (((i6 ^ 0x10) & 0x90) ? 0xFF : (i6 & 15)) << 16 | (((i7 ^ 0x10) & 0x90) ? 0xFF : (i7 & 15)) << 24,
            (((i8 ^ 0x10) & 0x90) ? 0xFF : (i8 & 15)) | (((i9 ^ 0x10) & 0x90) ? 0xFF : (i9 & 15)) << 8 | (((i10 ^ 0x10) & 0x90) ? 0xFF : (i10 & 15)) << 16 | (((i11 ^ 0x10) & 0x90) ? 0xFF : (i11 & 15)) << 24,
            (((i12 ^ 0x10) & 0x90) ? 0xFF : (i12 & 15)) | (((i13 ^ 0x10) & 0x90) ? 0xFF : (i13 & 15)) << 8 | (((i14 ^ 0x10) & 0x90) ? 0xFF : (i14 & 15)) << 16 | (((i15 ^ 0x10) & 0x90) ? 0xFF : (i15 & 15)) << 24 >();
        __m128i a1 = _mm_shuffle_epi8(a, maska);
        __m128i b1 = _mm_shuffle_epi8(b, maskb);
        return       _mm_or_si128(a1, b1);
    }
    else
    {
        // combine two permutes
        __m128i a1 = Permute_int8 <
            reinterpret_cast<eXuint32_t>(i0 < 16 ? i0 : -1),
            reinterpret_cast<eXuint32_t>(i1 < 16 ? i1 : -1),
            reinterpret_cast<eXuint32_t>(i2 < 16 ? i2 : -1),
            reinterpret_cast<eXuint32_t>(i3 < 16 ? i3 : -1),
            reinterpret_cast<eXuint32_t>(i4 < 16 ? i4 : -1),
            reinterpret_cast<eXuint32_t>(i5 < 16 ? i5 : -1),
            reinterpret_cast<eXuint32_t>(i6 < 16 ? i6 : -1),
            reinterpret_cast<eXuint32_t>(i7 < 16 ? i7 : -1),
            reinterpret_cast<eXuint32_t>(i8 < 16 ? i8 : -1),
            reinterpret_cast<eXuint32_t>(i9 < 16 ? i9 : -1),
            reinterpret_cast<eXuint32_t>(i10 < 16 ? i10 : -1),
            reinterpret_cast<eXuint32_t>(i11 < 16 ? i11 : -1),
            reinterpret_cast<eXuint32_t>(i12 < 16 ? i12 : -1),
            reinterpret_cast<eXuint32_t>(i13 < 16 ? i13 : -1),
            reinterpret_cast<eXuint32_t>(i14 < 16 ? i14 : -1),
            reinterpret_cast<eXuint32_t>(i15 < 16 ? i15 : -1) >(a);
        __m128i b1 = Permute_int8 <
            reinterpret_cast<eXuint32_t>((i0 ^ 16) < 16 ? (i0 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i1 ^ 16) < 16 ? (i1 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i2 ^ 16) < 16 ? (i2 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i3 ^ 16) < 16 ? (i3 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i4 ^ 16) < 16 ? (i4 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i5 ^ 16) < 16 ? (i5 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i6 ^ 16) < 16 ? (i6 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i7 ^ 16) < 16 ? (i7 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i8 ^ 16) < 16 ? (i8 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i9 ^ 16) < 16 ? (i9 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i10 ^ 16) < 16 ? (i10 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i11 ^ 16) < 16 ? (i11 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i12 ^ 16) < 16 ? (i12 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i13 ^ 16) < 16 ? (i13 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i14 ^ 16) < 16 ? (i14 ^ 16) : -1),
            reinterpret_cast<eXuint32_t>((i15 ^ 16) < 16 ? (i15 ^ 16) : -1) > (b);
        return   _mm_or_si128(a1, b1);
    }
}

template <int i0, int i1, int i2, int i3, int i4, int i5, int i6, int i7,
    int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15 >
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Blend_uint8(const eXSSEIntVector& a, const eXSSEIntVector& b)
{
    return Blend_int8<i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15>(a, b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Vector lookup functions                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_permute_int64(const eXSSEIntVector& index, const eXSSEIntVector& table)
{
    if (eX_has_SSSE3())
    {
        return _mm_shuffle_epi8(table, index * 0x0808080808080808ll + 0x0706050403020100ll);
    }
    else
    {
        eXint64_t ii[2], tt[2];
        table.Storeu(tt);  index.Storeu(ii);
        return eXSSEIntVector(tt[int(ii[0])], tt[int(ii[1])]);
    }
}

template <int n>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_int64(const eXSSEIntVector& index, const void* table)
{
    if (n <= 0) return 0;
    // n > 0. Limit index
    eXSSEIntVector index1;
    if ((n & (n - 1)) == 0)
    {
        // n is a power of 2, make index modulo n
        index1 = index & eXSSEIntVector(n - 1);
    }
    else
    {
        // n is not a power of 2, limit to n-1.
        // There is no 64-bit min instruction, but we can use the 32-bit unsigned min,
        // since n is a 32-bit integer
        index1 = Min_uint64(index, Constant_int32<n - 1, 0, n - 1, 0>());
    }
    eXuint32_t ii[4];  index1.Storeu(ii);  // use only lower 32 bits of each index
    eXint64_t const * tt = (eXint64_t const *)table;
    return eXSSEIntVector(tt[ii[0]], tt[ii[2]]);
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_permute_int32(const eXSSEIntVector& index, const eXSSEIntVector& table)
{
#if INSTRSET >= 5  // SSSE3
    return _mm_shuffle_epi8(table, index * 0x04040404 + 0x03020100);
#else
    return eXSSEIntVector(table[index[0]], table[index[1]], table[index[2]], table[index[3]]);
#endif
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_blend_int32(const eXSSEIntVector& index, const eXSSEIntVector& table0, const eXSSEIntVector& table1)
{
    // return Vec4i(lookup16(Vec8s(index * 0x20002 + 0x10000), Vec8s(table0), Vec8s(table1)));
#ifdef __XOP__  // AMD XOP instruction set. Use VPPERM
    return _mm_perm_epi8(table0, table1, index * 0x04040404 + 0x03020100);
#elif INSTRSET >= 8 // AVX2. Use VPERMD
    __m256i table01 = _mm256_inserti128_si256(_mm256_castsi128_si256(table0), table1, 1); // join tables into 256 bit vector

#if defined (_MSC_VER) && _MSC_VER < 1700 && ! defined(__INTEL_COMPILER)
                                                                                          // bug in MS VS 11 beta: operands in wrong order
    return _mm256_castsi256_si128(_mm256_permutevar8x32_epi32(_mm256_castsi128_si256(index), table01));
#elif defined (GCC_VERSION) && GCC_VERSION <= 40700 && !defined(__INTEL_COMPILER) && !defined(__clang__)
                                                                                          // Gcc 4.7.0 also has operands in wrong order
    return _mm256_castsi256_si128(_mm256_permutevar8x32_epi32(_mm256_castsi128_si256(index), table01));
#else
    return _mm256_castsi256_si128(_mm256_permutevar8x32_epi32(table01, _mm256_castsi128_si256(index)));
#endif // bug

#elif INSTRSET >= 4  // SSSE3
    Vec4i r0 = _mm_shuffle_epi8(table0, Vec16c(index * 0x04040404) + Vec16c(Vec4i(0x73727170)));
    Vec4i r1 = _mm_shuffle_epi8(table1, Vec16c(index * 0x04040404 ^ 0x10101010) + Vec16c(Vec4i(0x73727170)));
    return r0 | r1;
#else    // SSE2
    int32_t ii[4], tt[8], rr[4];
    table0.Storeu(tt);  table1.Storeu(tt + 4);  index.Storeu(ii);
    for (int j = 0; j < 4; j++) rr[j] = tt[ii[j] & 0x07];
    return Vec4i().Loadu(rr);
#endif
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_blend4_int32(const eXSSEIntVector& index, const eXSSEIntVector& table0, const eXSSEIntVector& table1, const eXSSEIntVector& table2, const eXSSEIntVector& table3)
{
#if INSTRSET >= 8 // AVX2. Use VPERMD
    __m256i table01 = _mm256_inserti128_si256(_mm256_castsi128_si256(table0), table1, 1); // join tables into 256 bit vector
    __m256i table23 = _mm256_inserti128_si256(_mm256_castsi128_si256(table2), table3, 1); // join tables into 256 bit vector
#if defined (_MSC_VER) && _MSC_VER < 1700 && ! defined(__INTEL_COMPILER)
                                                                                          // bug in MS VS 11 beta: operands in wrong order
    __m128i r0 = _mm256_castsi256_si128(_mm256_permutevar8x32_epi32(_mm256_castsi128_si256(index), table01));
    __m128i r1 = _mm256_castsi256_si128(_mm256_permutevar8x32_epi32(_mm256_castsi128_si256(index ^ 8), table23));
#elif defined (GCC_VERSION) && GCC_VERSION <= 40700 && !defined(__INTEL_COMPILER) && !defined(__clang__)
                                                                                          // Gcc 4.7.0 also has operands in wrong order
    __m128i r0 = _mm256_castsi256_si128(_mm256_permutevar8x32_epi32(_mm256_castsi128_si256(index), table01));
    __m128i r1 = _mm256_castsi256_si128(_mm256_permutevar8x32_epi32(_mm256_castsi128_si256(index ^ 8), table23));
#else
    __m128i r0 = _mm256_castsi256_si128(_mm256_permutevar8x32_epi32(table01, _mm256_castsi128_si256(index)));
    __m128i r1 = _mm256_castsi256_si128(_mm256_permutevar8x32_epi32(table23, _mm256_castsi128_si256(index ^ 8)));
#endif // bug
    return _mm_blendv_epi8(r0, r1, index > 8);

#elif defined (__XOP__)  // AMD XOP instruction set. Use VPPERM
    Vec4i r0 = _mm_perm_epi8(table0, table1, ((index) * 0x04040404u + 0x63626160u) & 0X9F9F9F9Fu);
    Vec4i r1 = _mm_perm_epi8(table2, table3, ((index ^ 8) * 0x04040404u + 0x63626160u) & 0X9F9F9F9Fu);
    return r0 | r1;

#elif INSTRSET >= 5  // SSSE3
    Vec16c aa = Vec16c(Vec4i(0x73727170));
    Vec4i r0 = _mm_shuffle_epi8(table0, Vec16c((index) * 0x04040404) + aa);
    Vec4i r1 = _mm_shuffle_epi8(table1, Vec16c((index ^ 4) * 0x04040404) + aa);
    Vec4i r2 = _mm_shuffle_epi8(table2, Vec16c((index ^ 8) * 0x04040404) + aa);
    Vec4i r3 = _mm_shuffle_epi8(table3, Vec16c((index ^ 12) * 0x04040404) + aa);
    return (r0 | r1) | (r2 | r3);

#else    // SSE2
    int32_t ii[4], tt[16], rr[4];
    table0.store(tt);  table1.store(tt + 4);  table2.store(tt + 8);  table3.store(tt + 12);
    index.store(ii);
    for (int j = 0; j < 4; j++) rr[j] = tt[ii[j] & 0x0F];
    return Vec4i().load(rr);
#endif
}

template <int n>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_int32(const eXSSEIntVector& index, const void* table)
{
    if (n <= 0) return 0;
    if (n <= 4) return lookup4(index, Vec4i().load(table));
    if (n <= 8) return lookup8(index, Vec4i().load(table), Vec4i().load((int32_t*)table + 4));
    // n > 8. Limit index
    Vec4ui index1;
    if ((n & (n - 1)) == 0)
    {
        // n is a power of 2, make index modulo n
        index1 = Vec4ui(index) & (n - 1);
    }
    else
    {
        // n is not a power of 2, limit to n-1
        index1 = min(Vec4ui(index), n - 1);
    }
#if INSTRSET >= 8 // AVX2. Use VPERMD
    return _mm_i32gather_epi32((const int *)table, index1, 4);
#else
    uint32_t ii[4];  index1.store(ii);
    return Vec4i(((int32_t*)table)[ii[0]], ((int32_t*)table)[ii[1]], ((int32_t*)table)[ii[2]], ((int32_t*)table)[ii[3]]);
#endif
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_permute_int16(const eXSSEIntVector& index, const eXSSEIntVector& table)
{
#if INSTRSET >= 5  // SSSE3
    return _mm_shuffle_epi8(table, index * 0x202 + 0x100);
#else
    int16_t ii[8], tt[8], rr[8];
    table.store(tt);  index.store(ii);
    for (int j = 0; j < 8; j++) rr[j] = tt[ii[j] & 0x07];
    return Vec8s().load(rr);
#endif
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_blend_int16(const eXSSEIntVector& index, const eXSSEIntVector& table0, const eXSSEIntVector& table1)
{
#ifdef __XOP__  // AMD XOP instruction set. Use VPPERM
    return _mm_perm_epi8(table0, table1, index * 0x202 + 0x100);
#elif INSTRSET >= 5  // SSSE3
    Vec8s r0 = _mm_shuffle_epi8(table0, Vec16c(index * 0x202) + Vec16c(Vec8s(0x7170)));
    Vec8s r1 = _mm_shuffle_epi8(table1, Vec16c(index * 0x202 ^ 0x1010) + Vec16c(Vec8s(0x7170)));
    return r0 | r1;
#else
    int16_t ii[16], tt[32], rr[16];
    table0.store(tt);  table1.store(tt + 8);  index.store(ii);
    for (int j = 0; j < 16; j++) rr[j] = tt[ii[j] & 0x1F];
    return Vec8s().load(rr);
#endif
}

template <int n>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_int16(const eXSSEIntVector& index, const void* table)
{
    if (n <= 0) return 0;
    if (n <= 8) return lookup8(index, Vec8s().load(table));
    if (n <= 16) return lookup16(index, Vec8s().load(table), Vec8s().load((int16_t*)table + 8));
    // n > 16. Limit index
    Vec8us index1;
    if ((n & (n - 1)) == 0)
    {
        // n is a power of 2, make index modulo n
        index1 = Vec8us(index) & (n - 1);
    }
    else
    {
        // n is not a power of 2, limit to n-1
        index1 = min(Vec8us(index), n - 1);
    }
#if INSTRSET >= 8 // AVX2. Use VPERMD
    Vec8s t1 = _mm_i32gather_epi32((const int *)table, __m128i((Vec4i(index1)) & (Vec4i(0x0000FFFF))), 2);  // even positions
    Vec8s t2 = _mm_i32gather_epi32((const int *)table, _mm_srli_epi32(index1, 16), 2);  // odd  positions
    return blend8s<0, 8, 2, 10, 4, 12, 6, 14>(t1, t2);
#else
    uint16_t ii[8];  index1.store(ii);
    return Vec8s(((int16_t*)table)[ii[0]], ((int16_t*)table)[ii[1]], ((int16_t*)table)[ii[2]], ((int16_t*)table)[ii[3]],
        ((int16_t*)table)[ii[4]], ((int16_t*)table)[ii[5]], ((int16_t*)table)[ii[6]], ((int16_t*)table)[ii[7]]);
#endif
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_permute_int8(const eXSSEIntVector& index, const eXSSEIntVector& table)
{
#if INSTRSET >= 5  // SSSE3
    return _mm_shuffle_epi8(table, index);
#else
    uint8_t ii[16];
    int8_t  tt[16], rr[16];
    table.Storeu(tt);  index.Storeu(ii);
    for (int j = 0; j < 16; j++) rr[j] = tt[ii[j] & 0x0F];
    return eXSSEIntVector().Loadu(rr);
#endif
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_blend_int8(const const eXSSEIntVector& index, const eXSSEIntVector& table0, const eXSSEIntVector& table1)
{
#ifdef __XOP__  // AMD XOP instruction set. Use VPPERM
    return _mm_perm_epi8(table0, table1, index);
#elif INSTRSET >= 5  // SSSE3
    eXSSEIntVector r0 = _mm_shuffle_epi8(table0, index + 0x70);           // make negative index for values >= 16
    eXSSEIntVector r1 = _mm_shuffle_epi8(table1, (index ^ 0x10) + 0x70);  // make negative index for values <  16
    return r0 | r1;
#else
    uint8_t ii[16];
    int8_t  tt[16], rr[16];
    table0.store(tt);  table1.store(tt + 16);  index.store(ii);
    for (int j = 0; j < 16; j++) rr[j] = tt[ii[j] & 0x1F];
    return eXSSEIntVector().load(rr);
#endif
}

template <int n>
eX_VECCALL(eXSSEIntVector) eXSSEIntVector::Lookup_int8(const eXSSEIntVector& index, const void* table)
{
    if (n <= 0) return 0;
    if (n <= 16) return lookup16(index, Vec16c().load(table));
    if (n <= 32) return lookup32(index, Vec16c().load(table), Vec16c().load((int8_t*)table + 16));
    // n > 32. Limit index
    Vec16uc index1;
    if ((n & (n - 1)) == 0)
    {
        // n is a power of 2, make index modulo n
        index1 = Vec16uc(index) & uint8_t(n - 1);
    }
    else
    {
        // n is not a power of 2, limit to n-1
        index1 = min(Vec16uc(index), uint8_t(n - 1));
    }
    uint8_t ii[16];  index1.store(ii);
    int8_t  rr[16];
    for (int j = 0; j < 16; j++)
    {
        rr[j] = ((int8_t*)table)[ii[j]];
    }
    return Vec16c().load(rr);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::ShiftLeft(const eXSSEIntVector& InXmmi_a, eXint32_t InImm)
{
    return _mm_slli_si128(InXmmi_a, InImm);
}

eX_VECCALL(eXSSEIntVector) eXSSEIntVector::ShiftRight(const eXSSEIntVector& InXmmi_a, eXint32_t InImm)
{
    return _mm_srli_si128(InXmmi_a, InImm);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEIntVector) operator&(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return eXSSEIntVector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEIntVector) operator|(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return eXSSEIntVector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEIntVector) operator^(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return eXSSEIntVector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEIntVector) operator~(const eXSSEIntVector& InXmmi_a)
{
    return eXSSEIntVector::Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEIntVector&) operator&=(eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    InXmmi_a = InXmmi_a & InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEIntVector&) operator|=(eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    InXmmi_a = InXmmi_a | InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEIntVector&) operator^=(eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    InXmmi_a = InXmmi_a ^ InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEIntVector) operator&&(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return InXmmi_a & InXmmi_b;
}

eX_VECCALL(eXSSEIntVector) operator||(const eXSSEIntVector& InXmmi_a, const eXSSEIntVector& InXmmi_b)
{
    return InXmmi_a | InXmmi_b;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEIntVector) operator<<(const eXSSEIntVector& InXmmi_a, eXint32_t InImm)
{
    return eXSSEIntVector::ShiftLeft(InXmmi_a, InImm);
}

eX_VECCALL(eXSSEIntVector) operator>>(const eXSSEIntVector& InXmmi_a, eXint32_t InImm)
{
    return eXSSEIntVector::ShiftRight(InXmmi_a, InImm);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEIntVector&) operator<<=(eXSSEIntVector& InXmmi_a, eXint32_t InImm)
{
    InXmmi_a = InXmmi_a << InImm;
    return InXmmi_a;
}

eX_VECCALL(eXSSEIntVector&) operator>>=(eXSSEIntVector& InXmmi_a, eXint32_t InImm)
{
    InXmmi_a = InXmmi_a >> InImm;
    return InXmmi_a;
}
