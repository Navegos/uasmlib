
#pragma once

#ifndef uXm_SSE_INTRIN_H
#define uXm_SSE_INTRIN_H

#include "uXmPreprocessor.h"

# if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#		define uXmVC_VEC_INTRINTYPE4 __declspec(intrin_type) __declspec(align(4))
#		define uXmVC_VEC_INTRINTYPE8 __declspec(intrin_type) __declspec(align(8))
#		define uXmVC_VEC_INTRINTYPE16 __declspec(intrin_type) __declspec(align(16))
#		define uXmVC_VEC_INTRINTYPE32 __declspec(intrin_type) __declspec(align(32))
#		define uXmVC_VEC_INTRINTYPE64 __declspec(intrin_type) __declspec(align(64))

#		define uXmVC_VEC_INTRINTYPE4_ALIAS __declspec(intrin_type) __declspec(align(4))
#		define uXmVC_VEC_INTRINTYPE8_ALIAS __declspec(intrin_type) __declspec(align(8))
#		define uXmVC_VEC_INTRINTYPE16_ALIAS __declspec(intrin_type) __declspec(align(16))
#		define uXmVC_VEC_INTRINTYPE32_ALIAS __declspec(intrin_type) __declspec(align(32))
#		define uXmVC_VEC_INTRINTYPE64_ALIAS __declspec(intrin_type) __declspec(align(64))
#else
#		define uXmVC_VEC_INTRINTYPE4
#		define uXmVC_VEC_INTRINTYPE8
#		define uXmVC_VEC_INTRINTYPE16
#		define uXmVC_VEC_INTRINTYPE32
#		define uXmVC_VEC_INTRINTYPE64

#		define uXmVC_VEC_INTRINTYPE4_ALIAS
#		define uXmVC_VEC_INTRINTYPE8_ALIAS
#		define uXmVC_VEC_INTRINTYPE16_ALIAS
#		define uXmVC_VEC_INTRINTYPE32_ALIAS
#		define uXmVC_VEC_INTRINTYPE64_ALIAS
#endif

#if defined(uXm_GCC_COMPATIBLE_COMPILER)
#		define uXmGC_VEC_INTRINTYPE4 __attribute__((__vector_size__ (4), __aligned__(4)))
#		define uXmGC_VEC_INTRINTYPE8 __attribute__((__vector_size__ (8), __aligned__(8)))
#		define uXmGC_VEC_INTRINTYPE16 __attribute__((__vector_size__ (16), __aligned__(16)))
#		define uXmGC_VEC_INTRINTYPE32 __attribute__((__vector_size__ (32), __aligned__(32)))
#		define uXmGC_VEC_INTRINTYPE64 __attribute__((__vector_size__ (64), __aligned__(64)))

#		define uXmGC_VEC_INTRINTYPE4_ALIAS __attribute__((__vector_size__ (4), __aligned__(4), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE8_ALIAS __attribute__((__vector_size__ (8), __aligned__(8), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE16_ALIAS __attribute__((__vector_size__ (16), __aligned__(16), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE32_ALIAS __attribute__((__vector_size__ (32), __aligned__(32), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE64_ALIAS __attribute__((__vector_size__ (64), __aligned__(64), __may_alias__))
#else
#		define uXmGC_VEC_INTRINTYPE4
#		define uXmGC_VEC_INTRINTYPE8
#		define uXmGC_VEC_INTRINTYPE16
#		define uXmGC_VEC_INTRINTYPE32
#		define uXmGC_VEC_INTRINTYPE64

#		define uXmGC_VEC_INTRINTYPE4_ALIAS
#		define uXmGC_VEC_INTRINTYPE8_ALIAS
#		define uXmGC_VEC_INTRINTYPE16_ALIAS
#		define uXmGC_VEC_INTRINTYPE32_ALIAS
#		define uXmGC_VEC_INTRINTYPE64_ALIAS
#endif

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifdef __cplusplus
extern "C" {
#endif

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128ib
{
	union
	{
		__int8              m128_ib[16];
		unsigned __int8     m128_ub[16];
	};
}uXmGC_VEC_INTRINTYPE16_ALIAS __uXm128ib;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128iw
{
	union
	{
		__int16             m128_iw[8];
		unsigned __int16    m128_uw[8];
	};
}uXmGC_VEC_INTRINTYPE16_ALIAS __uXm128iw;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128id
{
	union
	{
		__int32             m128_id[4];
		unsigned __int32    m128_ud[4];
	};
}uXmGC_VEC_INTRINTYPE16_ALIAS __uXm128id;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128iq
{
	union
	{
		__int64             m128_iq[2];
		unsigned __int64    m128_uq[2];
	};
}uXmGC_VEC_INTRINTYPE16_ALIAS __uXm128iq;

typedef union uXmVC_VEC_INTRINTYPE16 __uXm128i
{
	__int8              m128_ib[16];
	unsigned __int8     m128_ub[16];
	__int16             m128_iw[8];
	unsigned __int16    m128_uw[8];
	__int32             m128_id[4];
	unsigned __int32    m128_ud[4];
	__int64             m128_iq[2];
	unsigned __int64    m128_uq[2];
}uXmGC_VEC_INTRINTYPE16_ALIAS __uXm128i;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128f
{
	float               m128_f[4];
}uXmGC_VEC_INTRINTYPE16_ALIAS __uXm128f;

typedef union uXmVC_VEC_INTRINTYPE16 __uXm128
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
}uXmGC_VEC_INTRINTYPE16_ALIAS __uXm128;

typedef struct uXmVC_VEC_INTRINTYPE16 __uXm128d
{
	double              m128_d[2];
}uXmGC_VEC_INTRINTYPE16_ALIAS __uXm128d;

typedef union uXmVC_VEC_INTRINTYPE16 __uXm128fed
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
}uXmGC_VEC_INTRINTYPE16_ALIAS __uXm128fed;

#ifdef __cplusplus
}
#endif

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_SSE_INTRIN_H
