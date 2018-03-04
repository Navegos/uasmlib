
#include "eXSSEUint64Vector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt8Vector.h"
#include "eXSSEInt16Vector.h"
#include "eXSSEInt32Vector.h"
#include "eXSSEInt64Vector.h"
#include "eXSSEUint8Vector.h"
#include "eXSSEUint16Vector.h"
#include "eXSSEUint32Vector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEUint64Vector::eXSSEUint64Vector(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
    return *this;
}

eXSSEUint64Vector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEUint64Vector::eXSSEUint64Vector(const eXSSEUint64ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const eXSSEUint64ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
    return *this;
}

eXSSEUint64Vector::eXSSEUint64Vector(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint64Vector::eXSSEUint64Vector(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint64Vector::eXSSEUint64Vector(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint64Vector::eXSSEUint64Vector(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint64Vector::eXSSEUint64Vector(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint64Vector::eXSSEUint64Vector(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint64Vector::eXSSEUint64Vector(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint64Vector::eXSSEUint64Vector(eXuint64_t InX, eXuint64_t InY)
{
#if defined (_MSC_VER)  && _MSC_VER < 1900 && ! defined(__INTEL_COMPILER)
    // MS compiler has no _mm_set_epi64x in 32 bit mode
#if defined(eX_X64)                                    // 64 bit mode
#if defined(_MSC_VER) && ( _MSC_VER < 1700)
    __m128i x0 = _mm_cvtsi64_si128(InX);                // 64 bit load
    __m128i x1 = _mm_cvtsi64_si128(InY);                // 64 bit load
    __Xmmi = _mm_unpacklo_epi64(x0, InY);                   // combine
#else
    __Xmmi = _mm_set_epi64x(InY, InX);
#endif
#else   // MS compiler in 32-bit mode
    union
    {
        eXuint64_t q[2];
        eXuint32_t r[4];
    } u;
    u.q[0] = InX;  u.q[1] = InY;
    // this is inefficient, but other solutions are worse
    __Xmmi = _mm_setr_epi32(u.r[0], u.r[1], u.r[2], u.r[3]);
#endif  // __x86_64__
#else   // Other compilers
    __Xmmi = _mm_setr_epi64x(InX, InY);
#endif
}

eXSSEUint64Vector::eXSSEUint64Vector(eXuint64_t Ini)
{
#if defined (_MSC_VER) && _MSC_VER < 1900 && !defined(__INTEL_COMPILER)
    // MS compiler has no _mm_set1_epi64x in 32 bit mode
#if defined(eX_X64)                                    // 64 bit mode
#if defined(_MSC_VER) && ( _MSC_VER < 1700)
    __m128i x1 = _mm_cvtsi64_si128(Ini);                 // 64 bit load
    __Xmmi = _mm_unpacklo_epi64(x1, x1);                   // broadcast
#else
    __Xmmi = _mm_set1_epi64x(Ini);
#endif
#else
    union
    {
        eXuint64_t q[2];
        eXuint32_t r[4];
    } u;
    u.q[0] = u.q[1] = Ini;
    __Xmmi = _mm_setr_epi32(u.r[0], u.r[1], u.r[2], u.r[3]);
    /*    // this will use an mm register and produce store forwarding stall:
    union {
    __m64 m;
    eXuint64_t ii;
    } u;
    u.ii = Ini;
    __Xmmi = _mm_set1_epi64(u.m);
    _m_empty();        */

#endif  // eX_X64
#else   // Other compilers
    __Xmmi = _mm_set1_epi64x(Ini);
#endif
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const eXuint64_t Ini)
{
#if defined (_MSC_VER) && _MSC_VER < 1900 && !defined(__INTEL_COMPILER)
    // MS compiler has no _mm_set1_epi64x in 32 bit mode
#if defined(eX_X64)                                    // 64 bit mode
#if defined(_MSC_VER) && ( _MSC_VER < 1700)
    __m128i x1 = _mm_cvtsi64_si128(Ini);                 // 64 bit load
    __Xmmi = _mm_unpacklo_epi64(x1, x1);                   // broadcast
#else
    __Xmmi = _mm_set1_epi64x(Ini);
#endif
#else
    union
    {
        eXuint64_t q[2];
        eXuint32_t r[4];
    } u;
    u.q[0] = u.q[1] = Ini;
    __Xmmi = _mm_setr_epi32(u.r[0], u.r[1], u.r[2], u.r[3]);
    /*    // this will use an mm register and produce store forwarding stall:
    union {
    __m64 m;
    eXuint64_t ii;
    } u;
    u.ii = Ini;
    __Xmmi = _mm_set1_epi64(u.m);
    _m_empty();        */

#endif  // eX_X64
#else   // Other compilers
    __Xmmi = _mm_set1_epi64x(Ini);
#endif
    return *this;
}

eXSSEUint64Vector::eXSSEUint64Vector(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::operator=(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::Loadu(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::Load(const void* InPtr)
{
    __Xmmi = _mm_load_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(void) eXSSEUint64Vector::Storeu(void* OutPtr) const
{
    eXSSEIntVector::Storeu(OutPtr);
}

eX_VECCALL(void) eXSSEUint64Vector::Store(void* OutPtr) const
{
    eXSSEIntVector::Store(OutPtr);
}

// Partial load. Load n elements and set the rest to 0
eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::Load_partial(int n, const void* InPtr)
{
    switch (n)
    {
        case 0:
            *this = eXSSEuint64_0;  break;
        case 1:
            __Xmmi = _mm_cvtsi64_si128(*reinterpret_cast<const eXuint64_t*>(InPtr));  break;
        case 2:
            Loadu(InPtr);  break;
        default:
            break;
    }
    return *this;
}

// Partial store. Store n elements
eX_VECCALL(void) eXSSEUint64Vector::Store_partial(int n, void* OutPtr) const
{
    switch (n)
    {
        case 1:
            eXuint64_t q[2];
            Storeu(q);
            *reinterpret_cast<eXuint64_t*>(OutPtr) = q[0];  break;
        case 2:
            Storeu(OutPtr);  break;
        default:
            break;
    }
}

eX_VECCALL(eXSSEUint64Vector&) eXSSEUint64Vector::Cutoff(int n)
{
    *this = eXSSEUint8Vector(__Xmmi).Cutoff(n * 8);
    return *this;
}

eX_VECCALL(const eXSSEUint64Vector&) eXSSEUint64Vector::Insert(eXuint32_t index, eXuint64_t Invalue)
{
#if defined(eX_X64)  // SSE4.1 supported, 64 bit mode
    if (eX_has_SSE41())
    {
        __Xmmi = _mm_insert_epi64(__Xmmi, Invalue, index & 1);
        /*if ((index & 1) == 0)
        {
        __Xmmi = _mm_insert_epi64(__Xmmi, Invalue, 0);
        }
        else if ((index & 1) == 1)
        {
        __Xmmi = _mm_insert_epi64(__Xmmi, Invalue, 1);
        }*/
    }
    else               // SSE2
    {
        __m128i v = _mm_cvtsi64_si128(Invalue);                // 64 bit load

        if ((index & 1) == 0)
        {
            v = _mm_unpacklo_epi64(v, v);
            __Xmmi = _mm_unpackhi_epi64(v, __Xmmi);
        }
        else if ((index & 1) == 1)
        {  // index = 1
            __Xmmi = _mm_unpacklo_epi64(__Xmmi, v);
        }
    }
#else
    union
    {
        __m128i m;
        eXuint64_t ii;
    } u;
    u.ii = Invalue;
    __m128i v = _mm_loadl_epi64(&u.m);

    if ((index & 1) == 0)
    {
        v = _mm_unpacklo_epi64(v, v);
        __Xmmi = _mm_unpackhi_epi64(v, __Xmmi);
    }
    else if ((index & 1) == 1)
    {  // index = 1
        __Xmmi = _mm_unpacklo_epi64(__Xmmi, v);
    }
#endif
    return *this;
}

eX_VECCALL(eXuint64_t) eXSSEUint64Vector::Extract(eXuint32_t index) const
{
#if defined(eX_X64)  // SSE4.1 supported, 64 bit mode
    if (eX_has_SSE41())
    {
        return _mm_extract_epi64(__Xmmi, index & 1);
    }
    else               // SSE2
    {
        eXuint64_t x[2];
        Storeu(x);
        return x[index & 1];
    }
#else
    eXuint64_t x[2];
    Storeu(x);
    return x[index & 1];
#endif
}

eX_VECCALL(eXuint64_t*) eXSSEUint64Vector::Get_All() const
{
    eXuint64_t x[4];
    Storeu(x);
    return x;
}

eX_VECCALL(eXuint64_t) eXSSEUint64Vector::Get_X() const
{
    return Extract(0);
}

eX_VECCALL(eXuint64_t) eXSSEUint64Vector::Get_Y() const
{
    return Extract(1);
}

eX_VECCALL(const eXSSEUint64Vector&) eXSSEUint64Vector::Set_All(eXuint64_t InX, eXuint64_t InY)
{
#if defined (_MSC_VER)  && _MSC_VER < 1900 && ! defined(__INTEL_COMPILER)
    // MS compiler has no _mm_set_epi64x in 32 bit mode
#if defined(eX_X64)                                    // 64 bit mode
#if defined(_MSC_VER) && ( _MSC_VER < 1700)
    __m128i x0 = _mm_cvtsi64_si128(InX);                // 64 bit load
    __m128i x1 = _mm_cvtsi64_si128(InY);                // 64 bit load
    __Xmmi = _mm_unpacklo_epi64(x0, InY);                   // combine
#else
    __Xmmi = _mm_set_epi64x(InY, InX);
#endif
#else   // MS compiler in 32-bit mode
    union
    {
        eXuint64_t q[2];
        eXuint32_t r[4];
    } u;
    u.q[0] = InX;  u.q[1] = InY;
    // this is inefficient, but other solutions are worse
    __Xmmi = _mm_setr_epi32(u.r[0], u.r[1], u.r[2], u.r[3]);
#endif  // __x86_64__
#else   // Other compilers
    __Xmmi = _mm_setr_epi64x(InX, InY);
#endif
    return *this;
}

eX_VECCALL(const eXSSEUint64Vector&) eXSSEUint64Vector::Set_X(eXuint64_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEUint64Vector&) eXSSEUint64Vector::Set_Y(eXuint64_t Invalue)
{
    return Insert(1, Invalue);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::And(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEIntVector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Or(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEIntVector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Xor(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEIntVector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Not(const eXSSEUint64Vector& InXmmi_a)
{
    return eXSSEIntVector::Not(InXmmi_a);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::AndNot(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEIntVector::AndNot(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Horizontal_And(const eXSSEUint64Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_And(InXmmi_a);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Horizontal_Or(const eXSSEUint64Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_Or(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bAnd(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEIntVector::bAnd(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bOr(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEIntVector::bOr(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bHorizontal_And(const eXSSEUint64Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_And(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bHorizontal_Or(const eXSSEUint64Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_Or(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Logical_And(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return InXmmi_a & InXmmi_b;
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Logical_Or(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return InXmmi_a | InXmmi_b;
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Logical_Not(const eXSSEUint64Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comeq_epu64(InXmmi_a, _mm_setzero_si128());
    }
    else if (eX_has_SSE41())
    {
        __m128i signbit = Constant_uint32<0, 0x80000000, 0, 0x80000000>();
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
        return  _mm_cmpeq_epi64(a1, b1);
    }
    else               // SSE2
    {
        // no 64 compare instruction. Do two 32 bit compares
        __m128i signbit = _mm_set1_epi32(0x80000000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
        __m128i com32 = _mm_cmpeq_epi32(a1, b1);                 // 32 bit compares
        __m128i com32s = _mm_shuffle_epi32(com32, 0xB1);        // swap low and high dwords
        __m128i test = _mm_and_si128(com32, com32s);          // low & high
        __m128i teste = _mm_srai_epi32(test, 31);              // extend sign bit to 32 bits
        return _mm_shuffle_epi32(teste, 0xF5);        // extend sign bit to 64 bits
    }
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bLogical_And(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(InXmmi_a & InXmmi_b) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bLogical_Or(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return (_mm_movemask_epi8(InXmmi_a | InXmmi_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bLogical_Not(const eXSSEUint64Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comeq_epu64(InXmmi_a, _mm_setzero_si128())) == 0xFFFF) != 0);
    }
    else if (eX_has_SSE41())
    {
        __m128i signbit = Constant_uint32<0, 0x80000000, 0, 0x80000000>();
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
        return  ((_mm_movemask_epi8(_mm_cmpeq_epi64(a1, b1)) == 0xFFFF) != 0);
    }
    else
    {
        // no 64 compare instruction. Do two 32 bit compares
        __m128i signbit = _mm_set1_epi32(0x80000000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
        __m128i com32 = _mm_cmpeq_epi32(a1, b1);                 // 32 bit compares
        __m128i com32s = _mm_shuffle_epi32(com32, 0xB1);        // swap low and high dwords
        __m128i test = _mm_and_si128(com32, com32s);          // low & high
        __m128i teste = _mm_srai_epi32(test, 31);              // extend sign bit to 32 bits
        return ((_mm_movemask_epi8(_mm_shuffle_epi32(teste, 0xF5)) == 0xFFFF) != 0);        // extend sign bit to 64 bits
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                      Vector permute functions                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <int PermuteX, int PermuteY>
eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::permute_template(const eXSSEUint64Vector& InXmmi_a)
{
	return eXSSEInt64Vector::permute_template<PermuteX, PermuteY>(InXmmi_a);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Permute(const eXSSEUint64Vector& InXmmi_a, int PermuteX, int PermuteY)
{
	return eXSSEInt64Vector::Permute(InXmmi_a, PermuteX, PermuteY);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Add(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return _mm_add_epi64(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Sub(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return _mm_sub_epi64(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Mul(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) 
    if (eX_has_AVX512DQ() && eX_has_AVX512VL())  // AVX512VL instruction set
    {
        return _mm_mullo_epi64(InXmmi_a, InXmmi_b);
    }
    else
#endif
        if (eX_has_SSE41())  // SSE4.1 instruction set
        {
            // instruction does not exist. Split into 32-bit multiplies
            __m128i bswap = _mm_shuffle_epi32(InXmmi_b, 0xB1);           // b0H,b0L,b1H,b1L (swap H<->L)
            __m128i prodlh = _mm_mullo_epi32(InXmmi_a, bswap);            // a0Lb0H,a0Hb0L,a1Lb1H,a1Hb1L, 32 bit L*H products
            __m128i zero = _mm_setzero_si128();                 // 0
            __m128i prodlh2 = _mm_hadd_epi32(prodlh, zero);         // a0Lb0H+a0Hb0L,a1Lb1H+a1Hb1L,0,0
            __m128i prodlh3 = _mm_shuffle_epi32(prodlh2, 0x73);     // 0, a0Lb0H+a0Hb0L, 0, a1Lb1H+a1Hb1L
            __m128i prodll = _mm_mul_epu32(InXmmi_a, InXmmi_b);                  // a0Lb0L,a1Lb1L, 64 bit unsigned products
            __m128i prod = _mm_add_epi64(prodll, prodlh3);       // a0Lb0L+(a0Lb0H+a0Hb0L)<<32, a1Lb1L+(a1Lb1H+a1Hb1L)<<32
        }
        else
        {
            int64_t aa[2], bb[2];
            InXmmi_a.Storeu(aa);                                           // split into elements
            InXmmi_b.Storeu(bb);
            return eXSSEUint64Vector(aa[0] * bb[0], aa[1] * bb[1]);                // multiply elements separately
        }
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Max(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) 
    if (eX_has_AVX512VL())  // AVX512VL instruction set
    {
        return _mm_max_epu64(InXmmi_a, InXmmi_b);
    }
    else              // SSE2
#endif
    {
        return Select(InXmmi_a > InXmmi_b, InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Min(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) 
    if (eX_has_AVX512VL())  // AVX512VL instruction set
    {
        return _mm_min_epu64(InXmmi_a, InXmmi_b);
    }
    else              // SSE2
#endif
    {
        return Select(InXmmi_a < InXmmi_b, InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Add_Sat(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    eXSSEUint64Vector sum = InXmmi_a + InXmmi_b;
    eXSSEUint64Vector aorb = InXmmi_a | InXmmi_b;
    eXSSEUint64Vector overflow = sum < aorb;                  // overflow if a + b < (a | b)
    return sum | overflow;                        // return 0xFFFFFFFF if overflow
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Sub_Sat(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    eXSSEUint64Vector diff = InXmmi_a - InXmmi_b;
    eXSSEUint64Vector underflow = diff > InXmmi_a;                   // underflow if a - b > a
    return _mm_andnot_si128(underflow, diff);               // return 0 if underflow
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::If_Add(const eXSSEUint64Vector& InXmmi_f, const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return InXmmi_a + InXmmi_f & InXmmi_b;
}

eX_VECCALL(eXuint32_t) eXSSEUint64Vector::Horizontal_Add(const eXSSEUint64Vector& InXmmi_a)
{
    __m128i sum1 = _mm_shuffle_epi32(InXmmi_a, 0x0E);             // high element
    __m128i sum2 = _mm_add_epi64(InXmmi_a, sum1);                 // sum
#if defined(eX_X64)
    return          _mm_cvtsi128_si64(sum2);               // 64 bit mode
#else
    union
    {
        __m128i x;  // silly definition of _mm_storel_epi64 requires __m128i
        eXuint64_t i;
    } u;
    _mm_storel_epi64(&u.x, sum2);
    return u.i;
#endif
}

eX_VECCALL(eXuint64_t) eXSSEUint64Vector::Horizontal_Add_x(const eXSSEUint64Vector& InXmmi_a)
{
    __m128i signs = Srli(InXmmi_a, 63);                  // sign of all elements
    __m128i a01 = _mm_unpacklo_epi64(InXmmi_a, signs);           // sign-extended a0, a1
    __m128i a23 = _mm_unpackhi_epi64(InXmmi_a, signs);           // sign-extended a2, a3
    __m128i sum1 = _mm_add_epi64(a01, a23);                // add

    __m128i sum2 = _mm_unpackhi_epi64(sum1, sum1);         // high qword
    __m128i sum3 = _mm_add_epi64(sum1, sum2);              // add
#if defined (eX_X64)
    return          _mm_cvtsi128_si64(sum3);               // 64 bit mode
#else
    union
    {
        __m128i x;  // silly definition of _mm_storel_epi64 requires __m128i
        int64_t i;
    } u;
    _mm_storel_epi64(&u.x, sum3);
    return u.i;
#endif
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Slli(const eXSSEUint64Vector& InXmmi_a, int InCount)
{
    return _mm_slli_epi64(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Sll(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_Count)
{
    return _mm_sll_epi64(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Srli(const eXSSEUint64Vector& InXmmi_a, int InCount)
{
    return _mm_srli_epi64(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Srl(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_Count)
{
    return _mm_srl_epi64(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comeq_epu64(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE41())
    {
        __m128i signbit = Constant_uint32<0, 0x80000000, 0, 0x80000000>();
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return  _mm_cmpeq_epi64(a1, b1);
    }
    else
    {
        // no 64 compare instruction. Do two 32 bit compares
        __m128i signbit = _mm_set1_epi32(0x80000000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        __m128i com32 = _mm_cmpeq_epi32(a1, b1);                 // 32 bit compares
        __m128i com32s = _mm_shuffle_epi32(com32, 0xB1);        // swap low and high dwords
        __m128i test = _mm_and_si128(com32, com32s);          // low & high
        __m128i teste = _mm_srai_epi32(test, 31);              // extend sign bit to 32 bits
        return _mm_shuffle_epi32(teste, 0xF5);        // extend sign bit to 64 bits
    }
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Lessthan(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comlt_epu64(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE42()) // SSE4.2
    {
        __m128i sign64 = Constant_uint32<0, 0x80000000, 0, 0x80000000>();
        __m128i aflip = _mm_xor_si128(InXmmi_a, sign64);             // flip sign bits to use signed compare
        __m128i bflip = _mm_xor_si128(InXmmi_b, sign64);
        return _mm_cmpgt_epi64(bflip, aflip);
    }
    else            // SSE2 instruction set
    {
        __m128i sign32 = _mm_set1_epi32(0x80000000);          // sign bit of each dword
        __m128i aflip = _mm_xor_si128(InXmmi_a, sign32);             // a with sign bits flipped to use signed compare
        __m128i bflip = _mm_xor_si128(InXmmi_b, sign32);             // b with sign bits flipped to use signed compare
        __m128i equal = _mm_cmpeq_epi32(InXmmi_a, InXmmi_b);                // a == b, dwords
        __m128i bigger = _mm_cmpgt_epi32(bflip, aflip);        // a > b, dwords
        __m128i biggerl = _mm_shuffle_epi32(bigger, 0xA0);      // a > b, low dwords copied to high dwords
        __m128i eqbig = _mm_and_si128(equal, biggerl);        // high part equal and low part bigger
        __m128i hibig = _mm_or_si128(bigger, eqbig);          // high part bigger or high part equal and low part bigger
        return _mm_shuffle_epi32(hibig, 0xF5);       // result copied to low part
    }
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Greaterthan(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comgt_epu64(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE42()) // SSE4.2
    {
        __m128i sign64 = Constant_uint32<0, 0x80000000, 0, 0x80000000>();
        __m128i aflip = _mm_xor_si128(InXmmi_a, sign64);             // flip sign bits to use signed compare
        __m128i bflip = _mm_xor_si128(InXmmi_b, sign64);
        return _mm_cmpgt_epi64(aflip, bflip);
    }
    else            // SSE2 instruction set
    {
        __m128i sign32 = _mm_set1_epi32(0x80000000);          // sign bit of each dword
        __m128i aflip = _mm_xor_si128(InXmmi_a, sign32);             // a with sign bits flipped to use signed compare
        __m128i bflip = _mm_xor_si128(InXmmi_b, sign32);             // b with sign bits flipped to use signed compare
        __m128i equal = _mm_cmpeq_epi32(InXmmi_a, InXmmi_b);                // a == b, dwords
        __m128i bigger = _mm_cmpgt_epi32(aflip, bflip);        // a > b, dwords
        __m128i biggerl = _mm_shuffle_epi32(bigger, 0xA0);      // a > b, low dwords copied to high dwords
        __m128i eqbig = _mm_and_si128(equal, biggerl);        // high part equal and low part bigger
        __m128i hibig = _mm_or_si128(bigger, eqbig);          // high part bigger or high part equal and low part bigger
        return _mm_shuffle_epi32(hibig, 0xF5);       // result copied to low part
    }
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Lessthan_or_equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comle_epu64(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE41())  // SSE4.1
    {
        return _mm_cmpeq_epi64(InXmmi_a, Min(InXmmi_a, InXmmi_b));         // min(a,b), unsigned             // a == max(a,b)
    }
    else // SSE2
    {
        return Lessthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Greaterthan_or_equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comge_epu64(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE41())  // SSE4.1
    {
        return _mm_cmpeq_epi64(InXmmi_a, Max(InXmmi_a, InXmmi_b));            // max(a,b), unsigned          // a == max(a,b)
    }
    else // SSE2
    {
        return Greaterthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Not_Equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comneq_epu64(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        return Not(Equal(InXmmi_a, InXmmi_b));
    }
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Not_Lessthan(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return Not(Lessthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Not_Lessthan_or_equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Not_Greaterthan(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return Not(Greaterthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEUint64Vector) eXSSEUint64Vector::Not_Greaterthan_or_equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bEqual(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comeq_epu64(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bLessthan(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comlt_epu64(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bGreaterthan(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comgt_epu64(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bLessthan_or_equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comle_epu64(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bGreaterthan_or_equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comge_epu64(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bNot_Equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comneq_epu64(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else  // SSE2
    {
        return ((_mm_movemask_epi8(Not_Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bNot_Lessthan(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return bGreaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bNot_Lessthan_or_equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return bGreaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bNot_Greaterthan(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return bLessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint64Vector::bNot_Greaterthan_or_equal(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return bLessthan(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector) operator&(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator|(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator^(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator~(const eXSSEUint64Vector& InXmmi_a)
{
    return eXSSEUint64Vector::Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector&) operator&=(eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a & InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint64Vector&) operator|=(eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a | InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint64Vector&) operator^=(eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a ^ InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::bLogical_And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::bLogical_Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEUint64Vector& InXmmi_a)
{
    return  eXSSEUint64Vector::bLogical_Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
eX_VECCALL(eXSSEUint64Vector) operator+(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Add(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator-(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Sub(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator*(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Mul(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
eX_VECCALL(eXSSEUint64Vector&) operator+=(eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a + InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint64Vector&) operator-=(eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    InXmmi_a= InXmmi_a - InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint64Vector&) operator*=(eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a * InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector&) operator++(eXSSEUint64Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a + eXSSEuint64_1;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint64Vector&) operator--(eXSSEUint64Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a - eXSSEuint64_1;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector) operator++(eXSSEUint64Vector& InXmmi_a, int)
{
    eXSSEUint64Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a + eXSSEuint64_1;
    return tmpXmmi_a;
}

eX_VECCALL(eXSSEUint64Vector) operator--(eXSSEUint64Vector& InXmmi_a, int)
{
    eXSSEUint64Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a - eXSSEuint64_1;
    return tmpXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector) operator<<(const eXSSEUint64Vector& InXmmi_a, int InCount)
{
    return eXSSEUint64Vector::Slli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint64Vector) operator<<(const eXSSEUint64Vector& InXmmi_a, eXSSEUint64Vector& InXmmi_Count)
{
    return eXSSEUint64Vector::Sll(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEUint64Vector) operator>>(const eXSSEUint64Vector& InXmmi_a, int InCount)
{
    return eXSSEUint64Vector::Srli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint64Vector) operator>>(const eXSSEUint64Vector& InXmmi_a, eXSSEUint64Vector& InXmmi_Count)
{
    return eXSSEUint64Vector::Srl(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector&) operator<<=(eXSSEUint64Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a << InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint64Vector&) operator<<=(eXSSEUint64Vector& InXmmi_a, eXSSEUint64Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a << InXmmi_Count;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint64Vector&) operator>>=(eXSSEUint64Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a >> InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint64Vector&) operator>>=(eXSSEUint64Vector& InXmmi_a, eXSSEUint64Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a >> InXmmi_Count;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint64Vector) operator==(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator<(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator<=(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Lessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator>(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator>=(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Greaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint64Vector) operator!=(const eXSSEUint64Vector& InXmmi_a, const eXSSEUint64Vector& InXmmi_b)
{
    return eXSSEUint64Vector::Not_Equal(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXuint64_t) eXSSEUint64Vector::operator[](uint32_t index) const
{
    return Extract(index);
}
