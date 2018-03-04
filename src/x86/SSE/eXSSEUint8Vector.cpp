
#include "eXSSEUint8Vector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt8Vector.h"
#include "eXSSEInt16Vector.h"
#include "eXSSEInt32Vector.h"
#include "eXSSEInt64Vector.h"
#include "eXSSEUint16Vector.h"
#include "eXSSEUint32Vector.h"
#include "eXSSEUint64Vector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEUint8Vector::eXSSEUint8Vector(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
    return *this;
}

eXSSEUint8Vector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEUint8Vector::eXSSEUint8Vector(const eXSSEUint8ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXSSEUint8ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
    return *this;
}

eXSSEUint8Vector::eXSSEUint8Vector(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint8Vector::eXSSEUint8Vector(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint8Vector::eXSSEUint8Vector(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint8Vector::eXSSEUint8Vector(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint8Vector::eXSSEUint8Vector(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint8Vector::eXSSEUint8Vector(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint8Vector::eXSSEUint8Vector(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint8Vector::eXSSEUint8Vector(eXuint8_t InX0, eXuint8_t InY0, eXuint8_t InZ0, eXuint8_t InW0, eXuint8_t InX1, eXuint8_t InY1, eXuint8_t InZ1, eXuint8_t InW1,
                                 eXuint8_t InX2, eXuint8_t InY2, eXuint8_t InZ2, eXuint8_t InW2, eXuint8_t InX3, eXuint8_t InY3, eXuint8_t InZ3, eXuint8_t InW3)
{
    __Xmmi = _mm_setr_epi8(InX0, InY0, InZ0, InW0, InX1, InY1, InZ1, InW1, InX2, InY2, InZ2, InW2, InX3, InY3, InZ3, InW3);
}

eXSSEUint8Vector::eXSSEUint8Vector(eXuint8_t Ini)
{
    __Xmmi = _mm_set1_epi8(Ini);
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXuint8_t Ini)
{
    __Xmmi = _mm_set1_epi8(Ini);
    return *this;
}

/* eXSSEUint8Vector::eXSSEUint8Vector(eXuint32_t Ini)
{
    __Xmmi = _mm_set1_epi8(static_cast<char>(Ini));
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const eXuint32_t Ini)
{
    __Xmmi = _mm_set1_epi8(static_cast<const char>(Ini));
    return *this;
} */

eXSSEUint8Vector::eXSSEUint8Vector(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::operator=(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::Loadu(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::Load(const void* InPtr)
{
    __Xmmi = _mm_load_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(void) eXSSEUint8Vector::Storeu(void* OutPtr) const
{
    eXSSEIntVector::Storeu(OutPtr);
}

eX_VECCALL(void) eXSSEUint8Vector::Store(void* OutPtr) const
{
    eXSSEIntVector::Store(OutPtr);
}

// Partial load. Load n elements and set the rest to 0
eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::Load_partial(int n, const void* InPtr)
{
    if (n >= 16) Loadu(InPtr);
    else if (n <= 0)  *this = eXSSEuint8_0;
    else if (((int)(eXuintptr_t)InPtr & 0xFFF) < 0xFF0)
    {
        // InPtr is at least 16 bytes from a page boundary. OK to read 16 bytes
        Loadu(InPtr);
    }
    else
    {
        // worst case. read 1 byte at a time and suffer store forwarding penalty
        eXuint8_t x[16];
        for (int i = 0; i < n; i++) x[i] = (reinterpret_cast<const eXuint8_t*>(InPtr))[i];
        Loadu(x);
    }
    Cutoff(n);
    return *this;
}

// Partial store. Store n elements
eX_VECCALL(void) eXSSEUint8Vector::Store_partial(int n, void* OutPtr) const
{
    if (n >= 16)
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
    if (n & 8)
    {
        *reinterpret_cast<eXuint64_t*>(OutPtr) = u.q[0];
        j += 8;
    }
    if (n & 4)
    {
        (reinterpret_cast<eXuint32_t*>(OutPtr))[j / 4] = u.i[j / 4];
        j += 4;
    }
    if (n & 2)
    {
        (reinterpret_cast<eXuint16_t*>(OutPtr))[j / 2] = u.s[j / 2];
        j += 2;
    }
    if (n & 1)
    {
        (reinterpret_cast<eXuint8_t*>(OutPtr))[j] = u.c[j];
    }
}

eX_VECCALL(eXSSEUint8Vector&) eXSSEUint8Vector::Cutoff(int n)
{
    if (eXuint32_t(n) >= 16) return *this;
    static const eXint8_t mask[32] = { -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
    *this &= Loadu(mask + 16 - n);
    return *this;
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Insert(eXuint32_t index, eXuint8_t Invalue)
{
    if (eX_has_SSE41())
    {
        __Xmmi = _mm_insert_epi8(__Xmmi, Invalue, index & 0x0F);
    }
    else               // SSE2
    {
        static const eXint8_t maskl[32] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
            -1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
        __m128i broad = _mm_set1_epi8(Invalue);  // broadcast value into all elements
        __m128i mask = _mm_loadu_si128(reinterpret_cast<const __m128i*>(maskl + 16 - (index & 0x0F))); // mask with FF at index position
        __Xmmi = Select(mask, broad, __Xmmi);
    }
    return *this;
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Extract(eXuint32_t index) const
{
    if (eX_has_SSE41())
    {
        return static_cast<eXuint8_t>(_mm_extract_epi8(__Xmmi, index & 0x0F));
    }
    else               // SSE2
    {
        eXuint8_t x[16];
        Storeu(x);
        return x[index & 0x0F];
    }
}

eX_VECCALL(eXuint8_t*) eXSSEUint8Vector::Get_All() const
{
    eXuint8_t x[4];
    Storeu(x);
    return x;
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_X0() const
{
    return Extract(0);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_Y0() const
{
    return Extract(1);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_Z0() const
{
    return Extract(2);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_W0() const
{
    return Extract(3);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_X1() const
{
    return Extract(4);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_Y1() const
{
    return Extract(5);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_Z1() const
{
    return Extract(6);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_W1() const
{
    return Extract(7);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_X2() const
{
    return Extract(8);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_Y2() const
{
    return Extract(9);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_Z2() const
{
    return Extract(10);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_W2() const
{
    return Extract(11);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_X3() const
{
    return Extract(12);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_Y3() const
{
    return Extract(13);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_Z3() const
{
    return Extract(14);
}

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::Get_W3() const
{
    return Extract(15);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_All(eXuint8_t InX0, eXuint8_t InY0, eXuint8_t InZ0, eXuint8_t InW0, eXuint8_t InX1, eXuint8_t InY1, eXuint8_t InZ1, eXuint8_t InW1,
                                                            eXuint8_t InX2, eXuint8_t InY2, eXuint8_t InZ2, eXuint8_t InW2, eXuint8_t InX3, eXuint8_t InY3, eXuint8_t InZ3, eXuint8_t InW3)
{
    __Xmmi = _mm_setr_epi8(InX0, InY0, InZ0, InW0, InX1, InY1, InZ1, InW1, InX2, InY2, InZ2, InW2, InX3, InY3, InZ3, InW3);
    return *this;
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_X0(eXuint8_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_Y0(eXuint8_t Invalue)
{
    return Insert(1, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_Z0(eXuint8_t Invalue)
{
    return Insert(2, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_W0(eXuint8_t Invalue)
{
    return Insert(3, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_X1(eXuint8_t Invalue)
{
    return Insert(4, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_Y1(eXuint8_t Invalue)
{
    return Insert(5, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_Z1(eXuint8_t Invalue)
{
    return Insert(6, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_W1(eXuint8_t Invalue)
{
    return Insert(7, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_X2(eXuint8_t Invalue)
{
    return Insert(8, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_Y2(eXuint8_t Invalue)
{
    return Insert(9, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_Z2(eXuint8_t Invalue)
{
    return Insert(10, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_W2(eXuint8_t Invalue)
{
    return Insert(11, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_X3(eXuint8_t Invalue)
{
    return Insert(12, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_Y3(eXuint8_t Invalue)
{
    return Insert(13, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_Z3(eXuint8_t Invalue)
{
    return Insert(14, Invalue);
}

eX_VECCALL(const eXSSEUint8Vector&) eXSSEUint8Vector::Set_W3(eXuint8_t Invalue)
{
    return Insert(15, Invalue);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::And(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEIntVector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Or(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEIntVector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Xor(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEIntVector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Not(const eXSSEUint8Vector& InXmmi_a)
{
    return eXSSEIntVector::Not(InXmmi_a);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::AndNot(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEIntVector::AndNot(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Horizontal_And(const eXSSEUint8Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_And(InXmmi_a);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Horizontal_Or(const eXSSEUint8Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_Or(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bAnd(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEIntVector::bAnd(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bOr(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEIntVector::bOr(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bHorizontal_And(const eXSSEUint8Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_And(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bHorizontal_Or(const eXSSEUint8Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_Or(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Logical_And(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return InXmmi_a & InXmmi_b;
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Logical_Or(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return InXmmi_a | InXmmi_b;
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Logical_Not(const eXSSEUint8Vector& InXmmi_a)
{
    __m128i signbit = _mm_set1_epi32(0x80808080);
    __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
    __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
    return _mm_cmpeq_epi8(a1, b1);                         // signed compare
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bLogical_And(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(InXmmi_a & InXmmi_b) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bLogical_Or(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return (_mm_movemask_epi8(InXmmi_a | InXmmi_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bLogical_Not(const eXSSEUint8Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comeq_epu8(InXmmi_a, _mm_setzero_si128())) == 0xFFFF) != 0);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80808080);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
        return  ((_mm_movemask_epi8(_mm_cmpeq_epi8(a1, b1)) == 0xFFFF) != 0);
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <int PermuteX0, int PermuteY0, int PermuteZ0, int PermuteW0, int PermuteX1, int PermuteY1, int PermuteZ1, int PermuteW1,
	int PermuteX2, int PermuteY2, int PermuteZ2, int PermuteW2, int PermuteX3, int PermuteY3, int PermuteZ3, int PermuteW3>
	eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::permute_template(const eXSSEUint8Vector& InXmmi_a)
{
	return eXSSEUint8Vector::permute_template<PermuteX0, PermuteY0, PermuteZ0, PermuteW0, PermuteX1, PermuteY1, PermuteZ1, PermuteW1, PermuteX2, PermuteY2, PermuteZ2, PermuteW2,
		PermuteX3, PermuteY3, PermuteZ3, PermuteW3>(InXmmi_a);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Permute(const eXSSEUint8Vector& InXmmi_a, int PermuteX0, int PermuteY0, int PermuteZ0, int PermuteW0, int PermuteX1, int PermuteY1, int PermuteZ1, int PermuteW1,
													 int PermuteX2, int PermuteY2, int PermuteZ2, int PermuteW2, int PermuteX3, int PermuteY3, int PermuteZ3, int PermuteW3)
{
	return eXSSEUint8Vector::Permute(InXmmi_a, PermuteX0, PermuteY0, PermuteZ0, PermuteW0, PermuteX1, PermuteY1, PermuteZ1, PermuteW1, PermuteX2, PermuteY2, PermuteZ2, PermuteW2,
									 PermuteX3, PermuteY3, PermuteZ3, PermuteW3);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Add(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return _mm_add_epi8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Sub(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return _mm_sub_epi8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Mul(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    // There is no 8-bit multiply in SSE2. Split into two 16-bit multiplies
    __m128i aodd = _mm_srli_epi16(InXmmi_a, 8);                 // odd numbered elements of a
    __m128i bodd = _mm_srli_epi16(InXmmi_b, 8);                 // odd numbered elements of b
    __m128i muleven = _mm_mullo_epi16(InXmmi_a, InXmmi_b);                // product of even numbered elements
    __m128i mulodd = _mm_mullo_epi16(aodd, bodd);          // product of odd  numbered elements
    mulodd = _mm_slli_epi16(mulodd, 8);            // put odd numbered elements back in place
    __m128i mask = _mm_set1_epi32(0x00FF00FF);          // mask for even positions
    __m128i product = Select(mask, muleven, mulodd);        // interleave even and odd
    return product;
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Max(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return _mm_max_epu8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Min(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return _mm_min_epu8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Add_Sat(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return _mm_adds_epu8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Sub_Sat(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return _mm_subs_epu8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::If_Add(const eXSSEUint8Vector& InXmmi_f, const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return InXmmi_a + InXmmi_f & InXmmi_b;
}

eX_VECCALL(eXuint32_t) eXSSEUint8Vector::Horizontal_Add(const eXSSEUint8Vector& InXmmi_a)
{
    __m128i sum1 = _mm_sad_epu8(InXmmi_a, _mm_setzero_si128());
    __m128i sum2 = _mm_shuffle_epi32(sum1, 2);
    __m128i sum3 = _mm_add_epi16(sum1, sum2);
    eXuint16_t  sum4 = static_cast<eXuint16_t>(_mm_cvtsi128_si32(sum3));        // truncate to 8 bits
    return  sum4;                                          // sign extend to 32 bits
}

eX_VECCALL(eXuint32_t) eXSSEUint8Vector::Horizontal_Add_x(const eXSSEUint8Vector& InXmmi_a)
{
    __m128i sum1 = _mm_sad_epu8(InXmmi_a, _mm_setzero_si128());
    __m128i sum2 = _mm_shuffle_epi32(sum1, 2);
    __m128i sum3 = _mm_add_epi16(sum1, sum2);
    return _mm_cvtsi128_si32(sum3);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Slli(const eXSSEUint8Vector& InXmmi_a, int InCount)
{
    eXuint32_t mask = static_cast<eXuint32_t>(0xFF) << static_cast<eXuint32_t>(InCount);         // mask to remove bits that are shifted out
    __m128i am = _mm_and_si128(InXmmi_a, _mm_set1_epi8(static_cast<char>(mask)));  // remove bits that will overflow
    __m128i res = _mm_sll_epi16(am, _mm_cvtsi32_si128(InCount));// 16-bit shifts
    return res;
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Sll(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_Count)
{
    const int InCount = _mm_cvtsi128_si32(InXmmi_Count);
    eXuint32_t mask = static_cast<eXuint32_t>(0xFF) << static_cast<eXuint32_t>(InCount);         // mask to remove bits that are shifted out
    __m128i am = _mm_and_si128(InXmmi_a, _mm_set1_epi8(static_cast<char>(mask)));  // remove bits that will overflow
    __m128i res = _mm_sll_epi16(am, _mm_cvtsi32_si128(_mm_cvtsi128_si32(InXmmi_Count)));// 16-bit shifts
    return res;
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Srli(const eXSSEUint8Vector& InXmmi_a, int InCount)
{
    eXuint32_t mask = static_cast<eXuint32_t>(0xFF) << static_cast<eXuint32_t>(InCount);         // mask to remove bits that are shifted out
    __m128i am = _mm_and_si128(InXmmi_a, _mm_set1_epi8(static_cast<char>(mask)));  // remove bits that will overflow
    __m128i res = _mm_srl_epi16(am, _mm_cvtsi32_si128(InCount));// 16-bit shifts
    return res;
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Srl(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_Count)
{
    const int InCount = _mm_cvtsi128_si32(InXmmi_Count);
    eXuint32_t mask = static_cast<eXuint32_t>(0xFF) << static_cast<eXuint32_t>(InCount);         // mask to remove bits that are shifted out
    __m128i am = _mm_and_si128(InXmmi_a, _mm_set1_epi8(static_cast<char>(mask)));  // remove bits that will overflow
    __m128i res = _mm_srl_epi16(am, _mm_cvtsi32_si128(InCount));// 16-bit shifts
    return res;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comeq_epu8(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80808080);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return _mm_cmpeq_epi8(a1, b1);                         // signed compare
    }
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Lessthan(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comlt_epu8(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80808080);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return _mm_cmplt_epi8(a1, b1);                         // signed compare
    }
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Greaterthan(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comgt_epu8(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80808080);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return _mm_cmpgt_epi8(a1, b1);                         // signed compare
    }
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Lessthan_or_equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comle_epu8(InXmmi_a, InXmmi_b);
    }
    else
    {
        return _mm_cmpeq_epi8(InXmmi_a, _mm_min_epu8(InXmmi_a, InXmmi_b)); // a == min(a,b)
    }
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Greaterthan_or_equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comge_epu8(InXmmi_a, InXmmi_b);
    }
    else
    {
        return _mm_cmpeq_epi8(InXmmi_a, _mm_max_epu8(InXmmi_a, InXmmi_b)); // a == max(a,b)
    }
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Not_Equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comneq_epu8(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        return Not(Equal(InXmmi_a, InXmmi_b));
    }
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Not_Lessthan(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return Not(Lessthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Not_Lessthan_or_equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Not_Greaterthan(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return Not(Greaterthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEUint8Vector) eXSSEUint8Vector::Not_Greaterthan_or_equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bEqual(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comeq_epu8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bLessthan(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comlt_epu8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bGreaterthan(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comgt_epu8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bLessthan_or_equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comle_epu8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bGreaterthan_or_equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comge_epu8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bNot_Equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comneq_epu8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else  // SSE2
    {
        return ((_mm_movemask_epi8(Not_Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bNot_Lessthan(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return bGreaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bNot_Lessthan_or_equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return bGreaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bNot_Greaterthan(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return bLessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint8Vector::bNot_Greaterthan_or_equal(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return bLessthan(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) operator&(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator|(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator^(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator~(const eXSSEUint8Vector& InXmmi_a)
{
    return eXSSEUint8Vector::Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector&) operator&=(eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a & InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint8Vector&) operator|=(eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a | InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint8Vector&) operator^=(eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a ^ InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::bLogical_And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::bLogical_Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEUint8Vector& InXmmi_a)
{
    return  eXSSEUint8Vector::bLogical_Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) operator+(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Add(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator-(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Sub(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator*(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Mul(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector&) operator+=(eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a + InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint8Vector&) operator-=(eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    InXmmi_a= InXmmi_a - InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint8Vector&) operator*=(eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a * InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector&) operator++(eXSSEUint8Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a + eXSSEuint8_1;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint8Vector&) operator--(eXSSEUint8Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a - eXSSEuint8_1;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) operator++(eXSSEUint8Vector& InXmmi_a, int)
{
    eXSSEUint8Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a + eXSSEuint8_1;
    return tmpXmmi_a;
}

eX_VECCALL(eXSSEUint8Vector) operator--(eXSSEUint8Vector& InXmmi_a, int)
{
    eXSSEUint8Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a - eXSSEuint8_1;
    return tmpXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) operator<<(const eXSSEUint8Vector& InXmmi_a, int InCount)
{
    return eXSSEUint8Vector::Slli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint8Vector) operator<<(const eXSSEUint8Vector& InXmmi_a, eXSSEUint8Vector& InXmmi_Count)
{
    return eXSSEUint8Vector::Sll(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEUint8Vector) operator>>(const eXSSEUint8Vector& InXmmi_a, int InCount)
{
    return eXSSEUint8Vector::Srli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint8Vector) operator>>(const eXSSEUint8Vector& InXmmi_a, eXSSEUint8Vector& InXmmi_Count)
{
    return eXSSEUint8Vector::Srl(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector&) operator<<=(eXSSEUint8Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a << InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint8Vector&) operator<<=(eXSSEUint8Vector& InXmmi_a, eXSSEUint8Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a << InXmmi_Count;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint8Vector&) operator>>=(eXSSEUint8Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a >> InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint8Vector&) operator>>=(eXSSEUint8Vector& InXmmi_a, eXSSEUint8Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a >> InXmmi_Count;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint8Vector) operator==(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator<(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator<=(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Lessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator>(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator>=(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Greaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint8Vector) operator!=(const eXSSEUint8Vector& InXmmi_a, const eXSSEUint8Vector& InXmmi_b)
{
    return eXSSEUint8Vector::Not_Equal(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXuint8_t) eXSSEUint8Vector::operator[](uint32_t index) const
{
    return Extract(index);
}
