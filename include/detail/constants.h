/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /																				/ /
; / /			Copyright 2021 (c) Navegos QA - optimized library					/ /
; / /																				/ /
; / /	Licensed under the Apache License, Version 2.0 (the "License");				/ /
; / /	you may not use this file except in compliance with the License.			/ /
; / /	You may obtain a copy of the License at										/ /
; / /																				/ /
; / /		http://www.apache.org/licenses/LICENSE-2.0								/ /
; / /																				/ /
; / /	Unless required by applicable law or agreed to in writing, software			/ /
; / /	distributed under the License is distributed on an "AS IS" BASIS,			/ /
; / /	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.	/ /
; / /	See the License for the specific language governing permissions and			/ /
; / /	limitations under the License.												/ /
; / /																				/ /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_CONSTANTS_H
#define uX_CONSTANTS_H 1

#ifndef uX_TYPES_H
#include "types.h"
#endif  /* uX_TYPES_H */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*					start of head macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

#define uX_BYTE_SIZE		1
#define uX_UBYTE_SIZE		1
#define uX_SBYTE_SIZE		1
#define uX_CHAR_SIZE		1
#define uX_UCHAR_SIZE		1
#define uX_SCHAR_SIZE		1
#define uX_INT8_SIZE		1
#define uX_I8_SIZE			1
#define uX_UINT8_SIZE		1
#define uX_UI8_SIZE			1
#define uX_SINT8_SIZE		1
#define uX_SI8_SIZE			1
#define uX_WORD_SIZE		2
#define uX_UWORD_SIZE		2
#define uX_SWORD_SIZE		2
#define uX_SHORT_SIZE		2
#define uX_USHORT_SIZE		2
#define uX_SSHORT_SIZE		2
#define uX_INT16_SIZE		2
#define uX_I16_SIZE			2
#define uX_UINT16_SIZE		2
#define uX_UI16_SIZE		2
#define uX_SINT16_SIZE		2
#define uX_SI16_SIZE		2
#define uX_DWORD_SIZE		4
#define uX_UDWORD_SIZE		4
#define uX_SDWORD_SIZE		4
#define uX_LONG_SIZE		4
#define uX_ULONG_SIZE		4
#define uX_SLONG_SIZE		4
#define uX_BOOL_SIZE		4
#define uX_INT_SIZE			4
#define uX_UINT_SIZE		4
#define uX_SINT_SIZE		4
#define uX_INT32_SIZE		4
#define uX_I32_SIZE			4
#define uX_UINT32_SIZE		4
#define uX_UI32_SIZE		4
#define uX_SINT32_SIZE		4
#define uX_SI32_SIZE		4
#define uX_QWORD_SIZE		8
#define uX_UQWORD_SIZE		8
#define uX_SQWORD_SIZE		8
#define uX_LONGLONG_SIZE	8
#define uX_ULONGLONG_SIZE   8
#define uX_SLONGLONG_SIZE   8
#define uX_INT64_SIZE		8
#define uX_I64_SIZE			8
#define uX_UINT64_SIZE		8
#define uX_UI64_SIZE		8
#define uX_SINT64_SIZE		8
#define uX_SI64_SIZE		8
#define uX_REAL4_SIZE		4
#define uX_FLOAT_SIZE		4
#define uX_FLT_SIZE			4
#define uX_REAL8_SIZE		8
#define uX_DOUBLE_SIZE		8
#define uX_DBL_SIZE			8

/* maximum value of f = 15 */
#define uX_BYTE_MAX				0xff
#define uX_UBYTE_MAX			0xff					/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_CHAR_MAX				uX_BYTE_MAX				/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_UCHAR_MAX			uX_UBYTE_MAX			/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_INT8_MAX				uX_BYTE_MAX				/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_I8_MAX				uX_BYTE_MAX				/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_UINT8_MAX			uX_UBYTE_MAX			/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_UBYTE_MIN			0x0						/* 0 */								/* minimum possible ui8 value, 0x00 */					/* -127,5 + 127,5 = 0 */
#define uX_UCHAR_MIN			uX_UBYTE_MIN			/* 0 */								/* minimum possible ui8 value, 0x00 */					/* -127,5 + 127,5 = 0 */
#define uX_UINT8_MIN			uX_UBYTE_MIN			/* 0 */								/* minimum possible ui8 value, 0x00 */					/* -127,5 + 127,5 = 0 */
#define uX_UI8_MIN				uX_UBYTE_MIN			/* 0 */								/* minimum possible ui8 value, 0x00 */					/* -127,5 + 127,5 = 0 */
#define uX_SBYTE_MAX			0x7f					/* 127 */							/* maximum possible si8 value, 0x7f */					/* ((15*15)/2)+15 = 127,5		sign round to 127 */
#define uX_SCHAR_MAX			uX_SBYTE_MAX			/* 127 */							/* maximum possible si8 value, 0x7f */					/* ((15*15)/2)+15 = 127,5		sign round to 127 */
#define uX_SINT8_MAX			uX_SBYTE_MAX			/* 127 */							/* maximum possible si8 value, 0x7f */					/* ((15*15)/2)+15 = 127,5		sign round to 127 */
#define uX_SI8_MAX				uX_SBYTE_MAX			/* 127 */							/* maximum possible si8 value, 0x7f */					/* ((15*15)/2)+15 = 127,5		sign round to 127 */
#define uX_BYTE_MIN				(-0x7f - 0x1)			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_SBYTE_MIN			(-0x7f - 0x1)			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_CHAR_MIN				uX_BYTE_MIN				/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_SCHAR_MIN			uX_SBYTE_MIN			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_INT8_MIN				uX_BYTE_MIN				/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_I8_MIN				uX_BYTE_MIN				/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_SINT8_MIN			uX_SBYTE_MIN			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_SI8_MIN				uX_SBYTE_MIN			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */

#define uX_MAX_BYTE				0xff
#define uX_MAX_UBYTE			0xff					/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_MAX_CHAR				uX_MAX_BYTE				/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_MAX_UCHAR			uX_MAX_UBYTE			/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_MAX_INT8				uX_MAX_BYTE				/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_MAX_I8				uX_MAX_BYTE				/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_MAX_UINT8			uX_MAX_UBYTE			/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_MAX_UI8				uX_MAX_UBYTE			/* 255 */							/* maximum possible ui8 value, 0xff */					/* 127,5 + 127,5 = 255 */
#define uX_MIN_UBYTE			0x0						/* 0 */								/* minimum possible ui8 value, 0x00 */					/* -127,5 + 127,5 = 0 */
#define uX_MIN_UCHAR			uX_MIN_UBYTE			/* 0 */								/* minimum possible ui8 value, 0x00 */					/* -127,5 + 127,5 = 0 */
#define uX_MIN_UINT8			uX_MIN_UBYTE			/* 0 */								/* minimum possible ui8 value, 0x00 */					/* -127,5 + 127,5 = 0 */
#define uX_MIN_UI8				uX_MIN_UBYTE			/* 0 */								/* minimum possible ui8 value, 0x00 */					/* -127,5 + 127,5 = 0 */
#define uX_MAX_SBYTE			0x7f					/* 127 */							/* maximum possible si8 value, 0x7f */					/* ((15*15)/2)+15 = 127,5		sign round to 127 */
#define uX_MAX_SCHAR			uX_MAX_SBYTE			/* 127 */							/* maximum possible si8 value, 0x7f */					/* ((15*15)/2)+15 = 127,5		sign round to 127 */
#define uX_MAX_SINT8			uX_MAX_SBYTE			/* 127 */							/* maximum possible si8 value, 0x7f */					/* ((15*15)/2)+15 = 127,5		sign round to 127 */
#define uX_MAX_SI8				uX_MAX_SBYTE			/* 127 */							/* maximum possible si8 value, 0x7f */					/* ((15*15)/2)+15 = 127,5		sign round to 127 */
#define uX_MIN_BYTE				(-0x7f - 0x1)			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_MIN_SBYTE			(-0x7f - 0x1)			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_MIN_CHAR				uX_MIN_BYTE				/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_MIN_SCHAR			uX_MIN_SBYTE			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_MIN_INT8				uX_MIN_BYTE				/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_MIN_I8				uX_MIN_BYTE				/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_MIN_SINT8			uX_MIN_SBYTE			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */
#define uX_MIN_SI8				uX_MIN_SBYTE			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5   sign round to -128 */

#define uX_WORD_MAX				0xffff					/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_UWORD_MAX			0xffff					/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_SHORT_MAX			uX_WORD_MAX				/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_USHORT_MAX			uX_UWORD_MAX			/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_INT16_MAX			uX_WORD_MAX				/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_I16_MAX				uX_WORD_MAX				/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_UINT16_MAX			uX_UWORD_MAX			/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_UI16_MAX				uX_UWORD_MAX			/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_UWORD_MIN			0x0						/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */
#define uX_USHORT_MIN			uX_UWORD_MIN			/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */
#define uX_UINT16_MIN			uX_UWORD_MIN			/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */
#define uX_UI16_MIN				uX_UWORD_MIN			/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */
#define uX_SWORD_MAX			0x7fff					/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uX_SSHORT_MAX			uX_SWORD_MAX			/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uX_SINT16_MAX			uX_SWORD_MAX			/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uX_SI16_MAX				uX_SWORD_MAX			/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uX_WORD_MIN				(-0x7fff - 0x1)			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_SWORD_MIN			(-0x7fff - 0x1)			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_SHORT_MIN			uX_WORD_MIN				/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_SSHORT_MIN			uX_SWORD_MIN			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_INT16_MIN			uX_WORD_MIN				/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_I16_MIN				uX_WORD_MIN				/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_SINT16_MIN			uX_SWORD_MIN			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_SI16_MIN				uX_SWORD_MIN			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */

#define uX_MAX_WORD				0xffff					/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_MAX_UWORD			0xffff					/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_MAX_SHORT			uX_MAX_WORD				/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_MAX_USHORT			uX_MAX_UWORD			/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_MAX_INT16			uX_MAX_WORD				/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_MAX_I16				uX_MAX_WORD				/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_MAX_UINT16			uX_MAX_UWORD			/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_MAX_UI16				uX_MAX_UWORD			/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uX_MIN_UWORD			0x0						/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */
#define uX_MIN_USHORT			uX_MIN_UWORD			/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */
#define uX_MIN_UINT16			uX_MIN_UWORD			/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */
#define uX_MIN_UI16				uX_MIN_UWORD			/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */
#define uX_MAX_SWORD			0x7fff					/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uX_MAX_SSHORT			uX_MAX_SWORD			/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uX_MAX_SINT16			uX_MAX_SWORD			/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uX_MAX_SI16				uX_MAX_SWORD			/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uX_MIN_WORD				(-0x7fff - 0x1)			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_MIN_SWORD			(-0x7fff - 0x1)			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_MIN_SHORT			uX_MIN_WORD				/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_MIN_SSHORT			uX_MIN_SWORD			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_MIN_INT16			uX_MIN_WORD				/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_MIN_I16				uX_MIN_WORD				/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_MIN_SINT16			uX_MIN_SWORD			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */
#define uX_MIN_SI16				uX_MIN_SWORD			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5  sign round to -32768 */

#define uX_BOOL_MAX				0x1
#define uX_BOOL_MIN				0x0

#define uX_MAX_BOOL				0x1
#define uX_MIN_BOOL				0x0

#define uX_DWORD_MAX			0xffffffff				/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_UDWORD_MAX			0xffffffff				/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_LONG_MAX				uX_DWORD_MAX			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_ULONG_MAX			uX_UDWORD_MAX			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_INT_MAX				uX_DWORD_MAX			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_UINT_MAX				uX_UDWORD_MAX			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_INT32_MAX			uX_DWORD_MAX			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_I32_MAX				uX_DWORD_MAX			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_UINT32_MAX			uX_UDWORD_MAX			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_UI32_MAX				uX_UDWORD_MAX			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_UDWORD_MIN			0x00000000				/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_ULONG_MIN			uX_UDWORD_MIN			/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_UINT_MIN				uX_UDWORD_MIN			/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_UINT32_MIN			uX_UDWORD_MIN			/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_UI32_MIN				uX_UDWORD_MIN			/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_SDWORD_MAX			0x7fffffff				/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_SLONG_MAX			uX_SDWORD_MAX			/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_SINT_MAX				uX_SDWORD_MAX			/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_SINT32_MAX			uX_SDWORD_MAX			/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_SI32_MAX				uX_SDWORD_MAX			/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_DWORD_MIN			(-0x7fffffff - 0x1)		/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_SDWORD_MIN			(-0x7fffffff - 0x1)		/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_LONG_MIN				uX_DWORD_MIN			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_SLONG_MIN			uX_SDWORD_MIN			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_INT_MIN				uX_DWORD_MIN			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_SINT_MIN				uX_SDWORD_MIN			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_INT32_MIN			uX_DWORD_MIN			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_I32_MIN				uX_DWORD_MIN			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_SINT32_MIN			uX_SDWORD_MIN			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_SI32_MIN				uX_SDWORD_MIN			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */

#define uX_MAX_DWORD			0xffffffff				/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MAX_UDWORD			0xffffffff				/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MAX_LONG				uX_MAX_DWORD			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MAX_ULONG			uX_MAX_UDWORD			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MAX_INT				uX_MAX_DWORD			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MAX_UINT				uX_MAX_UDWORD			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MAX_INT32			uX_MAX_DWORD			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MAX_I32				uX_MAX_DWORD			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MAX_UINT32			uX_MAX_UDWORD			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MAX_UI32				uX_MAX_UDWORD			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295 */
#define uX_MIN_UDWORD			0x00000000				/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_MIN_ULONG			uX_MIN_UDWORD			/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_MIN_UINT				uX_MIN_UDWORD			/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_MIN_UINT32			uX_MIN_UDWORD			/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_MIN_UI32				uX_MIN_UDWORD			/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0 */
#define uX_MAX_SDWORD			0x7fffffff				/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_MAX_SLONG			uX_MAX_SDWORD			/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_MAX_SINT				uX_MAX_SDWORD			/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_MAX_SINT32			uX_MAX_SDWORD			/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_MAX_SI32				uX_MAX_SDWORD			/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uX_MIN_DWORD			(-0x7fffffff - 0x1)		/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_MIN_SDWORD			(-0x7fffffff - 0x1)		/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_MIN_LONG				uX_MIN_DWORD			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_MIN_SLONG			uX_MIN_SDWORD			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_MIN_INT				uX_MIN_DWORD			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_MIN_SINT				uX_MIN_SDWORD			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_MIN_INT32			uX_MIN_DWORD			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_MIN_I32				uX_MIN_DWORD			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_MIN_SINT32			uX_MIN_SDWORD			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */
#define uX_MIN_SI32				uX_MIN_SDWORD			/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5   sign round to -2147483648 */

#define uX_QWORD_MAX			0xffffffffffffffff		/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_UQWORD_MAX			0xffffffffffffffff		/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_LONGLONG_MAX			uX_QWORD_MAX			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_ULONGLONG_MAX		uX_UQWORD_MAX			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_INT64_MAX			uX_QWORD_MAX			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_I64_MAX				uX_QWORD_MAX			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_UINT64_MAX			uX_UQWORD_MAX			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_UI64_MAX				uX_UQWORD_MAX			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_UQWORD_MIN			0x0						/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */   /* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#define uX_ULONGLONG_MIN		uX_UQWORD_MIN			/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */   /* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#define uX_UINT64_MIN			uX_UQWORD_MIN			/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */   /* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#define uX_UI64_MIN				uX_UQWORD_MIN			/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */   /* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#define uX_SQWORD_MAX			0x7fffffffffffffff		/* 9223372036854775807 */			/* maximum possible si64 value, 0x7fffffffffffffff */   /* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uX_SLONGLONG_MAX		uX_SQWORD_MAX			/* 9223372036854775807 */			/* maximum possible si64 value, 0x7fffffffffffffff */   /* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uX_SINT64_MAX			uX_SQWORD_MAX			/* 9223372036854775807 */			/* maximum possible si64 value, 0x7fffffffffffffff */   /* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uX_SI64_MAX				uX_SQWORD_MAX			/* 9223372036854775807 */			/* maximum possible si64 value, 0x7fffffffffffffff */   /* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uX_QWORD_MIN			(-0x7fffffffffffffff - 0x1)		/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_SQWORD_MIN			(-0x7fffffffffffffff - 0x1)		/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_LONGLONG_MIN			uX_QWORD_MIN			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_SLONGLONG_MIN		uX_SQWORD_MIN			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_INT64_MIN			uX_QWORD_MIN			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_I64_MIN				uX_QWORD_MIN			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_SINT64_MIN			uX_SQWORD_MIN			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_SI64_MIN				uX_SQWORD_MIN			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */

#define uX_MAX_QWORD			0xffffffffffffffff		/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_MAX_UQWORD			0xffffffffffffffff		/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_MAX_LONGLONG			uX_MAX_QWORD			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_MAX_ULONGLONG		uX_MAX_UQWORD			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_MAX_INT64			uX_MAX_QWORD			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_MAX_I64				uX_MAX_QWORD			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_MAX_UINT64			uX_MAX_UQWORD			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_MAX_UI64				uX_MAX_UQWORD			/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */   /* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615 */
#define uX_MIN_UQWORD			0x0						/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */   /* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#define uX_MIN_ULONGLONG		uX_MIN_UQWORD			/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */   /* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#define uX_MIN_UINT64			uX_MIN_UQWORD			/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */   /* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#define uX_MIN_UI64				uX_MIN_UQWORD			/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */   /* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#define uX_MAX_SQWORD			0x7fffffffffffffff		/* 9223372036854775807 */			/* maximum possible si64 value, 0x7fffffffffffffff */   /* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uX_MAX_SLONGLONG		uX_MAX_SQWORD			/* 9223372036854775807 */			/* maximum possible si64 value, 0x7fffffffffffffff */   /* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uX_MAX_SINT64			uX_MAX_SQWORD			/* 9223372036854775807 */			/* maximum possible si64 value, 0x7fffffffffffffff */   /* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uX_MAX_SI64				uX_MAX_SQWORD			/* 9223372036854775807 */			/* maximum possible si64 value, 0x7fffffffffffffff */   /* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uX_MIN_QWORD			(-0x7fffffffffffffff - 0x1)		/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_MIN_SQWORD			(-0x7fffffffffffffff - 0x1)		/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_MIN_LONGLONG			uX_MIN_QWORD			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_MIN_SLONGLONG		uX_MIN_SQWORD			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_MIN_INT64			uX_MIN_QWORD			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_MIN_I64				uX_MIN_QWORD			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_MIN_SINT64			uX_MIN_SQWORD			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uX_MIN_SI64				uX_MIN_SQWORD			/* (-9223372036854775807 - 1) */	/* minimum possible si64 value, 0x8000000000000000 */   /* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */

//
// It is common for -1 to be used as an error value
//
#define uX_BYTE_ERROR			0xff
#define uX_CHAR_ERROR			0xff
#define uX_INT8_ERROR			0xff
#define uX_I8_ERROR				0xff
#define uX_UBYTE_ERROR			0xff
#define uX_UCHAR_ERROR			0xff
#define uX_UINT8_ERROR			0xff
#define uX_UI8_ERROR			0xff
#define uX_SBYTE_ERROR			(-0x1)
#define uX_SCHAR_ERROR			(-0x1)
#define uX_SINT8_ERROR			(-0x1)
#define uX_SI8_ERROR			(-0x1)

#define uX_WORD_ERROR			0xffff
#define uX_SHORT_ERROR			0xffff
#define uX_INT16_ERROR			0xffff
#define uX_I16_ERROR			0xffff
#define uX_UWORD_ERROR			0xffff
#define uX_USHORT_ERROR			0xffff
#define uX_UINT18_ERROR			0xffff
#define uX_UI18_ERROR			0xffff
#define uX_SWORD_ERROR			(-0x1)
#define uX_SSHORT_ERROR			(-0x1)
#define uX_SINT16_ERROR			(-0x1)
#define uX_SI16_ERROR			(-0x1)

#define uX_DWORD_ERROR			0xffffffff
#define uX_LONG_ERROR			0xffffffff
#define uX_INT_ERROR			0xffffffff
#define uX_INT32_ERROR			0xffffffff
#define uX_I32_ERROR			0xffffffff
#define uX_UDWORD_ERROR			0xffffffff
#define uX_ULONG_ERROR			0xffffffff
#define uX_UINT_ERROR			0xffffffff
#define uX_UINT32_ERROR			0xffffffff
#define uX_UI32_ERROR			0xffffffff
#define uX_SDWORD_ERROR			(-0x1)
#define uX_SLONG_ERROR			(-0x1)
#define uX_SINT_ERROR			(-0x1)
#define uX_SINT32_ERROR			(-0x1)
#define uX_SI32_ERROR			(-0x1)

#define uX_QWORD_ERROR			0xffffffffffffffff
#define uX_LONGLONG_ERROR		0xffffffffffffffff
#define uX_INT64_ERROR			0xffffffffffffffff
#define uX_I64_ERROR			0xffffffffffffffff
#define uX_UQWORD_ERROR			0xffffffffffffffff
#define uX_ULONGLONG_ERROR		0xffffffffffffffff
#define uX_UINT64_ERROR			0xffffffffffffffff
#define uX_UI64_ERROR			0xffffffffffffffff
#define uX_SQWORD_ERROR			(-0x1)
#define uX_SLONGLONG_ERROR		(-0x1)
#define uX_SINT64_ERROR			(-0x1)
#define uX_SI64_ERROR			(-0x1)

#define uX_FLOAT_ERROR			(-0x1)
#define uX_FLT_ERROR			(-0x1)
#define uX_DOUBLE_ERROR			(-0x1)
#define uX_DBL_ERROR			(-0x1)

#ifdef uX_X64
#define uX_SIZE_T_SIZE			8
#define uX_PTR_SIZE				8
#define uX_REG_SIZE				8
#define uX_SINTSIZE_T_MAX		uX_SQWORD_MAX
#define uX_SINTSIZE_T_MIN		uX_SQWORD_MIN
#define uX_UINTSIZE_T_MAX		uX_UQWORD_MAX
#define uX_UINTSIZE_T_MIN		uX_UQWORD_MIN
#define uX_INTSIZE_T_MAX		uX_QWORD_MAX
#define uX_INTSIZE_T_MIN		uX_QWORD_MIN
#define uX_SINTPTR_MAX			uX_SQWORD_MAX
#define uX_SINTPTR_MIN			uX_SQWORD_MIN
#define uX_UINTPTR_MAX			uX_UQWORD_MAX
#define uX_UINTPTR_MIN			uX_UQWORD_MIN
#define uX_INTPTR_MAX			uX_QWORD_MAX
#define uX_INTPTR_MIN			uX_QWORD_MIN
#define uX_MAX_SINTSIZE_T		uX_MAX_SQWORD
#define uX_MIN_SINTSIZE_T		uX_MIN_SQWORD
#define uX_MAX_UINTSIZE_T		uX_MAX_UQWORD
#define uX_MIN_UINTSIZE_T		uX_MIN_UQWORD
#define uX_MAX_INTSIZE_T		uX_MAX_QWORD
#define uX_MIN_INTSIZE_T		uX_MIN_QWORD
#define uX_MAX_SINTPTR			uX_MAX_SQWORD
#define uX_MIN_SINTPTR			uX_MIN_SQWORD
#define uX_MAX_UINTPTR			uX_MAX_UQWORD
#define uX_MIN_UINTPTR			uX_MIN_UQWORD
#define uX_MAX_INTPTR			uX_MAX_QWORD
#define uX_MIN_INTPTR			uX_MIN_QWORD
#define uX_SINTSIZE_T_ERROR		uX_SQWORD_ERROR
#define uX_UINTSIZE_T_ERROR		uX_UQWORD_ERROR
#define uX_INTSIZE_T_ERROR		uX_QWORD_ERROR
#define uX_SINTPTR_ERROR		uX_SQWORD_ERROR
#define uX_UINTPTR_ERROR		uX_UQWORD_ERROR
#define uX_INTPTR_ERROR			uX_QWORD_ERROR
#endif /*__x64__*/

#ifdef uX_X86
#define uX_SIZE_T_SIZE			4
#define uX_PTR_SIZE				4
#define uX_REG_SIZE				4
#define uX_SINTSIZE_T_MAX		uX_SDWORD_MAX
#define uX_SINTSIZE_T_MIN		uX_SDWORD_MIN
#define uX_UINTSIZE_T_MAX		uX_UDWORD_MAX
#define uX_UINTSIZE_T_MIN		uX_UDWORD_MIN
#define uX_INTSIZE_T_MAX		uX_DWORD_MAX
#define uX_INTSIZE_T_MIN		uX_DWORD_MIN
#define uX_SINTPTR_MAX			uX_SDWORD_MAX
#define uX_SINTPTR_MIN			uX_SDWORD_MIN
#define uX_UINTPTR_MAX			uX_UDWORD_MAX
#define uX_UINTPTR_MIN			uX_UDWORD_MIN
#define uX_INTPTR_MAX			uX_DWORD_MAX
#define uX_INTPTR_MIN			uX_DWORD_MIN
#define uX_MAX_SINTSIZE_T		uX_MAX_SDWORD
#define uX_MIN_SINTSIZE_T		uX_MIN_SDWORD
#define uX_MAX_UINTSIZE_T		uX_MAX_UDWORD
#define uX_MIN_UINTSIZE_T		uX_MIN_UDWORD
#define uX_MAX_INTSIZE_T		uX_MAX_DWORD
#define uX_MIN_INTSIZE_T		uX_MIN_DWORD
#define uX_MAX_SINTPTR			uX_MAX_SDWORD
#define uX_MIN_SINTPTR			uX_MIN_SDWORD
#define uX_MAX_UINTPTR			uX_MAX_UDWORD
#define uX_MIN_UINTPTR			uX_MIN_UDWORD
#define uX_MAX_INTPTR			uX_MAX_DWORD
#define uX_MIN_INTPTR			uX_MIN_DWORD
#define uX_SINTSIZE_T_ERROR		uX_SDWORD_ERROR
#define uX_UINTSIZE_T_ERROR		uX_UDWORD_ERROR
#define uX_INTSIZE_T_ERROR		uX_DWORD_ERROR
#define uX_SINTPTR_ERROR		uX_SDWORD_ERROR
#define uX_UINTPTR_ERROR		uX_UDWORD_ERROR
#define uX_INTPTR_ERROR			uX_DWORD_ERROR
#endif /*__x32__*/

/*mm types*/
#define uX_MM_SIZE			8
#define uX_M64_SIZE			8
#define uX_XMM_SIZE			16
#define uX_M128_SIZE		16
#define uX_YMM_SIZE			32
#define uX_M256_SIZE		32
#define uX_ZMM_SIZE			64
#define uX_M512_SIZE		64

	/*byte*/
#define uX_M8_FALSE			0x00
#define uX_M8_TRUE			0xff
#define uX_BYTE_FALSE		0x00
#define uX_BYTE_TRUE		0xff
#define uX_CHAR_FALSE		0x00
#define uX_CHAR_TRUE		0xff
#define uX_INT8_FALSE		0x00
#define uX_INT8_TRUE		0xff
#define uX_I8_FALSE			0x00
#define uX_I8_TRUE			0xff
/*word*/
#define uX_M16_FALSE		0x0000
#define uX_M16_TRUE			0xffff
#define uX_WORD_FALSE		0x0000
#define uX_WORD_TRUE		0xffff
#define uX_SHORT_FALSE		0x0000
#define uX_SHORT_TRUE		0xffff
#define uX_INT16_FALSE		0x0000
#define uX_INT16_TRUE		0xffff
#define uX_I16_FALSE		0x0000
#define uX_I16_TRUE			0xffff
/*dword*/
#define uX_M32_FALSE		0x00000000
#define uX_M32_TRUE			0xffffffff
#define uX_DWORD_FALSE		0x00000000
#define uX_DWORD_TRUE		0xffffffff
#define uX_LONG_FALSE		0x00000000
#define uX_LONG_TRUE		0xffffffff
#define uX_INT_FALSE		0x00000000
#define uX_INT_TRUE			0xffffffff
#define uX_INT32_FALSE		0x00000000
#define uX_INT32_TRUE		0xffffffff
#define uX_I32_FALSE		0x00000000
#define uX_I32_TRUE			0xffffffff
/*qword*/
#define uX_M64_FALSE		0x0000000000000000
#define uX_M64_TRUE			0xffffffffffffffff
#define uX_QWORD_FALSE		0x0000000000000000
#define uX_QWORD_TRUE		0xffffffffffffffff
#define uX_LONGLONG_FALSE   0x0000000000000000
#define uX_LONGLONG_TRUE	0xffffffffffffffff
#define uX_INT64_FALSE		0x0000000000000000
#define uX_INT64_TRUE		0xffffffffffffffff
#define uX_I64_FALSE		0x0000000000000000
#define uX_I64_TRUE			0xffffffffffffffff

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/* single precision constants */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// mask or hex constants for single precision

#define uX_FLT_1lshl3_msk		0x00000008
#define uX_FLT_1lshl4_msk		0x00000010
#define uX_FLT_1lshl7_msk		0x00000080
#define uX_FLT_1lshl8_msk		0x00000100
#define uX_FLT_1lshl11_msk		0x00000800
#define uX_FLT_1lshl12_msk		0x00001000
#define uX_FLT_1lshl15_msk		0x00008000
#define uX_FLT_1lshl16_msk		0x00010000
#define uX_FLT_1lshl19_msk		0x00080000
#define uX_FLT_1lshl20_msk		0x00100000
#define uX_FLT_1lshl23_msk		0x00800000
#define uX_FLT_1lshl24_msk		0x01000000
#define uX_FLT_1lshl27_msk		0x08000000
#define uX_FLT_1lshl28_msk		0x10000000
#define uX_FLT_1lshl31_msk		0x80000000

#define uX_FLT_neg1lshl3_msk		0xfffffff8
#define uX_FLT_neg1lshl4_msk		0xfffffff0
#define uX_FLT_neg1lshl7_msk		0xffffff80
#define uX_FLT_neg1lshl8_msk		0xffffff00
#define uX_FLT_neg1lshl11_msk		0xfffff800
#define uX_FLT_neg1lshl12_msk		0xfffff000
#define uX_FLT_neg1lshl15_msk		0xffff8000
#define uX_FLT_neg1lshl16_msk		0xffff0000
#define uX_FLT_neg1lshl19_msk		0xfff80000
#define uX_FLT_neg1lshl20_msk		0xfff00000
#define uX_FLT_neg1lshl23_msk		0xff800000
#define uX_FLT_neg1lshl24_msk		0xff000000
#define uX_FLT_neg1lshl27_msk		0xf8000000
#define uX_FLT_neg1lshl28_msk		0xf0000000
#define uX_FLT_neg1lshl31_msk		0x80000000

#define uX_FLT_false_msk			0x00000000
#define uX_FLT_true_msk				0xffffffff

#define uX_FLT_Magic_msk			0x4b000000		/* 1258291200 */
#define uX_FLT_Sign_msk				0x80000000		/* -2147483648 MinI32 */
#define uX_FLT_invSign_msk			0x7fffffff		/* 2147483647 MaxI32 */

#define uX_FLT_Inf_msk				0x7f800000		/* 2139095040 MaxI32+1-pow2^23*/
#define uX_FLT_Fin_msk				0xff000000		/* 4278190080 */
#define uX_FLT_invInf_msk			0x807fffff		/* -2139095041 */
#define uX_FLT_negInf_msk			0xff800000		/* -8388608 */
#define uX_FLT_NaN_msk				0x7fffffff		/* 2147483647 MaxI32 */
#define uX_FLT_QNaN_msk				0x7fc00000		/* 2143289344 */
#define uX_FLT_negQNaN_msk			0xffc00000		/* -4194304 */
#define uX_FLT_NaNTest_msk			0x007fffff		/* 8388607 */
#define uX_FLT_Abs_msk				0x7fffffff		/* 2147483647 MaxI32 */
#define uX_FLT_Min_msk				0x00800000		/* 1.175494351e-38F 8388608 pow2^23*/			/* min positive value */
#define uX_FLT_Max_msk				0x7f7fffff		/* 2139095039 MaxI32-pow2^23*/
#define uX_FLT_NoFraction_msk		0x00800000		/* 8388608 pow2^23*/
#define uX_FLT_MinDenorm_msk		0x00000001
#define uX_FLT_DenormLimit_msk		0x00800000		/* 8388608 pow2^23*/
#define uX_FLT_MinNormal_msk		0x00800000		/* 8388608 pow2^23*/
#define uX_FLT_MaxNormal_msk		0x7f7fffff		/* 2139095039 MaxI32-pow2^23*/

//#define uX_FLT_ExpBias_msk		0x54800000		/* 1417674752 exponent bias */
//#define uX_FLT_ExpM1div3_msk		0x002aaaaa		/* 2796202 exponent multiplier for 1/3 */

#define uX_FLT_DecDig_msk			0x00000009			/* 9 */							/* # of float decimal digits of rounding precision */
#define uX_FLT_Dig_msk				0x00000006			/* 6 */							/* # of float decimal digits of precision */
#define uX_FLT_negDecDig_msk		0xfffffff7			/* -9 */						/* # negate of float decimal digits of rounding precision */
#define uX_FLT_negDig_msk			0xfffffffa			/* -6 */						/* # negate of float decimal digits of precision */
#define uX_FLT_Eps_msk				0x34000000			/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uX_FLT_Epsilon_msk			0x34000000			/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uX_FLT_NormEps_msk			0x1e3ce508			/* 1e-20f */
#define uX_FLT_Guard_msk			0x00000000
#define uX_FLT_MantPow2_msk			0x00800000			/* 8388608 */					/* # pow2^23 */
#define uX_FLT_MaxMantPow2_msk		0x7f7fffff			/* 2139095039 */				/* # MaxI32-pow2^23 */
#define uX_FLT_MantDig_msk			0x00000018			/* 24 */						/* # of bits in float mantissa */
#define uX_FLT_Mant_msk				0x00000017			/* 23 */						/* # stable of float bits in mantissa */
#define uX_FLT_negMantDig_msk		0xffffffe8			/* -24 */						/* # negate of float bits in mantissa */
#define uX_FLT_negMant_msk			0xffffffe9			/* -23 */						/* # negate stable of float bits in mantissa */
#define uX_FLT_MaxExp_msk			0x00000080			/* 128 */						/* stable max float binary exponent */
#define uX_FLT_ExpSign_msk			0x00000080			/* 128 uX_FLT_MaxExp_msk */		/* stable sign float binary exponent */
#define uX_FLT_Exp_msk				0x0000007f			/* 127 */						/* stable binary exponent */
#define uX_FLT_negMaxExp_msk		0xffffff80			/* -128 */						/* negate stable max float binary exponent */
#define uX_FLT_negExpSign_msk		0xffffff80			/* -128 uX_FLT_MaxExp_msk */	/* negate stable sign float binary exponent */
#define uX_FLT_negExp_msk			0xffffff81			/* -127 */						/* negate stable binary exponent */
#define uX_FLT_SubnormalExp_msk		0xffffff82			/* -126 */						/* stable min float binary exponent */
#define uX_FLT_MinExp_msk			0xffffff83			/* -125 */						/* min binary exponent */
#define uX_FLT_MaxDecExp_msk		0x00000026			/* 38 */						/* max float decimal exponent */
#define uX_FLT_negMaxDecExp_msk		0xffffffda			/* -38 */						/* neg max float decimal exponent */
#define uX_FLT_minDecExp_msk		0xffffffd8			/* -37 */						/* float min decimal exponent */
#define uX_FLT_ExpField_msk			0xff000000			/* -16777216 */					/* float exponent field */
#define uX_FLT_MantField_msk		0x00ffffff			/* 16777215 */					/* float mantissa field */
#define uX_FLT_Norm_msk				0x00000000
#define uX_FLT_Radix_msk			0x00000002			/* 2 */							/* float exponent radix */
#define uX_FLT_Rounds_msk			0x00000001			/* 1 */							/* addition rounding: near */
#define uX_FLT_SubDec_msk			0x0000000a
#define uX_FLT_sqrtMax_msk			0x5f7ffff0			/* 1.8446726e+019f */			/*Slightly less that sqrt(uX_FLT_Max_msk).*/
#define uX_FLT_SmallNorm_msk		0x00800000			/* 1.175494351e-38f */			/* smallest normal number, float*/

#define uX_FLT_HalfminusEps_msk		0x3efffffc		/* 1056964604 */
#define uX_FLT_trueint_msk			0x00000001		/* 1 */

//#define uX_FLT_maxExp_msk		0x0000007f			/* 127 */						/* stable max float binary exponent */
//#define uX_FLT_minExp_msk		0xffffff82			/* -126 */						/* stable min float binary exponent */

#define uX_FLT_Byte_msk				0x000000ff		/* 255 */
#define uX_FLT_Byte_Even_msk		0x00ff00ff		/* 16711935 */
#define uX_FLT_Byte_Odd_msk			0xff00ff00		/* (-16711936) */
#define uX_FLT_4Low_msk				0x0fffffff		/* 268435455 */
#define uX_FLT_4High_msk			0xfffffff0		/* -16 */
#define uX_FLT_flip4_msk			0x00000008		/* 8 */
#define uX_FLT_8Low_msk				0x00ffffff		/* 16777215 */
#define uX_FLT_8High_msk			0xffffff00		/* -256 */
#define uX_FLT_flip8_msk			0x00000080		/* 128 */
#define uX_FLT_16Low_msk			0x0000ffff		/* 65535 */
#define uX_FLT_16High_msk			0xffff0000		/* -65536 */
#define uX_FLT_flip16_msk			0x00008000		/* 32768 */
#define uX_FLT_24Low_msk			0x000000ff		/* 255 */
#define uX_FLT_24High_msk			0xff000000		/* -16777216 */
#define uX_FLT_flip24_msk			0x00800000		/* 8388608 */
#define uX_FLT_28Low_msk			0x0000000f		/* 15 */
#define uX_FLT_28High_msk			0xf0000000		/* -268435456 */
#define uX_FLT_flip28_msk			0x08000000		/* 134217728 */
#define uX_FLT_32Low_msk			0x00000000		/* 0 */
#define uX_FLT_32High_msk			0x00000000		/* 0 */
#define uX_FLT_flip32_msk			0x80000000		/* -2147483648 */

#define uX_FLT_0_msk				0x00000000
#define uX_FLT_0d001_msk			0x3a83126f		/* 0.001f */
#define uX_FLT_0d002_msk			0x3b03126f		/* 0.002f */
#define uX_FLT_0d003_msk			0x3b449ba6		/* 0.003f */
#define uX_FLT_0d004_msk			0x3b83126f		/* 0.004f */
#define uX_FLT_0d005_msk			0x3ba3d70a		/* 0.005f */
#define uX_FLT_0d006_msk			0x3bc49ba6		/* 0.006f */
#define uX_FLT_0d007_msk			0x3be56042		/* 0.007f */
#define uX_FLT_0d008_msk			0x3c03126f		/* 0.008f */
#define uX_FLT_0d009_msk			0x3c1374bc		/* 0.009f */
#define uX_FLT_0d01_msk				0x3c23d70a		/* 0.01f */
#define uX_FLT_0d02_msk				0x3ca3d70a		/* 0.02f */
#define uX_FLT_0d03_msk				0x3cf5c28f		/* 0.03f */
#define uX_FLT_0d04_msk				0x3d23d70a		/* 0.04f */
#define uX_FLT_0d05_msk				0x3d4ccccd		/* 0.05f */
#define uX_FLT_0d06_msk				0x3d75c28f		/* 0.06f */
#define uX_FLT_0d07_msk				0x3d8f5c29		/* 0.07f */
#define uX_FLT_0d08_msk				0x3da3d70a		/* 0.08f */
#define uX_FLT_0d09_msk				0x3db851ec		/* 0.09f */
#define uX_FLT_0d1_msk				0x3dcccccd		/* 0.1f */
#define uX_FLT_0d2_msk				0x3e4ccccd		/* 0.2f */
#define uX_FLT_0d3_msk				0x3e99999a		/* 0.3f */
#define uX_FLT_0d4_msk				0x3ecccccd		/* 0.4f */
#define uX_FLT_0d5_msk				0x3f000000		/* 0.5f */
#define uX_FLT_0d6_msk				0x3f19999a		/* 0.6f */
#define uX_FLT_0d7_msk				0x3f333333		/* 0.7f */
#define uX_FLT_0d8_msk				0x3f4ccccd		/* 0.8f */
#define uX_FLT_0d9_msk				0x3f666666		/* 0.9f */
#define uX_FLT_1_msk				0x3f800000		/* 1.0f */
#define uX_FLT_1d5_msk				0x3fc00000		/* 1.5f */
#define uX_FLT_2_msk				0x40000000		/* 2.0f */
#define uX_FLT_2d5_msk				0x40200000		/* 2.5f */
#define uX_FLT_3_msk				0x40400000		/* 3.0f */
#define uX_FLT_4_msk				0x40800000		/* 4.0f */
#define uX_FLT_5_msk				0x40a00000		/* 5.0f */
#define uX_FLT_6_msk				0x40c00000		/* 6.0f */
#define uX_FLT_7_msk				0x40e00000		/* 7.0f */
#define uX_FLT_8_msk				0x41000000		/* 8.0f */
#define uX_FLT_9_msk				0x41100000		/* 9.0f */
#define uX_FLT_10_msk				0x41200000		/* 10.0f */
#define uX_FLT_11_msk				0x41300000		/* 11.0f */
#define uX_FLT_12_msk				0x41400000		/* 12.0f */
#define uX_FLT_13_msk				0x41500000		/* 13.0f */
#define uX_FLT_14_msk				0x41600000		/* 14.0f */
#define uX_FLT_15_msk				0x41700000		/* 15.0f */
#define uX_FLT_16_msk				0x41800000		/* 16.0f */
#define uX_FLT_17_msk				0x41880000		/* 17.0f */
#define uX_FLT_18_msk				0x41900000		/* 18.0f */
#define uX_FLT_19_msk				0x41980000		/* 19.0f */
#define uX_FLT_20_msk				0x41a00000		/* 20.0f */
#define uX_FLT_24_msk				0x41c00000		/* 24.0f */
#define uX_FLT_24d5_msk				0x41c40000		/* 24.5f */
#define uX_FLT_25_msk				0x41c80000		/* 25.0f */

#define uX_FLT_128_msk				0x43000000		/* 128.0f */

#define uX_FLT_253_msk				0x437d0000		/* 253.0f */

#define uX_FLT_neg0_msk				0x80000000		/* -0.0f -2147483648 MinI32 */
#define uX_FLT_neg1_msk				0xbf800000		/* -1.0f */

#define uX_FLT_neg150_msk			0xc3160000		/* -150.0f */

#define uX_FLT_A8_msk				0x00ff0000		/* 16711680 */
#define uX_FLT_R8_msk				0x0000ff00		/* 65280 */
#define uX_FLT_G8_msk				0x000000ff		/* 255 */
#define uX_FLT_B8_msk				0xff000000		/* -16777216 */

#define uX_FLT_flipA8_msk			uX_FLT_0_msk
#define uX_FLT_flipR8_msk			uX_FLT_0_msk
#define uX_FLT_flipG8_msk			uX_FLT_0_msk
#define uX_FLT_flipB8_msk			uX_FLT_neg0_msk

#define uX_FLT_A2_msk				0x000003ff		/* 1023 */
#define uX_FLT_B10_msk				0x000ffc00		/* 1047552 */
#define uX_FLT_G10_msk				0x3ff00000		/* 1072693248 */
#define uX_FLT_R10_msk				0xc0000000		/* -1073741824 */

#define uX_FLT_flipA2_msk			0x00000200		/* 512 */
#define uX_FLT_flipB10_msk			0x00080000		/* 524288 */
#define uX_FLT_flipG10_msk			0x20000000		/* 536870912 */
#define uX_FLT_flipR10_msk			0x80000000		/* -2147483648 */

#define uX_FLT_bin128_msk			uX_FLT_128_msk		/* 1124073472 */
#define uX_FLT_binneg150_msk		uX_FLT_neg150_msk   /* -1021968384 */

#define uX_FLT_maxRand_msk			0x00007fff

#define uX_FLT_maxI8_msk			0x0000007f			/*127*/
#define uX_FLT_minI8_msk			0xffffff80			/*-128*/
#define uX_FLT_maxU8_msk			0x000000ff			/*255*/

#define uX_FLT_maxI16_msk			0x00007fff			/*32767*/
#define uX_FLT_minI16_msk			0xffff8000			/*-32768*/
#define uX_FLT_maxU16_msk			0x0000ffff			/*65535*/

#define uX_FLT_maxI32_msk			0x7fffffff			/*2147483647*/
#define uX_FLT_minI32_msk			0x80000000			/*-2147483648*/
#define uX_FLT_maxU32_msk			0xffffffff			/*4294967295*/

#define uX_FLT_maxI8xU8_msk			0x00008000			/*32768*/				/*128.0f*256.0f*/
#define uX_FLT_minI8xU8_msk			0xffff8000			/*-32768*/				/*-128.0f*256.0f*/
#define uX_FLT_maxI8xU16_msk		0x00800000			/*8388608*/				/*128.0f*65536.0f*/
#define uX_FLT_minI8xU16_msk		0xff800000			/*-8388608*/			/*-128.0f*65536.0f*/

#define uX_FLT_maxI16xU16_msk		0x80000000			/*(0x00008000 * 0x00010000)*/   /*2147483648*/			/*32768.0f*65536.0f*/
#define uX_FLT_minI16xU16_msk		0x80000000			/*-2147483648*/			/*-32768.0f*65536.0f*/

#define uX_FLT_fixUnsigned_msk		0x80000000			/*(0x00008000 * 0x00010000)*/					/*2147483648*/			/*32768.0f*65536.0f*/
#define uX_FLT_fixUnsigned32_msk	0x80000000			/*(0x00008000 * 0x00010000)*/					/*2147483648*/			/*32768.0f*65536.0f*/
#define uX_FLT_fixmaxI32_msk		0x7fffff80			/*(0x00010000 * 0x00008000 + 0x7fffff80)*/		/*2147483520*/			/*65536.0f*32768.0f-128.0f*/
#define uX_FLT_fixmaxU32_msk		0xffffff00			/*(0x00010000 * 0x00010000 + 0xffffff00)*/		/*4294967040*/			/*65536.0f*65536.0f-256.0f*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// int

#define uX_FLT_1lshl3_int		8
#define uX_FLT_1lshl4_int		16
#define uX_FLT_1lshl7_int		128
#define uX_FLT_1lshl8_int		256
#define uX_FLT_1lshl11_int		2048
#define uX_FLT_1lshl12_int		4046
#define uX_FLT_1lshl15_int		32768
#define uX_FLT_1lshl16_int		65536
#define uX_FLT_1lshl19_int		524288
#define uX_FLT_1lshl20_int		1048576
#define uX_FLT_1lshl23_int		8388608
#define uX_FLT_1lshl24_int		16777216
#define uX_FLT_1lshl27_int		134217728
#define uX_FLT_1lshl28_int		268435456
#define uX_FLT_1lshl31_int		(-2147483648)

#define uX_FLT_neg1lshl3_int		(-8)
#define uX_FLT_neg1lshl4_int		(-16)
#define uX_FLT_neg1lshl7_int		(-128)
#define uX_FLT_neg1lshl8_int		(-256)
#define uX_FLT_neg1lshl11_int		(-2048)
#define uX_FLT_neg1lshl12_int		(-4046)
#define uX_FLT_neg1lshl15_int		(-32768)
#define uX_FLT_neg1lshl16_int		(-65536)
#define uX_FLT_neg1lshl19_int		(-524288)
#define uX_FLT_neg1lshl20_int		(-1048576)
#define uX_FLT_neg1lshl23_int		(-8388608)
#define uX_FLT_neg1lshl24_int		(-16777216)
#define uX_FLT_neg1lshl27_int		(-134217728)
#define uX_FLT_neg1lshl28_int		(-268435456)
#define uX_FLT_neg1lshl31_int		(-2147483648)

#define uX_FLT_false_int			0
#define uX_FLT_true_int				(-1)

#define uX_FLT_Magic_int			1258291200			/* 1258291200 */
#define uX_FLT_Sign_int				(-2147483648)		/* -2147483648 MinI32 */
#define uX_FLT_invSign_int			2147483647			/* 2147483647 MaxI32 */

#define uX_FLT_Inf_int				2139095040			/* 2139095040 MaxI32+1-pow2^23*/
#define uX_FLT_Fin_int				(-16777216)			/* (-16777216) */
#define uX_FLT_invInf_int			(-2139095041)		/* -2139095041 */
#define uX_FLT_negInf_int			(-8388608)			/* -8388608 */
#define uX_FLT_NaN_int				2147483647			/* 2147483647 MaxI32 */
#define uX_FLT_QNaN_int				2143289344			/* 2143289344 */
#define uX_FLT_negQNaN_int			(-4194304)			/* -4194304 */
#define uX_FLT_NaNTest_int			8388607				/* 8388607 */
#define uX_FLT_Abs_int				2147483647			/* 2147483647 MaxI32 */
#define uX_FLT_Min_int				8388608				/* 1.175494351e-38F 8388608 pow2^23*/			/* min positive value */
#define uX_FLT_Max_int				2139095039			/* 2139095039 MaxI32-pow2^23*/
#define uX_FLT_NoFraction_int		8388608				/* 8388608 pow2^23*/
#define uX_FLT_MinDenorm_int		1
#define uX_FLT_DenormLimit_int		8388608				/* 8388608 pow2^23*/
#define uX_FLT_MinNormal_int		8388608				/* 8388608 pow2^23*/
#define uX_FLT_MaxNormal_int		2139095039			/* 2139095039 MaxI32-pow2^23*/

//#define uX_FLT_ExpBias_int		1417674752		/* 1417674752 exponent bias */
//#define uX_FLT_ExpM1div3_int		2796202			/* 2796202 exponent multiplier for 1/3 */

#define uX_FLT_DecDig_int			9					/* 9 */							/* # of float decimal digits of rounding precision */
#define uX_FLT_Dig_int				6					/* 6 */							/* # of float decimal digits of precision */
#define uX_FLT_negDecDig_int		(-9)				/* -9 */						/* # negate of float decimal digits of rounding precision */
#define uX_FLT_negDig_int			(-6)				/* -6 */						/* # negate of float decimal digits of precision */
#define uX_FLT_Eps_int				872415232			/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uX_FLT_Epsilon_int			872415232			/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uX_FLT_NormEps_int			507307272			/* 1e-20f */
#define uX_FLT_Guard_int			0
#define uX_FLT_MantPow2_int			8388608				/* 8388608 */					/* # pow2^23 */
#define uX_FLT_MaxMantPow2_int		2139095039			/* 2139095039 */				/* # MaxI32-pow2^23 */
#define uX_FLT_MantDig_int			24					/* 24 */						/* # of bits in float mantissa */
#define uX_FLT_Mant_int				23					/* 23 */						/* # stable of float bits in mantissa */
#define uX_FLT_negMantDig_int		(-24)				/* -24 */						/* # negate of float bits in mantissa */
#define uX_FLT_negMant_int			(-23)				/* -23 */						/* # negate stable of float bits in mantissa */
#define uX_FLT_MaxExp_int			128					/* 128 */						/* stable max float binary exponent */
#define uX_FLT_ExpSign_int			128					/* 128 */						/* stable max float binary exponent */
#define uX_FLT_Exp_int				127					/* 127 */						/* stable binary exponent */
#define uX_FLT_negMaxExp_int		(-128)				/* -128 */						/* negate stable max float binary exponent */
#define uX_FLT_negExpSign_int		(-128)				/* -128 uX_FLT_MaxExp_msk */	/* negate stable sign float binary exponent */
#define uX_FLT_negExp_int			(-127)				/* -127 */						/* negate stable binary exponent */
#define uX_FLT_SubnormalExp_int		(-126)				/* -126 */						/* stable min float binary exponent */
#define uX_FLT_MinExp_int			(-125)				/* -125 */						/* min binary exponent */
#define uX_FLT_MaxDecExp_int		38					/* 38 */						/* max float decimal exponent */
#define uX_FLT_negMaxDecExp_int		(-38)				/* -38 */						/* neg max float decimal exponent */
#define uX_FLT_minDecExp_int		(-37)				/* -37 */						/* float min decimal exponent */
#define uX_FLT_ExpField_int			(-16777216)			/* -16777216 */					/* float exponent field */
#define uX_FLT_MantField_int		16777215			/* 16777215 */					/* float mantissa field */
#define uX_FLT_Norm_int				0
#define uX_FLT_Radix_int			2					/* 2 */							/* float exponent radix */
#define uX_FLT_Rounds_int			1					/* 1 */							/* addition rounding: near */
#define uX_FLT_SubDec_int			10
#define uX_FLT_sqrtMax_int			1602224112			/* 1.8446726e+019f */			/*Slightly less that sqrt(uX_FLT_Max_int).*/
#define uX_FLT_SmallNorm_int		8388608				/* 1.175494351e-38f */			/* smallest normal number, float*/

#define uX_FLT_HalfminusEps_int		1056964604			/* 1056964604 */
#define uX_FLT_trueint_int			1					/* 1 */

#define uX_FLT_Byte_int				255					/* 255 */
#define uX_FLT_Byte_Even_int		16711935		/* 16711935 */
#define uX_FLT_Byte_Odd_int			(-16711936)		/* (-16711936) */
#define uX_FLT_4Low_int				268435455			/* 268435455 */
#define uX_FLT_4High_int			(-16)				/* -16 */
#define uX_FLT_flip4_int			8					/* 8 */
#define uX_FLT_8Low_int				16777215			/* 16777215 */
#define uX_FLT_8High_int			(-256)				/* -256 */
#define uX_FLT_flip8_int			128					/* 128 */
#define uX_FLT_16Low_int			65535				/* 65535 */
#define uX_FLT_16High_int			(-65536)			/* -65536 */
#define uX_FLT_flip16_int			32768				/* 32768 */
#define uX_FLT_24Low_int			255					/* 255 */
#define uX_FLT_24High_int			(-16777216)			/* -16777216 */
#define uX_FLT_flip24_int			8388608				/* 8388608 */
#define uX_FLT_28Low_int			15					/* 15 */
#define uX_FLT_28High_int			(-268435456)		/* -268435456 */
#define uX_FLT_flip28_int			134217728			/* 134217728 */
#define uX_FLT_32Low_int			0					/* 0 */
#define uX_FLT_32High_int			0					/* 0 */
#define uX_FLT_flip32_int			(-2147483648)		/* -2147483648 */

#define uX_FLT_0_int				0
#define uX_FLT_0d5_int				1056964608
#define uX_FLT_1_int				1065353216
#define uX_FLT_1d5_int				1069547520
#define uX_FLT_2_int				1073741824
#define uX_FLT_2d5_int				1075838976
#define uX_FLT_3_int				1077936128
#define uX_FLT_4_int				1082130432
#define uX_FLT_5_int				1084227584
#define uX_FLT_6_int				1086324736
#define uX_FLT_7_int				1088421888
#define uX_FLT_8_int				1090519040
#define uX_FLT_9_int				1091567616
#define uX_FLT_10_int				1092616192
#define uX_FLT_20_int				1101004800
#define uX_FLT_23_int				1102577664
#define uX_FLT_23d5_int				1102839808
#define uX_FLT_24_int				1103101952
#define uX_FLT_24d5_int				1103364096
#define uX_FLT_25_int				1103626240

#define uX_FLT_128_int				1124073472			/* 128.0f */

#define uX_FLT_253_int				1132265472			/* 253.0f */

#define uX_FLT_neg0_int				(-2147483648)		/* -0.0f -2147483648 MinI32 */
#define uX_FLT_neg1_int				(-1082130432)		/* -1.0f */

#define uX_FLT_neg150_int			(-1021968384)		/* -150.0f */

#define uX_FLT_A8_int				16711680			/* 16711680 */
#define uX_FLT_R8_int				65280				/* 65280 */
#define uX_FLT_G8_int				255					/* 255 */
#define uX_FLT_B8_int				(-16777216)			/* -16777216 */

#define uX_FLT_flipA8_int			uX_FLT_0_int
#define uX_FLT_flipR8_int			uX_FLT_0_int
#define uX_FLT_flipG8_int			uX_FLT_0_int
#define uX_FLT_flipB8_int			uX_FLT_neg0_int

#define uX_FLT_A2_int				1023				/* 1023 */
#define uX_FLT_B10_int				1047552				/* 1047552 */
#define uX_FLT_G10_int				1072693248			/* 1072693248 */
#define uX_FLT_R10_int				(-1073741824)		/* -1073741824 */

#define uX_FLT_flipA2_int			512					/* 512 */
#define uX_FLT_flipB10_int			524288				/* 524288 */
#define uX_FLT_flipG10_int			536870912			/* 536870912 */
#define uX_FLT_flipR10_int			(-2147483648)		/* -2147483648 */

#define uX_FLT_bin128_int			uX_FLT_128_int		/* 1124073472 */
#define uX_FLT_binneg150_int		uX_FLT_neg150_int   /* -1021968384 */

#define uX_FLT_maxRand_int			32767

#define uX_FLT_maxI8_int			127					/*127*/
#define uX_FLT_minI8_int			(-128)				/*-128*/
#define uX_FLT_maxU8_int			255					/*255*/

#define uX_FLT_maxI16_int			32767				/*32767*/
#define uX_FLT_minI16_int			(-32768)			/*-32768*/
#define uX_FLT_maxU16_int			65535				/*65535*/

#define uX_FLT_maxI32_int			2147483647			/*2147483647*/
#define uX_FLT_minI32_int			(-2147483648)		/*-2147483648*/
#define uX_FLT_maxU32_int			(-1)				/*-1*/

#define uX_FLT_maxI8xU8_int			32768				/*32768*/				/*128.0f*256.0f*/
#define uX_FLT_minI8xU8_int			(-32768)			/*-32768*/				/*-128.0f*256.0f*/
#define uX_FLT_maxI8xU16_int		8388608				/*8388608*/				/*128.0f*65536.0f*/
#define uX_FLT_minI8xU16_int		(-8388608)			/*-8388608*/			/*-128.0f*65536.0f*/

#define uX_FLT_maxI16xU16_int		(-2147483648)		/*(0x00008000 * 0x00010000)*/   /*2147483648*/			/*32768.0f*65536.0f*/
#define uX_FLT_minI16xU16_int		(-2147483648)		/*-2147483648*/			/*-32768.0f*65536.0f*/

#define uX_FLT_fixUnsigned_int		(-2147483648)		/*(0x00008000 * 0x00010000)*/					/*2147483648*/			/*32768.0f*65536.0f*/
#define uX_FLT_fixUnsigned32_int	(-2147483648)		/*(0x00008000 * 0x00010000)*/					/*2147483648*/			/*32768.0f*65536.0f*/
#define uX_FLT_fixmaxI32_int		2147483520			/*(0x00010000 * 0x00008000 + 0x7fffff80)*/		/*2147483520*/			/*65536.0f*32768.0f-128.0f*/
#define uX_FLT_fixmaxU32_int		(-256)				/*(0x00010000 * 0x00010000 + 0xffffff00)*/		/*4294967040*/			/*65536.0f*65536.0f-256.0f*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// flt

#define uX_FLT_1lshl3		8.0f
#define uX_FLT_1lshl4		16.0f
#define uX_FLT_1lshl7		128.0f
#define uX_FLT_1lshl8		256.0f
#define uX_FLT_1lshl11		2048.0f
#define uX_FLT_1lshl12		4046.0f
#define uX_FLT_1lshl15		32768.0f
#define uX_FLT_1lshl16		65536.0f
#define uX_FLT_1lshl19		524288.0f
#define uX_FLT_1lshl20		1048576.0f
#define uX_FLT_1lshl23		8388608.0f
#define uX_FLT_1lshl24		16777216.0f
#define uX_FLT_1lshl27		134217728.0f
#define uX_FLT_1lshl28		268435456.0f
#define uX_FLT_1lshl31		(-2147483648.0f)

#define uX_FLT_neg1lshl3		(-8.0f)
#define uX_FLT_neg1lshl4		(-16.0f)
#define uX_FLT_neg1lshl7		(-128.0f)
#define uX_FLT_neg1lshl8		(-256.0f)
#define uX_FLT_neg1lshl11		(-2048.0f)
#define uX_FLT_neg1lshl12		(-4046.0f)
#define uX_FLT_neg1lshl15		(-32768.0f)
#define uX_FLT_neg1lshl16		(-65536.0f)
#define uX_FLT_neg1lshl19		(-524288.0f)
#define uX_FLT_neg1lshl20		(-1048576.0f)
#define uX_FLT_neg1lshl23		(-8388608.0f)
#define uX_FLT_neg1lshl24		(-16777216.0f)
#define uX_FLT_neg1lshl27		(-134217728.0f)
#define uX_FLT_neg1lshl28		(-268435456.0f)
#define uX_FLT_neg1lshl31		(-2147483648.0f)

#define uX_FLT_false				0.0f
#define uX_FLT_true					uX::detail::int32_as_float(uX_FLT_true_msk)

#define uX_FLT_Magic				uX::detail::int32_as_float(uX_FLT_Magic_msk)				/*8388608.0f*/								/* 1258291200 */
#define uX_FLT_Sign					uX::detail::uint32_as_float(uX_FLT_Sign_msk)				/*-0.0f*/									/* -2147483648 MinI32 */
#define uX_FLT_invSign				uX::detail::int32_as_float(uX_FLT_invSign_msk)			/* 2147483647 MaxI32 */

#define uX_FLT_Inf					uX::detail::int32_as_float(uX_FLT_Inf_msk)				/* 2139095040 MaxI32+1-pow2^23*/
#define uX_FLT_Fin					uX::detail::uint32_as_float(uX_FLT_Fin_msk)				/* 4278190080 */
#define uX_FLT_invInf				uX::detail::uint32_as_float(uX_FLT_invInf_msk)			/*1.17549420987015360768624e-38f*/				/* -2139095041 */
#define uX_FLT_negInf				uX::detail::uint32_as_float(uX_FLT_negInf_msk)			/* -8388608 */
#define uX_FLT_NaN					uX::detail::int32_as_float(uX_FLT_NaN_msk)				/* 2147483647 MaxI32 */
#define uX_FLT_QNaN					uX::detail::int32_as_float(uX_FLT_QNaN_msk)				/* 2143289344 */
#define uX_FLT_negQNaN				uX::detail::uint32_as_float(uX_FLT_negQNaN_msk)			/* -4194304 */
#define uX_FLT_NaNTest				uX::detail::int32_as_float(uX_FLT_NaNTest_msk)			/*1.17549420987015360768624e-38f*/				/* 8388607 */
#define uX_FLT_Abs					uX::detail::int32_as_float(uX_FLT_Abs_msk)				/* 2147483647 MaxI32 */
#define uX_FLT_Min					1.175494351e-38f								/*1.175494351e-38f*/							/* 8388608 pow2^23*/
#define uX_FLT_Max					3.402823457175904428664032e+38f					/*3.402823457175904428664032e+38f*/				/* 2139095039 MaxI32-pow2^23*/
#define uX_FLT_NoFraction			8388608.0f										/*1.175494351e-38f*/							/* 8388608 pow2^23*/
#define uX_FLT_MinDenorm			1.401298463344573974609375e-45f					/*1.0f*/ /*1.401298463344573974609375e-45f*/
#define uX_FLT_DenormLimit			1.175494351e-38f								/*1.175494351e-38f*/							/* 8388608 pow2^23*/
#define uX_FLT_MinNormal			1.175494351e-38f								/*1.175494351e-38f*/							/* 8388608 pow2^23*/
#define uX_FLT_MaxNormal			3.402823457175904428664032e+38f					/*3.402823457175904428664032e+38f*/				/* 2139095039 MaxI32-pow2^23*/

//#define uX_FLT_ExpBias				1417674752.0f			/* 1417674752 exponent bias */
//#define uX_FLT_ExpM1div3			2796202.0f				/* 2796202 exponent multiplier for 1/3 */

#define uX_FLT_DecDig				9.0f					/* 9 */							/* # of float decimal digits of rounding precision */
#define uX_FLT_Dig					6.0f					/* 6 */							/* # of float decimal digits of precision */
#define uX_FLT_negDecDig			(-9.0f)				/* -9 */						/* # negate of float decimal digits of rounding precision */
#define uX_FLT_negDig				(-6.0f)				/* -6 */						/* # negate of float decimal digits of precision */
#define uX_FLT_Eps					1.192092896e-07f		/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uX_FLT_Epsilon				1.192092896e-07f		/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uX_FLT_NormEps				1e-20f
#define uX_FLT_Guard				0.0f
#define uX_FLT_MantPow2				1.175494351e-38f						/* 8388608 */					/* # pow2^23 */
#define uX_FLT_MaxMantPow2			3.402823457175904428664032e+38f			/* 2139095039 */				/* # MaxI32-pow2^23 */
#define uX_FLT_MantDig				24.0f					/* 24 */						/* # of bits in mantissa */
#define uX_FLT_Mant					23.0f					/* 23 */						/* # stable of bits in mantissa */
#define uX_FLT_negMantDig			(-24.0f)					/* -24 */						/* # negate of float bits in mantissa */
#define uX_FLT_negMant				(-23.0f)					/* -23 */						/* # negate stable of float bits in mantissa */
#define uX_FLT_MaxExp				128.0f					/* 128 */						/* stable max float binary exponent */
#define uX_FLT_ExpSign				128.0f					/* 128 */						/* stable max float binary exponent */
#define uX_FLT_Exp					127.0f					/* 127 */						/* stable binary exponent */
#define uX_FLT_negMaxExp			(-128.0f)				/* -128 */						/* negate stable max float binary exponent */
#define uX_FLT_negExpSign			(-128.0f)				/* -128 uX_FLT_MaxExp_msk */	/* negate stable sign float binary exponent */
#define uX_FLT_negExp				(-127.0f)				/* -127 */						/* negate stable binary exponent */
#define uX_FLT_SubnormalExp			(-126.0f)				/* -126 */						/* stable min float binary exponent */
#define uX_FLT_MinExp				(-125.0f)				/* (-125) */					/* min binary exponent */
#define uX_FLT_MaxDecExp			38.0f					/* 38 */						/* max float decimal exponent */
#define uX_FLT_negMaxDecExp			(-38.0f)					/* -38 */						/* neg max float decimal exponent */
#define uX_FLT_MinDecExp			(-37.0f)					/* -37 */						/*  min decimal exponent */
#define uX_FLT_ExpField				(-16777216.0f)			/* -16777216 */		/*(-1.7014118346046923173168730371588e+38f)*/			/* float exponent field */
#define uX_FLT_MantField			16777215.0f				/* 16777215 */		/*2.3509885615147285255994034025371e-38f*/			/* float mantissa field */
#define uX_FLT_Norm					0.0f
#define uX_FLT_Radix				2.0f						/* 2 */							/* float exponent radix */
#define uX_FLT_Rounds				1.0f						/* 1 */							/* addition rounding: near */
#define uX_FLT_SubDec				10.0f
#define uX_FLT_sqrtMax				1.8446726e+019f			/*Slightly less that sqrt(uX_FLT_Max).*/
#define uX_FLT_SmallNorm			1.175494351e-38f		/* smallest normal number, float*/

#define uX_FLT_HalfminusEps			0.4999998807907104f					/* 1056964605 */
#define uX_FLT_trueint				1.0f						/* 1 */

#define uX_FLT_Byte					255.0f					/* 255 */
#define uX_FLT_Byte_Even			16711935.0f			/* 16711935 */
#define uX_FLT_Byte_Odd				(-16711936.0f)		/* (-16711936) */
#define uX_FLT_4Low					268435455.0f			/* 268435455 */
#define uX_FLT_4High				(-16.0f)				/* -16 */
#define uX_FLT_flip4				8.0f					/* 8 */
#define uX_FLT_8Low					16777215.0f				/* 16777215 */
#define uX_FLT_8High				(-256.0f)				/* -256 */
#define uX_FLT_flip8				128.0f					/* 128 */
#define uX_FLT_16Low				65535.0f				/* 65535 */
#define uX_FLT_16High				(-65536.0f)				/* -65536 */
#define uX_FLT_flip16				32768.0f				/* 32768 */
#define uX_FLT_24Low				255.0f					/* 255 */
#define uX_FLT_24High				(-16777216.0f)			/* -16777216 */
#define uX_FLT_flip24				8388608.0f				/* 8388608 */
#define uX_FLT_28Low				15.0f					/* 15 */
#define uX_FLT_28High				(-268435456.0f)			/* -268435456 */
#define uX_FLT_flip28				134217728.0f			/* 134217728 */
#define uX_FLT_32Low				0.0f					/* 0 */
#define uX_FLT_32High				0.0f					/* 0 */
#define uX_FLT_flip32				(-2147483648.0f)		/* -2147483648 */

#define uX_FLT_0			0.0f
#define uX_FLT_0d0001		0.0001f
#define uX_FLT_0d0002		0.0002f
#define uX_FLT_0d0003		0.0003f
#define uX_FLT_0d0004		0.0004f
#define uX_FLT_0d0005		0.0005f
#define uX_FLT_0d0006		0.0006f
#define uX_FLT_0d0007		0.0007f
#define uX_FLT_0d0008		0.0008f
#define uX_FLT_0d0009		0.0009f
#define uX_FLT_0d001		0.001f
#define uX_FLT_0d002		0.002f
#define uX_FLT_0d003		0.003f
#define uX_FLT_0d004		0.004f
#define uX_FLT_0d005		0.005f
#define uX_FLT_0d006		0.006f
#define uX_FLT_0d007		0.007f
#define uX_FLT_0d008		0.008f
#define uX_FLT_0d009		0.009f
#define uX_FLT_0d01			0.01f
#define uX_FLT_0d02			0.02f
#define uX_FLT_0d025		0.025f
#define uX_FLT_0d03			0.03f
#define uX_FLT_0d04			0.04f
#define uX_FLT_0d05			0.05f
#define uX_FLT_0d06			0.06f
#define uX_FLT_0d07			0.07f
#define uX_FLT_0d08			0.08f
#define uX_FLT_0d09			0.09f
#define uX_FLT_0d1			0.1f
#define uX_FLT_0d2			0.2f
#define uX_FLT_0d25			0.25f
#define uX_FLT_0d3			0.3f
#define uX_FLT_0d4			0.4f
#define uX_FLT_0d5			0.5f
#define uX_FLT_0d6			0.6f
#define uX_FLT_0d7			0.7f
#define uX_FLT_0d8			0.8f
#define uX_FLT_0d9			0.9f
#define uX_FLT_1			1.0f
#define uX_FLT_1d25			1.25f
#define uX_FLT_1d5			1.5f
#define uX_FLT_2			2.0f
#define uX_FLT_2d25			2.25f
#define uX_FLT_2d5			2.5f
#define uX_FLT_3			3.0f
#define uX_FLT_3d25			3.25f
#define uX_FLT_3d5			3.5f
#define uX_FLT_4			4.0f
#define uX_FLT_4d25			4.25f
#define uX_FLT_4d5			4.5f
#define uX_FLT_5			5.0f
#define uX_FLT_5d25			5.25f
#define uX_FLT_5d5			5.5f
#define uX_FLT_6			6.0f
#define uX_FLT_6d25			6.25f
#define uX_FLT_6d5			6.5f
#define uX_FLT_7			7.0f
#define uX_FLT_7d25			7.25f
#define uX_FLT_7d5			7.5f
#define uX_FLT_8			8.0f
#define uX_FLT_8d25			8.25f
#define uX_FLT_8d5			8.5f
#define uX_FLT_9			9.0f
#define uX_FLT_9d25			9.25f
#define uX_FLT_9d5			9.5f
#define uX_FLT_10			10.0f
#define uX_FLT_11			11.0f
#define uX_FLT_12			12.0f
#define uX_FLT_13			13.0f
#define uX_FLT_14			14.0f
#define uX_FLT_15			15.0f
#define uX_FLT_16			16.0f
#define uX_FLT_17			17.0f
#define uX_FLT_18			18.0f
#define uX_FLT_19			19.0f
#define uX_FLT_20			20.0f
#define uX_FLT_21			21.0f
#define uX_FLT_22			22.0f
#define uX_FLT_23			23.0f
#define uX_FLT_24			24.0f
#define uX_FLT_24d5			24.5f
#define uX_FLT_25			25.0f
#define uX_FLT_26			26.0f
#define uX_FLT_27			27.0f
#define uX_FLT_28			28.0f
#define uX_FLT_29			29.0f
#define uX_FLT_30			30.0f
#define uX_FLT_31			31.0f
#define uX_FLT_32			32.0f
#define uX_FLT_33			33.0f
#define uX_FLT_34			34.0f
#define uX_FLT_35			35.0f
#define uX_FLT_36			36.0f
#define uX_FLT_37			37.0f
#define uX_FLT_38			38.0f
#define uX_FLT_39			39.0f
#define uX_FLT_40			40.0f
#define uX_FLT_41			41.0f
#define uX_FLT_42			42.0f
#define uX_FLT_43			43.0f
#define uX_FLT_44			44.0f
#define uX_FLT_45			45.0f
#define uX_FLT_46			46.0f
#define uX_FLT_47			47.0f
#define uX_FLT_48			48.0f
#define uX_FLT_49			49.0f
#define uX_FLT_50			50.0f
#define uX_FLT_51			51.0f
#define uX_FLT_52			52.0f
#define uX_FLT_53			53.0f
#define uX_FLT_54			54.0f
#define uX_FLT_55			55.0f
#define uX_FLT_56			56.0f
#define uX_FLT_57			57.0f
#define uX_FLT_58			58.0f
#define uX_FLT_59			59.0f
#define uX_FLT_60			60.0f
#define uX_FLT_61			61.0f
#define uX_FLT_62			62.0f
#define uX_FLT_63			63.0f
#define uX_FLT_64			64.0f
#define uX_FLT_65			65.0f
#define uX_FLT_66			66.0f
#define uX_FLT_67			67.0f
#define uX_FLT_68			68.0f
#define uX_FLT_69			69.0f
#define uX_FLT_70			70.0f
#define uX_FLT_71			71.0f
#define uX_FLT_72			72.0f
#define uX_FLT_73			73.0f
#define uX_FLT_74			74.0f
#define uX_FLT_75			75.0f
#define uX_FLT_76			76.0f
#define uX_FLT_77			77.0f
#define uX_FLT_78			78.0f
#define uX_FLT_79			79.0f
#define uX_FLT_80			80.0f
#define uX_FLT_81			81.0f
#define uX_FLT_82			82.0f
#define uX_FLT_83			83.0f
#define uX_FLT_84			84.0f
#define uX_FLT_85			85.0f
#define uX_FLT_86			86.0f
#define uX_FLT_87			87.0f
#define uX_FLT_88			88.0f
#define uX_FLT_89			89.0f
#define uX_FLT_90			90.0f
#define uX_FLT_91			91.0f
#define uX_FLT_92			92.0f
#define uX_FLT_93			93.0f
#define uX_FLT_94			94.0f
#define uX_FLT_95			95.0f
#define uX_FLT_96			96.0f
#define uX_FLT_97			97.0f
#define uX_FLT_98			98.0f
#define uX_FLT_99			99.0f
#define uX_FLT_100			100.0f
#define uX_FLT_125			125.0f
#define uX_FLT_126			126.0f
#define uX_FLT_127			127.0f
#define uX_FLT_128			128.0f
#define uX_FLT_140			140.0f
#define uX_FLT_145			145.0f
#define uX_FLT_150			150.0f
#define uX_FLT_180			180.0f
#define uX_FLT_253			253.0f
#define uX_FLT_254			254.0f
#define uX_FLT_255			255.0f
#define uX_FLT_256			256.0f
#define uX_FLT_360			360.0f
#define uX_FLT_511			511.0f
#define uX_FLT_512			512.0f
#define uX_FLT_513			513.0f
#define uX_FLT_1023			1023.0f
#define uX_FLT_1024			1024.0f
#define uX_FLT_1025			1025.0f

#define uX_FLT_32767			32767.0f
#define uX_FLT_32768			32768.0f
#define uX_FLT_65535			65535.0f
#define uX_FLT_65536			65536.0f
#define uX_FLT_2147483647		2147483647.0f
#define uX_FLT_2147483648		2147483648.0f
#define uX_FLT_4294967295		4294967295.0f
#define uX_FLT_4294967296		4294967296.0f

#define uX_FLT_neg0				(-0.0f)
#define uX_FLT_neg0d0001		(-0.0001f)
#define uX_FLT_neg0d0002		(-0.0002f)
#define uX_FLT_neg0d0003		(-0.0003f)
#define uX_FLT_neg0d0004		(-0.0004f)
#define uX_FLT_neg0d0005		(-0.0005f)
#define uX_FLT_neg0d0006		(-0.0006f)
#define uX_FLT_neg0d0007		(-0.0007f)
#define uX_FLT_neg0d0008		(-0.0008f)
#define uX_FLT_neg0d0009		(-0.0009f)
#define uX_FLT_neg0d001			(-0.001f)
#define uX_FLT_neg0d002			(-0.002f)
#define uX_FLT_neg0d003			(-0.003f)
#define uX_FLT_neg0d004			(-0.004f)
#define uX_FLT_neg0d005			(-0.005f)
#define uX_FLT_neg0d006			(-0.006f)
#define uX_FLT_neg0d007			(-0.007f)
#define uX_FLT_neg0d008			(-0.008f)
#define uX_FLT_neg0d009			(-0.009f)
#define uX_FLT_neg0d01			(-0.01f)
#define uX_FLT_neg0d02			(-0.02f)
#define uX_FLT_neg0d025			(-0.025f)
#define uX_FLT_neg0d03			(-0.03f)
#define uX_FLT_neg0d04			(-0.04f)
#define uX_FLT_neg0d05			(-0.05f)
#define uX_FLT_neg0d06			(-0.06f)
#define uX_FLT_neg0d07			(-0.07f)
#define uX_FLT_neg0d08			(-0.08f)
#define uX_FLT_neg0d09			(-0.09f)
#define uX_FLT_neg0d1			(-0.1f)
#define uX_FLT_neg0d2			(-0.2f)
#define uX_FLT_neg0d25			(-0.25f)
#define uX_FLT_neg0d3			(-0.3f)
#define uX_FLT_neg0d4			(-0.4f)
#define uX_FLT_neg0d5			(-0.5f)
#define uX_FLT_neg0d6			(-0.6f)
#define uX_FLT_neg0d7			(-0.7f)
#define uX_FLT_neg0d8			(-0.8f)
#define uX_FLT_neg0d9			(-0.9f)
#define uX_FLT_neg1				(-1.0f)
#define uX_FLT_neg1d25			(-1.25f)
#define uX_FLT_neg1d5			(-1.5f)
#define uX_FLT_neg2				(-2.0f)
#define uX_FLT_neg2d25			(-2.25f)
#define uX_FLT_neg2d5			(-2.5f)
#define uX_FLT_neg3				(-3.0f)
#define uX_FLT_neg3d25			(-3.25f)
#define uX_FLT_neg3d5			(-3.5f)
#define uX_FLT_neg4				(-4.0f)
#define uX_FLT_neg4d25			(-4.25f)
#define uX_FLT_neg4d5			(-4.5f)
#define uX_FLT_neg5				(-5.0f)
#define uX_FLT_neg5d25			(-5.25f)
#define uX_FLT_neg5d5			(-5.5f)
#define uX_FLT_neg6				(-6.0f)
#define uX_FLT_neg6d25			(-6.25f)
#define uX_FLT_neg6d5			(-6.5f)
#define uX_FLT_neg7				(-7.0f)
#define uX_FLT_neg7d25			(-7.25f)
#define uX_FLT_neg7d5			(-7.5f)
#define uX_FLT_neg8				(-8.0f)
#define uX_FLT_neg8d25			(-8.25f)
#define uX_FLT_neg8d5			(-8.5f)
#define uX_FLT_neg9				(-9.0f)
#define uX_FLT_neg9d25			(-9.25f)
#define uX_FLT_neg9d5			(-9.5f)
#define uX_FLT_neg10			(-10.0f)
#define uX_FLT_neg11			(-11.0f)
#define uX_FLT_neg12			(-12.0f)
#define uX_FLT_neg13			(-13.0f)
#define uX_FLT_neg14			(-14.0f)
#define uX_FLT_neg15			(-15.0f)
#define uX_FLT_neg16			(-16.0f)
#define uX_FLT_neg17			(-17.0f)
#define uX_FLT_neg18			(-18.0f)
#define uX_FLT_neg19			(-19.0f)
#define uX_FLT_neg20			(-20.0f)
#define uX_FLT_neg21			(-21.0f)
#define uX_FLT_neg22			(-22.0f)
#define uX_FLT_neg23			(-23.0f)
#define uX_FLT_neg24			(-24.0f)
#define uX_FLT_neg24d5			(-24.5f)
#define uX_FLT_neg25			(-25.0f)
#define uX_FLT_neg26			(-26.0f)
#define uX_FLT_neg27			(-27.0f)
#define uX_FLT_neg28			(-28.0f)
#define uX_FLT_neg29			(-29.0f)
#define uX_FLT_neg30			(-30.0f)
#define uX_FLT_neg31			(-31.0f)
#define uX_FLT_neg32			(-32.0f)
#define uX_FLT_neg33			(-33.0f)
#define uX_FLT_neg34			(-34.0f)
#define uX_FLT_neg35			(-35.0f)
#define uX_FLT_neg36			(-36.0f)
#define uX_FLT_neg37			(-37.0f)
#define uX_FLT_neg38			(-38.0f)
#define uX_FLT_neg39			(-39.0f)
#define uX_FLT_neg40			(-40.0f)
#define uX_FLT_neg41			(-41.0f)
#define uX_FLT_neg42			(-42.0f)
#define uX_FLT_neg43			(-43.0f)
#define uX_FLT_neg44			(-44.0f)
#define uX_FLT_neg45			(-45.0f)
#define uX_FLT_neg46			(-46.0f)
#define uX_FLT_neg47			(-47.0f)
#define uX_FLT_neg48			(-48.0f)
#define uX_FLT_neg49			(-49.0f)
#define uX_FLT_neg50			(-50.0f)
#define uX_FLT_neg51			(-51.0f)
#define uX_FLT_neg52			(-52.0f)
#define uX_FLT_neg53			(-53.0f)
#define uX_FLT_neg54			(-54.0f)
#define uX_FLT_neg55			(-55.0f)
#define uX_FLT_neg56			(-56.0f)
#define uX_FLT_neg57			(-57.0f)
#define uX_FLT_neg58			(-58.0f)
#define uX_FLT_neg59			(-59.0f)
#define uX_FLT_neg60			(-60.0f)
#define uX_FLT_neg61			(-61.0f)
#define uX_FLT_neg62			(-62.0f)
#define uX_FLT_neg63			(-63.0f)
#define uX_FLT_neg64			(-64.0f)
#define uX_FLT_neg65			(-65.0f)
#define uX_FLT_neg66			(-66.0f)
#define uX_FLT_neg67			(-67.0f)
#define uX_FLT_neg68			(-68.0f)
#define uX_FLT_neg69			(-69.0f)
#define uX_FLT_neg70			(-70.0f)
#define uX_FLT_neg71			(-71.0f)
#define uX_FLT_neg72			(-72.0f)
#define uX_FLT_neg73			(-73.0f)
#define uX_FLT_neg74			(-74.0f)
#define uX_FLT_neg75			(-75.0f)
#define uX_FLT_neg76			(-76.0f)
#define uX_FLT_neg77			(-77.0f)
#define uX_FLT_neg78			(-78.0f)
#define uX_FLT_neg79			(-79.0f)
#define uX_FLT_neg80			(-80.0f)
#define uX_FLT_neg81			(-81.0f)
#define uX_FLT_neg82			(-82.0f)
#define uX_FLT_neg83			(-83.0f)
#define uX_FLT_neg84			(-84.0f)
#define uX_FLT_neg85			(-85.0f)
#define uX_FLT_neg86			(-86.0f)
#define uX_FLT_neg87			(-87.0f)
#define uX_FLT_neg88			(-88.0f)
#define uX_FLT_neg89			(-89.0f)
#define uX_FLT_neg90			(-90.0f)
#define uX_FLT_neg91			(-91.0f)
#define uX_FLT_neg92			(-92.0f)
#define uX_FLT_neg93			(-93.0f)
#define uX_FLT_neg94			(-94.0f)
#define uX_FLT_neg95			(-95.0f)
#define uX_FLT_neg96			(-96.0f)
#define uX_FLT_neg97			(-97.0f)
#define uX_FLT_neg98			(-98.0f)
#define uX_FLT_neg99			(-99.0f)
#define uX_FLT_neg100			(-100.0f)
#define uX_FLT_neg125			(-125.0f)
#define uX_FLT_neg126			(-126.0f)
#define uX_FLT_neg127			(-127.0f)
#define uX_FLT_neg128			(-128.0f)
#define uX_FLT_neg140			(-140.0f)
#define uX_FLT_neg145			(-145.0f)
#define uX_FLT_neg150			(-150.0f)
#define uX_FLT_neg180			(-180.0f)
#define uX_FLT_neg253			(-253.0f)
#define uX_FLT_neg254			(-254.0f)
#define uX_FLT_neg255			(-255.0f)
#define uX_FLT_neg256			(-256.0f)
#define uX_FLT_neg360			(-360.0f)
#define uX_FLT_neg511			(-511.0f)
#define uX_FLT_neg512			(-512.0f)
#define uX_FLT_neg513			(-513.0f)
#define uX_FLT_neg1023			(-1023.0f)
#define uX_FLT_neg1024			(-1024.0f)
#define uX_FLT_neg1025			(-1025.0f)

#define uX_FLT_neg32767				(-32767.0f)
#define uX_FLT_neg32768				(-32768.0f)
#define uX_FLT_neg65535				(-65535.0f)
#define uX_FLT_neg65536				(-65536.0f)
#define uX_FLT_neg2147483647		(-2147483647.0f)
#define uX_FLT_neg2147483648		(-2147483648.0f)
#define uX_FLT_neg4294967295		(-4294967295.0f)
#define uX_FLT_neg4294967296		(-4294967296.0f)

#define uX_FLT_bin128				uX_FLT_128			/* 1124073472 */
#define uX_FLT_binneg150			uX_FLT_neg150		/* -1021968384 */

#define uX_FLT_maxRand				32767.0f

#define uX_FLT_maxI8				127.0f
#define uX_FLT_minI8				(-128.0f)
#define uX_FLT_maxU8				255.0f
#define uX_FLT_minU8				0.0f

#define uX_FLT_maxI16				32767.0f
#define uX_FLT_minI16				(-32768.0f)
#define uX_FLT_maxU16				65535.0f
#define uX_FLT_minU16				0.0f

#define uX_FLT_maxI32				2147483647.0f
#define uX_FLT_minI32				(-2147483648.0f)
#define uX_FLT_maxU32				4294967295.0f
#define uX_FLT_minU32				0.0f

#define uX_FLT_maxI8xU8				32768.0f			/*128.0f*256.0f*/
#define uX_FLT_minI8xU8				(-32768.0f)			/*-128.0f*256.0f*/
#define uX_FLT_maxI8xU16			8388608.0f			/*128.0f*65536.0f*/
#define uX_FLT_minI8xU16			(-8388608.0f)			/*-128.0f*65536.0f*/

#define uX_FLT_maxI16xU16			2147483648.0f		/* 2147483648.0f		32768.0f*65536.0f*/
#define uX_FLT_minI16xU16			(-2147483648.0f)		/* -2147483648.0f		-32768.0f*65536.0f*/

#define uX_FLT_fixUnsigned			2147483648.0f		/* 2147483648.0f		32768.0f*65536.0f*/
#define uX_FLT_fixUnsigned32		2147483648.0f		/* 2147483648.0f		32768.0f*65536.0f*/
#define uX_FLT_fixmaxI32			2147483520.0f		/* 2147483520.0f		65536.0f*32768.0f-128.0f*/
#define uX_FLT_fixmaxU32			4294967040.0f		/* 4294967040.0f		65536.0f*65536.0f-256.0f*/

#define uX_FLT_rcpI16				3.0518509475997192297128208258309e-5f   /* 1/maxI16 */
#define uX_FLT_rcpU16				0.0000152587890625f						/* 1/maxU16 */
#define uX_FLT_rcpI16xU16			4.656754985961485641041291543321e-10f   /* 1/maxI16xmaxU16 */

#define uX_FLT_fixAA8				uX_FLT_0
#define uX_FLT_fixR8				uX_FLT_0
#define uX_FLT_fixG8				uX_FLT_0
#define uX_FLT_fixB8				2147483648.0f

#define uX_FLT_NormA8				257.00392156862745098039215686275f
#define uX_FLT_NormR8				1.0039215686274509803921568627451f
#define uX_FLT_NormG8				0.0039215686274509803921568627451f
#define uX_FLT_NormB8				65793.003921568627450980392156863f

#define uX_FLT_fixAA2				(-512.0f)
#define uX_FLT_fixB10				(-524288.0f)
#define uX_FLT_fixG10				(-536870912.0f)
#define uX_FLT_fixR10				2147483648.0f

#define uX_FLT_NormA2				0.00195694716242661448140900195695f
#define uX_FLT_NormB10				2.0039138943248532289628180039139f
#define uX_FLT_NormG10				4.0156708958681990341642380352403f
#define uX_FLT_NormR10				357913941.33333333333333333333333f

#define uX_FLT_MG					1024.0f
#define uX_FLT_negMG				(-1024.0f)
#define uX_FLT_HalfMG				512.0f
#define uX_FLT_negHalfMG			(-512.0f)
#define uX_FLT_MGdiv4				256.0f
#define uX_FLT_negMGdiv4			(-256.0f)
#define uX_FLT_HalfMGxMG			524288.0f
#define uX_FLT_HalfMGxsqrMG			536870912.0f
#define uX_FLT_HalfMGxcubeMG		549755813888.0f
#define uX_FLT_negHalfMGxMG			(-524288.0f)
#define uX_FLT_negHalfMGxsqrMG		(-536870912.0f)
#define uX_FLT_negHalfMGxcubeMG		(-549755813888.0f)
#define uX_FLT_sqrMG				1048576.0f
#define uX_FLT_cubeMG				1073741824.0f
#define uX_FLT_sqrtMG				32.0f
#define uX_FLT_cbrtMG				10.0793683991589853181f
#define uX_FLT_rcpMG				0.0009765625f
#define uX_FLT_rcpsqrMG				0.00000095367431640625f
#define uX_FLT_rcpcubeMG			0.00000000093132257462f
#define uX_FLT_rcpsqrtMG			0.03125f
#define uX_FLT_rcpcbrtMG			0.09921256574801246717f

#define uX_FLT_2MG					2048.0f
#define uX_FLT_neg2MG				(-2048.0f)
#define uX_FLT_sqr2MG				4194304.0f
#define uX_FLT_cube2MG				8589934592.0f
#define uX_FLT_sqrt2MG				45.25483399593904156165403917471f
#define uX_FLT_cbrt2MG				12.699208415745595798013645114178f
#define uX_FLT_4MG					4096.0f
#define uX_FLT_neg4MG				(-4096.0f)
#define uX_FLT_sqr4MG				16777216.0f
#define uX_FLT_cube4MG				68719476736.0f
#define uX_FLT_sqrt4MG				64.0f
#define uX_FLT_cbrt4MG				16.0f
#define uX_FLT_rcp2MG				0.00048828125f
#define uX_FLT_rcp4MG				0.000244140625f

#define uX_FLT_E					2.71828182845904523536f
#define uX_FLT_exp					2.71828182845904523536f
#define uX_FLT_logE					0.434294481903251827651f
#define uX_FLT_logEHigh				0.434294481903251827651f
#define uX_FLT_log2E				1.44269504088896340736f
#define uX_FLT_log2EHigh			1.44269504088896340736f
#define uX_FLT_log10E				0.434294481903251827651f
#define uX_FLT_rcplog2E				0.693147180559945309417f
#define uX_FLT_rcplog10E			2.30258509299404568402f
#define uX_FLT_log2T				3.3219280948873622f
#define uX_FLT_log2					0.301029995663981195214f
#define uX_FLT_log2High				0.301029995663981195214f
#define uX_FLT_ln2					0.693147180559945309417f
#define uX_FLT_ln2High				0.693147180559945309417f
#define uX_FLT_1divln2				1.44269504088896340736f
#define uX_FLT_2divln2				2.88539008177792681472f
#define uX_FLT_lnT					2.3025850929940459f
#define uX_FLT_lnTHigh				2.3025850929940459e+0f
#define uX_FLT_ln10					2.302585092994045684018f
#define uX_FLT_sqrt2				1.414213562373095048802f			/* sqrt(2) */
#define uX_FLT_rcpsqrt2				0.707106781186547524401f			/* 1/sqrt(2) */
#define uX_FLT_sqrt2div2			0.707106781186547524401f
#define uX_FLT_sqrt2div2High		0.707106781186547524401f
#define uX_FLT_sqrt2div2Low			1.210161749e-08f
#define uX_FLT_sqrtHalf				0.707106781186547524401f
#define uX_FLT_sqrtHalfHigh			0.707106781186547524401f
#define uX_FLT_sqrtHalfLow			1.210161749e-08f
#define uX_FLT_pow2					7.389056098930650227230f			/* pow(2) */
#define uX_FLT_rcpow2				0.135335283236612691893f			/* 1 / pow(2) */
#define uX_FLT_cbrt2				1.259921049894873164767f			/* cbrt(2) */
#define uX_FLT_rcpcbrt2				0.793700525984099737375f			/* 1 / cbrt(2) */
#define uX_FLT_1div3				0.333333333333333333333f
#define uX_FLT_1div7				0.142857142857142857142f
#define uX_FLT_1div9				0.111111111111111111111f
#define uX_FLT_2div3				0.666666666666666666667f
#define uX_FLT_2div7				0.285714285714285714285f
#define uX_FLT_2div9				0.222222222222222222222f
#define uX_FLT_4div3				1.333333333333333333333f
#define uX_FLT_4div7				0.571428571428571428571f
#define uX_FLT_4div9				0.444444444444444444444f

#define uX_FLT_Pi					3.14159265358979323846f
#define uX_FLT_PiHigh				3.14159265358979323846f
#define uX_FLT_HalfPi				1.57079632679489661923f
#define uX_FLT_2Pi					6.28318530717958647692f
#define uX_FLT_negPi				(-3.14159265358979323846f)
#define uX_FLT_negHalfPi			(-1.57079632679489661923f)
#define uX_FLT_neg2Pi				(-6.28318530717958647692f)
#define uX_FLT_rcpPi				0.31830988618379067154f
#define uX_FLT_invPi				0.31830988618379067154f
#define uX_FLT_rcp2Pi				0.15915494309189533577f
#define uX_FLT_inv2Pi				0.15915494309189533577f
#define uX_FLT_Pidiv2				1.57079632679489661923f
#define uX_FLT_Pidiv2High			1.57079632679489661923f
#define uX_FLT_Pidiv4				0.78539816339744830962f
#define uX_FLT_Pidiv4High			0.78539816339744830962f
#define uX_FLT_Pix3div4				2.35619449019234492884f			/* Pi*3/4 */
#define uX_FLT_sqrtPi				1.77245385090551602729f			/* sqrt(Pi)*/
#define uX_FLT_sqrt2Pi				2.50662827463100050242f			/* sqrt(2Pi)*/
#define uX_FLT_sqrt2PiHigh			2.50662827463100050242f
#define uX_FLT_rcpsqrtPi			0.56418958354775628695f			/* 1/sqrt(Pi)*/
#define uX_FLT_rcpsqrt2Pi			0.39894228040143267794f			/* 1/sqrt(2Pi)*/
#define uX_FLT_sqrtPidiv2			0.88622692545275801365f
#define uX_FLT_sqrtPidiv2High		0.88622692545275801365f
#define uX_FLT_sqrt2Pidiv2			1.25331413731550025121f
#define uX_FLT_sqrt2Pidiv2High		1.25331413731550025121f
#define uX_FLT_2divPi				0.63661977236758134308f			/* 2/(Pi)*/
#define uX_FLT_2div2Pi				0.31830988618379067154f			/* 2/(2Pi)*/
#define uX_FLT_2divsqrtPi			1.12837916709551257389f			/* 2/sqrt(Pi)*/
#define uX_FLT_2divsqrt2Pi			0.79788456080286535588f			/* 2/sqrt(2Pi)*/
#define uX_FLT_sqrt2divPi			0.45015815807855303477f			/* sqrt2/(2Pi)*/
#define uX_FLT_logPi				0.49714987269413385435f
#define uX_FLT_log2Pi				0.79817986835811504957f
#define uX_FLT_lnPi					1.14472988584940017415f
#define uX_FLT_ln2Pi				1.83787706640934548356f
#define uX_FLT_powPi				23.1406926327792690057f
#define uX_FLT_rcpowPi				0.04321391826377224977f
#define uX_FLT_pow2Pi				535.491655524764736503f
#define uX_FLT_rcpow2Pi				0.00186744273170798881f
#define uX_FLT_cbrtPi				1.46459188756152326302f
#define uX_FLT_rcpcbrtPi			0.68278406325529568148f
#define uX_FLT_cbrt2Pi				1.84527014864402841910f
#define uX_FLT_rcpcbrt2Pi			0.54192607013928900874f

#define uX_FLT_pow2toM126			1.175494351e-38f
#define uX_FLT_pow2to126			8.507059173e37f
#define uX_FLT_NormHuge				3.402823466e38f
#define uX_FLT_pow2to23				8388608.0f
#define uX_FLT_pow2to24				16777216.0f
#define uX_FLT_maxI32_pow2to23		2139095039.0f
#define uX_FLT_pow2to31				2147483648.0f
#define uX_FLT_pow2to32				4294967296.0f

#define uX_FLT_RemQuoBits			3
#define uX_FLT_RemQuoMask			(~((~0)<<uX_FLT_RemQuoBits))

/*#if defined(uX_GPU_VERS_SET) && (uX_GPU_VERS_SET >= 200)*/
#define uX_FLT_TrigPLoss			105615.0f
/*
#elif defined(uX_CUDA_GPU)
#define uX_FLT_TrigPLoss			48039.0f
#elif defined(uX_OPENCL_GPU)
#define uX_FLT_TrigPLoss			24019.5f
#endif*/

#define uX_FLT_DegtoRad				0.017453292519943295769f			/* Pi/180 */
#define uX_FLT_RadtoDeg				57.29577951308232087679f			/* 180/Pi */

#define uX_FLT_DegtoGrad			1.111111111111111111111f			/* Pi/2.8274333882308139146163790449516 */
#define uX_FLT_GradtoDeg			0.9f								/* 2.8274333882308139146163790449516/Pi */

#define uX_FLT_RadtoGrad			63.66197723675813430755f			/* 200/Pi */
#define uX_FLT_GradtoRad			0.015707963267948966192f			/* Pi/200 */

// Gravity

#define uX_FLT_SunGravity			274.13f
#define uX_FLT_JupiterGravity		25.95f
#define uX_FLT_NeptuneGravity		14.07f
#define uX_FLT_SaturnGravity		11.08f
#define uX_FLT_UranusGravity		10.67f
#define uX_FLT_EarthGravity			9.81f
#define uX_FLT_VenusGravity			8.87f
#define uX_FLT_MarsGravity			3.77f
#define uX_FLT_MercuryGravity		3.59f
#define uX_FLT_MoonGravity			1.62f
#define uX_FLT_PlutoGravity			0.42f

// Length conversion

#define uX_FLT_KmtoInch				39370.08f
#define uX_FLT_KmtoFeet				3280.84f
#define uX_FLT_KmtoYards			1093.613f
#define uX_FLT_KmtoMiles			0.621371f

#define uX_FLT_MetoInch				39.37008f
#define uX_FLT_MetoFeet				3.28084f
#define uX_FLT_MetoYards			1.093613f
#define uX_FLT_MetoMiles			0.000621371f

#define uX_FLT_CmtoInch				0.3937008f
#define uX_FLT_CmtoFeet				0.0328084f
#define uX_FLT_CmtoYards			0.01093613f
#define uX_FLT_CmtoMiles			0.00000621371f

#define uX_FLT_MilltoInch			0.03937008f
#define uX_FLT_MilltoFeet			0.00328084f
#define uX_FLT_MilltoYards			0.001093613f
#define uX_FLT_MilltoMiles			0.000000621371f

#define uX_FLT_InchtoMill			25.4f
#define uX_FLT_InchtoCm				2.54f
#define uX_FLT_InchtoMe				0.0254f
#define uX_FLT_InchtoKm				0.0000254f
#define uX_FLT_InchtoFeet			0.083333f
#define uX_FLT_InchtoYards			0.027778f
#define uX_FLT_InchtoMiles			0.000016f

#define uX_FLT_FeettoMill			304.8f
#define uX_FLT_FeettoCm				30.48f
#define uX_FLT_FeettoMe				0.3048f
#define uX_FLT_FeettoKm				0.0003048f
#define uX_FLT_FeettoInch			12.0f
#define uX_FLT_FeettoYards			0.333333f
#define uX_FLT_FeettoMiles			0.000189f

#define uX_FLT_YardstoMill			914.4f
#define uX_FLT_YardstoCm			91.44f
#define uX_FLT_YardstoMe			0.9144f
#define uX_FLT_YardstoKm			0.0009144f
#define uX_FLT_YardstoInch			36.0f
#define uX_FLT_YardstoFeet			3.0f
#define uX_FLT_YardstoMiles			0.000568f

#define uX_FLT_MilestoMill			1609344.0f
#define uX_FLT_MilestoCm			160934.4f
#define uX_FLT_MilestoMe			1609.344f
#define uX_FLT_MilestoKm			1.609344f
#define uX_FLT_MilestoInch			63360.0f
#define uX_FLT_MilestoFeet			5280.0f
#define uX_FLT_MilestoYards			1760.0f

// Speed conversion

#define uX_FLT_KmphtoMeps				0.27777777777778f
#define uX_FLT_KmphtoKmps				0.00027777777777778f
#define uX_FLT_KmphtoMepm				16.666666666667f
#define uX_FLT_KmphtoMilesph			0.62137119223733f
#define uX_FLT_KmphtoMilesps			0.00017260310895481f
#define uX_FLT_KmphtoFootps				0.91134444444444f
#define uX_FLT_KmphtoFootpm				54.680666666667f

#define uX_FLT_KmpstoMeps				1000.0f
#define uX_FLT_KmpstoKmph				3600.0f
#define uX_FLT_KmpstoMepm				60000.0f
#define uX_FLT_KmpstoMilesph			2236.9362920544f
#define uX_FLT_KmpstoMilesps			0.62137119223733f
#define uX_FLT_KmpstoFootps				3280.84f
#define uX_FLT_KmpstoFootpm				196850.4f

#define uX_FLT_MepstoKmph				3.6f
#define uX_FLT_MepstoKmps				0.001f
#define uX_FLT_MepstoMepm				60.0f
#define uX_FLT_MepstoMilesph			2.2369362920544f
#define uX_FLT_MepstoMilesps			0.00062137119223733f
#define uX_FLT_MepstoFootps				3280.84f
#define uX_FLT_MepstoFootpm				196850.4f

#define uX_FLT_MepmtoKmph				0.06f
#define uX_FLT_MepmtoKmps				1.6666666666667e-5f
#define uX_FLT_MepmtoMeps				0.016666666666667f
#define uX_FLT_MepmtoMilesph			0.03728227153424f
#define uX_FLT_MepmtoMilesps			1.0356186537289e-5f
#define uX_FLT_MepmtoFootps				0.054680666666667f
#define uX_FLT_MepmtoFootpm				3.28084f

#define uX_FLT_MilesphtoKmph			1.609344f
#define uX_FLT_MilesphtoKmps			0.00044704f
#define uX_FLT_MilesphtoMeps			0.44704f
#define uX_FLT_MilesphtoMepm			26.8224f
#define uX_FLT_MilesphtoMilesps			0.00027777777777778f
#define uX_FLT_MilesphtoFootps			1.4666667136f
#define uX_FLT_MilesphtoFootpm			88.000002816f

#define uX_FLT_MilespstoKmph			5793.6384f
#define uX_FLT_MilespstoKmps			1.609344f
#define uX_FLT_MilespstoMeps			1609.344f
#define uX_FLT_MilespstoMepm			96560.64f
#define uX_FLT_MilespstoMilesph			3600.0f
#define uX_FLT_MilespstoFootps			5280.00016896f
#define uX_FLT_MilespstoFootpm			316800.0101376f

#define uX_FLT_FootpstoKmph				1.097279964887f
#define uX_FLT_FootpstoKmps			0.0003047999902464f
#define uX_FLT_FootpstoMeps			0.3047999902464f
#define uX_FLT_FootpstoMepm			18.287999414784f
#define uX_FLT_FootpstoMilesph			0.68181816f
#define uX_FLT_FootpstoMilesps			0.00018939393333333f
#define uX_FLT_FootpstoFootpm			60.0f

#define uX_FLT_FootpmtoKmph				0.018287999414784f
#define uX_FLT_FootpmtoKmps			5.07999983744e-6f
#define uX_FLT_FootpmtoMeps			0.00507999983744f
#define uX_FLT_FootpmtoMepm			0.3047999902464f
#define uX_FLT_FootpmtoMilesph			0.011363636f
#define uX_FLT_FootpmtoMilesps			3.1565655555556e-6f
#define uX_FLT_FootpmtoFootps			0.016666666666667f

// Sound Speed on Air

#define uX_FLT_SoundSpeedp50c		360.35f
#define uX_FLT_SoundSpeedp45c		357.551f
#define uX_FLT_SoundSpeedp40c		354.73f
#define uX_FLT_SoundSpeedp35c		351.887f
#define uX_FLT_SoundSpeedp30c		349.02f
#define uX_FLT_SoundSpeedp25c		346.13f
#define uX_FLT_SoundSpeedp20c		343.216f
#define uX_FLT_SoundSpeedp15c		340.276f
#define uX_FLT_SoundSpeedp10c		337.311f
#define uX_FLT_SoundSpeedp5c		334.319f
#define uX_FLT_SoundSpeed0c			331.301f
#define uX_FLT_SoundSpeedn5c		328.255f
#define uX_FLT_SoundSpeedn10c		325.18f
#define uX_FLT_SoundSpeedn15c		322.076f
#define uX_FLT_SoundSpeedn20c		318.942f
#define uX_FLT_SoundSpeedn25c		315.776f
#define uX_FLT_SoundSpeedn30c		312.579f
#define uX_FLT_SoundSpeedn35c		309.348f
#define uX_FLT_SoundSpeedn40c		306.083f
#define uX_FLT_SoundSpeedn45c		302.784f
#define uX_FLT_SoundSpeedn50c		299.447f

#define uX_FLT_SCHScale			uX_FLT_1divln2		/* 1 / ln(2)*/
#define uX_FLT_THScale			uX_FLT_2divln2		/* 2 / ln(2)*/

//#define uX_FLT_magicF32			8388608.0f

#define uX_FLT_expest1			(-6.93147182e-1f)
#define uX_FLT_expest2			(+2.40226462e-1f)
#define uX_FLT_expest3			(-5.55036440e-2f)
#define uX_FLT_expest4			(+9.61597636e-3f)
#define uX_FLT_expest5			(-1.32823968e-3f)
#define uX_FLT_expest6			(+1.47491097e-4f)
#define uX_FLT_expest7			(-1.08635004e-5f)
#define uX_FLT_logest0			(+1.442693f)
#define uX_FLT_logest1			(-0.721242f)
#define uX_FLT_logest2			(+0.479384f)
#define uX_FLT_logest3			(-0.350295f)
#define uX_FLT_logest4			(+0.248590f)
#define uX_FLT_logest5			(-0.145700f)
#define uX_FLT_logest6			(+0.057148f)
#define uX_FLT_logest7			(-0.010578f)

#define uX_USE_DOUBLE_PRECISION
#define uX_DOUBLE_MASK_I64

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/* double precision constants */
#if defined(uX_USE_DOUBLE_PRECISION)

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// mask or hex constants for double precision

#define uX_DBL_1lshl3_msk		0x0000000000000008
#define uX_DBL_1lshl4_msk		0x0000000000000010
#define uX_DBL_1lshl7_msk		0x0000000000000080
#define uX_DBL_1lshl8_msk		0x0000000000000100
#define uX_DBL_1lshl11_msk		0x0000000000000800
#define uX_DBL_1lshl12_msk		0x0000000000001000
#define uX_DBL_1lshl15_msk		0x0000000000008000
#define uX_DBL_1lshl16_msk		0x0000000000010000
#define uX_DBL_1lshl19_msk		0x0000000000080000
#define uX_DBL_1lshl20_msk		0x0000000000100000
#define uX_DBL_1lshl23_msk		0x0000000000800000
#define uX_DBL_1lshl24_msk		0x0000000001000000
#define uX_DBL_1lshl27_msk		0x0000000008000000
#define uX_DBL_1lshl28_msk		0x0000000010000000
#define uX_DBL_1lshl31_msk		0x0000000080000000
#define uX_DBL_1lshl32_msk		0x0000000100000000
#define uX_DBL_1lshl35_msk		0x0000000800000000
#define uX_DBL_1lshl36_msk		0x0000001000000000
#define uX_DBL_1lshl39_msk		0x0000008000000000
#define uX_DBL_1lshl40_msk		0x0000010000000000
#define uX_DBL_1lshl43_msk		0x0000080000000000
#define uX_DBL_1lshl44_msk		0x0000100000000000
#define uX_DBL_1lshl47_msk		0x0000800000000000
#define uX_DBL_1lshl48_msk		0x0001000000000000
#define uX_DBL_1lshl51_msk		0x0008000000000000
#define uX_DBL_1lshl52_msk		0x0010000000000000
#define uX_DBL_1lshl55_msk		0x0080000000000000
#define uX_DBL_1lshl56_msk		0x0100000000000000
#define uX_DBL_1lshl59_msk		0x0800000000000000
#define uX_DBL_1lshl60_msk		0x1000000000000000
#define uX_DBL_1lshl63_msk		0x8000000000000000

#define uX_DBL_neg1lshl3_msk		0xfffffffffffffff8
#define uX_DBL_neg1lshl4_msk		0xfffffffffffffff0
#define uX_DBL_neg1lshl7_msk		0xffffffffffffff80
#define uX_DBL_neg1lshl8_msk		0xffffffffffffff00
#define uX_DBL_neg1lshl11_msk		0xfffffffffffff800
#define uX_DBL_neg1lshl12_msk		0xfffffffffffff000
#define uX_DBL_neg1lshl15_msk		0xffffffffffff8000
#define uX_DBL_neg1lshl16_msk		0xffffffffffff0000
#define uX_DBL_neg1lshl19_msk		0xfffffffffff80000
#define uX_DBL_neg1lshl20_msk		0xfffffffffff00000
#define uX_DBL_neg1lshl23_msk		0xffffffffff800000
#define uX_DBL_neg1lshl24_msk		0xffffffffff000000
#define uX_DBL_neg1lshl27_msk		0xfffffffff8000000
#define uX_DBL_neg1lshl28_msk		0xfffffffff0000000
#define uX_DBL_neg1lshl31_msk		0xffffffff80000000
#define uX_DBL_neg1lshl32_msk		0xffffffff00000000
#define uX_DBL_neg1lshl35_msk		0xfffffff800000000
#define uX_DBL_neg1lshl36_msk		0xfffffff000000000
#define uX_DBL_neg1lshl39_msk		0xffffff8000000000
#define uX_DBL_neg1lshl40_msk		0xffffff0000000000
#define uX_DBL_neg1lshl43_msk		0xfffff80000000000
#define uX_DBL_neg1lshl44_msk		0xfffff00000000000
#define uX_DBL_neg1lshl47_msk		0xffff800000000000
#define uX_DBL_neg1lshl48_msk		0xffff000000000000
#define uX_DBL_neg1lshl51_msk		0xfff8000000000000
#define uX_DBL_neg1lshl52_msk		0xfff0000000000000
#define uX_DBL_neg1lshl55_msk		0xff80000000000000
#define uX_DBL_neg1lshl56_msk		0xff00000000000000
#define uX_DBL_neg1lshl59_msk		0xf800000000000000
#define uX_DBL_neg1lshl60_msk		0xf000000000000000
#define uX_DBL_neg1lshl63_msk		0x8000000000000000

#define uX_DBL_false_msk			0x0000000000000000
#define uX_DBL_true_msk				0xffffffffffffffff

#define uX_DBL_Magic_msk			0x4330000000000000			/* 4503599627370496 */ //0x0010000000000000
#define uX_DBL_Sign_msk				0x8000000000000000			/* -9223372036854775808 MinI64 */
#define uX_DBL_invSign_msk			0x7fffffffffffffff			/* 9223372036854775807 MaxI64 */

#define uX_DBL_Inf_msk				0x7ff0000000000000			/* 9218868437227405312 MaxI64+1-pow2^52*/
#define uX_DBL_Fin_msk				0xff00000000000000			/* -72057594037927936 */
#define uX_DBL_invInf_msk			0x800fffffffffffff			/* -9218868437227405313 */
#define uX_DBL_negInf_msk			0xfff0000000000000			/* -4503599627370496 -pow2^52*/
#define uX_DBL_NaN_msk				0x7fffffffffffffff			/* 9223372036854775807 MaxI64 */
#define uX_DBL_QNaN_msk				0x7ff8000000000000			/* 9221120237041090576 */
#define uX_DBL_negQNaN_msk			0xfff8000000000000			/* -2251799813685248 */
#define uX_DBL_NaNTest_msk			0x000fffffffffffff			/* 4503599627370495 */
#define uX_DBL_Abs_msk				0x7fffffffffffffff			/* 9223372036854775807 MaxI64 */
#define uX_DBL_Max_msk				0x7fefffffffffffff			/* 1.7976931348623158e+308 */   /* maximum possible double value 9218868437227405311 MaxI64-pow2^52 */
#define uX_DBL_Min_msk				0x0010000000000000			/* 2.2250738585072014e-308 4503599627370496 pow2^52*/			/* min positive double value */
#define uX_DBL_NoFraction_msk		0x0010000000000000			/* 4503599627370496 pow2^52*/
#define uX_DBL_MinDenorm_msk		0x0000000000000001
#define uX_DBL_DenormLimit_msk		0x0010000000000000			/* 4503599627370496 pow2^52*/
#define uX_DBL_MinNormal_msk		0x0010000000000000			/* 4503599627370496 pow2^52*/
#define uX_DBL_MaxNormal_msk		0x7fefffffffffffff			/* 9218868437227405311 MaxI64-pow2^52*/

//#define uX_DBL_ExpBias_msk			0x5540000000000000			/* 6142909891733356544 exponent bias */
//#define uX_DBL_ExpM1div3_msk		0x0005555500000000			/* 1501198444134400 exponent multiplier for 1/3 */

#define uX_DBL_DecDig_msk			0x0000000000000011			/* 17 */						/* # of double decimal digits of rounding precision */
#define uX_DBL_Dig_msk				0x000000000000000f			/* 15 */						/* # of double decimal digits of precision */
#define uX_DBL_negDecDig_msk		0xffffffffffffffef			/* -17 */						/* # neg of double decimal digits of precision */
#define uX_DBL_negDig_msk			0xfffffffffffffff1			/* -15 */						/* # negate of double decimal digits of precision */
#define uX_DBL_Eps_msk				0x3cb0000000000000			/* 2.2204460492503131e-016 */   /* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uX_DBL_Epsilon_msk			0x3cb0000000000000			/* 2.2204460492503131e-016 */   /* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uX_DBL_NormEps_msk			0x1a90991a9bfa58c8			/* 1e-180 */
#define uX_DBL_Guard_msk			0x0000000000000000
#define uX_DBL_MantPow2_msk			0x0010000000000000			/* 4503599627370496 */					/* # pow2^52 */
#define uX_DBL_MaxMantPow2_msk		0x7fefffffffffffff			/* 9218868437227405311 MaxI64-pow2^52*/
#define uX_DBL_MantDig_msk			0x0000000000000035			/* 53 */						/* # of bits in double mantissa */
#define uX_DBL_Mant_msk				0x0000000000000034			/* 52 */						/* # stable of double bits in mantissa */
#define uX_DBL_negMantDig_msk		0xffffffffffffffcb			/* -53 */						/* # neg of bits in double mantissa */
#define uX_DBL_negMant_msk			0xffffffffffffffcc			/* -52 */						/* # neg stable of double bits in mantissa */
#define uX_DBL_MaxExp_msk			0x0000000000000400			/* 1024 */						/* stable max double binary exponent */
#define uX_DBL_ExpSign_msk			0x0000000000000400			/* 1024 uX_DBL_MaxExp_msk */	/* stable sign double binary exponent */
#define uX_DBL_Exp_msk				0x00000000000003ff			/* 1023 */						/* stable double binary exponent */
#define uX_DBL_negMaxExp_msk		0xfffffffffffffc00			/* -1024 */						/* negate stable max double binary exponent */
#define uX_DBL_negExpSign_msk		0xfffffffffffffc00			/* -1024 */						/* negate stable sign double binary exponent */
#define uX_DBL_negExp_msk			0xfffffffffffffc01			/* -1023 */						/* neg stable double binary exponent */
#define uX_DBL_SubnormalExp_msk		0xfffffffffffffc02			/* -1022 */						/* stable subnormal min double binary exponent */
#define uX_DBL_MinExp_msk			0xfffffffffffffc03			/* -1021 */						/* min double binary exponent */
#define uX_DBL_MaxDecExp_msk		0x0000000000000134			/* 308 */						/* max double decimal exponent */
#define uX_DBL_negMaxDecExp_msk		0xfffffffffffffecc			/* -308 */						/* neg max double decimal exponent */
#define uX_DBL_minDecExp_msk		0xfffffffffffffecd			/* -307 */						/*  min double decimal exponent */
#define uX_DBL_ExpField_msk			0xfff0000000000000			/* -4503599627370496 */			/* double exponent field */
#define uX_DBL_MantField_msk		0x000fffffffffffff			/* 4503599627370495 */			/* double mantissa field */
#define uX_DBL_Norm_msk				0x0000000000000000
#define uX_DBL_Radix_msk			0x0000000000000002			/* 2 */							/* double exponent radix */
#define uX_DBL_Rounds_msk			0x0000000000000001			/* 1 */							/* addition rounding: near */
#define uX_DBL_SubDec_msk			0x000000000000000a			/* 10 */						/* double rounded to decimal and back */
#define uX_DBL_sqrtMax_msk			0x5f22087c1aeb65dc			/* 1.8446726e+150 */			/*Slightly less that sqrt(uX_DBL_Max_msk).*/
#define uX_DBL_SmallNorm_msk		0x0010000000000000			/* 2.2250738585072014e-308 */			/* double smallest normal number */

#define uX_DBL_HalfminusEps_msk		0x3fdffffffffffffc			/* 4602678819172646908 */
#define uX_DBL_trueint_msk			0x0000000000000001			/* 1 */

#define uX_DBL_Byte_msk				0x00000000000000ff				/* 255 */
#define uX_DBL_Byte_Even_msk		0x00ff00ff00ff00ff				/* 71777214294589695 */
#define uX_DBL_Byte_Odd_msk			0xff00ff00ff00ff00				/* (-71777214294589696) */
#define uX_DBL_4Low_msk				0x0fffffffffffffff				/* 1152921504606846975 */
#define uX_DBL_4High_msk			0xfffffffffffffff0				/* -16 */
#define uX_DBL_flip4_msk			0x0000000000000008				/* 8 */
#define uX_DBL_8Low_msk				0x00ffffffffffffff				/* 72057594037927935 */
#define uX_DBL_8High_msk			0xffffffffffffff00				/* -256 */
#define uX_DBL_flip8_msk			0x0000000000000080				/* 128 */
#define uX_DBL_16Low_msk			0x0000ffffffffffff				/* 281474976710655 */
#define uX_DBL_16High_msk			0xffffffffffff0000				/* -65536 */
#define uX_DBL_flip16_msk			0x0000000000008000				/* 32768 */
#define uX_DBL_24Low_msk			0x000000ffffffffff				/* 1099511627775 */
#define uX_DBL_24High_msk			0xffffffffff000000				/* -16777216 */
#define uX_DBL_flip24_msk			0x0000000000800000				/* 8388608 */
#define uX_DBL_32Low_msk			0x00000000ffffffff				/* 4294967295 */
#define uX_DBL_32High_msk			0xffffffff00000000				/* -4294967296 */
#define uX_DBL_flip32_msk			0x0000000080000000				/* 2147483648 */
#define uX_DBL_40Low_msk			0x0000000000ffffff				/* 16777215 */
#define uX_DBL_40High_msk			0xffffff0000000000				/* -1099511627776 */
#define uX_DBL_flip40_msk			0x0000008000000000				/* 549755813888 */
#define uX_DBL_48Low_msk			0x000000000000ffff				/* 65535 */
#define uX_DBL_48High_msk			0xffff000000000000				/* -281474976710656 */
#define uX_DBL_flip48_msk			0x0000800000000000				/* 140737488355328 */
#define uX_DBL_56Low_msk			0x00000000000000ff				/* 255 */
#define uX_DBL_56High_msk			0xff00000000000000				/* -72057594037927936 */
#define uX_DBL_flip56_msk			0x0080000000000000				/* 36028797018963968 */
#define uX_DBL_60Low_msk			0x000000000000000f				/* 15 */
#define uX_DBL_60High_msk			0xf000000000000000				/* -1152921504606846976 */
#define uX_DBL_flip60_msk			0x0800000000000000				/* 576460752303423488 */
#define uX_DBL_64Low_msk			0x0000000000000000				/* 0 */
#define uX_DBL_64High_msk			0x0000000000000000				/* 0 */
#define uX_DBL_flip64_msk			0x8000000000000000				/* -9223372036854775808 */

#define uX_DBL_0_msk				0x0000000000000000		/* 0.0 */
#define uX_DBL_0d001_msk			0x3f50624dd2f1a9fc		/* 0.001 */
#define uX_DBL_0d002_msk			0x3f60624dd2f1a9fc		/* 0.002 */
#define uX_DBL_0d003_msk			0x3f689374bc6a7efa		/* 0.003 */
#define uX_DBL_0d004_msk			0x3f70624dd2f1a9fc		/* 0.004 */
#define uX_DBL_0d005_msk			0x3f747ae147ae147b		/* 0.005 */
#define uX_DBL_0d006_msk			0x3f789374bc6a7efa		/* 0.006 */
#define uX_DBL_0d007_msk			0x3f7cac083126e979		/* 0.007 */
#define uX_DBL_0d008_msk			0x3f80624dd2f1a9fc		/* 0.008 */
#define uX_DBL_0d009_msk			0x3f826e978d4fdf3b		/* 0.009 */
#define uX_DBL_0d01_msk				0x3f847ae147ae147b		/* 0.01 */
#define uX_DBL_0d02_msk				0x3f947ae147ae147b		/* 0.02 */
#define uX_DBL_0d03_msk				0x3f9eb851eb851eb8		/* 0.03 */
#define uX_DBL_0d04_msk				0x3fa47ae147ae147b		/* 0.04 */
#define uX_DBL_0d05_msk				0x3fa999999999999a		/* 0.05 */
#define uX_DBL_0d06_msk				0x3faeb851eb851eb8		/* 0.06 */
#define uX_DBL_0d07_msk				0x3fb1eb851eb851ec		/* 0.07 */
#define uX_DBL_0d08_msk				0x3fb47ae147ae147b		/* 0.08 */
#define uX_DBL_0d09_msk				0x3fb70a3d70a3d70a		/* 0.09 */
#define uX_DBL_0d1_msk				0x3fb999999999999a		/* 0.1 */
#define uX_DBL_0d2_msk				0x3fc999999999999a		/* 0.2 */
#define uX_DBL_0d3_msk				0x3fd3333333333333		/* 0.3 */
#define uX_DBL_0d4_msk				0x3fd999999999999a		/* 0.4 */
#define uX_DBL_0d5_msk				0x3fe0000000000000		/* 0.5 */
#define uX_DBL_0d6_msk				0x3fe3333333333333		/* 0.6 */
#define uX_DBL_0d7_msk				0x3fe6666666666666		/* 0.7 */
#define uX_DBL_0d8_msk				0x3fe999999999999a		/* 0.8 */
#define uX_DBL_0d9_msk				0x3feccccccccccccd		/* 0.9 */
#define uX_DBL_1_msk				0x3ff0000000000000		/* 1.0 */
#define uX_DBL_1d5_msk				0x3ff8000000000000		/* 1.5 */
#define uX_DBL_2_msk				0x4000000000000000		/* 2.0 */
#define uX_DBL_2d5_msk				0x4004000000000000		/* 2.5 */
#define uX_DBL_3_msk				0x4008000000000000		/* 3.0 */
#define uX_DBL_4_msk				0x4010000000000000		/* 4.0 */
#define uX_DBL_5_msk				0x4014000000000000		/* 5.0 */
#define uX_DBL_6_msk				0x4018000000000000		/* 6.0 */
#define uX_DBL_7_msk				0x401c000000000000		/* 7.0 */
#define uX_DBL_8_msk				0x4020000000000000		/* 8.0 */
#define uX_DBL_9_msk				0x4022000000000000		/* 9.0 */
#define uX_DBL_10_msk				0x4024000000000000		/* 10.0 */
#define uX_DBL_11_msk				0x4026000000000000		/* 11.0 */
#define uX_DBL_12_msk				0x4028000000000000		/* 12.0 */
#define uX_DBL_13_msk				0x402a000000000000		/* 13.0 */
#define uX_DBL_14_msk				0x402c000000000000		/* 14.0 */
#define uX_DBL_15_msk				0x402e000000000000		/* 15.0 */
#define uX_DBL_16_msk				0x4030000000000000		/* 16.0 */
#define uX_DBL_17_msk				0x4031000000000000		/* 17.0 */
#define uX_DBL_18_msk				0x4032000000000000		/* 18.0 */
#define uX_DBL_19_msk				0x4033000000000000		/* 19.0 */
#define uX_DBL_20_msk				0x4034000000000000		/* 20.0 */
#define uX_DBL_24_msk				0x4038000000000000		/* 24.0 */
#define uX_DBL_24d5_msk				0x4038800000000000		/* 24.5 */
#define uX_DBL_25_msk				0x4039000000000000		/* 25.0 */

#define uX_DBL_128_msk				0x4060000000000000		/* 128.0 */

#define uX_DBL_253_msk				0x406fa00000000000		/* 253.0 */

#define uX_DBL_neg0_msk				0x8000000000000000		/* -0.0 -2147483648 MinI32 */
#define uX_DBL_neg1_msk				0xbff0000000000000		/* -1.0 */

#define uX_DBL_neg150_msk			0xc062c00000000000		/* -150.0 */

#define uX_DBL_bin128_msk			uX_DBL_128_msk
#define uX_DBL_binneg150_msk		uX_DBL_neg150_msk

#define uX_DBL_maxRand_msk				0x0000000000007fff

#define uX_DBL_maxI8_msk				0x000000000000007f				/*127*/
#define uX_DBL_minI8_msk				0xffffffffffffff80				/*-128*/
#define uX_DBL_maxU8_msk				0x00000000000000ff				/*255*/

#define uX_DBL_maxI16_msk				0x0000000000007fff				/*32767*/
#define uX_DBL_minI16_msk				0xffffffffffff8000				/*-32768*/
#define uX_DBL_maxU16_msk				0x000000000000ffff				/*65535*/

#define uX_DBL_maxI32_msk				0x000000007fffffff				/*2147483647*/
#define uX_DBL_minI32_msk				0xffffffff80000000				/*-2147483648*/
#define uX_DBL_maxU32_msk				0x00000000ffffffff				/*4294967295*/

#define uX_DBL_maxI64_msk				0x7fffffffffffffff				/*9223372036854775807*/
#define uX_DBL_minI64_msk				0x8000000000000000				/*-9223372036854775808*/
#define uX_DBL_maxU64_msk				0xffffffffffffffff				/*18446744073709551615*/

#define uX_DBL_maxI8xU8_msk				0x0000000000008000				/*32768*/						/*128.0*256.0*/
#define uX_DBL_minI8xU8_msk				0xffffffffffff8000				/*-32768*/						/*-128.0*256.0*/
#define uX_DBL_maxI8xU16_msk			0x0000000000800000				/*8388608*/						/*128.0*65536.0*/
#define uX_DBL_minI8xU16_msk			0xffffffffff800000				/*-8388608*/					/*-128.0*65536.0*/

#define uX_DBL_maxI16xU16_msk			0x0000000080000000				/*2147483648*/					/*32768.0*65536.0*/
#define uX_DBL_minI16xU16_msk			0xffffffff80000000				/*-2147483648*/					/*-32768.0*65536.0*/
#define uX_DBL_maxI16xU32_msk			0x0000800000000000				/*140737488355328*/				/*32768.0*4294967296.0*/
#define uX_DBL_minI16xU32_msk			0xffff800000000000				/*-140737488355328*/			/*-32768.0*4294967296.0*/

#define uX_DBL_maxI32xU32_msk			0x8000000000000000				/*-9223372036854775808*/		/*2147483648.0*4294967296.0*/
#define uX_DBL_minI32xU32_msk			0x8000000000000000				/*-9223372036854775808*/		/*-2147483648.0*4294967296.0*/

#define uX_DBL_fixUnsigned_msk			0x0000000080000000				/*2147483648*/					/*32768.0*65536.0*/
#define uX_DBL_fixUnsigned32_msk		0x0000000080000000				/*2147483648*/					/*32768.0*65536.0*/
#define uX_DBL_fixmaxI32_msk			0x000000007fffff80				/*2147483520*/					/*65536.0*32768.0-128.0*/
#define uX_DBL_fixmaxU32_msk			0x00000000ffffff00				/*4294967040*/					/*65536.0*65536.0-256.0*/

#define uX_DBL_fixUnsigned64_msk		0x8000000000000000				// (0x0000000080000000 * 0x0000000100000000) /*9223372036854775808*/	/*2147483648.0*4294967296.0*/
#define uX_DBL_fixmaxI64_msk			0x7ffffffffffff800				// (0x0000000100000000 * 0x0000000080000000 + 0xfffffffffffffc00)   /*9219077069558774784*/ /*4294967296.0*2147483648.0-2048.0*/
#define uX_DBL_fixmaxU64_msk			0xfffffffffffff000				// (0x0000000100000000 * 0x0000000100000000 + 0xfffffffffffff800)   /*18446744073709549568*/	/*4294967296.0*4294967296.0-4096.0*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// int

// to use this and the masks above you have to use one int64

#define uX_DBL_1lshl3_int		8
#define uX_DBL_1lshl4_int		16
#define uX_DBL_1lshl7_int		128
#define uX_DBL_1lshl8_int		256
#define uX_DBL_1lshl11_int		2048
#define uX_DBL_1lshl12_int		4096
#define uX_DBL_1lshl15_int		32768
#define uX_DBL_1lshl16_int		65536
#define uX_DBL_1lshl19_int		524288
#define uX_DBL_1lshl20_int		1048576
#define uX_DBL_1lshl23_int		8388608
#define uX_DBL_1lshl24_int		16777216
#define uX_DBL_1lshl27_int		134217728
#define uX_DBL_1lshl28_int		268435456
#define uX_DBL_1lshl31_int		2147483648
#define uX_DBL_1lshl32_int		4294967296
#define uX_DBL_1lshl35_int		34359738368
#define uX_DBL_1lshl36_int		68719476736
#define uX_DBL_1lshl39_int		549755813888
#define uX_DBL_1lshl40_int		1099511627776
#define uX_DBL_1lshl43_int		8796093022208
#define uX_DBL_1lshl44_int		17592186044416
#define uX_DBL_1lshl47_int		140737488355328
#define uX_DBL_1lshl48_int		281474976710656
#define uX_DBL_1lshl51_int		2251799813685248
#define uX_DBL_1lshl52_int		4503599627370496
#define uX_DBL_1lshl55_int		36028797018963968
#define uX_DBL_1lshl56_int		72057594037927936
#define uX_DBL_1lshl59_int		576460752303423488
#define uX_DBL_1lshl60_int		1152921504606846976
#define uX_DBL_1lshl63_int		(-9223372036854775808)

#define uX_DBL_neg1lshl3_int		(-8)
#define uX_DBL_neg1lshl4_int		(-16)
#define uX_DBL_neg1lshl7_int		(-128)
#define uX_DBL_neg1lshl8_int		(-256)
#define uX_DBL_neg1lshl11_int		(-2048)
#define uX_DBL_neg1lshl12_int		(-4096)
#define uX_DBL_neg1lshl15_int		(-32768)
#define uX_DBL_neg1lshl16_int		(-65536)
#define uX_DBL_neg1lshl19_int		(-524288)
#define uX_DBL_neg1lshl20_int		(-1048576)
#define uX_DBL_neg1lshl23_int		(-8388608)
#define uX_DBL_neg1lshl24_int		(-16777216)
#define uX_DBL_neg1lshl27_int		(-134217728)
#define uX_DBL_neg1lshl28_int		(-268435456)
#define uX_DBL_neg1lshl31_int		(-2147483648)
#define uX_DBL_neg1lshl32_int		(-4294967296)
#define uX_DBL_neg1lshl35_int		(-34359738368)
#define uX_DBL_neg1lshl36_int		(-68719476736)
#define uX_DBL_neg1lshl39_int		(-549755813888)
#define uX_DBL_neg1lshl40_int		(-1099511627776)
#define uX_DBL_neg1lshl43_int		(-8796093022208)
#define uX_DBL_neg1lshl44_int		(-17592186044416)
#define uX_DBL_neg1lshl47_int		(-140737488355328)
#define uX_DBL_neg1lshl48_int		(-281474976710656)
#define uX_DBL_neg1lshl51_int		(-2251799813685248)
#define uX_DBL_neg1lshl52_int		(-4503599627370496)
#define uX_DBL_neg1lshl55_int		(-36028797018963968)
#define uX_DBL_neg1lshl56_int		(-72057594037927936)
#define uX_DBL_neg1lshl59_int		(-576460752303423488)
#define uX_DBL_neg1lshl60_int		(-1152921504606846976)
#define uX_DBL_neg1lshl63_int		(-9223372036854775808)

#define uX_DBL_false_int			0
#define uX_DBL_true_int				(-1)

#define uX_DBL_Magic_int			4503599627370496			/* 4503599627370496 */
#define uX_DBL_Sign_int				(-9223372036854775808)		/* -9223372036854775808 MinI64 */
#define uX_DBL_invSign_int			9223372036854775807			/* 9223372036854775807 MaxI64 */

#define uX_DBL_Inf_int				9218868437227405312			/* 9218868437227405312 MaxI64+1-pow2^52*/
#define uX_DBL_Fin_int				(-72057594037927936)		/* -72057594037927936 */
#define uX_DBL_invInf_int			(-9218868437227405313)		/* -9218868437227405313 */
#define uX_DBL_negInf_int			(-4503599627370496)			/* -4503599627370496 -pow2^52*/
#define uX_DBL_NaN_int				9223372036854775807			/* 9223372036854775807 MaxI64 */
#define uX_DBL_QNaN_int				9221120237041090560			/* 9221120237041090576 */
#define uX_DBL_negQNaN_int			(-2251799813685248)			/* -2251799813685248 */
#define uX_DBL_NaNTest_int			4503599627370495			/* 4503599627370495 */
#define uX_DBL_Abs_int				9223372036854775807			/* 9223372036854775807 MaxI64 */
#define uX_DBL_Max_int				9218868437227405311			/* 1.7976931348623158e+308 */   /* maximum possible double value 9218868437227405311 MaxI64-pow2^52 */
#define uX_DBL_Min_int				4503599627370496			/* 2.2250738585072014e-308 4503599627370496 pow2^52*/			/* min positive double value */
#define uX_DBL_NoFraction_int		4503599627370496			/* 4503599627370496 pow2^52*/
#define uX_DBL_MinDenorm_int		1
#define uX_DBL_DenormLimit_int		4503599627370496			/* 4503599627370496 pow2^52*/
#define uX_DBL_MinNormal_int		4503599627370496			/* 4503599627370496 pow2^52*/
#define uX_DBL_MaxNormal_int		9218868437227405311			/* 9218868437227405311 MaxI64-pow2^52*/

//#define uX_DBL_ExpBias_int			6142909891733356544				/* 6142909891733356544 exponent bias */
//#define uX_DBL_ExpM1div3_int		1501198444134400				/* 1501198444134400 exponent multiplier for 1/3 */

#define uX_DBL_DecDig_int			17							/* 17 */						/* # of double decimal digits of rounding precision */
#define uX_DBL_Dig_int				15							/* 15 */						/* # of double decimal digits of precision */
#define uX_DBL_negDecDig_int		(-17)						/* -17 */						/* # neg of double decimal digits of precision */
#define uX_DBL_negDig_int			(-15)						/* -15 */						/* # negate of double decimal digits of precision */
#define uX_DBL_Eps_int				4372995238176751616			/* 2.2204460492503131e-016 */   /* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uX_DBL_Epsilon_int			4372995238176751616			/* 2.2204460492503131e-016 */   /* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uX_DBL_NormEps_int			1914198181197535432			/* 1e-180 */
#define uX_DBL_Guard_int			0
#define uX_DBL_MantPow2_int			4503599627370496			/* 4503599627370496 */					/* # pow2^52 */
#define uX_DBL_MaxMantPow2_int		9218868437227405311			/* 9218868437227405311 MaxI64-pow2^52*/
#define uX_DBL_MantDig_int			53							/* 53 */						/* # of bits in double mantissa */
#define uX_DBL_Mant_int				52							/* 52 */						/* # stable of double bits in mantissa */
#define uX_DBL_negMantDig_int		(-53)						/* -53 */						/* # neg of bits in double mantissa */
#define uX_DBL_negMant_int			(-52)						/* -52 */						/* # neg stable of double bits in mantissa */
#define uX_DBL_MaxExp_int			1024						/* 1024 */						/* stable max double binary exponent */
#define uX_DBL_ExpSign_int			1024						/* 1024 uX_DBL_MaxExp_int */	/* stable sign double binary exponent */
#define uX_DBL_Exp_int				1023						/* 1023 */						/* stable double binary exponent */
#define uX_DBL_negMaxExp_int		(-1024)						/* -1024 */						/* negate stable max double binary exponent */
#define uX_DBL_negExpSign_int		(-1024)						/* -1024 */						/* negate stable sign double binary exponent */
#define uX_DBL_negExp_int			(-1023)						/* -1023 */						/* neg stable double binary exponent */
#define uX_DBL_SubnormalExp_int		(-1022)						/* -1022 */						/* stable subnormal min double binary exponent */
#define uX_DBL_MinExp_int			(-1021)						/* -1021 */						/* min double binary exponent */
#define uX_DBL_MaxDecExp_int		308							/* 308 */						/* max double decimal exponent */
#define uX_DBL_negMaxDecExp_int		(-308)						/* -308 */						/* neg max double decimal exponent */
#define uX_DBL_minDecExp_int		(-307)						/* -307 */						/*  min double decimal exponent */
#define uX_DBL_ExpField_int			(-4503599627370496)			/* -4503599627370496 */			/* double exponent field */
#define uX_DBL_MantField_int		4503599627370495			/* 4503599627370495 */			/* double mantissa field */
#define uX_DBL_Norm_int				0
#define uX_DBL_Radix_int			2							/* 2 */							/* double exponent radix */
#define uX_DBL_Rounds_int			1							/* 1 */							/* addition rounding: near */
#define uX_DBL_SubDec_int			10							/* 10 */						/* double rounded to decimal and back */
#define uX_DBL_sqrtMax_int			6855050911931917788			/* 1.8446726e+150 */			/*Slightly less that sqrt(uX_DBL_Max_int).*/
#define uX_DBL_SmallNorm_int		4503599627370496			/* 2.2250738585072014e-308 */			/* double smallest normal number */

#define uX_DBL_HalfminusEps_int		4602678819172646908			/* 4602678819172646908 */
#define uX_DBL_trueint_int			1							/* 1 */

#define uX_DBL_Byte_int				255								/* 255 */
#define uX_DBL_Byte_Even_int		71777214294589695				/* 71777214294589695 */
#define uX_DBL_Byte_Odd_int			(-71777214294589696)			/* (-71777214294589696) */
#define uX_DBL_4Low_int				1152921504606846975				/* 1152921504606846975 */
#define uX_DBL_4High_int			(-16)							/* -16 */
#define uX_DBL_flip4_int			8								/* 8 */
#define uX_DBL_8Low_int				72057594037927935				/* 72057594037927935 */
#define uX_DBL_8High_int			(-256)							/* -256 */
#define uX_DBL_flip8_int			128								/* 128 */
#define uX_DBL_16Low_int			281474976710655					/* 281474976710655 */
#define uX_DBL_16High_int			(-65536)						/* -65536 */
#define uX_DBL_flip16_int			32768							/* 32768 */
#define uX_DBL_24Low_int			1099511627775					/* 1099511627775 */
#define uX_DBL_24High_int			(-16777216)						/* -16777216 */
#define uX_DBL_flip24_int			8388608							/* 8388608 */
#define uX_DBL_32Low_int			4294967295						/* 4294967295 */
#define uX_DBL_32High_int			(-4294967296)					/* -4294967296 */
#define uX_DBL_flip32_int			2147483648						/* 2147483648 */
#define uX_DBL_40Low_int			16777215						/* 16777215 */
#define uX_DBL_40High_int			(-1099511627776)				/* -1099511627776 */
#define uX_DBL_flip40_int			549755813888					/* 549755813888 */
#define uX_DBL_48Low_int			65535							/* 65535 */
#define uX_DBL_48High_int			(-281474976710656)				/* -281474976710656 */
#define uX_DBL_flip48_int			140737488355328					/* 140737488355328 */
#define uX_DBL_56Low_int			255								/* 255 */
#define uX_DBL_56High_int			(-72057594037927936)			/* -72057594037927936 */
#define uX_DBL_flip56_int			36028797018963968				/* 36028797018963968 */
#define uX_DBL_60Low_int			15								/* 15 */
#define uX_DBL_60High_int			(-1152921504606846976)			/* -1152921504606846976 */
#define uX_DBL_flip60_int			576460752303423488				/* 576460752303423488 */
#define uX_DBL_64Low_int			0								/* 0 */
#define uX_DBL_64High_int			0								/* 0 */
#define uX_DBL_flip64_int			(-9223372036854775808)			/* -9223372036854775808 */

#define uX_DBL_0_int				0						/* 0.0 */
#define uX_DBL_0d001_int			4562254508917369340		/* 0.001 */
#define uX_DBL_0d002_int			4566758108544739836		/* 0.002 */
#define uX_DBL_0d003_int			4569063951553953530		/* 0.003 */
#define uX_DBL_0d004_int			4571261708172110332		/* 0.004 */
#define uX_DBL_0d005_int			4572414629676717179		/* 0.005 */
#define uX_DBL_0d006_int			4573567551181324026		/* 0.006 */
#define uX_DBL_0d007_int			4574720472685930873		/* 0.007 */
#define uX_DBL_0d008_int			4575765307799480828		/* 0.008 */
#define uX_DBL_0d009_int			4576341768551784251		/* 0.009 */
#define uX_DBL_0d01_int				4576918229304087675		/* 0.01 */
#define uX_DBL_0d02_int				4581421828931458171		/* 0.02 */
#define uX_DBL_0d03_int				4584304132692975288		/* 0.03 */
#define uX_DBL_0d04_int				4585925428558828667		/* 0.04 */
#define uX_DBL_0d05_int				4587366580439587226		/* 0.05 */
#define uX_DBL_0d06_int				4588807732320345784		/* 0.06 */
#define uX_DBL_0d07_int				4589708452245819884		/* 0.07 */
#define uX_DBL_0d08_int				4590429028186199163		/* 0.08 */
#define uX_DBL_0d09_int				4591149604126578442		/* 0.09 */
#define uX_DBL_0d1_int				4591870180066957722		/* 0.1 */
#define uX_DBL_0d2_int				4596373779694328218		/* 0.2 */
#define uX_DBL_0d3_int				4599075939470750515		/* 0.3 */
#define uX_DBL_0d4_int				4600877379321698714		/* 0.4 */
#define uX_DBL_0d5_int				4602678819172646912		/* 0.5 */
#define uX_DBL_0d6_int				4603579539098121011		/* 0.6 */
#define uX_DBL_0d7_int				4604480259023595110		/* 0.7 */
#define uX_DBL_0d8_int				4605380978949069210		/* 0.8 */
#define uX_DBL_0d9_int				4606281698874543309		/* 0.9 */
#define uX_DBL_1_int				4607182418800017408		/* 1.0 */
#define uX_DBL_1d5_int				4609434218613702656		/* 1.5 */
#define uX_DBL_2_int				4611686018427387904		/* 2.0 */
#define uX_DBL_2d5_int				4612811918334230528		/* 2.5 */
#define uX_DBL_3_int				4613937818241073152		/* 3.0 */
#define uX_DBL_4_int				4616189618054758400		/* 4.0 */
#define uX_DBL_5_int				4617315517961601024		/* 5.0 */
#define uX_DBL_6_int				4618441417868443648		/* 6.0 */
#define uX_DBL_7_int				4619567317775286272		/* 7.0 */
#define uX_DBL_8_int				4620693217682128896		/* 8.0 */
#define uX_DBL_9_int				4621256167635550208		/* 9.0 */
#define uX_DBL_10_int				4621819117588971520		/* 10.0 */
#define uX_DBL_11_int				4622382067542392832		/* 11.0 */
#define uX_DBL_12_int				4622945017495814144		/* 12.0 */
#define uX_DBL_13_int				4623507967449235456		/* 13.0 */
#define uX_DBL_14_int				4624070917402656768		/* 14.0 */
#define uX_DBL_15_int				4624633867356078080		/* 15.0 */
#define uX_DBL_16_int				4625196817309499392		/* 16.0 */
#define uX_DBL_17_int				4625478292286210048		/* 17.0 */
#define uX_DBL_18_int				4625759767262920704		/* 18.0 */
#define uX_DBL_19_int				4626041242239631360		/* 19.0 */
#define uX_DBL_20_int				4626322717216342016		/* 20.0 */
#define uX_DBL_24_int				4627448617123184640		/* 24.0 */
#define uX_DBL_24d5_int				4627589354611539968		/* 24.5 */
#define uX_DBL_25_int				4627730092099895296		/* 25.0 */

#define uX_DBL_128_int				4638707616191610880		/* 128.0 */

#define uX_DBL_253_int				4643105662702714880		/* 253.0 */

#define uX_DBL_neg0_int				(-9223372036854775808)		/* -0.0 -9223372036854775808 MinI64 */
#define uX_DBL_neg1_int				(-4616189618054758400)		/* -1.0 */

#define uX_DBL_neg150_int			(-4583890364477210624)		/* -150.0 */

#define uX_DBL_bin128_int			uX_DBL_128_int
#define uX_DBL_binneg150_int		uX_DBL_neg150_int

#define uX_DBL_maxRand_int				32767

#define uX_DBL_maxI8_int				127
#define uX_DBL_minI8_int				(-128)
#define uX_DBL_maxU8_int				255

#define uX_DBL_maxI16_int				32767
#define uX_DBL_minI16_int				(-32768)
#define uX_DBL_maxU16_int				65535

#define uX_DBL_maxI32_int				2147483647
#define uX_DBL_minI32_int				(-2147483648)
#define uX_DBL_maxU32_int				4294967295

#define uX_DBL_maxI64_int				9223372036854775807
#define uX_DBL_minI64_int				(-9223372036854775808)
#define uX_DBL_maxU64_int				18446744073709551615

#define uX_DBL_maxI8xU8_int				32768						/*128.0*256.0*/
#define uX_DBL_minI8xU8_int				(-32768)					/*-128.0*256.0*/
#define uX_DBL_maxI8xU16_int			8388608						/*128.0*65536.0*/
#define uX_DBL_minI8xU16_int			(-8388608)					/*-128.0*65536.0*/

#define uX_DBL_maxI16xU16_int			2147483648					/*32768.0*65536.0*/
#define uX_DBL_minI16xU16_int			(-2147483648)				/*-32768.0*65536.0*/
#define uX_DBL_maxI16xU32_int			140737488355328				/*140737488355328*/				/*32768.0*4294967296.0*/
#define uX_DBL_minI16xU32_int			(-140737488355328)			/*-140737488355328*/			/*-32768.0*4294967296.0*/

#define uX_DBL_maxI32xU32_int			(-9223372036854775808)		/*-9223372036854775808*/		/*2147483648.0*4294967296.0*/
#define uX_DBL_minI32xU32_int			(-9223372036854775808)		/*-9223372036854775808*/		/*-2147483648.0*4294967296.0*/

#define uX_DBL_fixUnsigned_int			2147483648					/*2147483648*/					/*32768.0*65536.0*/
#define uX_DBL_fixUnsigned32_int		2147483648					/*2147483648*/					/*32768.0*65536.0*/
#define uX_DBL_fixmaxI32_int			2147483520					/*2147483520*/					/*65536.0*32768.0-128.0*/
#define uX_DBL_fixmaxU32_int			4294967040					/*4294967040*/					/*65536.0*65536.0-256.0*/

#define uX_DBL_fixUnsigned64_int		(-9223372036854775808)		// (0x0000000080000000 * 0x0000000100000000) /*9223372036854775808*/	/*2147483648.0*4294967296.0*/
#define uX_DBL_fixmaxI64_int			9223372036854773760			// (0x0000000100000000 * 0x0000000080000000 + 0xfffffffffffffc00)   /*9219077069558774784*/ /*4294967296.0*2147483648.0-2048.0*/
#define uX_DBL_fixmaxU64_int			(-4096)						// (0x0000000100000000 * 0x0000000100000000 + 0xfffffffffffff800)   /*18446744073709549568*/	/*4294967296.0*4294967296.0-4096.0*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// double

#define uX_DBL_1lshl3		8.0
#define uX_DBL_1lshl4		16.0
#define uX_DBL_1lshl7		128.0
#define uX_DBL_1lshl8		256.0
#define uX_DBL_1lshl11		2048.0
#define uX_DBL_1lshl12		4096.0
#define uX_DBL_1lshl15		32768.0
#define uX_DBL_1lshl16		65536.0
#define uX_DBL_1lshl19		524288.0
#define uX_DBL_1lshl20		1048576.0
#define uX_DBL_1lshl23		8388608.0
#define uX_DBL_1lshl24		16777216.0
#define uX_DBL_1lshl27		134217728.0
#define uX_DBL_1lshl28		268435456.0
#define uX_DBL_1lshl31		2147483648.0
#define uX_DBL_1lshl32		4294967296.0
#define uX_DBL_1lshl35		34359738368.0
#define uX_DBL_1lshl36		68719476736.0
#define uX_DBL_1lshl39		549755813888.0
#define uX_DBL_1lshl40		1099511627776.0
#define uX_DBL_1lshl43		8796093022208.0
#define uX_DBL_1lshl44		17592186044416.0
#define uX_DBL_1lshl47		140737488355328.0
#define uX_DBL_1lshl48		281474976710656.0
#define uX_DBL_1lshl51		2251799813685248.0
#define uX_DBL_1lshl52		4503599627370496.0
#define uX_DBL_1lshl55		36028797018963968.0
#define uX_DBL_1lshl56		72057594037927936.0
#define uX_DBL_1lshl59		576460752303423488.0
#define uX_DBL_1lshl60		1152921504606846976.0
#define uX_DBL_1lshl63		(-9223372036854775808.0)

#define uX_DBL_neg1lshl3		(-8.0)
#define uX_DBL_neg1lshl4		(-16.0)
#define uX_DBL_neg1lshl7		(-128.0)
#define uX_DBL_neg1lshl8		(-256.0)
#define uX_DBL_neg1lshl11		(-2048.0)
#define uX_DBL_neg1lshl12		(-4096.0)
#define uX_DBL_neg1lshl15		(-32768.0)
#define uX_DBL_neg1lshl16		(-65536.0)
#define uX_DBL_neg1lshl19		(-524288.0)
#define uX_DBL_neg1lshl20		(-1048576.0)
#define uX_DBL_neg1lshl23		(-8388608.0)
#define uX_DBL_neg1lshl24		(-16777216.0)
#define uX_DBL_neg1lshl27		(-134217728.0)
#define uX_DBL_neg1lshl28		(-268435456.0)
#define uX_DBL_neg1lshl31		(-2147483648.0)
#define uX_DBL_neg1lshl32		(-4294967296.0)
#define uX_DBL_neg1lshl35		(-34359738368.0)
#define uX_DBL_neg1lshl36		(-68719476736.0)
#define uX_DBL_neg1lshl39		(-549755813888.0)
#define uX_DBL_neg1lshl40		(-1099511627776.0)
#define uX_DBL_neg1lshl43		(-8796093022208.0)
#define uX_DBL_neg1lshl44		(-17592186044416.0)
#define uX_DBL_neg1lshl47		(-140737488355328.0)
#define uX_DBL_neg1lshl48		(-281474976710656.0)
#define uX_DBL_neg1lshl51		(-2251799813685248.0)
#define uX_DBL_neg1lshl52		(-4503599627370496.0)
#define uX_DBL_neg1lshl55		(-36028797018963968.0)
#define uX_DBL_neg1lshl56		(-72057594037927936.0)
#define uX_DBL_neg1lshl59		(-576460752303423488.0)
#define uX_DBL_neg1lshl60		(-1152921504606846976.0)
#define uX_DBL_neg1lshl63		(-9223372036854775808.0)

#define uX_DBL_false				0.0
#define uX_DBL_true					uX::detail::int64_as_double(uX_DBL_true_msk)

#define uX_DBL_Magic				uX::detail::int64_as_double(uX_DBL_Magic_msk)			/* 4503599627370496. 4503599627370496 */
#define uX_DBL_Sign					uX::detail::uint64_as_double(uX_DBL_Sign_msk)			/*-0.0 -9223372036854775808 MinI64 */
#define uX_DBL_invSign				uX::detail::int64_as_double(uX_DBL_invSign_msk)			/* 9223372036854775807 MaxI64 */

#define uX_DBL_Inf					uX::detail::int64_as_double(uX_DBL_Inf_msk)				/* 9218868437227405312 MaxI64+1-pow2^52*/
#define uX_DBL_Fin					uX::detail::uint64_as_double(uX_DBL_Fin_msk)				/* -72057594037927936 */
#define uX_DBL_invInf				uX::detail::uint64_as_double(uX_DBL_invInf_msk)			/* -9218868437227405313 */
#define uX_DBL_negInf				uX::detail::uint64_as_double(uX_DBL_negInf_msk)			/* -4503599627370496 -pow2^52*/
#define uX_DBL_NaN					uX::detail::int64_as_double(uX_DBL_NaN_msk)				/* 9223372036854775807 MaxI64 */
#define uX_DBL_QNaN					uX::detail::int64_as_double(uX_DBL_QNaN_msk)				/* 9221120237041090576 */
#define uX_DBL_negQNaN				uX::detail::uint64_as_double(uX_DBL_negQNaN_msk)			/* -2251799813685248 */
#define uX_DBL_NaNTest				uX::detail::int64_as_double(uX_DBL_NaNTest_msk)			/* 4503599627370495 */
#define uX_DBL_Abs					uX::detail::int64_as_double(uX_DBL_Abs_msk)				/* 9223372036854775807 MaxI64 */
#define uX_DBL_Min					2.2250738585072014e-308							/* 4503599627370496 pow2^52*/   /* min positive value */
#define uX_DBL_Max					1.7976931348623158e+308							/* 9218868437227405311 MaxI64-pow2^52*/ /* maximum possible double value */
#define uX_DBL_NoFraction			4503599627370496.0								/* 2.2250738585072014e-308 */   /* 4503599627370496 pow2^52*/
#define uX_DBL_MinDenorm			5e-324
#define uX_DBL_DenormLimit			2.2250738585072014e-308							/* 4503599627370496 pow2^52*/
#define uX_DBL_MinNormal			2.2250738585072014e-308							/* 4503599627370496 pow2^52*/
#define uX_DBL_MaxNormal			1.7976931348623158e+308							/* 9218868437227405311 MaxI64-pow2^52*/

//#define uX_DBL_ExpBias				6142909891733356544.0				/* 6142909891733356544 exponent bias */
//#define uX_DBL_ExpM1div3			1501198444134400.0					/* 1501198444134400 exponent multiplier for 1/3 */

#define uX_DBL_DecDig				17.0						/* 17 */				/* # of decimal digits of rounding precision */
#define uX_DBL_Dig					15.0						/* 15 */				/* # of decimal digits of precision */
#define uX_DBL_negDecDig			(-17.0)						/* -17 */				/* # neg of double decimal digits of rounding precision */
#define uX_DBL_negDig				(-15.0)						/* -15 */				/* # neg of double decimal digits of precision */
#define uX_DBL_Eps					2.2204460492503131e-016		/* 2.2204460492503131e-016 */			/* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uX_DBL_Epsilon				2.2204460492503131e-016		/* 2.2204460492503131e-016 */			/* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uX_DBL_NormEps				1e-180
#define uX_DBL_Guard				0.0
#define uX_DBL_MantPow2				2.2250738585072014e-308		/* 4503599627370496.0 */		/* # pow2^52 */
#define uX_DBL_MaxMantPow2			1.7976931348623158e+308		/* 9218868437227405311 */		/* # MaxI64-pow2^52 */
#define uX_DBL_MantDig				53.0						/* 53 */						/* # of double bits in mantissa */
#define uX_DBL_Mant					52.0						/* 52 */						/* # stable of double bits in mantissa */
#define uX_DBL_negMantDig			(-53.0)						/* -53 */						/* # neg of double bits in mantissa */
#define uX_DBL_negMant				(-52.0)						/* -52 */						/* # neg stable of double bits in mantissa */
#define uX_DBL_MaxExp				1024.0						/* 1024 */						/* stable max double binary exponent */
#define uX_DBL_ExpSign				1024.0						/* 1024 */						/* stable max double binary exponent */
#define uX_DBL_Exp					1023.0						/* 1023 */						/* stable binary exponent */
#define uX_DBL_negMaxExp			(-1024.0)					/* -1024 */						/* negate stable max double binary exponent */
#define uX_DBL_negExpSign			(-1024.0)					/* -1024 */						/* negate stable max double binary exponent */
#define uX_DBL_negExp				(-1023.0)					/* -1023 */						/* negate stable binary exponent */
#define uX_DBL_SubnormalExp			(-1022.0)					/* -1022 */						/* stable min double binary exponent */
#define uX_DBL_MinExp				(-1021.0)					/* -1021 */						/* stable min double binary exponent */
#define uX_DBL_maxDecExp			308.0						/* 308 */						/* max double decimal exponent */
#define uX_DBL_negmaxDecExp			(-308.0)					/* -308 */						/* neg max double decimal exponent */
#define uX_DBL_minDecExp			(-307.0)					/* -307 */						/* min decimal exponent */
#define uX_DBL_ExpField				(-4503599627370496.0)			/* -4503599627370496 */			/*(-)*/			/* double exponent field */
#define uX_DBL_MantField			4503599627370495.0			/* 4503599627370495 */			/*2.225073858507201e-308*/			/* double mantissa field */
#define uX_DBL_Norm					0.0
#define uX_DBL_Radix				2.0							/* 2 */							/* double exponent radix */
#define uX_DBL_Rounds				1.0							/* 1 */							/* addition rounding: near */
#define uX_DBL_SubDec				10.0														/* double rounded to decimal and back */
#define uX_DBL_sqrtMax				1.8446726e+150
#define uX_DBL_SmallNorm			2.2250738585072014e-308		/* smallest normal number, double*/

#define uX_DBL_HalfminusEps			0.49999999999999977795539507496869			/* 4602678819172646908 */
#define uX_DBL_trueint				1.0							/* 1 */

#define uX_DBL_Byte					255.0								/* 255 */
#define uX_DBL_Byte_Even			71777214294589695.0				/* 71777214294589695 */
#define uX_DBL_Byte_Odd				(-71777214294589696.0)			/* (-71777214294589696) */
#define uX_DBL_4Low					1152921504606846975.0				/* 1152921504606846975 */
#define uX_DBL_4High				(-16.0)								/* -16 */
#define uX_DBL_flip4				8.0									/* 8 */
#define uX_DBL_8Low					72057594037927935.0					/* 72057594037927935 */
#define uX_DBL_8High				(-256.0)							/* -256 */
#define uX_DBL_flip8				128.0								/* 128 */
#define uX_DBL_16Low				281474976710655.0					/* 281474976710655 */
#define uX_DBL_16High				(-65536.0)							/* -65536 */
#define uX_DBL_flip16				32768.0								/* 32768 */
#define uX_DBL_24Low				1099511627775.0						/* 1099511627775 */
#define uX_DBL_24High				(-16777216.0)						/* -16777216 */
#define uX_DBL_flip24				8388608.0							/* 8388608 */
#define uX_DBL_32Low				4294967295.0						/* 4294967295 */
#define uX_DBL_32High				(-4294967296.0)						/* -4294967296 */
#define uX_DBL_flip32				2147483648.0						/* 2147483648 */
#define uX_DBL_40Low				16777215.0							/* 16777215 */
#define uX_DBL_40High				(-1099511627776.0)					/* -1099511627776 */
#define uX_DBL_flip40				549755813888.0						/* 549755813888 */
#define uX_DBL_48Low				65535.0								/* 65535 */
#define uX_DBL_48High				(-281474976710656.0)				/* -281474976710656 */
#define uX_DBL_flip48				140737488355328.0					/* 140737488355328 */
#define uX_DBL_56Low				255.0								/* 255 */
#define uX_DBL_56High				(-72057594037927936.0)				/* -72057594037927936 */
#define uX_DBL_flip56				36028797018963968.0					/* 36028797018963968 */
#define uX_DBL_60Low				15.0								/* 15 */
#define uX_DBL_60High				(-1152921504606846976.0)			/* -1152921504606846976 */
#define uX_DBL_flip60				576460752303423488.0				/* 576460752303423488 */
#define uX_DBL_64Low				0.0									/* 0 */
#define uX_DBL_64High				0.0									/* 0 */
#define uX_DBL_flip64				(-9223372036854775808.0)			/* -9223372036854775808 */

#define uX_DBL_0			0.0
#define uX_DBL_0d0001		0.0001
#define uX_DBL_0d0002		0.0002
#define uX_DBL_0d0003		0.0003
#define uX_DBL_0d0004		0.0004
#define uX_DBL_0d0005		0.0005
#define uX_DBL_0d0006		0.0006
#define uX_DBL_0d0007		0.0007
#define uX_DBL_0d0008		0.0008
#define uX_DBL_0d0009		0.0009
#define uX_DBL_0d001		0.001
#define uX_DBL_0d002		0.002
#define uX_DBL_0d003		0.003
#define uX_DBL_0d004		0.004
#define uX_DBL_0d005		0.005
#define uX_DBL_0d006		0.006
#define uX_DBL_0d007		0.007
#define uX_DBL_0d008		0.008
#define uX_DBL_0d009		0.009
#define uX_DBL_0d01			0.01
#define uX_DBL_0d02			0.02
#define uX_DBL_0d025		0.025
#define uX_DBL_0d03			0.03
#define uX_DBL_0d04			0.04
#define uX_DBL_0d05			0.05
#define uX_DBL_0d06			0.06
#define uX_DBL_0d07			0.07
#define uX_DBL_0d08			0.08
#define uX_DBL_0d09			0.09
#define uX_DBL_0d1			0.1
#define uX_DBL_0d2			0.2
#define uX_DBL_0d25			0.25
#define uX_DBL_0d3			0.3
#define uX_DBL_0d4			0.4
#define uX_DBL_0d5			0.5
#define uX_DBL_0d6			0.6
#define uX_DBL_0d7			0.7
#define uX_DBL_0d8			0.8
#define uX_DBL_0d9			0.9
#define uX_DBL_1			1.0
#define uX_DBL_1d25			1.25
#define uX_DBL_1d5			1.5
#define uX_DBL_2			2.0
#define uX_DBL_2d25			2.25
#define uX_DBL_2d5			2.5
#define uX_DBL_3			3.0
#define uX_DBL_3d25			3.25
#define uX_DBL_3d5			3.5
#define uX_DBL_4			4.0
#define uX_DBL_4d25			4.25
#define uX_DBL_4d5			4.5
#define uX_DBL_5			5.0
#define uX_DBL_5d25			5.25
#define uX_DBL_5d5			5.5
#define uX_DBL_6			6.0
#define uX_DBL_6d25			6.25
#define uX_DBL_6d5			6.5
#define uX_DBL_7			7.0
#define uX_DBL_7d25			7.25
#define uX_DBL_7d5			7.5
#define uX_DBL_8			8.0
#define uX_DBL_8d25			8.25
#define uX_DBL_8d5			8.5
#define uX_DBL_9			9.0
#define uX_DBL_9d25			9.25
#define uX_DBL_9d5			9.5
#define uX_DBL_10			10.0
#define uX_DBL_11			11.0
#define uX_DBL_12			12.0
#define uX_DBL_13			13.0
#define uX_DBL_14			14.0
#define uX_DBL_15			15.0
#define uX_DBL_16			16.0
#define uX_DBL_17			17.0
#define uX_DBL_18			18.0
#define uX_DBL_19			19.0
#define uX_DBL_20			20.0
#define uX_DBL_21			21.0
#define uX_DBL_22			22.0
#define uX_DBL_23			23.0
#define uX_DBL_24			24.0
#define uX_DBL_24d5			24.5
#define uX_DBL_25			25.0
#define uX_DBL_26			26.0
#define uX_DBL_27			27.0
#define uX_DBL_28			28.0
#define uX_DBL_29			29.0
#define uX_DBL_30			30.0
#define uX_DBL_31			31.0
#define uX_DBL_32			32.0
#define uX_DBL_33			33.0
#define uX_DBL_34			34.0
#define uX_DBL_35			35.0
#define uX_DBL_36			36.0
#define uX_DBL_37			37.0
#define uX_DBL_38			38.0
#define uX_DBL_39			39.0
#define uX_DBL_40			40.0
#define uX_DBL_41			41.0
#define uX_DBL_42			42.0
#define uX_DBL_43			43.0
#define uX_DBL_44			44.0
#define uX_DBL_45			45.0
#define uX_DBL_46			46.0
#define uX_DBL_47			47.0
#define uX_DBL_48			48.0
#define uX_DBL_49			49.0
#define uX_DBL_50			50.0
#define uX_DBL_51			51.0
#define uX_DBL_52			52.0
#define uX_DBL_53			53.0
#define uX_DBL_54			54.0
#define uX_DBL_55			55.0
#define uX_DBL_56			56.0
#define uX_DBL_57			57.0
#define uX_DBL_58			58.0
#define uX_DBL_59			59.0
#define uX_DBL_60			60.0
#define uX_DBL_61			61.0
#define uX_DBL_62			62.0
#define uX_DBL_63			63.0
#define uX_DBL_64			64.0
#define uX_DBL_65			65.0
#define uX_DBL_66			66.0
#define uX_DBL_67			67.0
#define uX_DBL_68			68.0
#define uX_DBL_69			69.0
#define uX_DBL_70			70.0
#define uX_DBL_71			71.0
#define uX_DBL_72			72.0
#define uX_DBL_73			73.0
#define uX_DBL_74			74.0
#define uX_DBL_75			75.0
#define uX_DBL_76			76.0
#define uX_DBL_77			77.0
#define uX_DBL_78			78.0
#define uX_DBL_79			79.0
#define uX_DBL_80			80.0
#define uX_DBL_81			81.0
#define uX_DBL_82			82.0
#define uX_DBL_83			83.0
#define uX_DBL_84			84.0
#define uX_DBL_85			85.0
#define uX_DBL_86			86.0
#define uX_DBL_87			87.0
#define uX_DBL_88			88.0
#define uX_DBL_89			89.0
#define uX_DBL_90			90.0
#define uX_DBL_91			91.0
#define uX_DBL_92			92.0
#define uX_DBL_93			93.0
#define uX_DBL_94			94.0
#define uX_DBL_95			95.0
#define uX_DBL_96			96.0
#define uX_DBL_97			97.0
#define uX_DBL_98			98.0
#define uX_DBL_99			99.0
#define uX_DBL_100			100.0
#define uX_DBL_125			125.0
#define uX_DBL_126			126.0
#define uX_DBL_127			127.0
#define uX_DBL_128			128.0
#define uX_DBL_140			140.0
#define uX_DBL_145			145.0
#define uX_DBL_150			150.0
#define uX_DBL_180			180.0
#define uX_DBL_253			253.0
#define uX_DBL_254			254.0
#define uX_DBL_255			255.0
#define uX_DBL_256			256.0
#define uX_DBL_360			360.0
#define uX_DBL_511			511.0
#define uX_DBL_512			512.0
#define uX_DBL_513			513.0
#define uX_DBL_1023			1023.0
#define uX_DBL_1024			1024.0
#define uX_DBL_1025			1025.0

#define uX_DBL_32767			32767.0
#define uX_DBL_32768			32768.0
#define uX_DBL_65535			65535.0
#define uX_DBL_65536			65536.0
#define uX_DBL_2147483647		2147483647.0
#define uX_DBL_2147483648		2147483648.0
#define uX_DBL_4294967295		4294967295.0
#define uX_DBL_4294967296		4294967296.0

#define uX_DBL_neg0				(-0.0)
#define uX_DBL_neg0d0001		(-0.0001)
#define uX_DBL_neg0d0002		(-0.0002)
#define uX_DBL_neg0d0003		(-0.0003)
#define uX_DBL_neg0d0004		(-0.0004)
#define uX_DBL_neg0d0005		(-0.0005)
#define uX_DBL_neg0d0006		(-0.0006)
#define uX_DBL_neg0d0007		(-0.0007)
#define uX_DBL_neg0d0008		(-0.0008)
#define uX_DBL_neg0d0009		(-0.0009)
#define uX_DBL_neg0d001			(-0.001)
#define uX_DBL_neg0d002			(-0.002)
#define uX_DBL_neg0d003			(-0.003)
#define uX_DBL_neg0d004			(-0.004)
#define uX_DBL_neg0d005			(-0.005)
#define uX_DBL_neg0d006			(-0.006)
#define uX_DBL_neg0d007			(-0.007)
#define uX_DBL_neg0d008			(-0.008)
#define uX_DBL_neg0d009			(-0.009)
#define uX_DBL_neg0d01			(-0.01)
#define uX_DBL_neg0d02			(-0.02)
#define uX_DBL_neg0d025			(-0.025)
#define uX_DBL_neg0d03			(-0.03)
#define uX_DBL_neg0d04			(-0.04)
#define uX_DBL_neg0d05			(-0.05)
#define uX_DBL_neg0d06			(-0.06)
#define uX_DBL_neg0d07			(-0.07)
#define uX_DBL_neg0d08			(-0.08)
#define uX_DBL_neg0d09			(-0.09)
#define uX_DBL_neg0d1			(-0.1)
#define uX_DBL_neg0d2			(-0.2)
#define uX_DBL_neg0d25			(-0.25)
#define uX_DBL_neg0d3			(-0.3)
#define uX_DBL_neg0d4			(-0.4)
#define uX_DBL_neg0d5			(-0.5)
#define uX_DBL_neg0d6			(-0.6)
#define uX_DBL_neg0d7			(-0.7)
#define uX_DBL_neg0d8			(-0.8)
#define uX_DBL_neg0d9			(-0.9)
#define uX_DBL_neg1				(-1.0)
#define uX_DBL_neg1d25			(-1.25)
#define uX_DBL_neg1d5			(-1.5)
#define uX_DBL_neg2				(-2.0)
#define uX_DBL_neg2d25			(-2.25)
#define uX_DBL_neg2d5			(-2.5)
#define uX_DBL_neg3				(-3.0)
#define uX_DBL_neg3d25			(-3.25)
#define uX_DBL_neg3d5			(-3.5)
#define uX_DBL_neg4				(-4.0)
#define uX_DBL_neg4d25			(-4.25)
#define uX_DBL_neg4d5			(-4.5)
#define uX_DBL_neg5				(-5.0)
#define uX_DBL_neg5d25			(-5.25)
#define uX_DBL_neg5d5			(-5.5)
#define uX_DBL_neg6				(-6.0)
#define uX_DBL_neg6d25			(-6.25)
#define uX_DBL_neg6d5			(-6.5)
#define uX_DBL_neg7				(-7.0)
#define uX_DBL_neg7d25			(-7.25)
#define uX_DBL_neg7d5			(-7.5)
#define uX_DBL_neg8				(-8.0)
#define uX_DBL_neg8d25			(-8.25)
#define uX_DBL_neg8d5			(-8.5)
#define uX_DBL_neg9				(-9.0)
#define uX_DBL_neg9d25			(-9.25)
#define uX_DBL_neg9d5			(-9.5)
#define uX_DBL_neg10			(-10.0)
#define uX_DBL_neg11			(-11.0)
#define uX_DBL_neg12			(-12.0)
#define uX_DBL_neg13			(-13.0)
#define uX_DBL_neg14			(-14.0)
#define uX_DBL_neg15			(-15.0)
#define uX_DBL_neg16			(-16.0)
#define uX_DBL_neg17			(-17.0)
#define uX_DBL_neg18			(-18.0)
#define uX_DBL_neg19			(-19.0)
#define uX_DBL_neg20			(-20.0)
#define uX_DBL_neg21			(-21.0)
#define uX_DBL_neg22			(-22.0)
#define uX_DBL_neg23			(-23.0)
#define uX_DBL_neg24			(-24.0)
#define uX_DBL_neg24d5			(-24.5)
#define uX_DBL_neg25			(-25.0)
#define uX_DBL_neg26			(-26.0)
#define uX_DBL_neg27			(-27.0)
#define uX_DBL_neg28			(-28.0)
#define uX_DBL_neg29			(-29.0)
#define uX_DBL_neg30			(-30.0)
#define uX_DBL_neg31			(-31.0)
#define uX_DBL_neg32			(-32.0)
#define uX_DBL_neg33			(-33.0)
#define uX_DBL_neg34			(-34.0)
#define uX_DBL_neg35			(-35.0)
#define uX_DBL_neg36			(-36.0)
#define uX_DBL_neg37			(-37.0)
#define uX_DBL_neg38			(-38.0)
#define uX_DBL_neg39			(-39.0)
#define uX_DBL_neg40			(-40.0)
#define uX_DBL_neg41			(-41.0)
#define uX_DBL_neg42			(-42.0)
#define uX_DBL_neg43			(-43.0)
#define uX_DBL_neg44			(-44.0)
#define uX_DBL_neg45			(-45.0)
#define uX_DBL_neg46			(-46.0)
#define uX_DBL_neg47			(-47.0)
#define uX_DBL_neg48			(-48.0)
#define uX_DBL_neg49			(-49.0)
#define uX_DBL_neg50			(-50.0)
#define uX_DBL_neg51			(-51.0)
#define uX_DBL_neg52			(-52.0)
#define uX_DBL_neg53			(-53.0)
#define uX_DBL_neg54			(-54.0)
#define uX_DBL_neg55			(-55.0)
#define uX_DBL_neg56			(-56.0)
#define uX_DBL_neg57			(-57.0)
#define uX_DBL_neg58			(-58.0)
#define uX_DBL_neg59			(-59.0)
#define uX_DBL_neg60			(-60.0)
#define uX_DBL_neg61			(-61.0)
#define uX_DBL_neg62			(-62.0)
#define uX_DBL_neg63			(-63.0)
#define uX_DBL_neg64			(-64.0)
#define uX_DBL_neg65			(-65.0)
#define uX_DBL_neg66			(-66.0)
#define uX_DBL_neg67			(-67.0)
#define uX_DBL_neg68			(-68.0)
#define uX_DBL_neg69			(-69.0)
#define uX_DBL_neg70			(-70.0)
#define uX_DBL_neg71			(-71.0)
#define uX_DBL_neg72			(-72.0)
#define uX_DBL_neg73			(-73.0)
#define uX_DBL_neg74			(-74.0)
#define uX_DBL_neg75			(-75.0)
#define uX_DBL_neg76			(-76.0)
#define uX_DBL_neg77			(-77.0)
#define uX_DBL_neg78			(-78.0)
#define uX_DBL_neg79			(-79.0)
#define uX_DBL_neg80			(-80.0)
#define uX_DBL_neg81			(-81.0)
#define uX_DBL_neg82			(-82.0)
#define uX_DBL_neg83			(-83.0)
#define uX_DBL_neg84			(-84.0)
#define uX_DBL_neg85			(-85.0)
#define uX_DBL_neg86			(-86.0)
#define uX_DBL_neg87			(-87.0)
#define uX_DBL_neg88			(-88.0)
#define uX_DBL_neg89			(-89.0)
#define uX_DBL_neg90			(-90.0)
#define uX_DBL_neg91			(-91.0)
#define uX_DBL_neg92			(-92.0)
#define uX_DBL_neg93			(-93.0)
#define uX_DBL_neg94			(-94.0)
#define uX_DBL_neg95			(-95.0)
#define uX_DBL_neg96			(-96.0)
#define uX_DBL_neg97			(-97.0)
#define uX_DBL_neg98			(-98.0)
#define uX_DBL_neg99			(-99.0)
#define uX_DBL_neg100			(-100.0)
#define uX_DBL_neg125			(-125.0)
#define uX_DBL_neg126			(-126.0)
#define uX_DBL_neg127			(-127.0)
#define uX_DBL_neg128			(-128.0)
#define uX_DBL_neg140			(-140.0)
#define uX_DBL_neg145			(-145.0)
#define uX_DBL_neg150			(-150.0)
#define uX_DBL_neg180			(-180.0)
#define uX_DBL_neg253			(-253.0)
#define uX_DBL_neg254			(-254.0)
#define uX_DBL_neg255			(-255.0)
#define uX_DBL_neg256			(-256.0)
#define uX_DBL_neg360			(-360.0)
#define uX_DBL_neg511			(-511.0)
#define uX_DBL_neg512			(-512.0)
#define uX_DBL_neg513			(-513.0)
#define uX_DBL_neg1023			(-1023.0)
#define uX_DBL_neg1024			(-1024.0)
#define uX_DBL_neg1025			(-1025.0)

#define uX_DBL_neg32767				(-32767.0)
#define uX_DBL_neg32768				(-32768.0)
#define uX_DBL_neg65535				(-65535.0)
#define uX_DBL_neg65536				(-65536.0)
#define uX_DBL_neg2147483647		(-2147483647.0)
#define uX_DBL_neg2147483648		(-2147483648.0)
#define uX_DBL_neg4294967295		(-4294967295.0)
#define uX_DBL_neg4294967296		(-4294967296.0)

#define uX_DBL_bin128				uX_DBL_128			/*  */
#define uX_DBL_binneg150			uX_DBL_neg150		/*  */

#define uX_DBL_maxRand				32767.0

#define uX_DBL_maxI8			127.0
#define uX_DBL_minI8			(-128.0)
#define uX_DBL_maxU8			255.0

#define uX_DBL_maxI16			32767.0
#define uX_DBL_minI16			(-32768.0)
#define uX_DBL_maxU16			65535.0

#define uX_DBL_maxI32			2147483647.0
#define uX_DBL_minI32			(-2147483648.0)
#define uX_DBL_maxU32			4294967295.0

#define uX_DBL_maxI64			9223372036854775807.0
#define uX_DBL_minI64			(-9223372036854775808.0)
#define uX_DBL_maxU64			18446744073709551615.0

#define uX_DBL_maxI8xU8			32768.0						/*128.0*256.0*/
#define uX_DBL_minI8xU8			(-32768.0)					/*-128.0*256.0*/
#define uX_DBL_maxI8xU16		8388608.0					/*128.0*65536.0*/
#define uX_DBL_minI8xU16		(-8388608.0)				/*-128.0*65536.0*/

#define uX_DBL_maxI16xU16		2147483648.0				/*32768.0*65536.0*/
#define uX_DBL_minI16xU16		(-2147483648.0)				/*-32768.0*65536.0*/
#define uX_DBL_maxI16xU32		140737488355328.0			/*140737488355328*/				/*32768.0*4294967296.0*/
#define uX_DBL_minI16xU32		(-140737488355328.0)		/*-140737488355328*/			/*-32768.0*4294967296.0*/

#define uX_DBL_maxI32xU32		(-9223372036854775808.0)		/*-9223372036854775808*/		/*2147483648.0*4294967296.0*/
#define uX_DBL_minI32xU32		(-9223372036854775808.0)		/*-9223372036854775808*/		/*-2147483648.0*4294967296.0*/

#define uX_DBL_fixUnsigned		(-2147483648.0)				/*32768.0*65536.0*/
#define uX_DBL_fixUnsigned32	(-2147483648.0)				/*32768.0*65536.0*/
#define uX_DBL_fixmaxI32		2147483520.0				/*65536.0*32768.0-128.0*/
#define uX_DBL_fixmaxU32		(-256.0)				/*65536.0*65536.0-256.0*/

#define uX_DBL_fixUnsigned64	(-9223372036854775808.0)		/*2147483648.0*4294967296.0*/
#define uX_DBL_fixmaxI64		9223372036854773760.0		/*4294967296.0*2147483648.0-1024.0*/
#define uX_DBL_fixmaxU64		(-4096.0)					/*4294967296.0*2147483648.0-2048.0*/

#define uX_DBL_rcpI16			3.0518509475997192297128208258309e-5	/* 1/maxI16 */
#define uX_DBL_rcpU16			0.0000152587890625						/* 1/(maxU16+1) */
#define uX_DBL_rcpI16xU16		4.656754985961485641041291543321e-10	/* 1/maxI16x(maxU16+1) */

#define uX_DBL_MG					1024.0
#define uX_DBL_negMG				(-1024.0)
#define uX_DBL_HalfMG				512.0
#define uX_DBL_negHalfMG			(-512.0)
#define uX_DBL_MGdiv4				256.0
#define uX_DBL_negMGdiv4			(-256.0)
#define uX_DBL_HalfMGxMG			524288.0
#define uX_DBL_HalfMGxsqrMG			536870912.0
#define uX_DBL_HalfMGxcubeMG		549755813888.0
#define uX_DBL_negHalfMGxMG			(-524288.0)
#define uX_DBL_negHalfMGxsqrMG		(-536870912.0)
#define uX_DBL_negHalfMGxcubeMG		(-549755813888.0)
#define uX_DBL_sqrMG				1048576.0
#define uX_DBL_cubeMG				1073741824.0
#define uX_DBL_sqrtMG				32.0
#define uX_DBL_cbrtMG				10.079368399158985318137684858226
#define uX_DBL_rcpMG				0.0009765625
#define uX_DBL_rcpsqrMG				0.00000095367431640625
#define uX_DBL_rcpcubeMG			0.000000000931322574615478515625
#define uX_DBL_rcpsqrtMG			0.03125
#define uX_DBL_rcpcbrtMG			0.09921256574801246717198160245452

#define uX_DBL_2MG					2048.0
#define uX_DBL_neg2MG				(-2048.0)
#define uX_DBL_sqr2MG				4194304.0
#define uX_DBL_cube2MG				8589934592.0
#define uX_DBL_sqrt2MG				45.25483399593904156165403917471
#define uX_DBL_cbrt2MG				12.699208415745595798013645114178
#define uX_DBL_4MG					4096.0
#define uX_DBL_neg4MG				(-4096.0)
#define uX_DBL_sqr4MG				16777216.0
#define uX_DBL_cube4MG				68719476736.0
#define uX_DBL_sqrt4MG				64.0
#define uX_DBL_cbrt4MG				16.0
#define uX_DBL_rcp2MG				0.00048828125
#define uX_DBL_rcp4MG				0.000244140625

#define uX_DBL_E					2.71828182845904523536
#define uX_DBL_exp					2.71828182845904523536
#define uX_DBL_logE					0.43429448190325182765108299019028
#define uX_DBL_logEHigh				0.43429448190325182765108299019028
#define uX_DBL_logELow				1.09831965021676510e-17
#define uX_DBL_log2E				1.44269504088896340736
#define uX_DBL_log2EHigh			1.44269504088896340736
#define uX_DBL_log2ELow				2.0355273740931033e-17
#define uX_DBL_log10E				0.43429448190325182765108299019028
#define uX_DBL_rcplog2E				0.69314718055994530941719593421853
#define uX_DBL_rcplog10E			2.3025850929940456840186749696447
#define uX_DBL_log2T				3.3219280948873622
#define uX_DBL_log2					0.30102999566398119521373889472449
#define uX_DBL_log2High				0.30102999566398119521373889472449
#define uX_DBL_log2Low				(-2.8037281277851704e-18)
#define uX_DBL_ln2					0.69314718055994530941723212145818
#define uX_DBL_ln2High				0.69314718055994530941723212145818
#define uX_DBL_ln2Low				2.3190468138462996e-17
#define uX_DBL_1divln2				1.4426950408889634073599246810019
#define uX_DBL_2divln2				2.8853900817779268147198493620038
#define uX_DBL_lnT					2.3025850929940459
#define uX_DBL_lnTHigh				2.3025850929940459e+0
#define uX_DBL_lnTLow				(-2.1707562233822494e-16)
#define uX_DBL_ln10					2.302585092994045684018
#define uX_DBL_sqrt2				1.414213562373095048801			/* sqrt(2) */
#define uX_DBL_rcpsqrt2				0.707106781186547524400			/* 1/sqrt(2) */
#define uX_DBL_sqrt2div2			0.707106781186547524400
#define uX_DBL_sqrt2div2High		0.707106781186547524400
#define uX_DBL_sqrt2div2Low			1.210161749e-08
#define uX_DBL_sqrtHalf				0.707106781186547524401
#define uX_DBL_sqrtHalfHigh			0.707106781186547524401
#define uX_DBL_sqrtHalfLow			(-4.8336466567264567e-17)
#define uX_DBL_pow2					7.389056098930650227230			/* pow(2) */
#define uX_DBL_rcpow2				0.135335283236612691893			/* 1 / pow(2) */
#define uX_DBL_cbrt2				1.259921049894873164767			/* cbrt(2) */
#define uX_DBL_rcpcbrt2				0.793700525984099737375			/* 1 / cbrt(2) */
#define uX_DBL_1div3				0.333333333333333333333
#define uX_DBL_1div7				0.142857142857142857142
#define uX_DBL_1div9				0.111111111111111111111
#define uX_DBL_2div3				0.666666666666666666667
#define uX_DBL_2div7				0.285714285714285714285
#define uX_DBL_2div9				0.222222222222222222222
#define uX_DBL_4div3				1.333333333333333333333
#define uX_DBL_4div7				0.571428571428571428571
#define uX_DBL_4div9				0.444444444444444444444

#define uX_DBL_Pi					3.1415926535897932384626433832795
#define uX_DBL_PiHigh				3.1415926535897932384626433832795
#define uX_DBL_PiLow				1.2246467991473532e-16
#define uX_DBL_HalfPi				1.5707963267948966192313216916398
#define uX_DBL_2Pi					6.283185307179586476925286766559
#define uX_DBL_negPi				(-3.1415926535897932384626433832795)
#define uX_DBL_negHalfPi			(-1.5707963267948966192313216916398)
#define uX_DBL_neg2Pi				(-6.283185307179586476925286766559)
#define uX_DBL_rcpPi				0.31830988618379067153776752674503			/* 1/(Pi)*/
#define uX_DBL_invPi				0.31830988618379067153776752674503
#define uX_DBL_rcp2Pi				0.15915494309189533576888376337251			/* 1/(2Pi)*/
#define uX_DBL_inv2Pi				0.15915494309189533576888376337251
#define uX_DBL_Pidiv2				1.5707963267948966192313216916398
#define uX_DBL_Pidiv2High			1.5707963267948966192313216916398
#define uX_DBL_Pidiv2Low			6.1232339957367660e-17
#define uX_DBL_Pidiv4				0.78539816339744830961566084581988
#define uX_DBL_Pidiv4High			0.78539816339744830961566084581988
#define uX_DBL_Pidiv4Low			3.0616169978683830e-17
#define uX_DBL_Pix3div4				2.3561944901923449288469825374596			/* Pi*3/4 */
#define uX_DBL_sqrtPi				1.7724538509055160272981674833411			/* sqrt(Pi)*/
#define uX_DBL_sqrt2Pi				2.506628274631000502415765284811			/* sqrt(2Pi)*/
#define uX_DBL_sqrt2PiHigh			2.506628274631000502415765284811
#define uX_DBL_sqrt2PiLow			(-1.8328579980459167e-16)
#define uX_DBL_rcpsqrtPi			0.56418958354775628694807945156077			/* 1/sqrt(Pi)*/
#define uX_DBL_rcpsqrt2Pi			0.39894228040143267793994605993438			/* 1/sqrt(2Pi)*/
#define uX_DBL_sqrtPidiv2			0.88622692545275801364908374167057
#define uX_DBL_sqrtPidiv2High		0.88622692545275801364908374167057
#define uX_DBL_sqrt2Pidiv2			1.2533141373155002512078826424055
#define uX_DBL_sqrt2Pidiv2High		1.2533141373155002512078826424055
#define uX_DBL_sqrt2Pidiv2Low		(-9.1642899902295834e-17)
#define uX_DBL_2divPi				0.63661977236758134307553505349006			/* 2/(Pi)*/
#define uX_DBL_2div2Pi				0.31830988618379067153776752674503			/* 2/(2Pi)*/
#define uX_DBL_2divsqrtPi			1.1283791670955125738961589031216			/* 2/sqrt(Pi)*/
#define uX_DBL_2divsqrt2Pi			0.79788456080286535587989211986878			/* 2/sqrt(2Pi)*/
#define uX_DBL_sqrt2divPi			0.45015815807855303477759959550337			/* sqrt2/(2Pi)*/
#define uX_DBL_logPi				0.4971498726941338543512682882909
#define uX_DBL_log2Pi				0.4971498726941338543512682882909
#define uX_DBL_lnPi					1.1447298858494001741434273513531
#define uX_DBL_ln2Pi				1.8378770664093454835606594728112
#define uX_DBL_powPi				23.140692632779269005729086367949
#define uX_DBL_rcpowPi				0.04321391826377224977441773717173
#define uX_DBL_pow2Pi				535.49165552476473650304932958905
#define uX_DBL_rcpow2Pi				0.00186744273170798881443021293483
#define uX_DBL_cbrtPi				1.4645918875615232630201425272638
#define uX_DBL_rcpcbrtPi			0.68278406325529568146702083315816
#define uX_DBL_cbrt2Pi				1.845270148644028419096803879589
#define uX_DBL_rcpcbrt2Pi			0.54192607013928900874456136482964

#define uX_DBL_ln2x1024				709.78271289338399684324569237317
#define uX_DBL_ln2x1025				710.47586007394394215266292449463
#define uX_DBL_ln2x1075				745.13321910194120762352453056754
#define uX_DBL_log2x1024			308.25471555991674389886862819788
#define uX_DBL_log2x1075			323.60724533877978485476931182883

#define uX_DBL_pow2toM126			1.175494351e-38
#define uX_DBL_pow2to126			8.507059173e37
#define uX_DBL_NormHuge				3.402823466e38
#define uX_DBL_pow2to23				8388608.0
#define uX_DBL_pow2to24				16777216.0
#define uX_DBL_maxI32_pow2to23		2139095039.0
#define uX_DBL_pow2to31				2147483648.0
#define uX_DBL_pow2to32				4294967296.0
#define uX_DBL_pow2to52				4503599627370496.0
#define uX_DBL_pow2to53				9007199254740992.0
#define uX_DBL_pow2to54				18014398509481984.0
#define uX_DBL_pow2toM54			5.5511151231257827e-17
#define uX_DBL_pow2to62				4611686018427387904.0
#define uX_DBL_maxI64_pow2to52		9218868437227405311.0
#define uX_DBL_pow2to63				9223372036854775808.0
#define uX_DBL_pow2to64				18446744073709551616.0
#define uX_DBL_pow2toM1022			2.22507385850720140e-308
#define uX_DBL_TrigPLoss			2147483648.0

#define uX_DBL_DegtoRad				0.017453292519943295769			/* Pi/180 */
#define uX_DBL_RadtoDeg				57.29577951308232087679			/* 180/Pi */

#define uX_DBL_DegtoGrad			1.111111111111111111111			/* Pi/2.8274333882308139146163790449516 */
#define uX_DBL_GradtoDeg			0.9								/* 2.8274333882308139146163790449516/Pi */

#define uX_DBL_RadtoGrad			63.66197723675813430755			/* 200/Pi */
#define uX_DBL_GradtoRad			0.015707963267948966192			/* Pi/200 */

// Gravity

#define uX_DBL_SunGravity			274.13
#define uX_DBL_JupiterGravity		25.95
#define uX_DBL_NeptuneGravity		14.07
#define uX_DBL_SaturnGravity		11.08
#define uX_DBL_UranusGravity		10.67
#define uX_DBL_EarthGravity			9.81
#define uX_DBL_VenusGravity			8.87
#define uX_DBL_MarsGravity			3.77
#define uX_DBL_MercuryGravity		3.59
#define uX_DBL_MoonGravity			1.62
#define uX_DBL_PlutoGravity			0.42

// Length conversion

#define uX_DBL_KmtoInch				39370.08
#define uX_DBL_KmtoFeet				3280.84
#define uX_DBL_KmtoYards			1093.613
#define uX_DBL_KmtoMiles			0.621371

#define uX_DBL_MetoInch				39.37008
#define uX_DBL_MetoFeet				3.28084
#define uX_DBL_MetoYards			1.093613
#define uX_DBL_MetoMiles			0.000621371

#define uX_DBL_CmtoInch				0.3937008
#define uX_DBL_CmtoFeet				0.0328084
#define uX_DBL_CmtoYards			0.01093613
#define uX_DBL_CmtoMiles			0.00000621371

#define uX_DBL_MilltoInch			0.03937008
#define uX_DBL_MilltoFeet			0.00328084
#define uX_DBL_MilltoYards			0.001093613
#define uX_DBL_MilltoMiles			0.000000621371

#define uX_DBL_InchtoMill			25.4
#define uX_DBL_InchtoCm				2.54
#define uX_DBL_InchtoMe				0.0254
#define uX_DBL_InchtoKm				0.0000254
#define uX_DBL_InchtoFeet			0.083333
#define uX_DBL_InchtoYards			0.027778
#define uX_DBL_InchtoMiles			0.000016

#define uX_DBL_FeettoMill			304.8
#define uX_DBL_FeettoCm				30.48
#define uX_DBL_FeettoMe				0.3048
#define uX_DBL_FeettoKm				0.0003048
#define uX_DBL_FeettoInch			12.0
#define uX_DBL_FeettoYards			0.333333
#define uX_DBL_FeettoMiles			0.000189

#define uX_DBL_YardstoMill			914.4
#define uX_DBL_YardstoCm			91.44
#define uX_DBL_YardstoMe			0.9144
#define uX_DBL_YardstoKm			0.0009144
#define uX_DBL_YardstoInch			36.0
#define uX_DBL_YardstoFeet			3.0
#define uX_DBL_YardstoMiles			0.000568

#define uX_DBL_MilestoMill			1609344.0
#define uX_DBL_MilestoCm			160934.4
#define uX_DBL_MilestoMe			1609.344
#define uX_DBL_MilestoKm			1.609344
#define uX_DBL_MilestoInch			63360.0
#define uX_DBL_MilestoFeet			5280.0
#define uX_DBL_MilestoYards			1760.0

// Speed conversion

#define uX_DBL_KmphtoMeps				0.27777777777778
#define uX_DBL_KmphtoKmps				0.00027777777777778
#define uX_DBL_KmphtoMepm				16.666666666667
#define uX_DBL_KmphtoMilesph			0.62137119223733
#define uX_DBL_KmphtoMilesps			0.00017260310895481
#define uX_DBL_KmphtoFootps				0.91134444444444
#define uX_DBL_KmphtoFootpm				54.680666666667

#define uX_DBL_KmpstoMeps				1000.0
#define uX_DBL_KmpstoKmph				3600.0
#define uX_DBL_KmpstoMepm				60000.0
#define uX_DBL_KmpstoMilesph			2236.9362920544
#define uX_DBL_KmpstoMilesps			0.62137119223733
#define uX_DBL_KmpstoFootps				3280.84
#define uX_DBL_KmpstoFootpm				196850.4

#define uX_DBL_MepstoKmph				3.6
#define uX_DBL_MepstoKmps				0.001
#define uX_DBL_MepstoMepm				60.0
#define uX_DBL_MepstoMilesph			2.2369362920544
#define uX_DBL_MepstoMilesps			0.00062137119223733
#define uX_DBL_MepstoFootps				3280.84
#define uX_DBL_MepstoFootpm				196850.4

#define uX_DBL_MepmtoKmph				0.06
#define uX_DBL_MepmtoKmps				1.6666666666667e-5
#define uX_DBL_MepmtoMeps				0.016666666666667
#define uX_DBL_MepmtoMilesph			0.03728227153424
#define uX_DBL_MepmtoMilesps			1.0356186537289e-5
#define uX_DBL_MepmtoFootps				0.054680666666667
#define uX_DBL_MepmtoFootpm				3.28084

#define uX_DBL_MilesphtoKmph			1.609344
#define uX_DBL_MilesphtoKmps			0.00044704
#define uX_DBL_MilesphtoMeps			0.44704
#define uX_DBL_MilesphtoMepm			26.8224
#define uX_DBL_MilesphtoMilesps			0.00027777777777778
#define uX_DBL_MilesphtoFootps			1.4666667136
#define uX_DBL_MilesphtoFootpm			88.000002816

#define uX_DBL_MilespstoKmph			5793.6384
#define uX_DBL_MilespstoKmps			1.609344
#define uX_DBL_MilespstoMeps			1609.344
#define uX_DBL_MilespstoMepm			96560.64
#define uX_DBL_MilespstoMilesph			3600.0
#define uX_DBL_MilespstoFootps			5280.00016896
#define uX_DBL_MilespstoFootpm			316800.0101376

#define uX_DBL_FootpstoKmph				1.097279964887
#define uX_DBL_FootpstoKmps				0.0003047999902464
#define uX_DBL_FootpstoMeps				0.3047999902464
#define uX_DBL_FootpstoMepm				18.287999414784
#define uX_DBL_FootpstoMilesph			0.68181816
#define uX_DBL_FootpstoMilesps			0.00018939393333333
#define uX_DBL_FootpstoFootpm			60.0

#define uX_DBL_FootpmtoKmph				0.018287999414784
#define uX_DBL_FootpmtoKmps				5.07999983744e-6
#define uX_DBL_FootpmtoMeps				0.00507999983744
#define uX_DBL_FootpmtoMepm				0.3047999902464
#define uX_DBL_FootpmtoMilesph			0.011363636
#define uX_DBL_FootpmtoMilesps			3.1565655555556e-6
#define uX_DBL_FootpmtoFootps			0.016666666666667

// Sound Speed on Air

#define uX_DBL_SoundSpeedp50c		360.35
#define uX_DBL_SoundSpeedp45c		357.551
#define uX_DBL_SoundSpeedp40c		354.73
#define uX_DBL_SoundSpeedp35c		351.887
#define uX_DBL_SoundSpeedp30c		349.02
#define uX_DBL_SoundSpeedp25c		346.13
#define uX_DBL_SoundSpeedp20c		343.216
#define uX_DBL_SoundSpeedp15c		340.276
#define uX_DBL_SoundSpeedp10c		337.311
#define uX_DBL_SoundSpeedp5c		334.319
#define uX_DBL_SoundSpeed0c			331.301
#define uX_DBL_SoundSpeedn5c		328.255
#define uX_DBL_SoundSpeedn10c		325.18
#define uX_DBL_SoundSpeedn15c		322.076
#define uX_DBL_SoundSpeedn20c		318.942
#define uX_DBL_SoundSpeedn25c		315.776
#define uX_DBL_SoundSpeedn30c		312.579
#define uX_DBL_SoundSpeedn35c		309.348
#define uX_DBL_SoundSpeedn40c		306.083
#define uX_DBL_SoundSpeedn45c		302.784
#define uX_DBL_SoundSpeedn50c		299.447

#define uX_DBL_SCHScale				uX_DBL_1divln2		/* 1 / ln(2)*/
#define uX_DBL_THScale				uX_DBL_2divln2		/* 2 / ln(2)*/

//#define uX_DBL_magicF32				1258291200.0
//#define uX_DBL_magicF64				1127219200.0

#define uX_DBL_expest1				(-6.93147182e-1)
#define uX_DBL_expest2				(+2.40226462e-1)
#define uX_DBL_expest3				(-5.55036440e-2)
#define uX_DBL_expest4				(+9.61597636e-3)
#define uX_DBL_expest5				(-1.32823968e-3)
#define uX_DBL_expest6				(+1.47491097e-4)
#define uX_DBL_expest7				(-1.08635004e-5)
#define uX_DBL_logest0				(+1.442693)
#define uX_DBL_logest1				(-0.721242)
#define uX_DBL_logest2				(+0.479384)
#define uX_DBL_logest3				(-0.350295)
#define uX_DBL_logest4				(+0.248590)
#define uX_DBL_logest5				(-0.145700)
#define uX_DBL_logest6				(+0.057148)
#define uX_DBL_logest7				(-0.010578)

#endif /*uX_USE_DOUBLE_PRECISION*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXI8i mask constants

#define uX_I8_msk0 0x00
#define uX_I8_msk1 0x01
#define uX_I8_msk2 0x02
#define uX_I8_msk3 0x03
#define uX_I8_msk4 0x04
#define uX_I8_msk5 0x05
#define uX_I8_msk6 0x06
#define uX_I8_msk7 0x07
#define uX_I8_msk8 0x08
#define uX_I8_msk9 0x09

#define uX_I8_mskneg0 0x80
#define uX_I8_mskneg1 0xff
#define uX_I8_mskneg2 0xfe
#define uX_I8_mskneg3 0xfd
#define uX_I8_mskneg4 0xfc
#define uX_I8_mskneg5 0xfb
#define uX_I8_mskneg6 0xfa
#define uX_I8_mskneg7 0xf9
#define uX_I8_mskneg8 0xf8
#define uX_I8_mskneg9 0xf7

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXI16i mask constants

#define uX_I16_msk0 0x0000
#define uX_I16_msk1 0x0001
#define uX_I16_msk2 0x0002
#define uX_I16_msk3 0x0003
#define uX_I16_msk4 0x0004
#define uX_I16_msk5 0x0005
#define uX_I16_msk6 0x0006
#define uX_I16_msk7 0x0007
#define uX_I16_msk8 0x0008
#define uX_I16_msk9 0x0009

#define uX_I16_mskneg0 0x8000
#define uX_I16_mskneg1 0xffff
#define uX_I16_mskneg2 0xfffe
#define uX_I16_mskneg3 0xfffd
#define uX_I16_mskneg4 0xfffc
#define uX_I16_mskneg5 0xfffb
#define uX_I16_mskneg6 0xfffa
#define uX_I16_mskneg7 0xfff9
#define uX_I16_mskneg8 0xfff8
#define uX_I16_mskneg9 0xfff7

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXI32i mask constants

#define uX_I32_msk0 0x00000000
#define uX_I32_msk1 0x00000001
#define uX_I32_msk2 0x00000002
#define uX_I32_msk3 0x00000003
#define uX_I32_msk4 0x00000004
#define uX_I32_msk5 0x00000005
#define uX_I32_msk6 0x00000006
#define uX_I32_msk7 0x00000007
#define uX_I32_msk8 0x00000008
#define uX_I32_msk9 0x00000009

#define uX_I32_msk128 0x00000080

#define uX_I32_msk253 0x000000fd

#define uX_I32_mskneg0 0x80000000
#define uX_I32_mskneg1 0xffffffff
#define uX_I32_mskneg2 0xfffffffe
#define uX_I32_mskneg3 0xfffffffd
#define uX_I32_mskneg4 0xfffffffc
#define uX_I32_mskneg5 0xfffffffb
#define uX_I32_mskneg6 0xfffffffa
#define uX_I32_mskneg7 0xfffffff9
#define uX_I32_mskneg8 0xfffffff8
#define uX_I32_mskneg9 0xfffffff7

#define uX_I32_mskneg253 0xffffff03

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXI64i mask constants

#define uX_I64_msk0 0x0000000000000000
#define uX_I64_msk1 0x0000000000000001
#define uX_I64_msk2 0x0000000000000002
#define uX_I64_msk3 0x0000000000000003
#define uX_I64_msk4 0x0000000000000004
#define uX_I64_msk5 0x0000000000000005
#define uX_I64_msk6 0x0000000000000006
#define uX_I64_msk7 0x0000000000000007
#define uX_I64_msk8 0x0000000000000008
#define uX_I64_msk9 0x0000000000000009

#define uX_I64_mskneg0 0x8000000000000000
#define uX_I64_mskneg1 0xffffffffffffffff
#define uX_I64_mskneg2 0xfffffffffffffffe
#define uX_I64_mskneg3 0xfffffffffffffffd
#define uX_I64_mskneg4 0xfffffffffffffffc
#define uX_I64_mskneg5 0xfffffffffffffffb
#define uX_I64_mskneg6 0xfffffffffffffffa
#define uX_I64_mskneg7 0xfffffffffffffff9
#define uX_I64_mskneg8 0xfffffffffffffff8
#define uX_I64_mskneg9 0xfffffffffffffff7

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uX_UI8u mask constants

#define uX_U8_msk0 0x00
#define uX_U8_msk1 0x01
#define uX_U8_msk2 0x02
#define uX_U8_msk3 0x03
#define uX_U8_msk4 0x04
#define uX_U8_msk5 0x05
#define uX_U8_msk6 0x06
#define uX_U8_msk7 0x07
#define uX_U8_msk8 0x08
#define uX_U8_msk9 0x09

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uX_UI16u mask constants

#define uX_U16_msk0 0x0000
#define uX_U16_msk1 0x0001
#define uX_U16_msk2 0x0002
#define uX_U16_msk3 0x0003
#define uX_U16_msk4 0x0004
#define uX_U16_msk5 0x0005
#define uX_U16_msk6 0x0006
#define uX_U16_msk7 0x0007
#define uX_U16_msk8 0x0008
#define uX_U16_msk9 0x0009

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uX_UI32u mask constants

#define uX_U32_msk0 0x00000000
#define uX_U32_msk1 0x00000001
#define uX_U32_msk2 0x00000002
#define uX_U32_msk3 0x00000003
#define uX_U32_msk4 0x00000004
#define uX_U32_msk5 0x00000005
#define uX_U32_msk6 0x00000006
#define uX_U32_msk7 0x00000007
#define uX_U32_msk8 0x00000008
#define uX_U32_msk9 0x00000009

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uX_UI64u mask constants

#define uX_U64_msk0 0x0000000000000000
#define uX_U64_msk1 0x0000000000000001
#define uX_U64_msk2 0x0000000000000002
#define uX_U64_msk3 0x0000000000000003
#define uX_U64_msk4 0x0000000000000004
#define uX_U64_msk5 0x0000000000000005
#define uX_U64_msk6 0x0000000000000006
#define uX_U64_msk7 0x0000000000000007
#define uX_U64_msk8 0x0000000000000008
#define uX_U64_msk9 0x0000000000000009

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*					end of head macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*				start of head marked macro constants					*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*			start of single precision marked macro constants			*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/*
#define uX_FLT_ERROR				(((float)(uX_FLT_ERROR))

#define uX_FLT_0					(((float)(uX_FLT_0))
#define uX_FLT_05					(((float)(uX_FLT_05))
#define uX_FLT_1					(((float)(uX_FLT_1))
#define uX_FLT_2					(((float)(uX_FLT_2))
#define uX_FLT_3					(((float)(uX_FLT_3))
#define uX_FLT_4					(((float)(uX_FLT_4))
#define uX_FLT_5					(((float)(uX_FLT_5))
#define uX_FLT_6					(((float)(uX_FLT_6))
#define uX_FLT_7					(((float)(uX_FLT_7))
#define uX_FLT_8					(((float)(uX_FLT_8))
#define uX_FLT_9					(((float)(uX_FLT_9))

#define uX_FLT_neg0					(((float)(uX_FLT_neg0))
#define uX_FLT_neg05				(((float)(uX_FLT_neg05))
#define uX_FLT_neg1					(((float)(uX_FLT_neg1))
#define uX_FLT_neg2					(((float)(uX_FLT_neg2))
#define uX_FLT_neg3					(((float)(uX_FLT_neg3))
#define uX_FLT_neg4					(((float)(uX_FLT_neg4))
#define uX_FLT_neg5					(((float)(uX_FLT_neg5))
#define uX_FLT_neg6					(((float)(uX_FLT_neg6))
#define uX_FLT_neg7					(((float)(uX_FLT_neg7))
#define uX_FLT_neg8					(((float)(uX_FLT_neg8))
#define uX_FLT_neg9					(((float)(uX_FLT_neg9))

#define uX_FLT_24_5					(((float)(uX_FLT_24_5))
#define uX_FLT_45					(((float)(uX_FLT_45))
#define uX_FLT_90					(((float)(uX_FLT_90))
#define uX_FLT_180					(((float)(uX_FLT_180))
#define uX_FLT_360					(((float)(uX_FLT_360))

#define uX_FLT_neg24_5				(((float)(uX_FLT_neg24_5))
#define uX_FLT_neg45				(((float)(uX_FLT_neg45))
#define uX_FLT_neg90				(((float)(uX_FLT_neg90))
#define uX_FLT_neg180				(((float)(uX_FLT_neg180))
#define uX_FLT_neg360				(((float)(uX_FLT_neg360))

#define uX_FLT_maxI8				(((float)(uX_FLT_maxI8))
#define uX_FLT_minI8				(((float)(uX_FLT_minI8))
#define uX_FLT_maxU8				(((float)(uX_FLT_maxU8))

#define uX_FLT_maxI16				(((float)(uX_FLT_maxI16))
#define uX_FLT_minI16				(((float)(uX_FLT_minI16))
#define uX_FLT_maxU16				(((float)(uX_FLT_maxU16))

#define uX_FLT_maxI32				(((float)(uX_FLT_maxI32))
#define uX_FLT_minI32				(((float)(uX_FLT_minI32))
#define uX_FLT_maxU32				(((float)(uX_FLT_maxU32))

/ *
#define uX_FLT_maxI64				(((float)(uX_FLT_maxI64))
#define uX_FLT_minI64				(((float)(uX_FLT_minI64))
#define uX_FLT_maxU64				(((float)(uX_FLT_maxU64))* /

#define uX_FLT_maxI8xU8				(((float)(uX_FLT_maxI8xU8))				/ *128.0f*256.0f* /
#define uX_FLT_minI8xU8				(((float)(uX_FLT_minI8xU8))				/ *-128.0f*256.0f* /
#define uX_FLT_maxI8xU16			(((float)(uX_FLT_maxI8xU16))				/ *128.0f*65536.0f* /
#define uX_FLT_minI8xU16			(((float)(uX_FLT_minI8xU16))				/ *-128.0f*65536.0f* /
#define uX_FLT_maxI16xU16			(((float)(uX_FLT_maxI16xU16))				/ *32768.0f*65536.0f* /
#define uX_FLT_minI16xU16			(((float)(uX_FLT_minI16xU16))				/ *-32768.0f*65536.0f* /

#define uX_FLT_rcpI16				(((float)(uX_FLT_rcpI16))					/ * 1/maxI16 * /
#define uX_FLT_rcpU16				(((float)(uX_FLT_rcpU16))					/ * 1/maxU16 * /
#define uX_FLT_rcpI16xU16			(((float)(uX_FLT_rcpI16xU16))				/ * 1/maxI16xmaxU16 * /

#define uX_FLT_MG					(((float)(uX_FLT_MG))
#define uX_FLT_negMG				(((float)(uX_FLT_negMG))
#define uX_FLT_sqrMG				(((float)(uX_FLT_sqrMG))
#define uX_FLT_cubeMG				(((float)(uX_FLT_cubeMG))
#define uX_FLT_HalfMG				(((float)(uX_FLT_HalfMG))
#define uX_FLT_negHalfMG			(((float)(uX_FLT_negHalfMG))
#define uX_FLT_HalfMGxMG			(((float)(uX_FLT_HalfMGxMG))
#define uX_FLT_HalfMGxsqrMG			(((float)(uX_FLT_HalfMGxsqrMG))
#define uX_FLT_HalfMGxcubeMG		(((float)(uX_FLT_HalfMGxcubeMG))
#define uX_FLT_negHalfMGxMG			(((float)(uX_FLT_negHalfMGxMG))
#define uX_FLT_negHalfMGxsqrMG		(((float)(uX_FLT_negHalfMGxsqrMG))
#define uX_FLT_negHalfMGxcubeMG		(((float)(uX_FLT_negHalfMGxcubeMG))
#define uX_FLT_rcpMG				(((float)(uX_FLT_rcpMG))
#define uX_FLT_rcpsqrMG				(((float)(uX_FLT_rcpsqrMG))
#define uX_FLT_rcpcubeMG			(((float)(uX_FLT_rcpcubeMG))

#define uX_FLT_E					(((float)(uX_FLT_E))
#define uX_FLT_exp					(((float)(uX_FLT_exp))
#define uX_FLT_log2E				(((float)(uX_FLT_log2E))
#define uX_FLT_log10E				(((float)(uX_FLT_log10E))
#define uX_FLT_rcplog2E				(((float)(uX_FLT_rcplog2E))
#define uX_FLT_rcplog10E			(((float)(uX_FLT_rcplog10E))

#define uX_FLT_ln2					(((float)(uX_FLT_ln2))
#define uX_FLT_ln10					(((float)(uX_FLT_ln10))
#define uX_FLT_expest1				(((float)(uX_FLT_expest1))
#define uX_FLT_expest2				(((float)(uX_FLT_expest2))
#define uX_FLT_expest3				(((float)(uX_FLT_expest3))
#define uX_FLT_expest4				(((float)(uX_FLT_expest4))
#define uX_FLT_expest5				(((float)(uX_FLT_expest5))
#define uX_FLT_expest6				(((float)(uX_FLT_expest6))
#define uX_FLT_expest7				(((float)(uX_FLT_expest7))
#define uX_FLT_logest0				(((float)(uX_FLT_logest0))
#define uX_FLT_logest1				(((float)(uX_FLT_logest1))
#define uX_FLT_logest2				(((float)(uX_FLT_logest2))
#define uX_FLT_logest3				(((float)(uX_FLT_logest3))
#define uX_FLT_logest4				(((float)(uX_FLT_logest4))
#define uX_FLT_logest5				(((float)(uX_FLT_logest5))
#define uX_FLT_logest6				(((float)(uX_FLT_logest6))
#define uX_FLT_logest7				(((float)(uX_FLT_logest7))

#define uX_FLT_Pi					(((float)(uX_FLT_Pi))
#define uX_FLT_HalfPi				(((float)(uX_FLT_HalfPi))
#define uX_FLT_2Pi					(((float)(uX_FLT_2Pi))
#define uX_FLT_negPi					(((float)(uX_FLT_negPi))
#define uX_FLT_negHalfPi				(((float)(uX_FLT_negHalfPi))
#define uX_FLT_neg2Pi				(((float)(uX_FLT_neg2Pi))
#define uX_FLT_rcpPi				(((float)(uX_FLT_rcpPi))
#define uX_FLT_rcp2Pi				(((float)(uX_FLT_rcp2Pi))
#define uX_FLT_Pidiv2				(((float)(uX_FLT_Pidiv2))
#define uX_FLT_Pidiv4				(((float)(uX_FLT_Pidiv4))
#define uX_FLT_Gravity				(((float)(uX_FLT_Gravity))
#define uX_FLT_DegtoRad				(((float)(uX_FLT_DegtoRad))				/ * 0.01745329251994329547; * /
#define uX_FLT_RadtoDeg				(((float)(uX_FLT_RadtoDeg))				/ * 57.29577951308232286465; * /
#define uX_FLT_KmhtoMPSec			(((float)(uX_FLT_KmhtoMPSec))

#define uX_FLT_DIG					(((float)(uX_FLT_DECDIG))				/ * 6 * /							/ * # of decimal digits of precision * /
#define uX_FLT_EPS					(((float)(uX_FLT_EPS))				/ * 1.192092896e-07f * /			/ * smallest such that 1.0+FLT_EPSILON != 1.0 * /
#define uX_FLT_GUARD				(((float)(uX_FLT_GUARD))
#define uX_FLT_MANT_DIG				(((float)(uX_FLT_MANT_DIG))		/ * 24 * /						/ * # of bits in mantissa * /
#define uX_FLT_MANT					(((float)(uX_FLT_MANT))			/ * 23 * /						/ * # of bits in mantissa * /
#define uX_FLT_MAX					(((float)(uX_FLT_MAX))				/ * 3.402823466e+38F * /			/ * maximum possible float value * /		/ * 3.4028234663852885981170418348452e+38F * /
#define uX_FLT_MAX_DEC_EXP			(((float)(uX_FLT_MAX_DEC_EXP))		/ * 38 * /						/ * max decimal exponent * /
#define uX_FLT_MAX_EXP				(((float)(uX_FLT_MAX_EXP))			/ * 128 * /						/ * max binary exponent * /
#define uX_FLT_MIN					(((float)(uX_FLT_MIN))				/ * 1.175494351e-38F * /			/ * min positive value * /
#define uX_FLT_MIN_DEC_EXP			(((float)(uX_FLT_MIN_DEC_EXP))		/ * (-37) * /						/ * min decimal exponent * /
#define uX_FLT_MIN_EXP				(((float)(uX_FLT_MIN_EXP))			/ * (-125) * /					/ * min binary exponent * /
#define uX_FLT_NORM					(((float)(uX_FLT_NORM))
#define uX_FLT_RADIX				(((float)(uX_FLT_RADIX))			/ * 2 * /							/ * exponent radix * /
#define uX_FLT_ROUNDS				(((float)(uX_FLT_ROUNDS))			/ * 1 * /							/ * addition rounding: near * /
#define uX_FLT_DECDIG				(((float)(uX_FLT_DECDIG))
#define uX_FLT_HIGH					(((float)(uX_FLT_HIGH))*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*			end of single precision marked macro constants			*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*			start of double precision marked macro constants			*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*

#if defined(uX_USE_DOUBLE_PRECISION)

#define uX_DBL_ERROR				(((double)(uX_DBL_ERROR))

#define uX_DBL_0					(((double)(uX_DBL_0))
#define uX_DBL_05					(((double)(uX_DBL_05))
#define uX_DBL_1					(((double)(uX_DBL_1))
#define uX_DBL_2					(((double)(uX_DBL_2))
#define uX_DBL_3					(((double)(uX_DBL_3))
#define uX_DBL_4					(((double)(uX_DBL_4))
#define uX_DBL_5					(((double)(uX_DBL_5))
#define uX_DBL_6					(((double)(uX_DBL_6))
#define uX_DBL_7					(((double)(uX_DBL_7))
#define uX_DBL_8					(((double)(uX_DBL_8))
#define uX_DBL_9					(((double)(uX_DBL_9))

#define uX_DBL_neg0					(((double)(uX_DBL_neg0))
#define uX_DBL_neg05				(((double)(uX_DBL_neg05))
#define uX_DBL_neg1					(((double)(uX_DBL_neg1))
#define uX_DBL_neg2					(((double)(uX_DBL_neg2))
#define uX_DBL_neg3					(((double)(uX_DBL_neg3))
#define uX_DBL_neg4					(((double)(uX_DBL_neg4))
#define uX_DBL_neg5					(((double)(uX_DBL_neg5))
#define uX_DBL_neg6					(((double)(uX_DBL_neg6))
#define uX_DBL_neg7					(((double)(uX_DBL_neg7))
#define uX_DBL_neg8					(((double)(uX_DBL_neg8))
#define uX_DBL_neg9					(((double)(uX_DBL_neg9))

#define uX_DBL_24_5					(((double)(uX_DBL_24_5))
#define uX_DBL_45					(((double)(uX_DBL_45))
#define uX_DBL_90					(((double)(uX_DBL_90))
#define uX_DBL_180					(((double)(uX_DBL_180))
#define uX_DBL_360					(((double)(uX_DBL_360))

#define uX_DBL_neg24_5				(((double)(uX_DBL_neg24_5))
#define uX_DBL_neg45				(((double)(uX_DBL_neg45))
#define uX_DBL_neg90				(((double)(uX_DBL_neg90))
#define uX_DBL_neg180				(((double)(uX_DBL_neg180))
#define uX_DBL_neg360				(((double)(uX_DBL_neg360))

#define uX_DBL_maxI8				(((double)(uX_DBL_maxI8))
#define uX_DBL_minI8				(((double)(uX_DBL_minI8))
#define uX_DBL_maxU8				(((double)(uX_DBL_maxU8))

#define uX_DBL_maxI16				(((double)(uX_DBL_maxI16))
#define uX_DBL_minI16				(((double)(uX_DBL_minI16))
#define uX_DBL_maxU16				(((double)(uX_DBL_maxU16))

#define uX_DBL_maxI32				(((double)(uX_DBL_maxI32))
#define uX_DBL_minI32				(((double)(uX_DBL_minI32))
#define uX_DBL_maxU32				(((double)(uX_DBL_maxU32))

#define uX_DBL_maxI64				(((double)(uX_DBL_maxI64))
#define uX_DBL_minI64				(((double)(uX_DBL_minI64))
#define uX_DBL_maxU64				(((double)(uX_DBL_maxU64))

#define uX_DBL_maxI8xU8				(((double)(uX_DBL_maxI8xU8))				/ *128.0f*256.0f* /
#define uX_DBL_minI8xU8				(((double)(uX_DBL_minI8xU8))				/ *-128.0f*256.0f* /
#define uX_DBL_maxI8xU16			(((double)(uX_DBL_maxI8xU16))				/ *128.0f*65536.0f* /
#define uX_DBL_minI8xU16			(((double)(uX_DBL_minI8xU16))				/ *-128.0f*65536.0f* /
#define uX_DBL_maxI16xU16			(((double)(uX_DBL_maxI16xU16))				/ *32768.0f*65536.0f* /
#define uX_DBL_minI16xU16			(((double)(uX_DBL_minI16xU16))				/ *-32768.0f*65536.0f* /

#define uX_DBL_rcpI16				(((double)(uX_DBL_rcpI16))					/ * 1/maxI16 * /
#define uX_DBL_rcpU16				(((double)(uX_DBL_rcpU16))					/ * 1/maxU16 * /
#define uX_DBL_rcpI16xU16			(((double)(uX_DBL_rcpI16xU16))				/ * 1/maxI16xmaxU16 * /

#define uX_DBL_MG					(((double)(uX_DBL_MG))
#define uX_DBL_negMG				(((double)(uX_DBL_negMG))
#define uX_DBL_sqrMG				(((double)(uX_DBL_sqrMG))
#define uX_DBL_cubeMG				(((double)(uX_DBL_cubeMG))
#define uX_DBL_HalfMG				(((double)(uX_DBL_HalfMG))
#define uX_DBL_negHalfMG			(((double)(uX_DBL_negHalfMG))
#define uX_DBL_HalfMGxMG			(((double)(uX_DBL_HalfMGxMG))
#define uX_DBL_HalfMGxsqrMG			(((double)(uX_DBL_HalfMGxsqrMG))
#define uX_DBL_HalfMGxcubeMG		(((double)(uX_DBL_HalfMGxcubeMG))
#define uX_DBL_negHalfMGxMG			(((double)(uX_DBL_negHalfMGxMG))
#define uX_DBL_negHalfMGxsqrMG		(((double)(uX_DBL_negHalfMGxsqrMG))
#define uX_DBL_negHalfMGxcubeMG		(((double)(uX_DBL_negHalfMGxcubeMG))
#define uX_DBL_rcpMG				(((double)(uX_DBL_rcpMG))
#define uX_DBL_rcpsqrMG				(((double)(uX_DBL_rcpsqrMG))
#define uX_DBL_rcpcubeMG			(((double)(uX_DBL_rcpcubeMG))

#define uX_DBL_E					(((double)(uX_DBL_E))
#define uX_DBL_exp					(((double)(uX_DBL_exp))
#define uX_DBL_log2E				(((double)(uX_DBL_log2E))
#define uX_DBL_log10E				(((double)(uX_DBL_log10E))
#define uX_DBL_rcplog2E				(((double)(uX_DBL_rcplog2E))
#define uX_DBL_rcplog10E			(((double)(uX_DBL_rcplog10E))

#define uX_DBL_ln2					(((double)(uX_DBL_ln2))
#define uX_DBL_ln10					(((double)(uX_DBL_ln10))
#define uX_DBL_expest1				(((double)(uX_DBL_expest1))
#define uX_DBL_expest2				(((double)(uX_DBL_expest2))
#define uX_DBL_expest3				(((double)(uX_DBL_expest3))
#define uX_DBL_expest4				(((double)(uX_DBL_expest4))
#define uX_DBL_expest5				(((double)(uX_DBL_expest5))
#define uX_DBL_expest6				(((double)(uX_DBL_expest6))
#define uX_DBL_expest7				(((double)(uX_DBL_expest7))
#define uX_DBL_logest0				(((double)(uX_DBL_logest0))
#define uX_DBL_logest1				(((double)(uX_DBL_logest1))
#define uX_DBL_logest2				(((double)(uX_DBL_logest2))
#define uX_DBL_logest3				(((double)(uX_DBL_logest3))
#define uX_DBL_logest4				(((double)(uX_DBL_logest4))
#define uX_DBL_logest5				(((double)(uX_DBL_logest5))
#define uX_DBL_logest6				(((double)(uX_DBL_logest6))
#define uX_DBL_logest7				(((double)(uX_DBL_logest7))

#define uX_DBL_Pi					(((double)(uX_DBL_Pi))
#define uX_DBL_HalfPi				(((double)(uX_DBL_HalfPi))
#define uX_DBL_2Pi					(((double)(uX_DBL_2Pi))
#define uX_DBL_negPi					(((double)(uX_DBL_negPi))
#define uX_DBL_negHalfPi				(((double)(uX_DBL_negHalfPi))
#define uX_DBL_neg2Pi				(((double)(uX_DBL_neg2Pi))
#define uX_DBL_rcpPi				(((double)(uX_DBL_rcpPi))
#define uX_DBL_rcp2Pi				(((double)(uX_DBL_rcp2Pi))
#define uX_DBL_Pidiv2				(((double)(uX_DBL_Pidiv2))
#define uX_DBL_Pidiv4				(((double)(uX_DBL_Pidiv4))
#define uX_DBL_Gravity				(((double)(uX_DBL_Gravity))
#define uX_DBL_DegtoRad				(((double)(uX_DBL_DegtoRad))				/ * 0.01745329251994329547; * /
#define uX_DBL_RadtoDeg				(((double)(uX_DBL_RadtoDeg))			/ * 57.29577951308232286465; * /
#define uX_DBL_KmhtoMPSec			(((double)(uX_DBL_KmhtoMPSec))

// #define uX_DBL_divDegtoRad		(((double)(uX_DBL_Pi / 180.0f))
// #define uX_DBL_divRadtoDeg		(((double)(180.0f / uX_DBL_Pi))

#define uX_DBL_DIG					(((double)(uX_DBL_DECDIG))				/ * 15 * /						/ * # of decimal digits of precision * /
#define uX_DBL_EPS					(((double)(uX_DBL_EPS))				/ * 2.2204460492503131e-016 * / / * smallest such that 1.0+DBL_EPSILON != 1.0 * /
#define uX_DBL_GUARD				(((double)(uX_DBL_GUARD))
#define uX_DBL_MANT_DIG				(((double)(uX_DBL_MANT_DIG))			/ * 53 * /						/ * # of bits in mantissa * /
#define uX_DBL_MAX					(((double)(uX_DBL_MAX))				/ * 1.7976931348623158e+308 * / / * maximum possible double value * /
#define uX_DBL_MAX_DEC_EXP			(((double)(uX_DBL_MAX_DEC_EXP))		/ * 308 * /						/ * max decimal exponent * /
#define uX_DBL_MAX_EXP				(((double)(uX_DBL_MAX_EXP))			/ * 1024 * /						/ * max binary exponent * /
#define uX_DBL_MIN					(((double)(uX_DBL_MIN))				/ * 2.2250738585072014e-308 * / / * min positive value * /
#define uX_DBL_MIN_DEC_EXP			(((double)(uX_DBL_MIN_DEC_EXP))		/ * (-307) * /					/ * min decimal exponent * /
#define uX_DBL_MIN_EXP				(((double)(uX_DBL_MIN_EXP))			/ * (-1021) * /					/ * min binary exponent * /
#define uX_DBL_NORM					(((double)(uX_DBL_NORM))
#define uX_DBL_RADIX				(((double)(uX_DBL_RADIX))			/ * 2 * /							/ * exponent radix * /
#define uX_DBL_ROUNDS				(((double)(uX_DBL_ROUNDS))			/ * 1 * /							/ * addition rounding: near * /
#define uX_DBL_DECDIG				(((double)(uX_DBL_DECDIG))											/ * double rounded to decimal and back * /
#define uX_DBL_HIGH					(((double)(uX_DBL_HIGH))

#endif
*/

/*
#ifndef uX_REAL_USE_F64
# define uX_REAL_MAX					(((float)(uX_REALMAX))
# define uX_REAL_MIN					(((float)(uX_REALMIN))
# define uX_REAL_EPS					(((float)(uX_REALEPS))
# define uX_REAL_NORMEPS				(((float)(uX_REALNORM_EPS))
# define uX_REAL_HIGH					(((float)(uX_REALHIGH))
#else
# define uX_REAL_MAX					(((double)(uX_REALMAX))
# define uX_REAL_MIN					(((double)(uX_REALMIN))
# define uX_REAL_EPS					(((double)(uX_REALEPS))
# define uX_REAL_NORMEPS				(((double)(uX_REALNORM_EPS))
# define uX_REAL_HIGH					(((double)(uX_REALHIGH))
#endif*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*			end of double precision marked macro constants			*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						uX_I32 macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uX_I32_0				((__int32)(0))
#define uX_I32_1				((__int32)(1))
#define uX_I32_neg1			((__int32)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						uX_I64 macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uX_I64_0				((__int64)(0))
#define uX_I64_1				((__int64)(1))
#define uX_I64_neg1			((__int64)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						uX_I16 macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uX_I16_0				((__int16)(0))
#define uX_I16_1				((__int16)(1))
#define uX_I16_neg1			((__int16)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						uX_I8 macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uX_I8_0				((__int8)(0))
#define uX_I8_1				((__int8)(1))
#define uX_I8_neg1				((__int8)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						uX_U32 macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uX_U32_0					((unsigned __int32)(0))
#define uX_U32_1					((unsigned __int32)(1))
#define uX_U32_neg1				((unsigned __int32)(-1))

#define uX_U32_select_0			((unsigned __int32)(0x00000000))
#define uX_U32_select_1			((unsigned __int32)(0xffffffff))

#define uX_U32_PERMUTE_0X			((unsigned __int32)(0))
#define uX_U32_PERMUTE_0Y			((unsigned __int32)(1))
#define uX_U32_PERMUTE_0Z			((unsigned __int32)(2))
#define uX_U32_PERMUTE_0W			((unsigned __int32)(3))
#define uX_U32_PERMUTE_1X			((unsigned __int32)(4))
#define uX_U32_PERMUTE_1Y			((unsigned __int32)(5))
#define uX_U32_PERMUTE_1Z			((unsigned __int32)(6))
#define uX_U32_PERMUTE_1W			((unsigned __int32)(7))

#define uX_U32_SWIZZLE_X			((unsigned __int32)(0))
#define uX_U32_SWIZZLE_Y			((unsigned __int32)(1))
#define uX_U32_SWIZZLE_Z			((unsigned __int32)(2))
#define uX_U32_SWIZZLE_W			((unsigned __int32)(3))

#define uX_U32_CRMASK_CR6			((unsigned __int32)(0x000000f0))
#define uX_U32_CRMASK_CR6TRUE		((unsigned __int32)(0x00000080))
#define uX_U32_CRMASK_CR6FALSE		((unsigned __int32)(0x00000020))
#define uX_U32_CRMASK_CR6BOUNDS uX_U32_CRMASK_CR6FALSE

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						uX_U64 macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uX_U64_0					((unsigned __int64)(0))
#define uX_U64_1					((unsigned __int64)(1))
#define uX_U64_neg1				((unsigned __int64)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						uX_U16 macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uX_U16_0					((unsigned __int16)(0))
#define uX_U16_1					((unsigned __int16)(1))
#define uX_U16_neg1				((unsigned __int16)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						uX_U8 macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uX_U8_0					((unsigned __int8)(0))
#define uX_U8_1					((unsigned __int8)(1))
#define uX_U8_neg1					((unsigned __int8)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						UNALIGNED macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

// sample use uX_FLT_CONST(Name, valor)
// unaligned or aligned const gets expanded to uXfloat_Name
#define uX_FLT_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(float uXfloat_##Name)  = ( Val );

#ifdef uX_USE_DOUBLE_PRECISION
// unaligned or aligned const gets expanded to uXdouble_Name
#define uX_DBL_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(double uXdouble_##Name)  = ( Val );
#endif

// unaligned or aligned const gets expanded to uXint8_Name
#define uX_I8_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(__int8 uXint8_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXint16_Name
#define uX_I16_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(__int16 uXint16_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXint32_Name
#define uX_I32_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(__int32 uXint32_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXint64_Name
#define uX_I64_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(__int64 uXint64_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXuint8_Name
#define uX_U8_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int8 uXuint8_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXuint16_Name
#define uX_U16_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int16 uXuint16_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXuint32_Name
#define uX_U32_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uXuint32_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXuint64_Name
#define uX_U64_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int64 uXuint64_##Name)  = ( Val );

#ifndef uX_REAL_USE_F64
// unaligned or aligned const gets expanded to uXreal_Name
#define uX_REAL_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(float uXreal_##Name)  = ( Val );
#else
// unaligned or aligned const gets expanded to uXreal_Name
#define uX_REAL_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN(double uXreal_##Name)  = ( Val );
#endif

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*						ALIGNED macro constants						*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

// Natural Alignment to the base type
// sample use uX_FLT_NA_CONST(Name, valor)
// natural aligned const gets expanded to uXfloatna_Name
#define uX_FLT_NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN4(float uXfloatna_##Name)  = ( Val );

#ifdef uX_USE_DOUBLE_PRECISION
// natural aligned const gets expanded to uXdoublena_Name
#define uX_DBL_NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN8(double uXdoublena_##Name)  = ( Val );
#endif

// natural aligned const gets expanded to uXint8na_Name
#define uX_I8NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN1(__int8 uXint8na_##Name)  = ( Val );

// natural aligned const gets expanded to uXint16na_Name
#define uX_I16NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN2(__int16 uXint16na_##Name)  = ( Val );

// natural aligned const gets expanded to uXint32na_Name
#define uX_I32NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN4(__int32 uXint32na_##Name)  = ( Val );

// natural aligned const gets expanded to uXint64na_Name
#define uX_I64NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN8(__int64 uXint64na_##Name)  = ( Val );

// natural aligned const gets expanded to uXuint8na_Name
#define uX_U8NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN1(unsigned __int8 uXuint8na_##Name)  = ( Val );

// natural aligned const gets expanded to uXuint16na_Name
#define uX_U16NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN2(unsigned __int16 uXuint16na_##Name)  = ( Val );

// natural aligned const gets expanded to uXuint32na_Name
#define uX_U32NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN4(unsigned __int32 uXuint32na_##Name)  = ( Val );

// natural aligned const gets expanded to uXuint64na_Name
#define uX_U64NA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN8(unsigned __int64 uXuint64na_##Name)  = ( Val );

#ifndef uX_REAL_USE_F64
// natural aligned const gets expanded to uXrealna_Name
#define uX_REALNA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN4(float uXrealna_##Name)  = ( Val );
#else
// natural aligned const gets expanded to uXrealna_Name
#define uX_REALNA_CONST(Name, Val)										\
  uX_NMGLOBAL_CONST uX_NMALIGN8(double uXrealna_##Name)  = ( Val );
#endif

#ifndef uX_MISC_H
#include "uXmisc.h"
#endif  /* uX_MISC_H */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*							uX_FLT_ constants							*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

// unaligned or aligned

uX_FLT_CONST(Magic, uX_FLT_Magic)
uX_FLT_CONST(Sign, uX_FLT_Sign)
uX_FLT_CONST(invSign, uX_FLT_invSign)

uX_FLT_CONST(Byte, uX_FLT_Byte)
uX_FLT_CONST(4Low, uX_FLT_4Low)
uX_FLT_CONST(4High, uX_FLT_4High)
uX_FLT_CONST(flip4, uX_FLT_flip4)
uX_FLT_CONST(8Low, uX_FLT_8Low)
uX_FLT_CONST(8High, uX_FLT_8High)
uX_FLT_CONST(flip8, uX_FLT_flip8)
uX_FLT_CONST(16Low, uX_FLT_16Low)
uX_FLT_CONST(16High, uX_FLT_16High)
uX_FLT_CONST(flip16, uX_FLT_flip16)
uX_FLT_CONST(24Low, uX_FLT_24Low)
uX_FLT_CONST(24High, uX_FLT_24High)
uX_FLT_CONST(flip24, uX_FLT_flip24)
uX_FLT_CONST(28Low, uX_FLT_28Low)
uX_FLT_CONST(28High, uX_FLT_28High)
uX_FLT_CONST(flip28, uX_FLT_flip28)

uX_FLT_CONST(Inf, uX_FLT_Inf)
uX_FLT_CONST(invInf, uX_FLT_invInf)
uX_FLT_CONST(negInf, uX_FLT_negInf)
uX_FLT_CONST(NaN, uX_FLT_NaN)
uX_FLT_CONST(QNaN, uX_FLT_QNaN)
uX_FLT_CONST(negQNaN, uX_FLT_negQNaN)
uX_FLT_CONST(NaNTest, uX_FLT_NaNTest)
uX_FLT_CONST(Abs, uX_FLT_Abs)
uX_FLT_CONST(fltMin, uX_FLT_Min)
uX_FLT_CONST(fltMax, uX_FLT_Max)
uX_FLT_CONST(MinDenorm, uX_FLT_MinDenorm)
uX_FLT_CONST(DenormLimit, uX_FLT_DenormLimit)
uX_FLT_CONST(MinNormal, uX_FLT_MinNormal)
uX_FLT_CONST(MaxNormal, uX_FLT_MaxNormal)

//uX_FLT_CONST(ExpBias2, uX_FLT_ExpBias)
//uX_FLT_CONST(ExpM1div3, uX_FLT_ExpM1div3)

uX_FLT_CONST(bin128, uX_FLT_bin128)
uX_FLT_CONST(binneg150, uX_FLT_binneg150)

/*
uX_FLT_CONST(Max, uX_FLT_Max)
uX_FLT_CONST(Min, uX_FLT_Min)
uX_FLT_CONST(DecDig, uX_FLT_DecDig)
uX_FLT_CONST(negDecDig, uX_FLT_negDecDig)
uX_FLT_CONST(Mant, uX_FLT_Mant)
uX_FLT_CONST(negMant, uX_FLT_negMant)
uX_FLT_CONST(maxDecDigExp, uX_FLT_maxDecDigExp)
uX_FLT_CONST(negmaxDecDigExp, uX_FLT_negmaxDecDigExp)
uX_FLT_CONST(minDecDigExp, uX_FLT_minDecDigExp)
uX_FLT_CONST(maxExp, uX_FLT_maxExp)
uX_FLT_CONST(minExp, uX_FLT_minExp)
uX_FLT_CONST(Radix, uX_FLT_Radix)
uX_FLT_CONST(MantPow2, uX_FLT_MantPow2)
uX_FLT_CONST(MaxMantPow2, uX_FLT_MaxMantPow2)
uX_FLT_CONST(High, uX_FLT_High)
uX_FLT_CONST(SmallNorm, uX_FLT_SmallNorm)
uX_FLT_CONST(Eps, uX_FLT_Eps)
uX_FLT_CONST(Epsilon, uX_FLT_Eps)
uX_FLT_CONST(NormEps, uX_FLT_NormEps)*/

uX_FLT_CONST(0, uX_FLT_0)
uX_FLT_CONST(05, uX_FLT_0d5)
uX_FLT_CONST(1, uX_FLT_1)
uX_FLT_CONST(2, uX_FLT_2)
uX_FLT_CONST(3, uX_FLT_3)
uX_FLT_CONST(4, uX_FLT_4)
uX_FLT_CONST(5, uX_FLT_5)
uX_FLT_CONST(6, uX_FLT_6)
uX_FLT_CONST(7, uX_FLT_7)
uX_FLT_CONST(8, uX_FLT_8)
uX_FLT_CONST(9, uX_FLT_9)

uX_FLT_CONST(neg0, uX_FLT_neg0)
uX_FLT_CONST(neg05, uX_FLT_neg0d5)
uX_FLT_CONST(neg1, uX_FLT_neg1)
uX_FLT_CONST(neg2, uX_FLT_neg2)
uX_FLT_CONST(neg3, uX_FLT_neg3)
uX_FLT_CONST(neg4, uX_FLT_neg4)
uX_FLT_CONST(neg5, uX_FLT_neg5)
uX_FLT_CONST(neg6, uX_FLT_neg6)
uX_FLT_CONST(neg7, uX_FLT_neg7)
uX_FLT_CONST(neg8, uX_FLT_neg8)
uX_FLT_CONST(neg9, uX_FLT_neg9)

uX_FLT_CONST(24_5, uX_FLT_24d5)
uX_FLT_CONST(45, uX_FLT_45)
uX_FLT_CONST(90, uX_FLT_90)
uX_FLT_CONST(180, uX_FLT_180)
uX_FLT_CONST(360, uX_FLT_360)

uX_FLT_CONST(neg24_5, uX_FLT_neg24d5)
uX_FLT_CONST(neg45, uX_FLT_neg45)
uX_FLT_CONST(neg90, uX_FLT_neg90)
uX_FLT_CONST(neg180, uX_FLT_neg180)
uX_FLT_CONST(neg360, uX_FLT_neg360)

uX_FLT_CONST(maxRand, uX_FLT_maxRand)

uX_FLT_CONST(maxI8, uX_FLT_maxI8)
uX_FLT_CONST(minI8, uX_FLT_minI8)
uX_FLT_CONST(maxU8, uX_FLT_maxU8)
uX_FLT_CONST(maxI16, uX_FLT_maxI16)
uX_FLT_CONST(minI16, uX_FLT_minI16)
uX_FLT_CONST(maxU16, uX_FLT_maxU16)
uX_FLT_CONST(maxI32, uX_FLT_maxI32)
uX_FLT_CONST(minI32, uX_FLT_minI32)
uX_FLT_CONST(minU32, uX_FLT_maxU32)

uX_FLT_CONST(maxI8xU8, uX_FLT_maxI8xU8)
uX_FLT_CONST(minI8xU8, uX_FLT_minI8xU8)
uX_FLT_CONST(maxI8xU16, uX_FLT_maxI8xU16)
uX_FLT_CONST(minI8xU16, uX_FLT_minI8xU16)
uX_FLT_CONST(maxI16xU16, uX_FLT_maxI16xU16)
uX_FLT_CONST(minI16xU16, uX_FLT_minI16xU16)

uX_FLT_CONST(rcpI16, uX_FLT_rcpI16)
uX_FLT_CONST(rcpU16, uX_FLT_rcpU16)
uX_FLT_CONST(rcpI16xU16, uX_FLT_rcpI16xU16)

uX_FLT_CONST(MG, uX_FLT_MG)
uX_FLT_CONST(negMG, uX_FLT_negMG)
uX_FLT_CONST(sqrMG, uX_FLT_sqrMG)
uX_FLT_CONST(cubeMG, uX_FLT_cubeMG)
uX_FLT_CONST(HalfMG, uX_FLT_HalfMG)
uX_FLT_CONST(negHalfMG, uX_FLT_negHalfMG)
uX_FLT_CONST(HalfMGxMG, uX_FLT_HalfMGxMG)
uX_FLT_CONST(HalfMGxsqrMG, uX_FLT_HalfMGxsqrMG)
uX_FLT_CONST(HalfMGxcubeMG, uX_FLT_HalfMGxcubeMG)
uX_FLT_CONST(negHalfMGxMG, uX_FLT_negHalfMGxMG)
uX_FLT_CONST(negHalfMGxsqrMG, uX_FLT_negHalfMGxsqrMG)
uX_FLT_CONST(negHalfMGxcubeMG, uX_FLT_negHalfMGxcubeMG)
uX_FLT_CONST(rcpMG, uX_FLT_rcpMG)
uX_FLT_CONST(rcpsqrMG, uX_FLT_rcpsqrMG)
uX_FLT_CONST(rcpcubeMG, uX_FLT_rcpcubeMG)

uX_FLT_CONST(E, uX_FLT_E)
uX_FLT_CONST(exp, uX_FLT_exp)
uX_FLT_CONST(log2E, uX_FLT_log2E)
uX_FLT_CONST(log10E, uX_FLT_log10E)
uX_FLT_CONST(rcplog2E, uX_FLT_rcplog2E)
uX_FLT_CONST(rcplog10E, uX_FLT_rcplog10E)
uX_FLT_CONST(ln2, uX_FLT_ln2)
uX_FLT_CONST(ln10, uX_FLT_ln10)
uX_FLT_CONST(expest1, uX_FLT_expest1)
uX_FLT_CONST(expest2, uX_FLT_expest2)
uX_FLT_CONST(expest3, uX_FLT_expest3)
uX_FLT_CONST(expest4, uX_FLT_expest4)
uX_FLT_CONST(expest5, uX_FLT_expest5)
uX_FLT_CONST(expest6, uX_FLT_expest6)
uX_FLT_CONST(expest7, uX_FLT_expest7)
uX_FLT_CONST(logest0, uX_FLT_logest0)
uX_FLT_CONST(logest1, uX_FLT_logest1)
uX_FLT_CONST(logest2, uX_FLT_logest2)
uX_FLT_CONST(logest3, uX_FLT_logest3)
uX_FLT_CONST(logest4, uX_FLT_logest4)
uX_FLT_CONST(logest5, uX_FLT_logest5)
uX_FLT_CONST(logest6, uX_FLT_logest6)
uX_FLT_CONST(logest7, uX_FLT_logest7)

uX_FLT_CONST(Pi, uX_FLT_Pi)
uX_FLT_CONST(HalfPi, uX_FLT_HalfPi)
uX_FLT_CONST(2Pi, uX_FLT_2Pi)
uX_FLT_CONST(negPi, uX_FLT_negPi)
uX_FLT_CONST(negHalfPi, uX_FLT_negHalfPi)
uX_FLT_CONST(neg2Pi, uX_FLT_neg2Pi)
uX_FLT_CONST(rcpPi, uX_FLT_rcpPi)
uX_FLT_CONST(rcp2Pi, uX_FLT_rcp2Pi)
uX_FLT_CONST(Pidiv2, uX_FLT_Pidiv2)
uX_FLT_CONST(Pidiv4, uX_FLT_Pidiv4)
/*uX_FLT_CONST(Gravity, uX_FLT_Gravity)*/
uX_FLT_CONST(DegtoRad, uX_FLT_DegtoRad)
uX_FLT_CONST(RadtoDeg, uX_FLT_RadtoDeg)
/*uX_FLT_CONST(KmhtoMPSec, uX_FLT_KmhtoMPSec)*/

uX_FLT_CONST(Max, uX_FLT_Max)
uX_FLT_CONST(Min, uX_FLT_Min)
uX_FLT_CONST(Eps, uX_FLT_Eps)
uX_FLT_CONST(Epsilon, uX_FLT_Epsilon)
uX_FLT_CONST(Radix, uX_FLT_Radix)
uX_FLT_CONST(NormEps, uX_FLT_NormEps)
uX_FLT_CONST(High, uX_FLT_sqrtMax)

#undef uX_FLT_CONST

// natural alignment to the base type

uX_FLT_NA_CONST(0, uX_FLT_0)
uX_FLT_NA_CONST(05, uX_FLT_0d5)
uX_FLT_NA_CONST(1, uX_FLT_1)
uX_FLT_NA_CONST(2, uX_FLT_2)
uX_FLT_NA_CONST(3, uX_FLT_3)
uX_FLT_NA_CONST(4, uX_FLT_4)
uX_FLT_NA_CONST(5, uX_FLT_5)
uX_FLT_NA_CONST(6, uX_FLT_6)
uX_FLT_NA_CONST(7, uX_FLT_7)
uX_FLT_NA_CONST(8, uX_FLT_8)
uX_FLT_NA_CONST(9, uX_FLT_9)

uX_FLT_NA_CONST(neg0, uX_FLT_neg0)
uX_FLT_NA_CONST(neg05, uX_FLT_neg0d5)
uX_FLT_NA_CONST(neg1, uX_FLT_neg1)
uX_FLT_NA_CONST(neg2, uX_FLT_neg2)
uX_FLT_NA_CONST(neg3, uX_FLT_neg3)
uX_FLT_NA_CONST(neg4, uX_FLT_neg4)
uX_FLT_NA_CONST(neg5, uX_FLT_neg5)
uX_FLT_NA_CONST(neg6, uX_FLT_neg6)
uX_FLT_NA_CONST(neg7, uX_FLT_neg7)
uX_FLT_NA_CONST(neg8, uX_FLT_neg8)
uX_FLT_NA_CONST(neg9, uX_FLT_neg9)

uX_FLT_NA_CONST(24_5, uX_FLT_24d5)
uX_FLT_NA_CONST(45, uX_FLT_45)
uX_FLT_NA_CONST(90, uX_FLT_90)
uX_FLT_NA_CONST(180, uX_FLT_180)
uX_FLT_NA_CONST(360, uX_FLT_360)

uX_FLT_NA_CONST(neg24_5, uX_FLT_neg24d5)
uX_FLT_NA_CONST(neg45, uX_FLT_neg45)
uX_FLT_NA_CONST(neg90, uX_FLT_neg90)
uX_FLT_NA_CONST(neg180, uX_FLT_neg180)
uX_FLT_NA_CONST(neg360, uX_FLT_neg360)

uX_FLT_NA_CONST(RandMax, uX_FLT_maxI16)

uX_FLT_NA_CONST(maxI8, uX_FLT_maxI8)
uX_FLT_NA_CONST(minI8, uX_FLT_minI8)
uX_FLT_NA_CONST(maxU8, uX_FLT_maxU8)
uX_FLT_NA_CONST(maxI16, uX_FLT_maxI16)
uX_FLT_NA_CONST(minI16, uX_FLT_minI16)
uX_FLT_NA_CONST(maxU16, uX_FLT_maxU16)
uX_FLT_NA_CONST(maxI32, uX_FLT_maxI32)
uX_FLT_NA_CONST(minI32, uX_FLT_minI32)
uX_FLT_NA_CONST(minU32, uX_FLT_maxU32)

uX_FLT_NA_CONST(maxI8xU8, uX_FLT_maxI8xU8)
uX_FLT_NA_CONST(minI8xU8, uX_FLT_minI8xU8)
uX_FLT_NA_CONST(maxI8xU16, uX_FLT_maxI8xU16)
uX_FLT_NA_CONST(minI8xU16, uX_FLT_minI8xU16)
uX_FLT_NA_CONST(maxI16xU16, uX_FLT_maxI16xU16)
uX_FLT_NA_CONST(minI16xU16, uX_FLT_minI16xU16)

uX_FLT_NA_CONST(rcpI16, uX_FLT_rcpI16)
uX_FLT_NA_CONST(rcpU16, uX_FLT_rcpU16)
uX_FLT_NA_CONST(rcpI16xU16, uX_FLT_rcpI16xU16)

uX_FLT_NA_CONST(MG, uX_FLT_MG)
uX_FLT_NA_CONST(negMG, uX_FLT_negMG)
uX_FLT_NA_CONST(sqrMG, uX_FLT_sqrMG)
uX_FLT_NA_CONST(cubeMG, uX_FLT_cubeMG)
uX_FLT_NA_CONST(HalfMG, uX_FLT_HalfMG)
uX_FLT_NA_CONST(negHalfMG, uX_FLT_negHalfMG)
uX_FLT_NA_CONST(HalfMGxMG, uX_FLT_HalfMGxMG)
uX_FLT_NA_CONST(HalfMGxsqrMG, uX_FLT_HalfMGxsqrMG)
uX_FLT_NA_CONST(HalfMGxcubeMG, uX_FLT_HalfMGxcubeMG)
uX_FLT_NA_CONST(negHalfMGxMG, uX_FLT_negHalfMGxMG)
uX_FLT_NA_CONST(negHalfMGxsqrMG, uX_FLT_negHalfMGxsqrMG)
uX_FLT_NA_CONST(negHalfMGxcubeMG, uX_FLT_negHalfMGxcubeMG)
uX_FLT_NA_CONST(rcpMG, uX_FLT_rcpMG)
uX_FLT_NA_CONST(rcpsqrMG, uX_FLT_rcpsqrMG)
uX_FLT_NA_CONST(rcpcubeMG, uX_FLT_rcpcubeMG)

uX_FLT_NA_CONST(E, uX_FLT_E)
uX_FLT_NA_CONST(exp, uX_FLT_exp)
uX_FLT_NA_CONST(log2E, uX_FLT_log2E)
uX_FLT_NA_CONST(log10E, uX_FLT_log10E)
uX_FLT_NA_CONST(rcplog2E, uX_FLT_rcplog2E)
uX_FLT_NA_CONST(rcplog10E, uX_FLT_rcplog10E)
uX_FLT_NA_CONST(ln2, uX_FLT_ln2)
uX_FLT_NA_CONST(ln10, uX_FLT_ln10)
uX_FLT_NA_CONST(expest1, uX_FLT_expest1)
uX_FLT_NA_CONST(expest2, uX_FLT_expest2)
uX_FLT_NA_CONST(expest3, uX_FLT_expest3)
uX_FLT_NA_CONST(expest4, uX_FLT_expest4)
uX_FLT_NA_CONST(expest5, uX_FLT_expest5)
uX_FLT_NA_CONST(expest6, uX_FLT_expest6)
uX_FLT_NA_CONST(expest7, uX_FLT_expest7)
uX_FLT_NA_CONST(logest0, uX_FLT_logest0)
uX_FLT_NA_CONST(logest1, uX_FLT_logest1)
uX_FLT_NA_CONST(logest2, uX_FLT_logest2)
uX_FLT_NA_CONST(logest3, uX_FLT_logest3)
uX_FLT_NA_CONST(logest4, uX_FLT_logest4)
uX_FLT_NA_CONST(logest5, uX_FLT_logest5)
uX_FLT_NA_CONST(logest6, uX_FLT_logest6)
uX_FLT_NA_CONST(logest7, uX_FLT_logest7)

uX_FLT_NA_CONST(Pi, uX_FLT_Pi)
uX_FLT_NA_CONST(HalfPi, uX_FLT_HalfPi)
uX_FLT_NA_CONST(2Pi, uX_FLT_2Pi)
uX_FLT_NA_CONST(negPi, uX_FLT_negPi)
uX_FLT_NA_CONST(negHalfPi, uX_FLT_negHalfPi)
uX_FLT_NA_CONST(neg2Pi, uX_FLT_neg2Pi)
uX_FLT_NA_CONST(rcpPi, uX_FLT_rcpPi)
uX_FLT_NA_CONST(rcp2Pi, uX_FLT_rcp2Pi)
uX_FLT_NA_CONST(Pidiv2, uX_FLT_Pidiv2)
uX_FLT_NA_CONST(Pidiv4, uX_FLT_Pidiv4)
/*uX_FLT_NA_CONST(Gravity, uX_FLT_Gravity)*/
uX_FLT_NA_CONST(DegtoRad, uX_FLT_DegtoRad)
uX_FLT_NA_CONST(RadtoDeg, uX_FLT_RadtoDeg)
/*uX_FLT_NA_CONST(KmhtoMPSec, uX_FLT_KmhtoMPSec)*/

uX_FLT_NA_CONST(Max, uX_FLT_Max)
uX_FLT_NA_CONST(Min, uX_FLT_Min)
uX_FLT_NA_CONST(Eps, uX_FLT_Eps)
uX_FLT_NA_CONST(Epsilon, uX_FLT_Epsilon)
uX_FLT_NA_CONST(Radix, uX_FLT_Radix)
uX_FLT_NA_CONST(NormEps, uX_FLT_NormEps)
uX_FLT_NA_CONST(High, uX_FLT_sqrtMax)

#undef uX_FLT_NA_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*							uX_DBL_ constants							*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

#if defined(uX_USE_DOUBLE_PRECISION)

// sample use if needs alignment!
// for other sizes check uXBaseDefs header
/*double uX_ALIGN16DECL(aof) = uX_DBL_0);*/

uX_DBL_CONST(0, uX_DBL_0)
uX_DBL_CONST(05, uX_DBL_0d5)
uX_DBL_CONST(1, uX_DBL_1)
uX_DBL_CONST(2, uX_DBL_2)
uX_DBL_CONST(3, uX_DBL_3)
uX_DBL_CONST(4, uX_DBL_4)
uX_DBL_CONST(5, uX_DBL_5)
uX_DBL_CONST(6, uX_DBL_6)
uX_DBL_CONST(7, uX_DBL_7)
uX_DBL_CONST(8, uX_DBL_8)
uX_DBL_CONST(9, uX_DBL_9)

uX_DBL_CONST(neg0, uX_DBL_neg0)
uX_DBL_CONST(neg05, uX_DBL_neg0d5)
uX_DBL_CONST(neg1, uX_DBL_neg1)
uX_DBL_CONST(neg2, uX_DBL_neg2)
uX_DBL_CONST(neg3, uX_DBL_neg3)
uX_DBL_CONST(neg4, uX_DBL_neg4)
uX_DBL_CONST(neg5, uX_DBL_neg5)
uX_DBL_CONST(neg6, uX_DBL_neg6)
uX_DBL_CONST(neg7, uX_DBL_neg7)
uX_DBL_CONST(neg8, uX_DBL_neg8)
uX_DBL_CONST(neg9, uX_DBL_neg9)

uX_DBL_CONST(24_5, uX_DBL_24d5)
uX_DBL_CONST(45, uX_DBL_45)
uX_DBL_CONST(90, uX_DBL_90)
uX_DBL_CONST(180, uX_DBL_180)
uX_DBL_CONST(360, uX_DBL_360)

uX_DBL_CONST(neg24_5, uX_DBL_neg24d5)
uX_DBL_CONST(neg45, uX_DBL_neg45)
uX_DBL_CONST(neg90, uX_DBL_neg90)
uX_DBL_CONST(neg180, uX_DBL_neg180)
uX_DBL_CONST(neg360, uX_DBL_neg360)

uX_DBL_CONST(RandMax, uX_DBL_maxI16)

uX_DBL_CONST(maxI8, uX_DBL_maxI8)
uX_DBL_CONST(minI8, uX_DBL_minI8)
uX_DBL_CONST(maxU8, uX_DBL_maxU8)
uX_DBL_CONST(maxI16, uX_DBL_maxI16)
uX_DBL_CONST(minI16, uX_DBL_minI16)
uX_DBL_CONST(maxU16, uX_DBL_maxU16)
uX_DBL_CONST(maxI32, uX_DBL_maxI32)
uX_DBL_CONST(minI32, uX_DBL_minI32)
uX_DBL_CONST(minU32, uX_DBL_maxU32)
uX_DBL_CONST(maxI64, uX_DBL_maxI64)
uX_DBL_CONST(minI64, uX_DBL_minI64)
uX_DBL_CONST(maxU64, uX_DBL_maxU64)

uX_DBL_CONST(maxI8xU8, uX_DBL_maxI8xU8)
uX_DBL_CONST(minI8xU8, uX_DBL_minI8xU8)
uX_DBL_CONST(maxI8xU16, uX_DBL_maxI8xU16)
uX_DBL_CONST(minI8xU16, uX_DBL_minI8xU16)
uX_DBL_CONST(maxI16xU16, uX_DBL_maxI16xU16)
uX_DBL_CONST(minI16xU16, uX_DBL_minI16xU16)

uX_DBL_CONST(rcpI16, uX_DBL_rcpI16)
uX_DBL_CONST(rcpU16, uX_DBL_rcpU16)
uX_DBL_CONST(rcpI16xU16, uX_DBL_rcpI16xU16)

uX_DBL_CONST(MG, uX_DBL_MG)
uX_DBL_CONST(negMG, uX_DBL_negMG)
uX_DBL_CONST(sqrMG, uX_DBL_sqrMG)
uX_DBL_CONST(cubeMG, uX_DBL_cubeMG)
uX_DBL_CONST(HalfMG, uX_DBL_HalfMG)
uX_DBL_CONST(negHalfMG, uX_DBL_negHalfMG)
uX_DBL_CONST(HalfMGxMG, uX_DBL_HalfMGxMG)
uX_DBL_CONST(HalfMGxsqrMG, uX_DBL_HalfMGxsqrMG)
uX_DBL_CONST(HalfMGxcubeMG, uX_DBL_HalfMGxcubeMG)
uX_DBL_CONST(negHalfMGxMG, uX_DBL_negHalfMGxMG)
uX_DBL_CONST(negHalfMGxsqrMG, uX_DBL_negHalfMGxsqrMG)
uX_DBL_CONST(negHalfMGxcubeMG, uX_DBL_negHalfMGxcubeMG)
uX_DBL_CONST(rcpMG, uX_DBL_rcpMG)
uX_DBL_CONST(rcpsqrMG, uX_DBL_rcpsqrMG)
uX_DBL_CONST(rcpcubeMG, uX_DBL_rcpcubeMG)

uX_DBL_CONST(E, uX_DBL_E)
uX_DBL_CONST(exp, uX_DBL_exp)
uX_DBL_CONST(log2E, uX_DBL_log2E)
uX_DBL_CONST(log10E, uX_DBL_log10E)
uX_DBL_CONST(rcplog2E, uX_DBL_rcplog2E)
uX_DBL_CONST(rcplog10E, uX_DBL_rcplog10E)
uX_DBL_CONST(ln2, uX_DBL_ln2)
uX_DBL_CONST(ln10, uX_DBL_ln10)
uX_DBL_CONST(expest1, uX_DBL_expest1)
uX_DBL_CONST(expest2, uX_DBL_expest2)
uX_DBL_CONST(expest3, uX_DBL_expest3)
uX_DBL_CONST(expest4, uX_DBL_expest4)
uX_DBL_CONST(expest5, uX_DBL_expest5)
uX_DBL_CONST(expest6, uX_DBL_expest6)
uX_DBL_CONST(expest7, uX_DBL_expest7)
uX_DBL_CONST(logest0, uX_DBL_logest0)
uX_DBL_CONST(logest1, uX_DBL_logest1)
uX_DBL_CONST(logest2, uX_DBL_logest2)
uX_DBL_CONST(logest3, uX_DBL_logest3)
uX_DBL_CONST(logest4, uX_DBL_logest4)
uX_DBL_CONST(logest5, uX_DBL_logest5)
uX_DBL_CONST(logest6, uX_DBL_logest6)
uX_DBL_CONST(logest7, uX_DBL_logest7)

uX_DBL_CONST(Pi, uX_DBL_Pi)
uX_DBL_CONST(HalfPi, uX_DBL_HalfPi)
uX_DBL_CONST(2Pi, uX_DBL_2Pi)
uX_DBL_CONST(negPi, uX_DBL_negPi)
uX_DBL_CONST(negHalfPi, uX_DBL_negHalfPi)
uX_DBL_CONST(neg2Pi, uX_DBL_neg2Pi)
uX_DBL_CONST(rcpPi, uX_DBL_rcpPi)
uX_DBL_CONST(rcp2Pi, uX_DBL_rcp2Pi)
uX_DBL_CONST(Pidiv2, uX_DBL_Pidiv2)
uX_DBL_CONST(Pidiv4, uX_DBL_Pidiv4)
uX_DBL_CONST(Gravity, uX_DBL_EarthGravity)
uX_DBL_CONST(DegtoRad, uX_DBL_DegtoRad)
uX_DBL_CONST(RadtoDeg, uX_DBL_RadtoDeg)
uX_DBL_CONST(KmhtoMPSec, uX_DBL_KmpstoMilesph)

/*
uX_DBL_CONST(Max, uX_DBL_MAX)
uX_DBL_CONST(Min, uX_DBL_MIN)
uX_DBL_CONST(Eps, uX_DBL_EPS)
uX_DBL_CONST(Epsilon, uX_DBL_EPS)
uX_DBL_CONST(Radix, uX_DBL_RADIX)
uX_DBL_CONST(NormEps, uX_DBL_NORM_EPS)
uX_DBL_CONST(High, uX_DBL_HIGH)*/

#undef uX_DBL_CONST

// natural alignment to the base type

uX_DBL_NA_CONST(0, uX_DBL_0)
uX_DBL_NA_CONST(05, uX_DBL_0d5)
uX_DBL_NA_CONST(1, uX_DBL_1)
uX_DBL_NA_CONST(2, uX_DBL_2)
uX_DBL_NA_CONST(3, uX_DBL_3)
uX_DBL_NA_CONST(4, uX_DBL_4)
uX_DBL_NA_CONST(5, uX_DBL_5)
uX_DBL_NA_CONST(6, uX_DBL_6)
uX_DBL_NA_CONST(7, uX_DBL_7)
uX_DBL_NA_CONST(8, uX_DBL_8)
uX_DBL_NA_CONST(9, uX_DBL_9)

uX_DBL_NA_CONST(neg0, uX_DBL_neg0)
uX_DBL_NA_CONST(neg05, uX_DBL_neg0d5)
uX_DBL_NA_CONST(neg1, uX_DBL_neg1)
uX_DBL_NA_CONST(neg2, uX_DBL_neg2)
uX_DBL_NA_CONST(neg3, uX_DBL_neg3)
uX_DBL_NA_CONST(neg4, uX_DBL_neg4)
uX_DBL_NA_CONST(neg5, uX_DBL_neg5)
uX_DBL_NA_CONST(neg6, uX_DBL_neg6)
uX_DBL_NA_CONST(neg7, uX_DBL_neg7)
uX_DBL_NA_CONST(neg8, uX_DBL_neg8)
uX_DBL_NA_CONST(neg9, uX_DBL_neg9)

uX_DBL_NA_CONST(24_5, uX_DBL_24d5)
uX_DBL_NA_CONST(45, uX_DBL_45)
uX_DBL_NA_CONST(90, uX_DBL_90)
uX_DBL_NA_CONST(180, uX_DBL_180)
uX_DBL_NA_CONST(360, uX_DBL_360)

uX_DBL_NA_CONST(neg24_5, uX_DBL_neg24d5)
uX_DBL_NA_CONST(neg45, uX_DBL_neg45)
uX_DBL_NA_CONST(neg90, uX_DBL_neg90)
uX_DBL_NA_CONST(neg180, uX_DBL_neg180)
uX_DBL_NA_CONST(neg360, uX_DBL_neg360)

#undef uX_DBL_NA_CONST

#endif /*uX_USE_DOUBLE_PRECISION*/

/*
uX_REAL_CONST(Max, uX_REALMAX)
uX_REAL_CONST(Min, uX_REALMIN)
uX_REAL_CONST(Eps, uX_REALEPS)
uX_REAL_CONST(Epsilon, uX_REALEPS)
uX_REAL_CONST(NormEps, uX_REALNORM_EPS)
uX_REAL_CONST(High, uX_REALHIGH)*/

#undef uX_REAL_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*							uX_I8i constants							*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uX_I8_CONST(0, 0x00)
uX_I8_CONST(1, 0x01)
uX_I8_CONST(2, 0x02)
uX_I8_CONST(3, 0x03)
uX_I8_CONST(4, 0x04)
uX_I8_CONST(5, 0x05)
uX_I8_CONST(6, 0x06)
uX_I8_CONST(7, 0x07)
uX_I8_CONST(8, 0x08)
uX_I8_CONST(9, 0x09)

uX_I8_CONST(neg1, 0xff)
uX_I8_CONST(neg2, 0xfe)

/*
const __int8 e = uXint8_7;
const __int8 e = uXint8_neg1;*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*							uX_I32 constants							*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uX_I32_CONST(0, uX_I32_msk0)
uX_I32_CONST(1, uX_I32_msk1)
uX_I32_CONST(2, uX_I32_msk2)
uX_I32_CONST(3, uX_I32_msk3)
uX_I32_CONST(4, uX_I32_msk4)
uX_I32_CONST(5, uX_I32_msk5)
uX_I32_CONST(6, uX_I32_msk6)
uX_I32_CONST(7, uX_I32_msk7)
uX_I32_CONST(8, uX_I32_msk8)
uX_I32_CONST(9, uX_I32_msk9)

uX_I32_CONST(neg1, uX_I32_mskneg1)
uX_I32_CONST(neg2, uX_I32_mskneg2)
uX_I32_CONST(neg3, uX_I32_mskneg3)
uX_I32_CONST(neg4, uX_I32_mskneg4)
uX_I32_CONST(neg5, uX_I32_mskneg5)
uX_I32_CONST(neg6, uX_I32_mskneg6)
uX_I32_CONST(neg7, uX_I32_mskneg7)
uX_I32_CONST(neg8, uX_I32_mskneg8)
uX_I32_CONST(neg9, uX_I32_mskneg9)

uX_I32_CONST(RandMax, uX_FLT_maxRand_msk)

uX_I32_CONST(FSign, uX_FLT_Sign_msk)

#undef uX_I32_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*							uX_I64 constants							*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uX_I64_CONST(0, uX_I64_msk0)
uX_I64_CONST(1, uX_I64_msk1)
uX_I64_CONST(2, uX_I64_msk2)
uX_I64_CONST(3, uX_I64_msk3)
uX_I64_CONST(4, uX_I64_msk4)
uX_I64_CONST(5, uX_I64_msk5)
uX_I64_CONST(6, uX_I64_msk6)
uX_I64_CONST(7, uX_I64_msk7)
uX_I64_CONST(8, uX_I64_msk8)
uX_I64_CONST(9, uX_I64_msk9)

uX_I64_CONST(neg0, uX_I64_mskneg0)
uX_I64_CONST(neg1, uX_I64_mskneg1)
uX_I64_CONST(neg2, uX_I64_mskneg2)
uX_I64_CONST(neg3, uX_I64_mskneg3)
uX_I64_CONST(neg4, uX_I64_mskneg4)
uX_I64_CONST(neg5, uX_I64_mskneg5)
uX_I64_CONST(neg6, uX_I64_mskneg6)
uX_I64_CONST(neg7, uX_I64_mskneg7)
uX_I64_CONST(neg8, uX_I64_mskneg8)
uX_I64_CONST(neg9, uX_I64_mskneg9)

uX_I64_CONST(DSign, uX_DBL_Sign_msk)

#undef uX_I64_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*							uX_U32 constants							*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uX_U32_CONST(0, uX_U32_msk0)
uX_U32_CONST(1, uX_U32_msk1)
uX_U32_CONST(2, uX_U32_msk2)
uX_U32_CONST(3, uX_U32_msk3)
uX_U32_CONST(4, uX_U32_msk4)
uX_U32_CONST(5, uX_U32_msk5)
uX_U32_CONST(6, uX_U32_msk6)
uX_U32_CONST(7, uX_U32_msk7)
uX_U32_CONST(8, uX_U32_msk8)
uX_U32_CONST(9, uX_U32_msk9)

uX_U32_CONST(FMagic, uX_FLT_Magic_msk)
uX_U32_CONST(FSign, uX_FLT_Sign_msk)
uX_U32_CONST(FinvSign, uX_FLT_invSign_msk)

uX_U32_CONST(F0, uX_FLT_0_msk)
uX_U32_CONST(F1, uX_FLT_1_msk)

uX_U32_CONST(Fneg1, uX_FLT_neg1_msk)
uX_U32_CONST(Fneg0, uX_FLT_neg0_msk)

uX_U32_CONST(FNaNTest, uX_FLT_NaNTest_msk)

uX_U32_CONST(select_0, 0x00000000)
uX_U32_CONST(select_1, 0xfffffffF)

uX_U32_CONST(permute_0X, 0)
uX_U32_CONST(permute_0Y, 1)
uX_U32_CONST(permute_0Z, 2)
uX_U32_CONST(permute_0W, 3)
uX_U32_CONST(permute_1X, 4)
uX_U32_CONST(permute_1Y, 5)
uX_U32_CONST(permute_1Z, 6)
uX_U32_CONST(permute_1W, 7)

uX_U32_CONST(swizzle_X, 0)
uX_U32_CONST(swizzle_Y, 1)
uX_U32_CONST(swizzle_Z, 2)
uX_U32_CONST(swizzle_W, 3)
uX_U32_CONST(crmask_cr6, 0x000000f0)
uX_U32_CONST(crmask_cr6true, 0x00000080)
uX_U32_CONST(crmask_cr6false, 0x00000020)
uX_U32_CONST(crmask_cr6bounds, uXuint32_crmask_cr6false)

/*
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_PERMUTE_0X) = 0;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_PERMUTE_0Y) = 1;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_PERMUTE_0Z) = 2;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_PERMUTE_0W) = 3;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_PERMUTE_1X) = 4;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_PERMUTE_1Y) = 5;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_PERMUTE_1Z) = 6;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_PERMUTE_1W) = 7;

uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_SWIZZLE_X) = 0;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_SWIZZLE_Y) = 1;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_SWIZZLE_Z) = 2;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_SWIZZLE_W) = 3;

uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_CRMASK_CR6) = 0x000000F0;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_CRMASK_CR6TRUE) = 0x00000080;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_CRMASK_CR6FALSE) = 0x00000020;
uX_NMGLOBAL_CONST uX_NMALIGN(unsigned __int32 uX_CRMASK_CR6BOUNDS) = uX_CRMASK_CR6FALSE;*/

#undef uX_U32_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*							uX_U64 constants							*/
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uX_U64_CONST(0, 0)
uX_U64_CONST(1, 1)
uX_U64_CONST(2, 2)
uX_U64_CONST(3, 3)
uX_U64_CONST(4, 4)
uX_U64_CONST(5, 5)
uX_U64_CONST(6, 6)
uX_U64_CONST(7, 7)
uX_U64_CONST(8, 8)
uX_U64_CONST(9, 9)

uX_U64_CONST(neg0, -0) /* 0 UINT 64 */
uX_U64_CONST(neg1, -1) /* max UINT 64 */
uX_U64_CONST(neg2, -2) /* max UINT 64 minus 1 */
uX_U64_CONST(neg3, -3) /* max UINT 64 minus 2 */
uX_U64_CONST(neg4, -4) /* max UINT 64 minus 3 */
uX_U64_CONST(neg5, -5) /* max UINT 64 minus 4 */
uX_U64_CONST(neg6, -6) /* max UINT 64 minus 5 */
uX_U64_CONST(neg7, -7) /* max UINT 64 minus 6 */
uX_U64_CONST(neg8, -8) /* max UINT 64 minus 7 */
uX_U64_CONST(neg9, -9) /* max UINT 64 minus 8 */

uX_U64_CONST(DSign, uX_DBL_Sign_msk)

#undef uX_U64_CONST

uX_NMGLOBAL_CONST uX_ALIGNDECLN(size_t uXmsizet_cache_line_size) = 64;

/*
#include "uXConstants/uX128bitsConstants.h"
#include "uXConstants/uX256bitsConstants.h"
#include "uXConstants/uX512bitsConstants.h"*/

#endif // uX_CONSTANTS_H
