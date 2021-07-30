
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

#pragma once

#ifndef uX_ASSERT_H
#define uX_ASSERT_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#include "assert.h"

namespace_uX

// compile time assert

#if(defined(__GNUC__) && (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 7))) || (uX_PS4) || (uX_APPLE_FAMILY) || (uX_SWITCH) || (uX_CLANG && uX_ARM)
#define uX_COMPILE_TIME_ASSERT(Expr) typedef char uXCompileTimeAssert_Dummy[(Expr) ? 1 : -1] __attribute__((unused))
#else
#define uX_COMPILE_TIME_ASSERT(Expr) typedef char uXCompileTimeAssert_Dummy[(Expr) ? 1 : -1]
#endif

#ifdef __cplusplus
// Template for compile-time error messages
template <bool> class uXCompileTimeAssert
{
public: uX_TARGET_CPU_GPU uXCompileTimeAssert() {};
};

template <> class uXCompileTimeAssert<false>
{    // generate compile-time error if false
private: uX_TARGET_CPU_GPU uXCompileTimeAssert() {};
};
#endif //__cplusplus

namespace_internal
EXTERN_CC_BEGIN
uX_PACK_PUSH_STACK

/**
\brief Prints the string literally (does not consume % specifier), trying to make sure it's visible to the app
programmer
*/
extern uX_API void uX_ABI printString(char const* const);
extern uX_API void uX_ABI asserthandler(char const* const Msg, char const* const Expr, char const* const File, int Line, bool& Ignore);

uX_PACK_POP
EXTERN_CC_END
namespace_internal_end

/*
template<class T> class uXSTCompileTimeAssert
{
public: uX_TARGET_CPU_GPU uXSTCompileTimeAssert() uX_CPU_AMP { static_assert(T, uX_Stringer((T) file: __FILE__ line : __LINE__)); };
};*/

// avoid unreferenced parameter warning
// preferred solution: omit the parameter's name from the declaration
//template <class T>
//uX_TARGET_CPU_GPU_INLINE void uX_UNUSED(T const&) uX_CPU_AMP {}

EXTERN_CC_BEGIN
uX_PACK_PUSH_STACK

/* Base class to handle assert failures */
class AssertHandler
{
public:
    virtual ~AssertHandler()
    {}
    virtual void uX_ABI operator()(char const* const Msg, char const* const Expr, char const* const File, int Line, bool& Ignore) = 0;
    virtual void uX_ABI operator()(char const* const Msg, char const* const Expr, char const* const File, int Line) = 0;
};

extern uX_API AssertHandler& uX_ABI GetAssertHandler();
extern uX_API void uX_ABI SetAssertHandler(AssertHandler& Handler);

uX_PACK_POP
EXTERN_CC_END

// Ensure that the application hasn't tweaked the pack value to less than 8, which would break
// matching between the API headers and the binaries
// This assert works on win32/win64, but may need further specialization on other platforms.
// Some GCC compilers need the compiler flag -malign-double to be set.
// Apparently the apple-clang-llvm compiler doesn't support malign-double.
#if uX_PS4 || uX_APPLE_FAMILY || (uX_CLANG && !uX_ARM)
struct uXPackValidation
{
    char _;
    long a;
};
#elif uX_ANDROID || (uX_CLANG && uX_ARM)
struct uXPackValidation
{
    char _;
    double a;
};
#else
struct uXPackValidation
{
    char _;
    long long a;
};
#endif

namespace_uX_end

/*
#define uX_STASSERT(ctExpr) typedef char XMStaticAssert[(ctExpr)]
#define uX_STMSSG_ASSERT(ctExpr, mssg)  typedef char XMStaticAssert[(ctExpr)] char (mssg)*/

#define uX_STATIC_ASSERT(Expr) static_assert(Expr, uX_Stringer((Expr) file: __FILE__ line: __LINE__))
#define uX_STATIC_ASSERT_MESSAGE(Expr, message) static_assert(Expr, uX_Stringer(message (Expr) file: __FILE__ line : __LINE__))

#define uX_ST_ASSERT(Expr) static_assert(Expr, uX_Stringer((Expr) file: __FILE__ line: __LINE__))
#define uX_ST_ASSERT_MESSAGE(Expr, message) static_assert(Expr, uX_Stringer(message (Expr) file: __FILE__ line: __LINE__))

#define uX_ST_ASSERTIF(Expr) if(!Expr) { static_assert(false, uX_Stringer((Expr) file: __FILE__ line: __LINE__)); }
#define uX_ST_ASSERTIF_MESSAGE(Expr, message) if(!Expr) { static_assert(false, uX_Stringer(message (Expr) file: __FILE__ line: __LINE__)); }

#if uX_VC
#define uX_code_analysis_assume(Expr)                                                                                   \
    __analysis_assume(!!(Expr)) // This macro will be used to get rid of analysis warning messages if a uX_ASSERT is used
// to "guard" illegal mem access, for example.
#else
#define uX_code_analysis_assume(Expr)
#endif

#if (defined(uX_ENABLE_ASSERTS) && (uX_ENABLE_ASSERTS >= 1))
#   define uX_assert_msg(Expr, Msg)                                                                             \
    {                                                                                                           \
        static bool _ignore = false;                                                                            \
        ((void)((!!(Expr)) || (!_ignore &&                                                                      \
        (uX::GetAssertHandler()(uX_Stringer(Msg), uX_Stringer(Expr), __FILE__, __LINE__, _ignore), false))));   \
        uX_code_analysis_assume(Expr);                                                                          \
    }

#   define uX_ensure_msg(Expr,Msg)                      ((!!(Expr)) || (uX::GetAssertHandler()(uX_Stringer(Msg), uX_Stringer(Expr), __FILE__, __LINE__), false))
#   define uX_ensure_return_msg(Expr,Msg)               if(!(Expr)) { uX_assert_msg(Expr, Msg); return; }
#   define uX_ensure_return_null_msg(Expr,Msg)          if(!(Expr)) { uX_assert_msg(Expr, Msg); return 0; }
#   define uX_ensure_return_val_msg(Expr,Msg,Val)       if(!(Expr)) { uX_assert_msg(Expr, Msg); return Val; }

#   define uX_assert(Expr)                              uX_assert_msg(Expr, uX_Stringer(""))
#   define uX_ensure(Expr)                              uX_ensure_msg(Expr, uX_Stringer(""))
#   define uX_ensure_return(Expr)                       if(!(Expr)) { uX_assert(Expr); return; }
#   define uX_ensure_return_null(Expr)                  if(!(Expr)) { uX_assert(Expr); return 0; }
#   define uX_ensure_return_val(Expr,Val)               if(!(Expr)) { uX_assert(Expr); return Val; }
#else
#   define uX_assert_msg(Expr, Msg)                     ((void)0)
#   define uX_ensure_msg(Expr,Msg)                      (!!(Expr))
#   define uX_ensure_return_msg(Expr,Msg)               if(!(Expr)) { return; }
#   define uX_ensure_return_null_msg(Expr,Msg)          if(!(Expr)) { return 0; }
#   define uX_ensure_return_val_msg(Expr,Msg,Val)       if(!(Expr)) { return Val; }

#   define uX_assert(Expr)                              ((void)0)
#   define uX_ensure(Expr)                              (!!(Expr))
#   define uX_ensure_return(Expr)                       if(!(Expr)) { return; }
#   define uX_ensure_return_null(Expr)                  if(!(Expr)) { return 0; }
#   define uX_ensure_return_val(Expr,Val)               if(!(Expr)) { return Val; }
#endif

#endif // uX_ASSERT_H
