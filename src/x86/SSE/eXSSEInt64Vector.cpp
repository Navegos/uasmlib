
#include "eXSSEInt64Vector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt8Vector.h"
#include "eXSSEInt16Vector.h"
#include "eXSSEInt32Vector.h"
#include "eXSSEUint8Vector.h"
#include "eXSSEUint16Vector.h"
#include "eXSSEUint32Vector.h"
#include "eXSSEUint64Vector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEInt64Vector::eXSSEInt64Vector(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
    return *this;
}

eXSSEInt64Vector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEInt64Vector::eXSSEInt64Vector(const eXSSEInt64ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const eXSSEInt64ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
    return *this;
}

eXSSEInt64Vector::eXSSEInt64Vector(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt64Vector::eXSSEInt64Vector(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt64Vector::eXSSEInt64Vector(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt64Vector::eXSSEInt64Vector(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt64Vector::eXSSEInt64Vector(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt64Vector::eXSSEInt64Vector(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt64Vector::eXSSEInt64Vector(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt64Vector::eXSSEInt64Vector(const eXint64_t InX, const eXint64_t InY)
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
        eXint64_t q[2];
        eXint32_t r[4];
    } u;
    u.q[0] = InX;  u.q[1] = InY;
    // this is inefficient, but other solutions are worse
    __Xmmi = _mm_setr_epi32(u.r[0], u.r[1], u.r[2], u.r[3]);
#endif  // __x86_64__
#else   // Other compilers
    __Xmmi = _mm_setr_epi64x(InX, InY);
#endif
}

eXSSEInt64Vector::eXSSEInt64Vector(eXint64_t Ini)
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
        eXint64_t q[2];
        eXint32_t r[4];
    } u;
    u.q[0] = u.q[1] = Ini;
    __Xmmi = _mm_setr_epi32(u.r[0], u.r[1], u.r[2], u.r[3]);
    /*    // this will use an mm register and produce store forwarding stall:
    union {
    __m64 m;
    eXint64_t ii;
    } u;
    u.ii = Ini;
    __Xmmi = _mm_set1_epi64(u.m);
    _m_empty();        */

#endif  // eX_X64
#else   // Other compilers
    __Xmmi = _mm_set1_epi64x(Ini);
#endif
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const eXint64_t Ini)
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
        eXint64_t q[2];
        eXint32_t r[4];
    } u;
    u.q[0] = u.q[1] = Ini;
    __Xmmi = _mm_setr_epi32(u.r[0], u.r[1], u.r[2], u.r[3]);
    /*    // this will use an mm register and produce store forwarding stall:
    union {
    __m64 m;
    eXint64_t ii;
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

eXSSEInt64Vector::eXSSEInt64Vector(int Ini)
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
        eXint64_t q[2];
        eXint32_t r[4];
    } u;
    u.q[0] = u.q[1] = Ini;
    __Xmmi = _mm_setr_epi32(u.r[0], u.r[1], u.r[2], u.r[3]);
    /*    // this will use an mm register and produce store forwarding stall:
    union {
    __m64 m;
    eXint64_t ii;
    } u;
    u.ii = Ini;
    __Xmmi = _mm_set1_epi64(u.m);
    _m_empty();        */

#endif  // eX_X64
#else   // Other compilers
    __Xmmi = _mm_set1_epi64x(Ini);
#endif
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const int Ini)
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
        eXint64_t q[2];
        eXint32_t r[4];
    } u;
    u.q[0] = u.q[1] = Ini;
    __Xmmi = _mm_setr_epi32(u.r[0], u.r[1], u.r[2], u.r[3]);
    /*    // this will use an mm register and produce store forwarding stall:
    union {
    __m64 m;
    eXint64_t ii;
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

eXSSEInt64Vector::eXSSEInt64Vector(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::operator=(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::Loadu(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::Load(const void* InPtr)
{
    __Xmmi = _mm_load_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(void) eXSSEInt64Vector::Storeu(void* OutPtr) const
{
    eXSSEIntVector::Storeu(OutPtr);
}

eX_VECCALL(void) eXSSEInt64Vector::Store(void* OutPtr) const
{
    eXSSEIntVector::Store(OutPtr);
}

// Partial load. Load n elements and set the rest to 0
eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::Load_partial(int n, const void* InPtr)
{
    switch (n)
    {
        case 0:
            *this = 0;  break;
        case 1:
            __Xmmi = _mm_cvtsi64_si128(*reinterpret_cast<const eXint64_t*>(InPtr));  break;
        case 2:
            Loadu(InPtr);  break;
        default:
            break;
    }
    return *this;
}

// Partial store. Store n elements
eX_VECCALL(void) eXSSEInt64Vector::Store_partial(int n, void* OutPtr) const
{
    switch (n)
    {
        case 1:
            eXint64_t q[2];
            Storeu(q);
            *reinterpret_cast<eXint64_t*>(OutPtr) = q[0];  break;
        case 2:
            Storeu(OutPtr);  break;
        default:
            break;
    }
}

eX_VECCALL(eXSSEInt64Vector&) eXSSEInt64Vector::Cutoff(int n)
{
    *this = eXSSEInt8Vector(__Xmmi).Cutoff(n * 8);
    return *this;
}

eX_VECCALL(const eXSSEInt64Vector&) eXSSEInt64Vector::Insert(eXuint32_t index, eXint64_t Invalue)
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
        eXint64_t ii;
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

eX_VECCALL(eXint64_t) eXSSEInt64Vector::Extract(eXuint32_t index) const
{
#if defined(eX_X64)  // SSE4.1 supported, 64 bit mode
    if (eX_has_SSE41())
    {
        return _mm_extract_epi64(__Xmmi, index & 1);
    }
    else               // SSE2
    {
        eXint64_t x[2];
        Storeu(x);
        return x[index & 1];
    }
#else
    eXint64_t x[2];
    Storeu(x);
    return x[index & 1];
#endif
}

eX_VECCALL(eXint64_t*) eXSSEInt64Vector::Get_All() const
{
    eXint64_t x[2];
    Storeu(x);
    return x;
}

eX_VECCALL(eXint64_t) eXSSEInt64Vector::Get_X() const
{
    return Extract(0);
}

eX_VECCALL(eXint64_t) eXSSEInt64Vector::Get_Y() const
{
    return Extract(1);
}

eX_VECCALL(const eXSSEInt64Vector&) eXSSEInt64Vector::Set_All(eXint64_t InX, eXint64_t InY)
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
        eXint64_t q[2];
        eXint32_t r[4];
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

eX_VECCALL(const eXSSEInt64Vector&) eXSSEInt64Vector::Set_X(eXint64_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEInt64Vector&) eXSSEInt64Vector::Set_Y(eXint64_t Invalue)
{
    return Insert(1, Invalue);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::And(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEIntVector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Or(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEIntVector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Xor(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEIntVector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Not(const eXSSEInt64Vector& InXmmi_a)
{
    return eXSSEIntVector::Not(InXmmi_a);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::AndNot(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEIntVector::AndNot(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Horizontal_And(const eXSSEInt64Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_And(InXmmi_a);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Horizontal_Or(const eXSSEInt64Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_Or(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bAnd(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEIntVector::bAnd(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bOr(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEIntVector::bOr(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bHorizontal_And(const eXSSEInt64Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_And(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bHorizontal_Or(const eXSSEInt64Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_Or(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Logical_And(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return InXmmi_a & InXmmi_b;
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Logical_Or(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return InXmmi_a | InXmmi_b;
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Logical_Not(const eXSSEInt64Vector& InXmmi_a)
{
    if (eX_has_SSE41())
    {
        return  _mm_cmpeq_epi64(InXmmi_a, _mm_setzero_si128());
    }
    else               // SSE2
    {
        // no 64 compare instruction. Do two 32 bit compares
        __m128i com32 = _mm_cmpeq_epi32(InXmmi_a, _mm_setzero_si128());                 // 32 bit compares
        __m128i com32s = _mm_shuffle_epi32(com32, 0xB1);        // swap low and high dwords
        __m128i test = _mm_and_si128(com32, com32s);          // low & high
        __m128i teste = _mm_srai_epi32(test, 31);              // extend sign bit to 32 bits
        return _mm_shuffle_epi32(teste, 0xF5);        // extend sign bit to 64 bits
    }
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bLogical_And(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
	return ((_mm_movemask_epi8(InXmmi_a & InXmmi_b) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bLogical_Or(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
	return (_mm_movemask_epi8(InXmmi_a | InXmmi_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bLogical_Not(const eXSSEInt64Vector& InXmmi_a)
{
	return  ((_mm_movemask_epi8(Equal(InXmmi_a, _mm_setzero_si128())) == 0xFFFF) != 0);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                      Vector permute functions                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <int PermuteX, int PermuteY>
eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::permute_template(const eXSSEInt64Vector& InXmmi_a)
{
	if (PermuteX == 0)
	{
		if (PermuteY == 0)
		{       // 0,0
			return _mm_unpacklo_epi64(InXmmi_a, InXmmi_a);
		}
		else if (PermuteY == 1 || PermuteY == -0x100)
		{  // 0,1
			return InXmmi_a;
		}
		else
		{               // 0,-1
						// return _mm_mov_epi64(InXmmi_a); // doesn't work with MS VS 2008
			return _mm_and_si128(InXmmi_a, Constant_int32<-1, -1, 0, 0>());
		}
	}
	else if (PermuteX == 1)
	{
		if (PermuteY == 0)
		{       // 1,0
			return _mm_shuffle_epi32(InXmmi_a, 0x4E);
		}
		else if (PermuteY == 1)
		{  // 1,1
			return _mm_unpackhi_epi64(InXmmi_a, InXmmi_a);
		}
		else
		{               // 1,-1
			return _mm_srli_si128(InXmmi_a, 8);
		}
	}
	else
	{ // PermuteX < 0
		if (PermuteY == 0)
		{       // -1,0
			return _mm_slli_si128(InXmmi_a, 8);
		}
		else if (PermuteY == 1)
		{  // -1,1
			if (PermuteX == -0x100) return InXmmi_a;
			return _mm_and_si128(InXmmi_a, Constant_int32<0, 0, -1, -1>());
		}
		else
		{               // -1,-1
			return _mm_setzero_si128();
		}
	}
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Permute(const eXSSEInt64Vector& InXmmi_a, int PermuteX, int PermuteY)
{
	eX_ASSERTIF_MSG((PermuteX >= -1) && (PermuteX <= 1), "PermuteX parameter out of range");
	eX_ASSERTIF_MSG((PermuteY >= -1) && (PermuteY <= 1), "PermuteY parameter out of range");

	if (PermuteX == 0)
	{
		if (PermuteY == 0)
		{       // 0,0
			return _mm_unpacklo_epi64(InXmmi_a, InXmmi_a);
		}
		else if (PermuteY == 1 || PermuteY == -0x100)
		{  // 0,1
			return InXmmi_a;
		}
		else
		{               // 0,-1
						// return _mm_mov_epi64(InXmmi_a); // doesn't work with MS VS 2008
			return _mm_and_si128(InXmmi_a, Constant_int32<-1, -1, 0, 0>());
		}
	}
	else if (PermuteX == 1)
	{
		if (PermuteY == 0)
		{       // 1,0
			return _mm_shuffle_epi32(InXmmi_a, 0x4E);
		}
		else if (PermuteY == 1)
		{  // 1,1
			return _mm_unpackhi_epi64(InXmmi_a, InXmmi_a);
		}
		else
		{               // 1,-1
			return _mm_srli_si128(InXmmi_a, 8);
		}
	}
	else
	{ // PermuteX < 0
		if (PermuteY == 0)
		{       // -1,0
			return _mm_slli_si128(InXmmi_a, 8);
		}
		else if (PermuteY == 1)
		{  // -1,1
			if (PermuteX == -0x100) return InXmmi_a;
			return _mm_and_si128(InXmmi_a, Constant_int32<0, 0, -1, -1>());
		}
		else
		{               // -1,-1
			return _mm_setzero_si128();
		}
	}
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Add(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return _mm_add_epi64(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Sub(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return _mm_sub_epi64(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Mul(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
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
            return eXSSEInt64Vector(aa[0] * bb[0], aa[1] * bb[1]);                // multiply elements separately
        }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Max(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) 
    if (eX_has_AVX512VL())  // AVX512VL instruction set
    {
        return _mm_max_epi64(InXmmi_a, InXmmi_b);
    }
    else              // SSE2
#endif
    {
        return Select(InXmmi_a > InXmmi_b, InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Min(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) 
    if (eX_has_AVX512VL())  // AVX512VL instruction set
    {
        return _mm_min_epi64(InXmmi_a, InXmmi_b);
    }
    else              // SSE2
#endif
    {
        return Select(InXmmi_a < InXmmi_b, InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Abs(const eXSSEInt64Vector& InXmmi_a)
{
    if (eX_has_SSE42())    // SSSE3 supported
    {
        __m128i sign = _mm_cmpgt_epi64(_mm_setzero_si128(), InXmmi_a);// 0 > a
        __m128i inv = _mm_xor_si128(InXmmi_a, sign);                 // invert bits if negative
        return        _mm_sub_epi64(inv, sign);               // add 1
    }
    else  // SSE2
    {
        __m128i signh = _mm_srai_epi32(InXmmi_a, 31);                  // sign in high dword
        __m128i sign = _mm_shuffle_epi32(signh, 0xF5);         // copy sign to low dword
        __m128i inv = _mm_xor_si128(InXmmi_a, sign);                 // invert bits if negative
        return        _mm_sub_epi64(inv, sign);               // add 1
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Add_Sat(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    __m128i sum = _mm_add_epi64(InXmmi_a, InXmmi_b);                  // a + b
    __m128i axb = _mm_xor_si128(InXmmi_a, InXmmi_b);                  // check if a and b have different sign
    __m128i axs = _mm_xor_si128(InXmmi_a, sum);                // check if a and sum have different sign
    __m128i overf1 = _mm_andnot_si128(axb, axs);            // check if sum has wrong sign
    __m128i overf2 = Srai(overf1, 63);                       // -1 if overflow
    __m128i asign = _mm_srli_epi64(InXmmi_a, 63);                 // 1  if a < 0
    __m128i sat1 = _mm_srli_epi64(overf2, 1);             // 7FFFFFFF if overflow
    __m128i sat2 = _mm_add_epi64(sat1, asign);            // 7FFFFFFF if positive overflow 80000000 if negative overflow
    return  Select(overf2, sat2, sum);                      // sum if not overflow, else sat2
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Sub_Sat(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    __m128i diff = _mm_sub_epi64(InXmmi_a, InXmmi_b);                  // a + b
    __m128i axb = _mm_xor_si128(InXmmi_a, InXmmi_b);                  // check if a and b have different sign
    __m128i axs = _mm_xor_si128(InXmmi_a, diff);               // check if a and sum have different sign
    __m128i overf1 = _mm_and_si128(axb, axs);               // check if sum has wrong sign
    __m128i overf2 = Srai(overf1, 63);            // -1 if overflow
    __m128i asign = _mm_srli_epi64(InXmmi_a, 63);                 // 1  if a < 0
    __m128i sat1 = _mm_srli_epi64(overf2, 1);             // 7FFFFFFF if overflow
    __m128i sat2 = _mm_add_epi64(sat1, asign);            // 7FFFFFFF if positive overflow 80000000 if negative overflow
    return  Select(overf2, sat2, diff);                     // diff if not overflow, else sat2
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Abs_Sat(const eXSSEInt64Vector& InXmmi_a)
{
    __m128i absa = Abs(InXmmi_a);                               // abs(a)
    if (eX_has_SSE42())    // SSSE3 supported
    {
        __m128i overfl = _mm_cmpgt_epi64(_mm_setzero_si128(), absa);// 0 > a
        return           _mm_add_epi64(absa, overfl);           // subtract 1 if 0x8000000000000000
    }
    else  // SSE2
    {
        __m128i signh = _mm_srai_epi32(absa, 31);               // sign in high dword
        __m128i overfl = _mm_shuffle_epi32(signh, 0xF5);         // copy sign to low dword
        return           _mm_add_epi64(absa, overfl);           // subtract 1 if 0x8000000000000000
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::If_Add(const eXSSEInt64Vector& InXmmi_f, const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return InXmmi_a + InXmmi_f & InXmmi_b;
}

eX_VECCALL(eXint64_t) eXSSEInt64Vector::Horizontal_Add(const eXSSEInt64Vector& InXmmi_a)
{
    __m128i sum1 = _mm_shuffle_epi32(InXmmi_a, 0x0E);             // high element
    __m128i sum2 = _mm_add_epi64(InXmmi_a, sum1);                 // sum
#if defined(eX_X64)
    return          _mm_cvtsi128_si64(sum2);               // 64 bit mode
#else
    union
    {
        __m128i x;  // silly definition of _mm_storel_epi64 requires __m128i
        int64_t i;
    } u;
    _mm_storel_epi64(&u.x, sum2);
    return u.i;
#endif
}

eX_VECCALL(eXint64_t) eXSSEInt64Vector::Horizontal_Add_x(const eXSSEInt64Vector& InXmmi_a)
{
    __m128i signs = Srai(InXmmi_a, 63);                  // sign of all elements
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
/*                      Vector rotation functions                      */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Rotate(const eXSSEInt64Vector& InXmmi_a, int b)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) 
    if (eX_has_AVX512VL())  // AVX512VL instruction set
    {
        return _mm_rolv_epi64(InXmmi_a, _mm_set1_epi64x(static_cast<eXint64_t>(b)));
    }
    else
#endif
        if (eX_has_XOP())  // AMD XOP instruction set
        {
            return _mm_rot_epi64(InXmmi_a, _mm_set1_epi64x(static_cast<eXint64_t>(b)));
        }
        else
        {
            __m128i left = _mm_sll_epi64(InXmmi_a, _mm_cvtsi32_si128(b & 0x3F));      // a << b 
            __m128i right = _mm_srl_epi64(InXmmi_a, _mm_cvtsi32_si128((64 - b) & 0x3F)); // a >> (64 - b)
            __m128i rot = _mm_or_si128(left, right);                          // or
            return  rot;
        }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Slli(const eXSSEInt64Vector& InXmmi_a, int InCount)
{
    return _mm_slli_epi64(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Sll(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_Count)
{
    return _mm_sll_epi64(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Srai(const eXSSEInt64Vector& InXmmi_a, int InCount)
{
    // instruction does not exist. Split into 32-bit shifts
    if (InCount <= 32)
    {
        __m128i bb = _mm_cvtsi32_si128(InCount);               // b
        __m128i sra = _mm_sra_epi32(InXmmi_a, bb);                // a >> b signed dwords
        __m128i srl = _mm_srl_epi64(InXmmi_a, bb);                // a >> b unsigned qwords
        __m128i mask = _mm_setr_epi32(0, -1, 0, -1);          // mask for signed high part
        return  Select(mask, sra, srl);
    }
    else
    {  // b > 32
        __m128i bm32 = _mm_cvtsi32_si128(InCount - 32);            // b - 32
        __m128i sign = _mm_srai_epi32(InXmmi_a, 31);               // sign of a
        __m128i sra2 = _mm_sra_epi32(InXmmi_a, bm32);              // a >> (b-32) signed dwords
        __m128i sra3 = _mm_srli_epi64(sra2, 32);            // a >> (b-32) >> 32 (second shift unsigned qword)
        __m128i mask = _mm_setr_epi32(0, -1, 0, -1);          // mask for high part containing only sign
        return  Select(mask, sign, sra3);
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Sra(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_Count)
{
    // instruction does not exist. Split into 32-bit shifts
    if (_mm_cvtsi128_si32(InXmmi_Count) <= 32)
    {
        // __m128i bb = _mm_cvtsi32_si128(InCount);               // b
        __m128i sra = _mm_sra_epi32(InXmmi_a, InXmmi_Count);                // a >> b signed dwords
        __m128i srl = _mm_srl_epi64(InXmmi_a, InXmmi_Count);                // a >> b unsigned qwords
        __m128i mask = _mm_setr_epi32(0, -1, 0, -1);          // mask for signed high part
        return  Select(mask, sra, srl);
    }
    else
    {  // b > 32
        __m128i bm32 = _mm_cvtsi32_si128(_mm_cvtsi128_si32(InXmmi_Count) - 32);            // b - 32
        __m128i sign = _mm_srai_epi32(InXmmi_a, 31);               // sign of a
        __m128i sra2 = _mm_sra_epi32(InXmmi_a, bm32);              // a >> (b-32) signed dwords
        __m128i sra3 = _mm_srli_epi64(sra2, 32);            // a >> (b-32) >> 32 (second shift unsigned qword)
        __m128i mask = _mm_setr_epi32(0, -1, 0, -1);          // mask for high part containing only sign
        return  Select(mask, sign, sra3);
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    if (eX_has_XOP())   // AMD XOP instruction
    {
        return  _mm_comeq_epi64(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE41())
    {
        return  _mm_cmpeq_epi64(InXmmi_a, InXmmi_b);
    }
    else               // SSE2
    {
        // no 64 compare instruction. Do two 32 bit compares
        __m128i com32 = _mm_cmpeq_epi32(InXmmi_a, InXmmi_b);                 // 32 bit compares
        __m128i com32s = _mm_shuffle_epi32(com32, 0xB1);        // swap low and high dwords
        __m128i test = _mm_and_si128(com32, com32s);          // low & high
        __m128i teste = _mm_srai_epi32(test, 31);              // extend sign bit to 32 bits
        return _mm_shuffle_epi32(teste, 0xF5);        // extend sign bit to 64 bits
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Lessthan(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    if (eX_has_XOP())   // AMD XOP instruction
    {
        return  _mm_comgt_epi64(InXmmi_b, InXmmi_a);
    }    
    else if (eX_has_SSE42())  // SSE4.2
    {
        return  _mm_cmpgt_epi64(InXmmi_b, InXmmi_a);
    }
    else               // SSE2
    {
        // no 64 compare instruction. Subtract
        __m128i s = _mm_sub_epi64(InXmmi_a, InXmmi_b);                   // a-b
                                                           // a < b if a and b have same sign and s < 0 or (a < 0 and b >= 0)
                                                           // The latter () corrects for overflow
        __m128i axb = _mm_xor_si128(InXmmi_a, InXmmi_b);                   // a ^ b
        __m128i anb = _mm_andnot_si128(InXmmi_b, InXmmi_a);                // a & ~b
        __m128i snaxb = _mm_andnot_si128(axb, s);              // s & ~(a ^ b)
        __m128i or1 = _mm_or_si128(anb, snaxb);              // (a & ~b) | (s & ~(a ^ b))
        __m128i teste = _mm_srai_epi32(or1, 31);               // extend sign bit to 32 bits
        return _mm_shuffle_epi32(teste, 0xF5);        // extend sign bit to 64 bits
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Greaterthan(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return Lessthan(InXmmi_b, InXmmi_a);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Lessthan_or_equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comle_epi64(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Lessthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Greaterthan_or_equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comge_epi64(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Greaterthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Not_Equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comneq_epi64(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        return Not(Equal(InXmmi_a, InXmmi_b));
    }
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Not_Lessthan(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return Not(Lessthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Not_Lessthan_or_equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Not_Greaterthan(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return Not(Greaterthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEInt64Vector) eXSSEInt64Vector::Not_Greaterthan_or_equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bEqual(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bLessthan(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(Lessthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);

}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bGreaterthan(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(Greaterthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bLessthan_or_equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comle_epi64(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bGreaterthan_or_equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comge_epi64(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bNot_Equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comneq_epi64(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else  // SSE2
    {
        return ((_mm_movemask_epi8(Not_Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bNot_Lessthan(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return bGreaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bNot_Lessthan_or_equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return bGreaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bNot_Greaterthan(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return bLessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt64Vector::bNot_Greaterthan_or_equal(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return bLessthan(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) operator&(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator|(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator^(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator~(const eXSSEInt64Vector& InXmmi_a)
{
    return eXSSEInt64Vector::Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector&) operator&=(eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a & InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt64Vector&) operator|=(eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a | InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt64Vector&) operator^=(eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a ^ InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::bLogical_And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::bLogical_Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEInt64Vector& InXmmi_a)
{
    return  eXSSEInt64Vector::bLogical_Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) operator+(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Add(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator-(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Sub(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator*(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Mul(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector&) operator+=(eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a + InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt64Vector&) operator-=(eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    InXmmi_a= InXmmi_a - InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt64Vector&) operator*=(eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a * InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector&) operator++(eXSSEInt64Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a + 1;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt64Vector&) operator--(eXSSEInt64Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a - 1;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) operator++(eXSSEInt64Vector& InXmmi_a, int)
{
    eXSSEInt64Vector tmpXmmi_a;
    tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a + 1;
    return tmpXmmi_a;
}

eX_VECCALL(eXSSEInt64Vector) operator--(eXSSEInt64Vector& InXmmi_a, int)
{
    eXSSEInt64Vector tmpXmmi_a; 
    tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a - 1;
    return tmpXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Unary operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) operator-(const eXSSEInt64Vector& InXmmi_a)
{
    return _mm_sub_epi64(_mm_setzero_si128(), InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) operator<<(const eXSSEInt64Vector& InXmmi_a, int InCount)
{
    return eXSSEInt64Vector::Slli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt64Vector) operator<<(const eXSSEInt64Vector& InXmmi_a, eXSSEInt64Vector& InXmmi_Count)
{
    return eXSSEInt64Vector::Sll(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEInt64Vector) operator>>(const eXSSEInt64Vector& InXmmi_a, int InCount)
{
    return eXSSEInt64Vector::Srai(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt64Vector) operator>>(const eXSSEInt64Vector& InXmmi_a, eXSSEInt64Vector& InXmmi_Count)
{
    return eXSSEInt64Vector::Sra(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector&) operator<<=(eXSSEInt64Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a << InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt64Vector&) operator<<=(eXSSEInt64Vector& InXmmi_a, eXSSEInt64Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a << InXmmi_Count;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt64Vector&) operator>>=(eXSSEInt64Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a >> InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt64Vector&) operator>>=(eXSSEInt64Vector& InXmmi_a, eXSSEInt64Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a >> InXmmi_Count;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt64Vector) operator==(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator<(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator<=(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Lessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator>(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator>=(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Greaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt64Vector) operator!=(const eXSSEInt64Vector& InXmmi_a, const eXSSEInt64Vector& InXmmi_b)
{
    return eXSSEInt64Vector::Not_Equal(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXint64_t) eXSSEInt64Vector::operator[](uint32_t index) const
{
    return Extract(index);
}
