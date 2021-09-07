/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2021 (c) Navegos QA - optimized library                 / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#include "uXmisc.h"

namespace_uX
namespace_internal
EXTERN_C_BEGIN
uX_PACK_PUSH_STACK
float uX_ABI int8_as_float(int8_t Ini)
{
	const union
	{
		int8_t _i[4];
		float _f;
	} u = {{ Ini, (int8_t)0x0, (int8_t)0x0, (int8_t)0x0 }};
	return u._f;
	/*
	#ifdef __cplusplus
		return *reinterpret_cast<float *>(&Ini);
	#else
		return *(float *)(&Ini);
	#endif*/
}

float uX_ABI uint8_as_float(uint8_t Ini)
{
	const union
	{
		uint8_t _i[4];
		float _f;
	} u = {{ Ini, (uint8_t)0x0, (uint8_t)0x0, (uint8_t)0x0 }};
	return u._f;
	/*
	#ifdef __cplusplus
		return *reinterpret_cast<float *>(&Ini);
	#else
		return *(float *)(&Ini);
	#endif*/
}

float uX_ABI int16_as_float(int16_t Ini)
{
	const union
	{
		int16_t _i[2];
		float _f;
	} u = {{ Ini, (int16_t)0x0 }};
	return u._f;
	/*
	#ifdef __cplusplus
		return *reinterpret_cast<float *>(&Ini);
	#else
		return *(float *)(&Ini);
	#endif*/
}

float uX_ABI uint16_as_float(uint16_t Ini)
{
	const union
	{
		uint16_t _i[2];
		float _f;
	} u = {{ Ini, (uint16_t)0x0 }};
	return u._f;
	/*
	#ifdef __cplusplus
		return *reinterpret_cast<float *>(&Ini);
	#else
		return *(float *)(&Ini);
	#endif*/
}

float uX_ABI int32_as_float(int32_t Ini)
{
	const union
	{
		int32_t _i;
		float _f;
	} u = {Ini};
	return u._f;
/*
#ifdef __cplusplus
	return *reinterpret_cast<float *>(&Ini);
#else
	return *(float *)(&Ini);
#endif*/
}

float uX_ABI uint32_as_float(uint32_t Ini)
{
	const union
	{
		uint32_t _i;
		float _f;
	} u = {Ini};
	return u._f;
/*
#ifdef __cplusplus
	return *reinterpret_cast<float *>(&Ini);
#else
	return *(float *)(&Ini);
#endif*/
}

double uX_ABI int8_as_double(int8_t Ini)
{
	const union
	{
		int8_t _i[8];
		double _f;
	} u = {{ Ini, (int8_t)0x0, (int8_t)0x0, (int8_t)0x0, (int8_t)0x0, (int8_t)0x0, (int8_t)0x0, (int8_t)0x0 }};
	return u._f;
	/*
	#ifdef __cplusplus
		return *reinterpret_cast<double *>(&Ini);
	#else
		return *(double *)(&Ini);
	#endif*/
}

double uX_ABI uint8_as_double(uint8_t Ini)
{
	const union
	{
		uint8_t _i[8];
		double _f;
	} u = {{ Ini, (uint8_t)0x0, (uint8_t)0x0, (uint8_t)0x0, (uint8_t)0x0, (uint8_t)0x0, (uint8_t)0x0, (uint8_t)0x0 }};
	return u._f;
	/*
	#ifdef __cplusplus
		return *reinterpret_cast<double *>(&Ini);
	#else
		return *(double *)(&Ini);
	#endif*/
}

double uX_ABI int16_as_double(int16_t Ini)
{
	const union
	{
		int16_t _i[4];
		double _f;
	} u = {{ Ini, (int16_t)0x0, (int16_t)0x0, (int16_t)0x0 }};
	return u._f;
	/*
	#ifdef __cplusplus
		return *reinterpret_cast<double *>(&Ini);
	#else
		return *(double *)(&Ini);
	#endif*/
}

double uX_ABI uint16_as_double(uint16_t Ini)
{
	const union
	{
		uint16_t _i[4];
		double _f;
	} u = {{ Ini, (uint16_t)0x0, (uint16_t)0x0, (uint16_t)0x0 }};
	return u._f;
	/*
	#ifdef __cplusplus
		return *reinterpret_cast<double *>(&Ini);
	#else
		return *(double *)(&Ini);
	#endif*/
}

double uX_ABI int32_as_double(int32_t Ini)
{
	const union
	{
		int32_t _i[2];
		double _f;
	} u = {{ Ini, 0x0 }};
	return u._f;
/*
#ifdef __cplusplus
	return *reinterpret_cast<double *>(&Ini);
#else
	return *(double *)(&Ini);
#endif*/
}

double uX_ABI uint32_as_double(uint32_t Ini)
{
	const union
	{
		uint32_t _i[2];
		double _f;
	} u = {{ Ini, (uint32_t)0x0 }};
	return u._f;
/*
#ifdef __cplusplus
	return *reinterpret_cast<double *>(&Ini);
#else
	return *(double *)(&Ini);
#endif*/
}

double uX_ABI int64_as_double(int64_t Ini)
{
	const union
	{
		int64_t _i;
		double _f;
	} u = {Ini};
	return u._f;
/*
#ifdef __cplusplus
	return *reinterpret_cast<double *>(&Ini);
#else
	return *(double *)(&Ini);
#endif*/
}

double uX_ABI uint64_as_double(uint64_t Ini)
{
	const union
	{
		uint64_t _i;
		double _f;
	} u = {Ini};
	return u._f;
/*
#ifdef __cplusplus
	return *reinterpret_cast<double *>(&Ini);
#else
	return *(double *)(&Ini);
#endif*/
}
uX_PACK_POP
EXTERN_C_END
namespace_internal_end
namespace_uX_end