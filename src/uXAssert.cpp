
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
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

#include "uXassert.h"

#include <stdio.h>

#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
#include <crtdbg.h>
#include <stdlib.h>
#elif uX_SWITCH
#include "switch/uXSwitchAbort.h"
#endif

#if (defined(uX_ANDROID) && (uX_ANDROID >= 1))
#include <android/log.h>
#endif

namespace_uX
namespace_internal
uX_PACK_PUSH_STACK

EXTERN_CC_BEGIN
void uX_ABI printString(char const* const str)
{
#if uX_ANDROID
    __android_log_print(ANDROID_LOG_INFO, "PrintString", "%s", str);
#else
    puts(str); // do not use printf here, since str can contain multiple % signs that will not be printed
#   if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
    OutputDebugStringA(str);
    OutputDebugStringA("\n");
#   endif
#endif
}

void uX_ABI asserthandler(char const* const Msg, char const* const Expr, char const* const File, int Line, bool& Ignore)
{
    uX_UNUSED(Ignore); // is used only in debug windows config
    char buffer[1024];
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
    sprintf_s(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#else
    sprintf(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#endif
#if uX_ANDROID
    __android_log_print(ANDROID_LOG_INFO, "uX_asserthandler", "%s", buffer);
#else
    puts(buffer); // do not use printf here, since str can contain multiple % signs that will not be printed
#   if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
    OutputDebugStringA(buffer);
    OutputDebugStringA("\n");
#   endif
#endif
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1)) && (defined(uX_DEBUG) && (uX_DEBUG >= 1))
    // _CrtDbgReport returns -1 on error, 1 on 'retry', 0 otherwise including 'Ignore'.
    // Hitting 'abort' will terminate the process immediately.
    int result = _CrtDbgReport(_CRT_ASSERT, File, Line, NULL, "%s", buffer);
    int mode = _CrtSetReportMode(_CRT_ASSERT, _CRTDBG_REPORT_MODE);
    Ignore = _CRTDBG_MODE_WNDW == mode && result == 0;
    if (Ignore)
        return;
    __debugbreak();
#elif (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
    __debugbreak();
    /*
    #elif uX_SWITCH
            abort(buffer);*/
#else
    abort();
#endif
}
EXTERN_CC_END

EXTERN_CC_BEGIN
class DefaultAssertHandler : public AssertHandler
{
    virtual void operator()(char const* const Msg, char const* const Expr, char const* const File, int Line, bool& Ignore)
    {
        asserthandler(Msg, Expr, File, Line, Ignore);
        /*uX_UNUSED(Ignore); // is used only in debug windows config
        char buffer[1024];
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
        sprintf_s(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#else
        sprintf(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#endif
        uX::_internal::printString(buffer);
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1)) && (defined(uX_DEBUG) && (uX_DEBUG >= 1))
        // _CrtDbgReport returns -1 on error, 1 on 'retry', 0 otherwise including 'Ignore'.
        // Hitting 'abort' will terminate the process immediately.
        int result = _CrtDbgReport(_CRT_ASSERT, File, Line, NULL, "%s", buffer);
        int mode = _CrtSetReportMode(_CRT_ASSERT, _CRTDBG_REPORT_MODE);
        Ignore = _CRTDBG_MODE_WNDW == mode && result == 0;
        if (Ignore)
            return;
        __debugbreak();
#elif (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
        __debugbreak();
/ *
#elif uX_SWITCH
        abort(buffer);* /
#else
        abort();
#endif*/
    }

    virtual void operator()(char const* const Msg, char const* const Expr, char const* const File, int Line)
    {
        char buffer[1024];
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
        sprintf_s(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#else
        sprintf(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#endif
        printString(buffer);
    }
};

DefaultAssertHandler sAssertHandler;
AssertHandler* sAssertHandlerPtr = &sAssertHandler;

EXTERN_CC_END

uX_PACK_POP
namespace_internal_end
namespace_uX_end

/*
namespace
{
class DefaultAssertHandler : public uX::AssertHandler
{
    virtual void operator()(char const* const Msg, char const* const Expr, char const* const File, int Line, bool& Ignore)
    {
        uX::_internal::asserthandler(Msg, Expr, File, Line, Ignore);
        / *uX_UNUSED(Ignore); // is used only in debug windows config
        char buffer[1024];
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
        sprintf_s(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#else
        sprintf(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#endif
        uX::_internal::printString(buffer);
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1)) && (defined(uX_DEBUG) && (uX_DEBUG >= 1))
        // _CrtDbgReport returns -1 on error, 1 on 'retry', 0 otherwise including 'Ignore'.
        // Hitting 'abort' will terminate the process immediately.
        int result = _CrtDbgReport(_CRT_ASSERT, File, Line, NULL, "%s", buffer);
        int mode = _CrtSetReportMode(_CRT_ASSERT, _CRTDBG_REPORT_MODE);
        Ignore = _CRTDBG_MODE_WNDW == mode && result == 0;
        if (Ignore)
            return;
        __debugbreak();
#elif (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
        __debugbreak();
/ *
#elif uX_SWITCH
        abort(buffer);* /
#else
        abort();
#endif* /
    }

    virtual void operator()(char const* const Msg, char const* const Expr, char const* const File, int Line)
    {
        char buffer[1024];
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
        sprintf_s(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#else
        sprintf(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#endif
        uX::_internal::printString(buffer);
    }
};

DefaultAssertHandler sAssertHandler;
uX::AssertHandler* sAssertHandlerPtr = &sAssertHandler;
}*/

namespace_uX
EXTERN_CC_BEGIN
uX_PACK_PUSH_STACK
AssertHandler& uX_ABI GetAssertHandler()
{
    return *_internal::sAssertHandlerPtr;
}

void uX_ABI SetAssertHandler(AssertHandler& Handler)
{
    _internal::sAssertHandlerPtr = &Handler;
}
uX_PACK_POP
EXTERN_CC_END
namespace_uX_end
