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

#ifndef uX_LOG_H
#define uX_LOG_H 1

#ifndef uX_TYPES_H
#include "types.h"
#endif  /* uX_TYPES_H */

#include <stdarg.h>
#include <stdlib.h>
#include <inttypes.h>

#define uX_CLOG_NONE 0
#define uX_CLOG_FATAL 1
#define uX_CLOG_ERROR 2
#define uX_CLOG_WARNING 3
#define uX_CLOG_INFO 4
#define uX_CLOG_DEBUG 5

#ifndef uX_CLOG_VISIBILITY
	#if defined(uX_ELF)
		#define uX_CLOG_VISIBILITY __attribute__((__visibility__("internal")))
	#elif defined(uX_MACH)
		#define uX_CLOG_VISIBILITY __attribute__((__visibility__("hidden")))
	#else
		#define uX_CLOG_VISIBILITY
	#endif
#endif

#ifndef uX_CLOG_ARGUMENTS_FORMAT
	#if defined(__GNUC__)
		#define uX_CLOG_ARGUMENTS_FORMAT __attribute__((__format__(__printf__, 1, 2)))
	#else
		#define uX_CLOG_ARGUMENTS_FORMAT
	#endif
#endif

namespace_uX
namespace_detail
EXTERN_CC_BEGIN
uX_PACK_PUSH_SIZE_T

uX_CLOG_VISIBILITY void uX_abi clog_vlog_debug(char const* module, char const* format, va_list args);
uX_CLOG_VISIBILITY void uX_abi clog_vlog_info(char const* module, char const* format, va_list args);
uX_CLOG_VISIBILITY void uX_abi clog_vlog_warning(char const* module, char const* format, va_list args);
uX_CLOG_VISIBILITY void uX_abi clog_vlog_error(char const* module, char const* format, va_list args);
uX_CLOG_VISIBILITY void uX_abi clog_vlog_fatal(char const* module, char const* format, va_list args);

uX_PACK_POP
EXTERN_CC_END
namespace_detail_end
namespace_uX_end

#define uX_CLOG_DEFINE_LOG_DEBUG(log_debug_function_name, module, level) \
	uX_CLOG_ARGUMENTS_FORMAT \
	inline static void log_debug_function_name(char const* format, ...) { \
		if (level >= uX_CLOG_DEBUG) { \
			va_list args; \
			va_start(args, format); \
			uX::detail::clog_vlog_debug(module, format, args); \
			va_end(args); \
		} \
	}

#define uX_CLOG_DEFINE_LOG_INFO(log_info_function_name, module, level) \
	uX_CLOG_ARGUMENTS_FORMAT \
	inline static void log_info_function_name(char const* format, ...) { \
		if (level >= uX_CLOG_INFO) { \
			va_list args; \
			va_start(args, format); \
			uX::detail::clog_vlog_info(module, format, args); \
			va_end(args); \
		} \
	}

#define uX_CLOG_DEFINE_LOG_WARNING(log_warning_function_name, module, level) \
	uX_CLOG_ARGUMENTS_FORMAT \
	inline static void log_warning_function_name(char const* format, ...) { \
		if (level >= uX_CLOG_WARNING) { \
			va_list args; \
			va_start(args, format); \
			uX::detail::clog_vlog_warning(module, format, args); \
			va_end(args); \
		} \
	}

#define uX_CLOG_DEFINE_LOG_ERROR(log_error_function_name, module, level) \
	uX_CLOG_ARGUMENTS_FORMAT \
	inline static void log_error_function_name(char const* format, ...) { \
		if (level >= uX_CLOG_ERROR) { \
			va_list args; \
			va_start(args, format); \
			uX::detail::clog_vlog_error(module, format, args); \
			va_end(args); \
		} \
	}

#define uX_CLOG_DEFINE_LOG_FATAL(log_fatal_function_name, module, level) \
	uX_CLOG_ARGUMENTS_FORMAT \
	inline static void log_fatal_function_name(char const* format, ...) { \
		if (level >= uX_CLOG_FATAL) { \
			va_list args; \
			va_start(args, format); \
			uX::detail::clog_vlog_fatal(module, format, args); \
			va_end(args); \
		} \
		abort(); \
	}

/*
#define CPUINFO_LOG_DEBUG_PARSERS 0

#ifndef CPUINFO_LOG_LEVEL
#define CPUINFO_LOG_LEVEL uX_CLOG_ERROR
#endif

uX_CLOG_DEFINE_LOG_DEBUG(cpuinfo_log_debug, "cpuinfo", CPUINFO_LOG_LEVEL);
uX_CLOG_DEFINE_LOG_INFO(cpuinfo_log_info, "cpuinfo", CPUINFO_LOG_LEVEL);
uX_CLOG_DEFINE_LOG_WARNING(cpuinfo_log_warning, "cpuinfo", CPUINFO_LOG_LEVEL);
uX_CLOG_DEFINE_LOG_ERROR(cpuinfo_log_error, "cpuinfo", CPUINFO_LOG_LEVEL);
uX_CLOG_DEFINE_LOG_FATAL(cpuinfo_log_fatal, "cpuinfo", CPUINFO_LOG_LEVEL);*/

#endif // uX_LOG_H
