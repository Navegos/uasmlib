
#pragma once

#ifndef uXm_TYPES_H
#define uXm_TYPES_H

#include "uXmBaseDefs.h"
#include "uXmSalProcess.h"

// Define type size_t
#ifndef _SIZE_T_DEFINED
#include "stddef.h"
#endif

#ifndef _MSC_VER
typedef char __int8;
typedef short __int16;
typedef long __int32;
typedef long long __int64;
#endif

#include "uXmAssert.h"

#endif /*uXm_TYPES_H*/
