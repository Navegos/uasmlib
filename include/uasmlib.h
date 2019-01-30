
#pragma once

#ifndef UASM_LIB_H
#define UASM_LIB_H

#include "uXTypes.h"

uX_EXTERNC_BEGIN

uX_PACK_PUSH_POINTER

//extern int DllMain(void*, unsigned int, void*);

uX_PACK_POP

uX_EXTERNC_END

#ifdef uX_X86_OR_X64_CPU
#include "x86/uXx86Cpu.h"
#include "x86/uXx86Intrin.h"
#endif

#endif // UASM_LIB_H
