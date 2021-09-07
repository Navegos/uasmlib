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

#ifndef uX_MISC_H
#define uX_MISC_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

namespace_uX
namespace_internal
EXTERN_C_BEGIN
uX_PACK_PUSH_STACK
extern uX_API float uX_ABI int8_as_float(int8_t Ini);

extern uX_API float uX_ABI uint8_as_float(uint8_t Ini);

extern uX_API float uX_ABI int16_as_float(int16_t Ini);

extern uX_API float uX_ABI uint16_as_float(uint16_t Ini);

extern uX_API float uX_ABI int32_as_float(int32_t Ini);

extern uX_API float uX_ABI uint32_as_float(uint32_t Ini);

extern uX_API double uX_ABI int8_as_double(int8_t Ini);

extern uX_API double uX_ABI uint8_as_double(uint8_t Ini);

extern uX_API double uX_ABI int16_as_double(int16_t Ini);

extern uX_API double uX_ABI uint16_as_double(uint16_t Ini);

extern uX_API double uX_ABI int32_as_double(int32_t Ini);

extern uX_API double uX_ABI uint32_as_double(uint32_t Ini);

extern uX_API double uX_ABI int64_as_double(int64_t Ini);

extern uX_API double uX_ABI uint64_as_double(uint64_t Ini);
uX_PACK_POP
EXTERN_C_END
namespace_internal_end
namespace_uX_end

#endif // uX_MISC_H
