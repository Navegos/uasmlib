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

#include "../include/uXlog.h"

#include <stdarg.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#if defined(uX_WINDOWS)
// Exclude rarely-used stuff from Windows headers
#ifndef VC_EXTRALEAN
#define VC_EXTRALEAN
#endif
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#ifndef NOMINMAX
#define NOMINMAX
#endif
#ifndef STRICT
#define STRICT
#endif
#ifndef _WINDOWS_
# pragma warning( push )
#if __INTEL_COMPILER
# pragma warning( disable: 271 310 )
#elif defined(_MSC_VER)
//#include "Runtime/Core/Public/Windows/AllowWindowsPlatformTypes.h"
#pragma warning(disable : 4005)
#endif
#pragma pack(push)
#pragma pack(uX_SIZE_T_SIZE)
#include <windows.h>  // IsProcessorFeaturePresent
#pragma pack (pop)
# pragma warning( pop )
//#include "Runtime/Core/Public/Windows/HideWindowsPlatformTypes.h"
#endif // _WINDOWS_
#else
	#include <unistd.h>
#endif

#ifdef uX_ANDROID
	#include <android/log.h>
#endif

#ifndef uX_CLOG_LOG_TO_STDIO
	#ifdef uX_ANDROID
		#define uX_CLOG_LOG_TO_STDIO 0
	#else
		#define uX_CLOG_LOG_TO_STDIO 1
	#endif
#endif


/* Messages up to this size are formatted entirely on-stack, and don't allocate heap memory */
#define uX_CLOG_STACK_BUFFER_SIZE 1024

#define uX_CLOG_FATAL_PREFIX "Fatal error: "
#define uX_CLOG_FATAL_PREFIX_LENGTH 13
#define uX_CLOG_FATAL_PREFIX_FORMAT "Fatal error in %s: "
#define uX_CLOG_ERROR_PREFIX "Error: "
#define uX_CLOG_ERROR_PREFIX_LENGTH 7
#define uX_CLOG_ERROR_PREFIX_FORMAT "Error in %s: "
#define uX_CLOG_WARNING_PREFIX "Warning: "
#define uX_CLOG_WARNING_PREFIX_LENGTH 9
#define uX_CLOG_WARNING_PREFIX_FORMAT "Warning in %s: "
#define uX_CLOG_INFO_PREFIX "Note: "
#define uX_CLOG_INFO_PREFIX_LENGTH 6
#define uX_CLOG_INFO_PREFIX_FORMAT "Note (%s): "
#define uX_CLOG_DEBUG_PREFIX "Debug: "
#define uX_CLOG_DEBUG_PREFIX_LENGTH 7
#define uX_CLOG_DEBUG_PREFIX_FORMAT "Debug (%s): "
#define uX_CLOG_SUFFIX_LENGTH 1

namespace_uX
namespace_detail
EXTERN_CC_BEGIN
uX_PACK_PUSH_SIZE_T

void uX_abi clog_vlog_fatal(char const* module, char const* format, va_list args) {
	#if defined(uX_ANDROID) && !uX_CLOG_LOG_TO_STDIO
		__android_log_vprint(ANDROID_LOG_FATAL, module, format, args);
	#else
		char stack_buffer[uX_CLOG_STACK_BUFFER_SIZE];
		char* heap_buffer = nullptr;
		char* out_buffer = &stack_buffer[0];

		/* The first call to vsnprintf will clobber args, thus need a copy in case a second vsnprintf call is needed */
		va_list args_copy;
		va_copy(args_copy, args);

		int prefix_chars = uX_CLOG_FATAL_PREFIX_LENGTH;
		if (module == nullptr) {
			memcpy(stack_buffer, uX_CLOG_FATAL_PREFIX, uX_CLOG_FATAL_PREFIX_LENGTH);
		} else {
			prefix_chars = snprintf(stack_buffer, uX_CLOG_STACK_BUFFER_SIZE, uX_CLOG_FATAL_PREFIX_FORMAT, module);
			if (prefix_chars < 0) {
				/* Format error in prefix (possible if prefix is modified): skip prefix and continue as if nothing happened. */
				prefix_chars = 0;
			}
		}

		int format_chars;
		if (prefix_chars + uX_CLOG_SUFFIX_LENGTH >= uX_CLOG_STACK_BUFFER_SIZE) {
			/*
			 * Prefix + suffix alone would overflow the on-stack buffer, thus need to use on-heap buffer.
			 * Do not even try to format the string into on-stack buffer.
			 */
			format_chars = vsnprintf(nullptr, 0, format, args);
		} else {
			format_chars =
				vsnprintf(
					&stack_buffer[prefix_chars],
					uX_CLOG_STACK_BUFFER_SIZE - prefix_chars - uX_CLOG_SUFFIX_LENGTH,
					format,
					args);
		}
		if (format_chars < 0) {
			/* Format error in the message: silently ignore this particular message. */
			goto cleanup;
		}
		if (prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH > uX_CLOG_STACK_BUFFER_SIZE) {
			/* Allocate a buffer on heap, and vsnprintf to this buffer */
			heap_buffer = reinterpret_cast<char*>(malloc(prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH));
			if (heap_buffer == nullptr) {
				goto cleanup;
			}

			if (prefix_chars > uX_CLOG_STACK_BUFFER_SIZE) {
				/* Prefix didn't fit into on-stack buffer, re-format it again to on-heap buffer */
				snprintf(heap_buffer, prefix_chars + 1 /* for '\0'-terminator */, uX_CLOG_FATAL_PREFIX_FORMAT, module);
			} else {
				/* Copy pre-formatted prefix from on-stack buffer to on-heap buffer */
				memcpy(heap_buffer, stack_buffer, prefix_chars);
			}
			vsnprintf(heap_buffer + prefix_chars, format_chars + uX_CLOG_SUFFIX_LENGTH, format, args_copy);
			out_buffer = heap_buffer;
		}
		out_buffer[prefix_chars + format_chars] = '\n';
		#ifdef uX_WINDOWS
			DWORD bytes_written;
			WriteFile(
				GetStdHandle(STD_ERROR_HANDLE),
				out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH,
				&bytes_written, nullptr);
		#else
			write(STDERR_FILENO, out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH);
		#endif

cleanup:
		free(heap_buffer);
		va_end(args_copy);
	#endif
}

void uX_abi clog_vlog_error(char const* module, char const* format, va_list args) {
	#if defined(uX_ANDROID) && !uX_CLOG_LOG_TO_STDIO
		__android_log_vprint(ANDROID_LOG_ERROR, module, format, args);
	#else
		char stack_buffer[uX_CLOG_STACK_BUFFER_SIZE];
		char* heap_buffer = nullptr;
		char* out_buffer = &stack_buffer[0];

		/* The first call to vsnprintf will clobber args, thus need a copy in case a second vsnprintf call is needed */
		va_list args_copy;
		va_copy(args_copy, args);

		int prefix_chars = uX_CLOG_ERROR_PREFIX_LENGTH;
		if (module == nullptr) {
			memcpy(stack_buffer, uX_CLOG_ERROR_PREFIX, uX_CLOG_ERROR_PREFIX_LENGTH);
		} else {
			prefix_chars = snprintf(stack_buffer, uX_CLOG_STACK_BUFFER_SIZE, uX_CLOG_ERROR_PREFIX_FORMAT, module);
			if (prefix_chars < 0) {
				/* Format error in prefix (possible if prefix is modified): skip prefix and continue as if nothing happened. */
				prefix_chars = 0;
			}
		}

		int format_chars;
		if (prefix_chars + uX_CLOG_SUFFIX_LENGTH >= uX_CLOG_STACK_BUFFER_SIZE) {
			/*
			 * Prefix + suffix alone would overflow the on-stack buffer, thus need to use on-heap buffer.
			 * Do not even try to format the string into on-stack buffer.
			 */
			format_chars = vsnprintf(nullptr, 0, format, args);
		} else {
			format_chars =
				vsnprintf(
					&stack_buffer[prefix_chars],
					uX_CLOG_STACK_BUFFER_SIZE - prefix_chars - uX_CLOG_SUFFIX_LENGTH,
					format,
					args);
		}
		if (format_chars < 0) {
			/* Format error in the message: silently ignore this particular message. */
			goto cleanup;
		}
		if (prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH > uX_CLOG_STACK_BUFFER_SIZE) {
			/* Allocate a buffer on heap, and vsnprintf to this buffer */
			heap_buffer = reinterpret_cast<char*>(malloc(prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH));
			if (heap_buffer == nullptr) {
				goto cleanup;
			}

			if (prefix_chars > uX_CLOG_STACK_BUFFER_SIZE) {
				/* Prefix didn't fit into on-stack buffer, re-format it again to on-heap buffer */
				snprintf(heap_buffer, prefix_chars + 1 /* for '\0'-terminator */, uX_CLOG_ERROR_PREFIX_FORMAT, module);
			} else {
				/* Copy pre-formatted prefix from on-stack buffer to on-heap buffer */
				memcpy(heap_buffer, stack_buffer, prefix_chars);
			}
			vsnprintf(heap_buffer + prefix_chars, format_chars + uX_CLOG_SUFFIX_LENGTH, format, args_copy);
			out_buffer = heap_buffer;
		}
		out_buffer[prefix_chars + format_chars] = '\n';
		#ifdef uX_WINDOWS
			DWORD bytes_written;
			WriteFile(
				GetStdHandle(STD_ERROR_HANDLE),
				out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH,
				&bytes_written, nullptr);
		#else
			write(STDERR_FILENO, out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH);
		#endif

cleanup:
		free(heap_buffer);
		va_end(args_copy);
	#endif
}

void uX_abi clog_vlog_warning(char const* module, char const* format, va_list args) {
	#if defined(uX_ANDROID) && !uX_CLOG_LOG_TO_STDIO
		__android_log_vprint(ANDROID_LOG_WARN, module, format, args);
	#else
		char stack_buffer[uX_CLOG_STACK_BUFFER_SIZE];
		char* heap_buffer = nullptr;
		char* out_buffer = &stack_buffer[0];

		/* The first call to vsnprintf will clobber args, thus need a copy in case a second vsnprintf call is needed */
		va_list args_copy;
		va_copy(args_copy, args);

		int prefix_chars = uX_CLOG_WARNING_PREFIX_LENGTH;
		if (module == nullptr) {
			memcpy(stack_buffer, uX_CLOG_WARNING_PREFIX, uX_CLOG_WARNING_PREFIX_LENGTH);
		} else {
			prefix_chars = snprintf(stack_buffer, uX_CLOG_STACK_BUFFER_SIZE, uX_CLOG_WARNING_PREFIX_FORMAT, module);
			if (prefix_chars < 0) {
				/* Format error in prefix (possible if prefix is modified): skip prefix and continue as if nothing happened. */
				prefix_chars = 0;
			}
		}

		int format_chars;
		if (prefix_chars + uX_CLOG_SUFFIX_LENGTH >= uX_CLOG_STACK_BUFFER_SIZE) {
			/*
			 * Prefix + suffix alone would overflow the on-stack buffer, thus need to use on-heap buffer.
			 * Do not even try to format the string into on-stack buffer.
			 */
			format_chars = vsnprintf(nullptr, 0, format, args);
		} else {
			format_chars =
				vsnprintf(
					&stack_buffer[prefix_chars],
					uX_CLOG_STACK_BUFFER_SIZE - prefix_chars - uX_CLOG_SUFFIX_LENGTH,
					format,
					args);
		}
		if (format_chars < 0) {
			/* Format error in the message: silently ignore this particular message. */
			goto cleanup;
		}
		if (prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH > uX_CLOG_STACK_BUFFER_SIZE) {
			/* Allocate a buffer on heap, and vsnprintf to this buffer */
			heap_buffer = reinterpret_cast<char*>(malloc(prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH));
			if (heap_buffer == nullptr) {
				goto cleanup;
			}

			if (prefix_chars > uX_CLOG_STACK_BUFFER_SIZE) {
				/* Prefix didn't fit into on-stack buffer, re-format it again to on-heap buffer */
				snprintf(heap_buffer, prefix_chars + 1 /* for '\0'-terminator */, uX_CLOG_WARNING_PREFIX_FORMAT, module);
			} else {
				/* Copy pre-formatted prefix from on-stack buffer to on-heap buffer */
				memcpy(heap_buffer, stack_buffer, prefix_chars);
			}
			vsnprintf(heap_buffer + prefix_chars, format_chars + uX_CLOG_SUFFIX_LENGTH, format, args_copy);
			out_buffer = heap_buffer;
		}
		out_buffer[prefix_chars + format_chars] = '\n';
		#ifdef uX_WINDOWS
			DWORD bytes_written;
			WriteFile(
				GetStdHandle(STD_ERROR_HANDLE),
				out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH,
				&bytes_written, nullptr);
		#else
			write(STDERR_FILENO, out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH);
		#endif

cleanup:
		free(heap_buffer);
		va_end(args_copy);
	#endif
}

void uX_abi clog_vlog_info(char const* module, char const* format, va_list args) {
	#if defined(uX_ANDROID) && !uX_CLOG_LOG_TO_STDIO
		__android_log_vprint(ANDROID_LOG_INFO, module, format, args);
	#else
		char stack_buffer[uX_CLOG_STACK_BUFFER_SIZE];
		char* heap_buffer = nullptr;
		char* out_buffer = &stack_buffer[0];

		/* The first call to vsnprintf will clobber args, thus need a copy in case a second vsnprintf call is needed */
		va_list args_copy;
		va_copy(args_copy, args);

		int prefix_chars = uX_CLOG_INFO_PREFIX_LENGTH;
		if (module == nullptr) {
			memcpy(stack_buffer, uX_CLOG_INFO_PREFIX, uX_CLOG_INFO_PREFIX_LENGTH);
		} else {
			prefix_chars = snprintf(stack_buffer, uX_CLOG_STACK_BUFFER_SIZE, uX_CLOG_INFO_PREFIX_FORMAT, module);
			if (prefix_chars < 0) {
				/* Format error in prefix (possible if prefix is modified): skip prefix and continue as if nothing happened. */
				prefix_chars = 0;
			}
		}

		int format_chars;
		if (prefix_chars + uX_CLOG_SUFFIX_LENGTH >= uX_CLOG_STACK_BUFFER_SIZE) {
			/*
			 * Prefix + suffix alone would overflow the on-stack buffer, thus need to use on-heap buffer.
			 * Do not even try to format the string into on-stack buffer.
			 */
			format_chars = vsnprintf(nullptr, 0, format, args);
		} else {
			format_chars =
				vsnprintf(
					&stack_buffer[prefix_chars],
					uX_CLOG_STACK_BUFFER_SIZE - prefix_chars - uX_CLOG_SUFFIX_LENGTH,
					format,
					args);
		}
		if (format_chars < 0) {
			/* Format error in the message: silently ignore this particular message. */
			goto cleanup;
		}
		if (prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH > uX_CLOG_STACK_BUFFER_SIZE) {
			/* Allocate a buffer on heap, and vsnprintf to this buffer */
			heap_buffer = reinterpret_cast<char*>(malloc(prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH));
			if (heap_buffer == nullptr) {
				goto cleanup;
			}

			if (prefix_chars > uX_CLOG_STACK_BUFFER_SIZE) {
				/* Prefix didn't fit into on-stack buffer, re-format it again to on-heap buffer */
				snprintf(heap_buffer, prefix_chars + 1 /* for '\0'-terminator */, uX_CLOG_INFO_PREFIX_FORMAT, module);
			} else {
				/* Copy pre-formatted prefix from on-stack buffer to on-heap buffer */
				memcpy(heap_buffer, stack_buffer, prefix_chars);
			}
			vsnprintf(heap_buffer + prefix_chars, format_chars + uX_CLOG_SUFFIX_LENGTH, format, args_copy);
			out_buffer = heap_buffer;
		}
		out_buffer[prefix_chars + format_chars] = '\n';
		#ifdef uX_WINDOWS
			DWORD bytes_written;
			WriteFile(
				GetStdHandle(STD_OUTPUT_HANDLE),
				out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH,
				&bytes_written, nullptr);
		#else
			write(STDOUT_FILENO, out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH);
		#endif

cleanup:
		free(heap_buffer);
		va_end(args_copy);
	#endif
}

void uX_abi clog_vlog_debug(char const* module, char const* format, va_list args) {
	#if defined(uX_ANDROID) && !uX_CLOG_LOG_TO_STDIO
		__android_log_vprint(ANDROID_LOG_DEBUG, module, format, args);
	#else
		char stack_buffer[uX_CLOG_STACK_BUFFER_SIZE];
		char* heap_buffer = nullptr;
		char* out_buffer = &stack_buffer[0];

		/* The first call to vsnprintf will clobber args, thus need a copy in case a second vsnprintf call is needed */
		va_list args_copy;
		va_copy(args_copy, args);

		int prefix_chars = uX_CLOG_DEBUG_PREFIX_LENGTH;
		if (module == nullptr) {
			memcpy(stack_buffer, uX_CLOG_DEBUG_PREFIX, uX_CLOG_DEBUG_PREFIX_LENGTH);
		} else {
			prefix_chars = snprintf(stack_buffer, uX_CLOG_STACK_BUFFER_SIZE, uX_CLOG_DEBUG_PREFIX_FORMAT, module);
			if (prefix_chars < 0) {
				/* Format error in prefix (possible if prefix is modified): skip prefix and continue as if nothing happened. */
				prefix_chars = 0;
			}
		}

		int format_chars;
		if (prefix_chars + uX_CLOG_SUFFIX_LENGTH >= uX_CLOG_STACK_BUFFER_SIZE) {
			/*
			 * Prefix + suffix alone would overflow the on-stack buffer, thus need to use on-heap buffer.
			 * Do not even try to format the string into on-stack buffer.
			 */
			format_chars = vsnprintf(nullptr, 0, format, args);
		} else {
			format_chars =
				vsnprintf(
					&stack_buffer[prefix_chars],
					uX_CLOG_STACK_BUFFER_SIZE - prefix_chars - uX_CLOG_SUFFIX_LENGTH,
					format,
					args);
		}
		if (format_chars < 0) {
			/* Format error in the message: silently ignore this particular message. */
			goto cleanup;
		}
		if (prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH > uX_CLOG_STACK_BUFFER_SIZE) {
			/* Allocate a buffer on heap, and vsnprintf to this buffer */
			heap_buffer = reinterpret_cast<char*>(malloc(prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH));
			if (heap_buffer == nullptr) {
				goto cleanup;
			}

			if (prefix_chars > uX_CLOG_STACK_BUFFER_SIZE) {
				/* Prefix didn't fit into on-stack buffer, re-format it again to on-heap buffer */
				snprintf(heap_buffer, prefix_chars + 1 /* for '\0'-terminator */, uX_CLOG_DEBUG_PREFIX_FORMAT, module);
			} else {
				/* Copy pre-formatted prefix from on-stack buffer to on-heap buffer */
				memcpy(heap_buffer, stack_buffer, prefix_chars);
			}
			vsnprintf(heap_buffer + prefix_chars, format_chars + uX_CLOG_SUFFIX_LENGTH, format, args_copy);
			out_buffer = heap_buffer;
		}
		out_buffer[prefix_chars + format_chars] = '\n';
		#ifdef uX_WINDOWS
			DWORD bytes_written;
			WriteFile(
				GetStdHandle(STD_OUTPUT_HANDLE),
				out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH,
				&bytes_written, nullptr);
		#else
			write(STDOUT_FILENO, out_buffer, prefix_chars + format_chars + uX_CLOG_SUFFIX_LENGTH);
		#endif

cleanup:
		free(heap_buffer);
		va_end(args_copy);
	#endif
}

uX_PACK_POP
EXTERN_C_END
namespace_detail_end
namespace_uX_end
