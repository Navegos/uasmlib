
#include "eXSSEUint16Vector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt8Vector.h"
#include "eXSSEInt16Vector.h"
#include "eXSSEInt32Vector.h"
#include "eXSSEInt64Vector.h"
#include "eXSSEUint8Vector.h"
#include "eXSSEUint32Vector.h"
#include "eXSSEUint64Vector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEUint16Vector::eXSSEUint16Vector(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
    return *this;
}

eXSSEUint16Vector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEUint16Vector::eXSSEUint16Vector(const eXSSEUint16ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const eXSSEUint16ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
    return *this;
}

eXSSEUint16Vector::eXSSEUint16Vector(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint16Vector::eXSSEUint16Vector(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint16Vector::eXSSEUint16Vector(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint16Vector::eXSSEUint16Vector(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint16Vector::eXSSEUint16Vector(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint16Vector::eXSSEUint16Vector(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint16Vector::eXSSEUint16Vector(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint16Vector::eXSSEUint16Vector(eXuint16_t InX0, eXuint16_t InY0, eXuint16_t InZ0, eXuint16_t InW0, eXuint16_t InX1, eXuint16_t InY1, eXuint16_t InZ1, eXuint16_t InW1)
{
    __Xmmi = _mm_setr_epi16(InX0, InY0, InZ0, InW0, InX1, InY1, InZ1, InW1);
}

eXSSEUint16Vector::eXSSEUint16Vector(eXuint16_t Ini)
{
    __Xmmi = _mm_set1_epi16(Ini);
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const eXuint16_t Ini)
{
    __Xmmi = _mm_set1_epi16(Ini);
    return *this;
}

eXSSEUint16Vector::eXSSEUint16Vector(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::operator=(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::Loadu(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::Load(const void* InPtr)
{
    __Xmmi = _mm_load_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(void) eXSSEUint16Vector::Storeu(void* OutPtr) const
{
    eXSSEIntVector::Storeu(OutPtr);
}

eX_VECCALL(void) eXSSEUint16Vector::Store(void* OutPtr) const
{
    eXSSEIntVector::Store(OutPtr);
}

// Partial load. Load n elements and set the rest to 0
eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::Load_partial(int n, const void* InPtr)
{
    if (n >= 8) Loadu(InPtr);
    else if (n <= 0)  *this = eXSSEuint16_0;
    else if (((int)(eXintptr_t)InPtr & 0xFFF) < 0xFF0)
    {
        // p is at least 16 bytes from a page boundary. OK to read 16 bytes
        Loadu(InPtr);
    }
    else
    {
        // worst case. read 1 byte at a time and suffer store forwarding penalty
        eXuint16_t x[8];
        for (int i = 0; i < n; i++) x[i] = (reinterpret_cast<const eXuint16_t*>(InPtr))[i];
        Loadu(x);
    }
    Cutoff(n);
    return *this;
}

// Partial store. Store n elements
eX_VECCALL(void) eXSSEUint16Vector::Store_partial(int n, void* OutPtr) const
{
    if (n >= 8)
    {
        Storeu(OutPtr);
        return;
    }
    if (n <= 0) return;
    // we are not using _mm_maskmoveu_si128 because it is too slow on many processors
    union
    {
        eXuint8_t  c[16];
        eXuint16_t s[8];
        eXuint32_t i[4];
        eXuint64_t q[2];
    } u;
    Storeu(u.c);
    int j = 0;
    if (n & 4)
    {
        *reinterpret_cast<eXuint64_t*>(OutPtr) = u.q[0];
        j += 8;
    }
    if (n & 2)
    {
        (reinterpret_cast<eXuint32_t*>(OutPtr))[j / 4] = u.i[j / 4];
        j += 4;
    }
    if (n & 1)
    {
        (reinterpret_cast<eXuint16_t*>(OutPtr))[j / 2] = u.s[j / 2];
    }
}

eX_VECCALL(eXSSEUint16Vector&) eXSSEUint16Vector::Cutoff(int n)
{
    *this = eXSSEUint8Vector(__Xmmi).Cutoff(n * 2);
    return *this;
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Insert(eXuint32_t index, eXuint16_t Invalue)
{
    __Xmmi = _mm_insert_epi16(__Xmmi, Invalue, index & 7);
    return *this;
}

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::Extract(eXuint32_t index) const
{
    return static_cast<eXuint16_t>(_mm_extract_epi16(__Xmmi, index & 7));
}

eX_VECCALL(eXuint16_t*) eXSSEUint16Vector::Get_All() const
{
    eXuint16_t x[16];
    Storeu(x);
    return x;
}

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::Get_X0() const
{
    return Extract(0);
}

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::Get_Y0() const
{
    return Extract(1);
}

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::Get_Z0() const
{
    return Extract(2);
}

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::Get_W0() const
{
    return Extract(3);
}

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::Get_X1() const
{
    return Extract(4);
}

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::Get_Y1() const
{
    return Extract(5);
}

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::Get_Z1() const
{
    return Extract(6);
}

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::Get_W1() const
{
    return Extract(7);
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Set_All(eXuint16_t InX0, eXuint16_t InY0, eXuint16_t InZ0, eXuint16_t InW0, eXuint16_t InX1, eXuint16_t InY1, eXuint16_t InZ1, eXuint16_t InW1)
{
    __Xmmi = _mm_setr_epi16(InX0, InY0, InZ0, InW0, InX1, InY1, InZ1, InW1);
    return *this;
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Set_X0(eXuint16_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Set_Y0(eXuint16_t Invalue)
{
    return Insert(1, Invalue);
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Set_Z0(eXuint16_t Invalue)
{
    return Insert(2, Invalue);
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Set_W0(eXuint16_t Invalue)
{
    return Insert(3, Invalue);
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Set_X1(eXuint16_t Invalue)
{
    return Insert(4, Invalue);
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Set_Y1(eXuint16_t Invalue)
{
    return Insert(5, Invalue);
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Set_Z1(eXuint16_t Invalue)
{
    return Insert(6, Invalue);
}

eX_VECCALL(const eXSSEUint16Vector&) eXSSEUint16Vector::Set_W1(eXuint16_t Invalue)
{
    return Insert(7, Invalue);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::And(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEIntVector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Or(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEIntVector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Xor(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEIntVector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Not(const eXSSEUint16Vector& InXmmi_a)
{
    return eXSSEIntVector::Not(InXmmi_a);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::AndNot(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEIntVector::AndNot(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Horizontal_And(const eXSSEUint16Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_And(InXmmi_a);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Horizontal_Or(const eXSSEUint16Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_Or(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bAnd(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEIntVector::bAnd(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bOr(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEIntVector::bOr(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bHorizontal_And(const eXSSEUint16Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_And(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bHorizontal_Or(const eXSSEUint16Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_Or(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Logical_And(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return InXmmi_a & InXmmi_b;
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Logical_Or(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return InXmmi_a | InXmmi_b;
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Logical_Not(const eXSSEUint16Vector& InXmmi_a)
{
    __m128i signbit = _mm_set1_epi32(0x80008000);
    __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
    __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
    return  _mm_cmpeq_epi16(a1, b1);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bLogical_And(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(InXmmi_a & InXmmi_b) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bLogical_Or(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return (_mm_movemask_epi8(InXmmi_a | InXmmi_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bLogical_Not(const eXSSEUint16Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comeq_epu16(InXmmi_a, _mm_setzero_si128())) == 0xFFFF) != 0);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80008000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
        return  ((_mm_movemask_epi8(_mm_cmpeq_epi16(a1, b1)) == 0xFFFF) != 0);
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <int PermuteX0, int PermuteY0, int PermuteZ0, int PermuteW0, int PermuteX1, int PermuteY1, int PermuteZ1, int PermuteW1>
eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::permute_template(const eXSSEUint16Vector& InXmmi_a)
{
	return eXSSEInt16Vector::permute_template<PermuteX0, PermuteY0, PermuteZ0, PermuteW0, PermuteX1, PermuteY1, PermuteZ1, PermuteW1>(InXmmi_a);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Permute(const eXSSEUint16Vector& InXmmi_a, int PermuteX0, int PermuteY0, int PermuteZ0, int PermuteW0, int PermuteX1, int PermuteY1, int PermuteZ1, int PermuteW1)
{
	return eXSSEInt16Vector::Permute(InXmmi_a, PermuteX0, PermuteY0, PermuteZ0, PermuteW0, PermuteX1, PermuteY1, PermuteZ1, PermuteW1);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Add(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return _mm_add_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Sub(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return _mm_sub_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Mul(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return _mm_mullo_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Max(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_SSE41())  // AMD XOP
    {
        return _mm_max_epu16(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80008000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);            // add 0x8000
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);            // add 0x8000
        __m128i m1 = _mm_max_epi16(a1, b1);                // signed max
        return  _mm_xor_si128(m1, signbit);                     // sub 0x8000
    }
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Min(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_SSE41())  // AMD XOP
    {
        return _mm_min_epu16(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80008000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);            // add 0x8000
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);            // add 0x8000
        __m128i m1 = _mm_min_epi16(a1, b1);                // signed max
        return  _mm_xor_si128(m1, signbit);                     // sub 0x8000
    }
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Add_Sat(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return _mm_adds_epu16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Sub_Sat(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return _mm_subs_epu16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::If_Add(const eXSSEUint16Vector& InXmmi_f, const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return InXmmi_a + InXmmi_f & InXmmi_b;
}

eX_VECCALL(eXuint32_t) eXSSEUint16Vector::Horizontal_Add(const eXSSEUint16Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        __m128i sum1 = _mm_haddq_epu16(InXmmi_a);
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // high element
        __m128i sum3 = _mm_add_epi32(sum1, sum2);              // sum
        eXuint16_t sum4 = _mm_cvtsi128_si32(sum3);               // truncate to 16 bits
        return  sum4;                                          // zero extend to 32 bits
    }
    else if (eX_has_SSE41())  // SSE4.1
    {
        __m128i sum1 = _mm_hadd_epi16(InXmmi_a, InXmmi_a);                   // horizontally add 8 elements in 3 steps
        __m128i sum2 = _mm_hadd_epi16(sum1, sum1);
        __m128i sum3 = _mm_hadd_epi16(sum2, sum2);
        eXuint16_t sum4 = (eXuint16_t)_mm_cvtsi128_si32(sum3);     // 16 bit sum
        return  sum4;                                          // zero extend to 32 bits
    }
    else // SSE2
    {
        __m128i sum1 = _mm_shuffle_epi32(InXmmi_a, 0x0E);             // 4 high elements
        __m128i sum2 = _mm_add_epi16(InXmmi_a, sum1);                 // 4 sums
        __m128i sum3 = _mm_shuffle_epi32(sum2, 0x01);          // 2 high elements
        __m128i sum4 = _mm_add_epi16(sum2, sum3);              // 2 sums
        __m128i sum5 = _mm_shufflelo_epi16(sum4, 0x01);        // 1 high element
        __m128i sum6 = _mm_add_epi16(sum4, sum5);              // 1 sum
        eXuint16_t sum7 = _mm_cvtsi128_si32(sum6);               // 16 bit sum
        return  sum7;                                          // zero extend to 32 bits
    }
}

eX_VECCALL(eXuint32_t) eXSSEUint16Vector::Horizontal_Add_x(const eXSSEUint16Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        __m128i sum1 = _mm_haddq_epu16(InXmmi_a);
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // high element
        __m128i sum3 = _mm_add_epi32(sum1, sum2);              // sum
        return          _mm_cvtsi128_si32(sum3);
    }
    else if (eX_has_SSE41())  // SSE4.1
    {
        __m128i mask = _mm_set1_epi32(0x0000FFFF);            // mask for even positions
        __m128i aeven = _mm_and_si128(InXmmi_a, mask);                 // even numbered elements of a
        __m128i aodd = _mm_srli_epi32(InXmmi_a, 16);                  // zero extend odd numbered elements
        __m128i sum1 = _mm_add_epi32(aeven, aodd);             // add even and odd elements
        __m128i sum2 = _mm_hadd_epi32(sum1, sum1);             // horizontally add 4 elements in 2 steps
        __m128i sum3 = _mm_hadd_epi32(sum2, sum2);
        return  _mm_cvtsi128_si32(sum3);
    }
    else // SSE2
    {
        __m128i mask = _mm_set1_epi32(0x0000FFFF);            // mask for even positions
        __m128i aeven = _mm_and_si128(InXmmi_a, mask);                 // even numbered elements of a
        __m128i aodd = _mm_srli_epi32(InXmmi_a, 16);                  // zero extend odd numbered elements
        __m128i sum1 = _mm_add_epi32(aeven, aodd);             // add even and odd elements
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // 2 high elements
        __m128i sum3 = _mm_add_epi32(sum1, sum2);
        __m128i sum4 = _mm_shuffle_epi32(sum3, 0x01);          // 1 high elements
        __m128i sum5 = _mm_add_epi32(sum3, sum4);
        return  _mm_cvtsi128_si32(sum5);               // 16 bit sum
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Slli(const eXSSEUint16Vector& InXmmi_a, int InCount)
{
    return _mm_slli_epi16(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Sll(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_Count)
{
    return _mm_sll_epi16(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Srli(const eXSSEUint16Vector& InXmmi_a, int InCount)
{
    return _mm_srli_epi16(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Srl(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_Count)
{
    return _mm_srl_epi16(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comeq_epu16(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80008000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return _mm_cmpeq_epi16(a1, b1); // a == b
    }
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Lessthan(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comlt_epu16(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80000000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return _mm_cmplt_epi16(a1, b1);                         // signed compare
    }
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Greaterthan(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comgt_epu16(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80008000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return _mm_cmpgt_epi16(a1, b1);                         // signed compare
    }
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Lessthan_or_equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comle_epu16(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE41())  // SSE4.1
    {
        return _mm_cmpeq_epi16(InXmmi_a, _mm_min_epu16(InXmmi_a, InXmmi_b)); // a == min(a,b)
    }
    else // SSE2
    {
        __m128i s = _mm_subs_epu16(InXmmi_a, InXmmi_b);                       // a-b, saturated
        return  _mm_cmpeq_epi16(s, _mm_setzero_si128());       // s == 0 
    }
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Greaterthan_or_equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comge_epu16(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE41())  // SSE4.1
    {
        return _mm_cmpeq_epi16(InXmmi_a, _mm_max_epu16(InXmmi_a, InXmmi_b)); // a == max(a,b)
    }
    else // SSE2
    {
        __m128i s = _mm_subs_epu16(InXmmi_b, InXmmi_a);                       // b-a, saturated
        return  _mm_cmpeq_epi16(s, _mm_setzero_si128());       // s == 0 
    }
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Not_Equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comneq_epu16(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        return Not(Equal(InXmmi_a, InXmmi_b));
    }
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Not_Lessthan(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return Not(Lessthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Not_Lessthan_or_equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Not_Greaterthan(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return Not(Greaterthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEUint16Vector) eXSSEUint16Vector::Not_Greaterthan_or_equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bEqual(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comeq_epu16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bLessthan(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comlt_epu16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bGreaterthan(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comgt_epu16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bLessthan_or_equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comle_epu16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bGreaterthan_or_equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comge_epu16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bNot_Equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comneq_epu16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else  // SSE2
    {
        return ((_mm_movemask_epi8(Not_Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bNot_Lessthan(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return bGreaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bNot_Lessthan_or_equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return bGreaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bNot_Greaterthan(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return bLessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint16Vector::bNot_Greaterthan_or_equal(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return bLessthan(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) operator&(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator|(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator^(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator~(const eXSSEUint16Vector& InXmmi_a)
{
    return eXSSEUint16Vector::Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector&) operator&=(eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a & InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint16Vector&) operator|=(eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a | InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint16Vector&) operator^=(eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a ^ InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::bLogical_And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::bLogical_Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEUint16Vector& InXmmi_a)
{
    return  eXSSEUint16Vector::bLogical_Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) operator+(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Add(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator-(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Sub(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator*(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Mul(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector&) operator+=(eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a + InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint16Vector&) operator-=(eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    InXmmi_a= InXmmi_a - InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint16Vector&) operator*=(eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a * InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector&) operator++(eXSSEUint16Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a + eXSSEuint16_1;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint16Vector&) operator--(eXSSEUint16Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a - eXSSEuint16_1;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) operator++(eXSSEUint16Vector& InXmmi_a, int)
{
    eXSSEUint16Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a + eXSSEuint16_1;
    return tmpXmmi_a;
}

eX_VECCALL(eXSSEUint16Vector) operator--(eXSSEUint16Vector& InXmmi_a, int)
{
    eXSSEUint16Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a - eXSSEuint16_1;
    return tmpXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) operator<<(const eXSSEUint16Vector& InXmmi_a, int InCount)
{
    return eXSSEUint16Vector::Slli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint16Vector) operator<<(const eXSSEUint16Vector& InXmmi_a, eXSSEUint16Vector& InXmmi_Count)
{
    return eXSSEUint16Vector::Sll(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEUint16Vector) operator>>(const eXSSEUint16Vector& InXmmi_a, int InCount)
{
    return eXSSEUint16Vector::Srli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint16Vector) operator>>(const eXSSEUint16Vector& InXmmi_a, eXSSEUint16Vector& InXmmi_Count)
{
    return eXSSEUint16Vector::Srl(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector&) operator<<=(eXSSEUint16Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a << InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint16Vector&) operator<<=(eXSSEUint16Vector& InXmmi_a, eXSSEUint16Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a << InXmmi_Count;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint16Vector&) operator>>=(eXSSEUint16Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a >> InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint16Vector&) operator>>=(eXSSEUint16Vector& InXmmi_a, eXSSEUint16Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a >> InXmmi_Count;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint16Vector) operator==(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator<(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator<=(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Lessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator>(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator>=(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Greaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint16Vector) operator!=(const eXSSEUint16Vector& InXmmi_a, const eXSSEUint16Vector& InXmmi_b)
{
    return eXSSEUint16Vector::Not_Equal(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXuint16_t) eXSSEUint16Vector::operator[](uint32_t index) const
{
    return Extract(index);
}
