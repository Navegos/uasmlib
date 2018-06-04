
#pragma once

#ifndef uXm_SAL_PROCESS_H
#define uXm_SAL_PROCESS_H

#include "uXmPreprocessor.h"

#if defined(_MSC_VER) && (_MSC_VER >= 1700)
#include <sal.h>
#endif

/* buffer and length sal analyzes macro */
/* please read MSDN library for sal */
/* All other compilers do-not have same type of analyzer, it will use the same logic macro for compatibility and easy type code writing */

/* sal fixups macro */
#if defined(uXm_VC)
# if defined(_MSC_VER) && (_MSC_VER<1610) && !defined(_In_reads_)
# ifndef __analysis_assume
#	define __analysis_assume(uXmpr)
# endif
# ifndef _In_count_x_
#	define _In_count_x_(uXmpr)
# endif
# ifndef _In_opt_count_x_
#	define _In_opt_count_x_(uXmpr)
# endif
# ifndef _In_bytecount_x_
#	define _In_bytecount_x_(uXmpr)
# endif
# ifndef _Inout_cap_x_
#	define _Inout_cap_x_(uXmpr)
# endif
# ifndef _Inout_z_cap_x_
#	define _Inout_z_cap_x_(uXmpr)
# endif
# ifndef _Inout_bytecap_x_
#	define _Inout_bytecap_x_(uXmpr)
# endif
# ifndef _Inout_opt_z_cap_x_
#	define _Inout_opt_z_cap_x_(uXmpr)
# endif
# ifndef _Out_cap_x_
#	define _Out_cap_x_(uXmpr)
# endif
# ifndef _Out_opt_cap_x_
#	define _Out_opt_cap_x_(uXmpr)
# endif
# ifndef _Out_bytecap_x_
#	define _Out_bytecap_x_(uXmpr)
# endif
# ifndef _Out_opt_bytecap_x_
#	define _Out_opt_bytecap_x_(uXmpr)
# endif
# ifndef _Deref_out_
#	define _Deref_out_
# endif
# ifndef _Deref_out_opt_
#	define _Deref_out_opt_
# endif
# ifndef _Deref_out_z_
#	define _Deref_out_z_
# endif
# ifndef _Deref_opt_out_opt_
#	define _Deref_opt_out_opt_
# endif
# ifndef _Deref_opt_out_opt_z_
#	define _Deref_opt_out_opt_z_
# endif
# ifndef _Deref_post_cap_x_
#	define _Deref_post_cap_x_(uXmpr)
# endif
# ifndef _Deref_post_opt_cap_x_
#	define _Deref_post_opt_cap_x_(uXmpr)
# endif

#	define _Analysis_assume_(uXmpr) __analysis_assume(uXmpr)
#	define _In_reads_(uXmpr) _In_count_x_(uXmpr)
#	define _In_reads_opt_(uXmpr) _In_opt_count_x_(uXmpr)
#	define _In_reads_bytes_(uXmpr) _In_bytecount_x_(uXmpr)
#	define _Inout_updates_(uXmpr) _Inout_cap_x_(uXmpr)
#	define _Inout_updates_z_(uXmpr) _Inout_z_cap_x_(uXmpr)
#	define _Inout_updates_bytes_(uXmpr) _Inout_bytecap_x_(uXmpr)
#	define _Inout_updates_all_(uXmpr) _Inout_z_cap_x_(uXmpr)
#	define _Inout_updates_all_opt_(uXmpr) _Inout_opt_z_cap_x_(uXmpr)
#	define _Out_writes_(uXmpr) _Out_cap_x_(uXmpr)
#	define _Out_writes_opt_(uXmpr) _Out_opt_cap_x_(uXmpr)
#	define _Out_writes_bytes_(uXmpr) _Out_bytecap_x_(uXmpr)
#	define _Out_writes_bytes_to_opt_(a,b) _Out_opt_bytecap_x_(a,b)
#	define _Outptr_ _Deref_out_
#	define _Outptr_opt_ _Deref_out_opt_
#	define _Outptr_result_z_ _Deref_out_z_
#	define _Outptr_opt_result_maybenull_ _Deref_opt_out_opt_
#	define _Outptr_result_maybenull_z_ _Deref_opt_out_opt_z_
#	define _Outptr_result_buffer_(uXmpr) _Deref_post_cap_x_(uXmpr)
#	define _Outptr_result_buffer_all_maybenull_(uXmpr) _Deref_post_opt_cap_x_(uXmpr)
#	define _COM_Outptr_ _Deref_out_
#	define _When_(test,uXmpr)
#	define _Acquires_lock_(uXmpr)
#	define _Releases_lock_(uXmpr)
#	define _InuXmpressible_(uXmpr)

# ifndef _Out_
#	define _Out_
# endif
# ifndef _In_
#	define _In_
# endif
# ifndef _Deref_out_range_
#	define _Deref_out_range_(uXmpr)
# endif
# ifndef _Must_inspect_result_
#	define _Must_inspect_result_
# endif
# ifndef _Return_type_success_
#	define _Return_type_success_(uXmpr)
# endif

# endif
#else
#	define _Analysis_assume_(uXmpr)
#	define _In_reads_(uXmpr)
#	define _In_reads_opt_(uXmpr)
#	define _In_reads_bytes_(uXmpr)
#	define _Inout_updates_(uXmpr)
#	define _Inout_updates_z_(uXmpr)
#	define _Inout_updates_bytes_(uXmpr)
#	define _Inout_updates_all_(uXmpr)
#	define _Inout_updates_all_opt_(uXmpr)
#	define _Out_writes_(uXmpr)
#	define _Out_writes_opt_(uXmpr)
#	define _Out_writes_bytes_(uXmpr)
#	define _Out_writes_bytes_to_opt_(a,b)
#	define _Outptr_
#	define _Outptr_opt_
#	define _Outptr_result_z_
#	define _Outptr_opt_result_maybenull_
#	define _Outptr_result_maybenull_z_
#	define _Outptr_result_buffer_(uXmpr)
#	define _Outptr_result_buffer_all_maybenull_(uXmpr)
#	define _COM_Outptr_
#	define _When_(test,uXmpr)
#	define _Acquires_lock_(uXmpr)
#	define _Releases_lock_(uXmpr)
#	define _InuXmpressible_(uXmpr)
#	define _Out_
#	define _In_
#	define _Deref_out_range_(uXmpr)
#	define _Must_inspect_result_
#	define _Return_type_success_(uXmpr)
#endif

#if defined(uXm_VC)
# if _MSC_VER >= 1700
/*

#define _Inout_updates_to_(length,count)         _SAL2_Source_(_Inout_updates_to_, (length,count), _Out_writes_to_(length,count) _Pre_valid_impl_ _Pre1_impl_(__count_impl(length)))
#define _Inout_updates_to_opt_(length,count)     _SAL2_Source_(_Inout_updates_to_opt_, (length,count), _Out_writes_to_opt_(length,count) _Pre_valid_impl_ _Pre1_impl_(__count_impl(length)))


#define _Out_writes_to_(length,count)            _SAL2_Source_(_Out_writes_to_, (length,count), _Pre_cap_(length)            _Post_valid_impl_ _Post_count_(count))
*/

#ifndef _In_reads_to_
#	define _In_reads_to_(length,count)	   _SAL2_Source_(_In_reads_to_, (length,count), _Pre_cap_(length) _Pre_valid_impl_ _Pre_count_(count) _Deref_pre_readonly_)
#endif
#ifndef _In_reads_to_opt_
#	define _In_reads_to_opt_(length,count)   _SAL2_Source_(_In_reads_to_opt_, (length,count), _Pre_opt_cap_(length) _Pre_valid_impl_ _Pre_opt_count_(count) _Deref_pre_readonly_)
#endif

//============================================================================
//   Structural SAL:
//     These annotations modify the use of other annotations.  They may
//     express the annotation target (i.e. what parameter/field the annotation
//     applies to) or the condition under which the annotation is applicable.
//============================================================================

#	define uXm_Use_decl_annotations		_Use_decl_annotations_

/*__analysis_assume__________________________________________________________________________*/

/* sal annotations with (Type) elements macros */
/* all calls to the defines will be made to the Type and Name parameter */
/* sample use for uXm_In (uXm_In(uXmMF32f,f0), ...){ rtemp = f0}*/
/* sample use for XMF32_InReads (uXm_InReads(uXmMF32f,f, int tostsize),... ){ uXmMF32f* frtemp = f}*/
/* sample use for XMF32_InReads (uXmMF32f_InReads(uXmMF32f,f,4), ...){ uXmMF32f* frtemp = f}*/

#	define uXm_Analyzis(axp)									_Analysis_assume_(axp)

// Check the return value of a function e.g. _Check_return_ ErrorCode Foo();
#	define uXm_CheckReturn										_Check_return_
#	define uXm_MustInspectResult								_Must_inspect_result_
#	define uXm_ReturnTypeSucess									_Return_type_success_

// annotations to uXmpress value of integral or pointer parameter
#	define uXm_InRange(lb,ub)									_In_range_(lb,ub)
#	define uXm_OutRange(lb,ub)									_Out_range_(lb,ub)
#	define uXm_RetRange(lb,ub)									_Ret_range_(lb,ub)
#	define uXm_DerefINRange	(lb,ub)								_Deref_in_range_(lb,ub)
#	define uXm_DerefOutRange(lb,ub)								_Deref_out_range_(lb,ub)
#	define uXm_DerefRetRange(lb,ub)								_Deref_ret_range_(lb,ub)
#	define uXm_PreEqualTo(uXmpr)								_Pre_equal_to_(uXmpr)
#	define uXm_PostEqualTo(uXmpr)								_Post_equal_to_(uXmpr)


// Input parameters --------------------------

//   _In_ - Annotations for parameters where data is passed into the function, but not modified.
//          _In_ by itself can be used with non-pointer types (although it is redundant).

// e.g. void SetPoint( _In_ const POINT* pPT );
#	define uXm_In								_In_													/* an input ( type ) and ( Name ) */
#	define uXm_InOpt								_In_opt_												/* an input ( type ) and ( Name ) and optional Null parameter */

// null terminated 'in' parameters.
// e.g. void CopyStr( _In_z_ const char* szFrom, _Out_z_cap_(cchTo) char* szTo, size_t cchTo );
#	define uXm_InZ								_In_z_													/* an input ( type ) and ( Name ) null-terminated 'in' parameters */
#	define uXm_InOptZ							_In_opt_z_												/* an input ( type ) and ( Name ) null-terminated 'in' parameters and optional Null parameter */

 // I don't know why sal can give us the length for elements using it from this macros, I have to add [length] after the names to correct fix this.
 // probably using-it to pointers and unknown arrays length elements, it cant work this way.
 // I think its fixed this way, removed [length] add * after the type.
 // Nop inst fixed yet.... ToDO in this

// 'input' buffers with given length
#	define uXm_InReads(length)						_In_reads_(length)										/* an input array ( type ) and ( Name ) with given ( length ) */
#	define uXm_InReadsOpt(length)					_In_reads_opt_(length)									/* an input array ( type ) and ( Name ) with given ( length ) and optional Null parameter */
#	define uXm_InReadsBytes(length)					_In_reads_bytes_(length)									/* an input array ( type ) and ( Name ) with given ( length ) described by another parameter */
#	define uXm_InReadsBytesOpt(length)				_In_reads_bytes_opt_(length)								/* an input array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */
#	define uXm_InReadsZ(length)						_In_reads_z_(length)										/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters */
#	define uXm_InReadsOptZ(length)					_In_reads_opt_z_(length)									/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters and optional Null parameter */
#	define uXm_InReadsOrZ(length)					_In_reads_or_z_(length)									/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters or has a known length, or both */
#	define uXm_InReadsOrZOpt(length)				_In_reads_or_z_opt_(length)								/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters or has a known length, or both and optional Null parameter */

#	define uXm_InReadsTo(length,count)				_In_reads_to_(length,count)						/* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters */
#	define uXm_InReadsToOpt(length,count)			_In_reads_to_opt_(length,count)					/* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters and optional Null parameter */

// 'input' buffers valid to the given end pointer
#	define uXm_InReadsToPtr(ptr)					_In_reads_to_ptr_(ptr)									/* an input array ( type ) and ( Name ) with given ( length ) valid to the given end pointer */
#	define uXm_InReadsToPtrOpt(ptr)				_In_reads_to_ptr_opt_(ptr)								/* an input array ( type ) and ( Name ) with given ( length ) valid to the given end pointer and optional Null parameter */
#	define uXm_InReadsToPtrZ(ptr)					_In_reads_to_ptr_z_(ptr)								/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters, valid to the given end pointer */
#	define uXm_InReadsToPtrOptZ(ptr)				_In_reads_to_ptr_opt_z_(ptr)							/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters, and optional Null parameter valid to the given end pointer */


// Output parameters --------------------------

//   _Out_ - Annotations for pointer or reference parameters where data passed back to the caller.
//           These are mostly used where the pointer/reference is to a non-pointer type.
//           _Outptr_/_Outref) (see below) are typically used to return pointers via parameters.

// e.g. void GetPoint( _Out_ POINT* pPT );
#	define uXm_Out								_Out_													/* an output modifiable ( type ) and ( Name ) */
#	define uXm_Outopt							_Out_opt_												/* an output modifiable ( type ) and ( Name ) and optional Null parameter */

#	define uXm_OutWrites(length)					_Out_writes_(length)										/* an output writable array ( type ) and ( Name ) with given ( length ) */
#	define uXm_OutWritesOpt(length)					_Out_writes_opt_(length)									/* an output writable array ( type ) and ( Name ) with given ( length ) and optional Null parameter */
#	define uXm_OutWritesBytes(length)				_Out_writes_bytes_(length)								/* an output writable array ( type ) and ( Name ) with given ( length ) described by another parameter */
#	define uXm_OutWritesBytesOpt(length)			_Out_writes_bytes_opt_(length)							/* an output writable array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */
#	define uXm_OutWritesZ(length)					_Out_writes_z_(length)									/* an output writable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters */
#	define uXm_OutWritesOptZ(length)				_Out_writes_opt_z_(length)								/* an output writable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters and optional Null parameter  */
#	define uXm_OutWritesTo(length,count)			_Out_writes_to_(length,count)						/* an output writable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters */
#	define uXm_OutWritesToOpt(length,count)			_Out_writes_to_opt_(length,count)					/* an output writable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters and optional Null parameter  */
#	define uXm_OutWritesAll(length)					_Out_writes_all_(length)									/* an output writable array ( type ) and ( Name ) with given ( length ) */
#	define uXm_OutWritesAllOpt(length)				_Out_writes_all_opt_(length)								/* an output writable array ( type ) and ( Name ) with given ( length ) and optional Null parameter */
#	define uXm_OutWritesBytesTo(length,count)		_Out_writes_bytes_to_(length,count)				/* an output writable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters */
#	define uXm_OutWritesBytesToOpt(length,count)	_Out_writes_bytes_to_opt_(length,count)			/* an output writable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters and optional Null parameter */
#	define uXm_OutWritesBytesAll(length)			_Out_writes_bytes_all_(length)							/* an output writable array ( type ) and ( Name ) with given ( length ) described by another parameter */
#	define uXm_OutWritesBytesAllOpt(length)			_Out_writes_bytes_all_opt_(length)						/* an output writable array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */

#	define uXm_OutWritesToPtr(ptr)				_Out_writes_to_ptr_(ptr)								/* an output writable array ( type ) and ( Name ) with given ( length ) valid to the given end pointer */
#	define uXm_OutWritesToPtrOpt(ptr)				_Out_writes_to_ptr_opt_(ptr)							/* an output writable array ( type ) and ( Name ) with given ( length ) valid to the given end pointer and optional Null parameter */
#	define uXm_OutWritesToPtrZ(ptr)				_Out_writes_to_ptr_z_(ptr)								/* an output writable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters, valid to the given end pointer */
#	define uXm_OutWritesToPtrOptZ(ptr)			_Out_writes_to_ptr_opt_z_(ptr)							/* an output writable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters, valid to the given end pointer and optional Null parameter */

// Inout parameters ----------------------------

//   _Inout_ - Annotations for pointer or reference parameters where data is passed in and
//        potentially modified.
//          void ModifyPoint( _Inout_ POINT* pPT );
//          void ModifyPointByRef( _Inout_ POINT& pPT );
#	define uXm_InOut								_Inout_													/* an input/output modifiable ( type ) and ( Name ) */
#	define uXm_InOutopt							_Inout_opt_												/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */

#	define uXm_InOutM2					_Inout_															/* an input/output modifiable ( type ) and ( Name ) */
#	define uXm_InOutM3				_Inout_													/* an input/output modifiable ( type ) and ( Name ) */
#	define uXm_InOutM4		_Inout_												/* an input/output modifiable ( type ) and ( Name ) */

#	define uXm_InOutoptM2					_Inout_opt_														/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#	define uXm_InOutoptM3			_Inout_opt_												/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#	define uXm_InOutoptM4		_Inout_opt_											/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */


// For modifying string buffers
//   void toupper( _Inout_z_ char* sz );
#	define uXm_InOutZ							_Inout_z_												/* an input/output modifiable ( type ) and ( Name ) null-terminated 'in' parameters */
#	define uXm_InOutoptZ							_Inout_opt_z_											/* an input/output modifiable ( type ) and ( Name ) null-terminated 'in' parameters and optional Null parameter */

// For modifying buffers with uXmplicit element length
#	define uXm_InOutUp(length)						_Inout_updates_(length)									/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) */
#	define uXm_InOutUpOpt(length)					_Inout_updates_opt_(length)								/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) and optional Null parameter */
#	define uXm_InOutUpZ(length)						_Inout_updates_z_(length)									/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters */
#	define uXm_InOutUpOptZ(length)					_Inout_updates_opt_z_(length)								/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters and optional Null parameter */
#	define uXm_InOutUpTo(length,count)				_Inout_updates_to_(length,count)					/* an input/output modifiable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters */
#	define uXm_InOutUpToOpt(length,count)			_Inout_updates_to_opt_(length,count)				/* an input/output modifiable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters and optional Null parameter */
#	define uXm_InOutUpAll(length)					_Inout_updates_all_(length)								/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) */
#	define uXm_InOutUpAllOpt(length)				_Inout_updates_all_opt_(length)							/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) and optional Null parameter */

// For modifying buffers with uXmplicit byte length
#	define uXm_InOutUpBytes(length)					_Inout_updates_bytes_(length)								/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) described by another parameter */
#	define uXm_InOutUpBytesOpt(length)				_Inout_updates_bytes_opt_(length)							/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */
#	define uXm_InOutUpBytesTo(length,count)			_Inout_updates_bytes_to_(length,count)			/* an input/output modifiable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters */
#	define uXm_InOutUpBytesToOpt(length,count)		_Inout_updates_bytes_to_opt_(length,count)		/* an input/output modifiable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters and optional Null parameter */
#	define uXm_InOutUpBytesAll(length)				_Inout_updates_bytes_all_(length)							/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) described by another parameter */
#	define uXm_InOutUpBytesAllOpt(length)			_Inout_updates_bytes_all_opt_(length)						/* an input/output modifiable array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */


// Pointer to pointer parameters -------------------------

//   _Outptr_ - Annotations for output params returning pointers
//      These describe parameters where the called function provides the buffer:
//        HResult SHStrDupW(_In_ LPCWSTR psz, _Outptr_ LPWSTR *ppwsz);
//      The caller passes the address of an LPWSTR variable as ppwsz, and SHStrDupW allocates
//      and initializes memory and returns the pointer to the new LPWSTR in *ppwsz.
//
//    _Outptr_opt_ - describes parameters that are allowed to be Null.
//    _Outptr_*_result_maybenull_ - describes parameters where the called function might return Null to the caller.
//
//    uXmample:
//       void MyFunc(_Outptr_opt_ int **ppData1, _Outptr_result_maybenull_ int **ppData2);
//    Callers:
//       MyFunc(Null, Null);           // error: parameter 2, ppData2, should not be Null
//       MyFunc(&pData1, &pData2);     // ok: both non-Null
//       if (*pData1 == *pData2) ...   // error: pData2 might be Null after call
#	define uXm_OutPtr							_Outptr_														/* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#	define uXm_OutPtrResultMaybeNull				_Outptr_result_maybenull_										/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#	define uXm_OutPtrOpt							_Outptr_opt_													/* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#	define uXm_OutPtrOPtrResultMaybeNull			_Outptr_opt_result_maybenull_									/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */

// Annotations for _Outptr_ parameters returning pointers to null terminated strings.
#	define uXm_OutPtrResultZ						_Outptr_result_z_												/* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters */
#	define uXm_OutPtrOPtrResultZ					_Outptr_opt_result_z_											/* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters and optional Null parameter */
#	define uXm_OutPtrResultMaybeNullZ				_Outptr_result_maybenull_z_										/* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters where the called function might return Null */
#	define uXm_OutPtrOPtrResultMaybeNullZ			_Outptr_opt_result_maybenull_z_									/* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters where the called function might return Null and optional Null parameter  */

// Annotations for _Outptr_ parameters where the output pointer is set to Null if the function fails.
#	define uXm_OutPtrResultNullONFAIL				_Outptr_result_nullonfailure_									/* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters */
#	define uXm_OutPtrOPtrResultNullONFAIL			_Outptr_opt_result_nullonfailure_								/* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters and optional Null parameter */

// Annotations for _Outptr_ parameters which return a pointer to a ref-counted COM object,
// following the COM convention of setting the output to Null on failure.
// The current implementation is identical to _Outptr_result_nullonfailure_.
// For pointers to types that are not COM objects, _Outptr_result_nullonfailure_ is preferred.
#	define uXm_COMOutPtr							_COM_Outptr_													/* an output modifiable ( type ) and ( Name ) for output COM params returning pointers */
#	define uXm_COMOutPtrResultMaybeNull			_COM_Outptr_result_maybenull_									/* an output modifiable ( type ) and ( Name ) for output COM params returning pointers where the called function might return Null */
#	define uXm_COMOutPtrOpt						_COM_Outptr_opt_												/* an output modifiable ( type ) and ( Name ) for output COM params returning pointers and optional Null parameter */
#	define uXm_COMOutPtrOPtrResultMaybeNull		_COM_Outptr_opt_result_maybenull_								/* an output modifiable ( type ) and ( Name ) for output COM params returning pointers where the called function might return Null and optional Null parameter  */

// Annotations for _Outptr_ parameters returning a pointer to buffer with a specified number of elements/bytes
#	define uXm_OutPtrResultBuffer(length)							_Outptr_result_buffer_(length)									/* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#	define uXm_OutPtrOPtrResultBuffer(length)						_Outptr_opt_result_buffer_(length) 								/* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#	define uXm_OutPtrResultBufferTo(length,count)					_Outptr_result_buffer_to_(length,count)					/* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#	define uXm_OutPtrOPtrResultBufferTo(length,count)				_Outptr_opt_result_buffer_to_(length,count) 				/* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#	define uXm_OutPtrResultBufferAll(length)						_Outptr_result_buffer_all_(length)								/* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#	define uXm_OutPtrOPtrResultBufferAll(length)					_Outptr_opt_result_buffer_all_(length) 							/* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#	define uXm_OutPtrResultBufferMaybeNull(length)				_Outptr_result_buffer_maybenull_(length)							/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#	define uXm_OutPtrOPtrResultBufferMaybeNull(length)			_Outptr_opt_result_buffer_maybenull_(length)						/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */
#	define uXm_OutPtrResultBufferToMaybeNull(length,count)		_Outptr_result_buffer_to_maybenull_(length,count)			/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#	define uXm_OutPtrOPtrResultBufferToMaybeNull(length,count)	_Outptr_opt_result_buffer_to_maybenull_(length,count)		/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */
#	define uXm_OutPtrResultBufferAllMaybeNull(length)				_Outptr_result_buffer_all_maybenull_(length)						/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#	define uXm_OutPtrOPtrResultBufferAllMaybeNull(length)			_Outptr_opt_result_buffer_all_maybenull_(length)					/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */

#	define uXm_OutPtrResultByteBuffer(length)						 _Outptr_result_bytebuffer_(length)									/* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#	define uXm_OutPtrOPtrResultByteBuffer(length)					 _Outptr_opt_result_bytebuffer_(length) 								/* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#	define uXm_OutPtrResultByteBufferTo(length,count)				 _Outptr_result_bytebuffer_to_(length,count)					/* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#	define uXm_OutPtrOPtrResultByteBufferTo(length,count)			 _Outptr_opt_result_bytebuffer_to_(length,count) 				/* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#	define uXm_OutPtrResultByteBufferAll(length)					 _Outptr_result_bytebuffer_all_(length)								/* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#	define uXm_OutPtrOPtrResultByteBufferAll(length)				 _Outptr_opt_result_bytebuffer_all_(length) 							/* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#	define uXm_OutPtrResultByteBufferMaybeNull(length)			 _Outptr_result_bytebuffer_maybenull_(length)							/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#	define uXm_OutPtrOPtrResultByteBufferMaybeNull(length)		 _Outptr_opt_result_bytebuffer_maybenull_(length)						/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */
#	define uXm_OutPtrResultByteBufferToMaybeNull(length,count)	 _Outptr_result_bytebuffer_to_maybenull_(length,count)			/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#	define uXm_OutPtrOPtrResultByteBufferToMaybeNull(length,count) _Outptr_opt_result_bytebuffer_to_maybenull_(length,count)		/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */
#	define uXm_OutPtrResultByteBufferAllMaybeNull(length)			 _Outptr_result_bytebuffer_all_maybenull_(length)						/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#	define uXm_OutPtrOPtrResultByteBufferAllMaybeNull(length)		 _Outptr_opt_result_bytebuffer_all_maybenull_(length)					/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */


// Annotations for output reference to pointer parameters.
#	define uXm_OutRef									_Outref_																/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultMaybeNull						_Outref_result_maybenull_												/* an output modifiable ( type ) and ( Name ) for output params returning references where the called function might return Null */

#	define uXm_OutRefResultBuffer(length)					_Outref_result_buffer_(length)											/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultByteBuffer(length)				_Outref_result_bytebuffer_(length)										/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultBufferTo(length,count)			_Outref_result_buffer_to_(length,count)							/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultByteBufferTo(length,count)		_Outref_result_bytebuffer_to_(length,count)						/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultBufferAll(length)				_Outref_result_buffer_all_(length)										/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultByteBufferAll(length)			_Outref_result_bytebuffer_all_(length)									/* an output modifiable ( type ) and ( Name ) for output params returning references */

#	define uXm_OutRefResultBufferMaybeNull(length)					_Outref_result_buffer_maybenull_(length)								/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultByteBufferMaybeNull(length)				_Outref_result_bytebuffer_maybenull_(length)							/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultBufferToMaybeNull(length,count)			_Outref_result_buffer_to_maybenull_(length,count)				/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultBYEBufferToMaybeNull(length,count)		_Outref_result_bytebuffer_to_maybenull_(length,count)			/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultBufferAllMaybeNull(length)				_Outref_result_buffer_all_maybenull_(length)							/* an output modifiable ( type ) and ( Name ) for output params returning references */
#	define uXm_OutRefResultByteBufferAllMaybeNull(length)			_Outref_result_bytebuffer_all_maybenull_(length)						/* an output modifiable ( type ) and ( Name ) for output params returning references */

// Annotations for output reference to pointer parameters that guarantee
// that the pointer is set to Null on failure.
#	define uXm_OutRefResultNullONFAIL			_Outref_result_nullonfailure_											/* an output modifiable ( type ) and ( Name ) for output params returning references */

# else

#	define uXm_Use_decl_annotations

#	define uXm_Analyzis(axp)

// Check the return value of a function e.g. _Check_return_ ErrorCode Foo();
#	define uXm_CheckReturn
#	define uXm_MustInspectResult

// annotations to uXmpress value of integral or pointer parameter
#	define uXm_InRange(lb,ub)
#	define uXm_OutRange(lb,ub)
#	define uXm_RetRange(lb,ub)
#	define uXm_DerefINRange	(lb,ub)
#	define uXm_DerefOutRange(lb,ub)
#	define uXm_DerefRetRange(lb,ub)
#	define uXm_PreEqualTo(uXmpr)
#	define uXm_PostEqualTo(uXmpr)

#	define uXm_In															
#	define uXm_InOpt															

#	define uXm_InZ															
#	define uXm_InOptZ														

#	define uXm_InReads(length)													
#	define uXm_InReadsOpt(length)												
#	define uXm_InReadsBytes(length)												
#	define uXm_InReadsBytesOpt(length)											
#	define uXm_InReadsZ(length)													
#	define uXm_InReadsOptZ(length)												
#	define uXm_InReadsOrZ(length)												
#	define uXm_InReadsOrZOpt(length)											

#	define uXm_InReadsTo(length,count)												/* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters */
#	define uXm_InReadsToOpt(length,count)											/* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters and optional Null parameter */

#	define uXm_InReadsToPtr(ptr)												
#	define uXm_InReadsToPtrOpt(ptr)											
#	define uXm_InReadsToPtrZ(ptr)												
#	define uXm_InReadsToPtrOptZ(ptr)											


#	define uXm_Out															
#	define uXm_Outopt														

#	define uXm_OutWrites(length)												
#	define uXm_OutWritesOpt(length)												
#	define uXm_OutWritesBytes(length)											
#	define uXm_OutWritesBytesOpt(length)										
#	define uXm_OutWritesZ(length)												
#	define uXm_OutWritesOptZ(length)											
#	define uXm_OutWritesTo(length,count)										
#	define uXm_OutWritesToOpt(length,count)										
#	define uXm_OutWritesAll(length)												
#	define uXm_OutWritesAllOpt(length)											
#	define uXm_OutWritesBytesTo(length,count)									
#	define uXm_OutWritesBytesToOpt(length,count)									
#	define uXm_OutWritesBytesAll(length)										
#	define uXm_OutWritesBytesAllOpt(length)										

#	define uXm_OutWritesToPtr(ptr)											
#	define uXm_OutWritesToPtrOpt(ptr)											
#	define uXm_OutWritesToPtrZ(ptr)											
#	define uXm_OutWritesToPtrOptZ(ptr)										


#	define uXm_InOut															
#	define uXm_InOutopt														

#	define uXm_InOutM2																	/* an input/output modifiable ( type ) and ( Name ) */
#	define uXm_InOutM3														/* an input/output modifiable ( type ) and ( Name ) */
#	define uXm_InOutM4											/* an input/output modifiable ( type ) and ( Name ) */

#	define uXm_InOutoptM2																	/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#	define uXm_InOutoptM3													/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#	define uXm_InOutoptM4											/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */

#	define uXm_InOutZ														
#	define uXm_InOutoptZ														

#	define uXm_InOutUp(length)													
#	define uXm_InOutUpOpt(length)												
#	define uXm_InOutUpZ(length)													
#	define uXm_InOutUpOptZ(length)												
#	define uXm_InOutUpTo(length,count)											
#	define uXm_InOutUpToOpt(length,count)										
#	define uXm_InOutUpAll(length)												
#	define uXm_InOutUpAllOpt(length)											

#	define uXm_InOutUpBytes(length)												
#	define uXm_InOutUpBytesOpt(length)											
#	define uXm_InOutUpBytesTo(length,count)										
#	define uXm_InOutUpBytesToOpt(length,count)									
#	define uXm_InOutUpBytesAll(length)											
#	define uXm_InOutUpBytesAllOpt(length)										


#	define uXm_OutPtr														
#	define uXm_OutPtrResultMaybeNull											
#	define uXm_OutPtrOpt														
#	define uXm_OutPtrOPtrResultMaybeNull										

#	define uXm_OutPtrResultZ													
#	define uXm_OutPtrOPtrResultZ												
#	define uXm_OutPtrResultMaybeNullZ											
#	define uXm_OutPtrOPtrResultMaybeNullZ										

#	define uXm_OutPtrResultNullONFAIL											
#	define uXm_OutPtrOPtrResultNullONFAIL										

#	define uXm_COMOutPtr														
#	define uXm_COMOutPtrResultMaybeNull										
#	define uXm_COMOutPtrOpt													
#	define uXm_COMOutPtrOPtrResultMaybeNull									


#	define uXm_OutPtrResultBuffer(length)											
#	define uXm_OutPtrOPtrResultBuffer(length)										
#	define uXm_OutPtrResultBufferTo(length,count)									
#	define uXm_OutPtrOPtrResultBufferTo(length,count)								
#	define uXm_OutPtrResultBufferAll(length)										
#	define uXm_OutPtrOPtrResultBufferAll(length)									
#	define uXm_OutPtrResultBufferMaybeNull(length)								
#	define uXm_OutPtrOPtrResultBufferMaybeNull(length)							
#	define uXm_OutPtrResultBufferToMaybeNull(length,count)						
#	define uXm_OutPtrOPtrResultBufferToMaybeNull(length,count)					
#	define uXm_OutPtrResultBufferAllMaybeNull(length)								
#	define uXm_OutPtrOPtrResultBufferAllMaybeNull(length)							

#	define uXm_OutPtrResultByteBuffer(length)										
#	define uXm_OutPtrOPtrResultByteBuffer(length)									
#	define uXm_OutPtrResultByteBufferTo(length,count)								
#	define uXm_OutPtrOPtrResultByteBufferTo(length,count)							
#	define uXm_OutPtrResultByteBufferAll(length)									
#	define uXm_OutPtrOPtrResultByteBufferAll(length)								
#	define uXm_OutPtrResultByteBufferMaybeNull(length)							
#	define uXm_OutPtrOPtrResultByteBufferMaybeNull(length)						
#	define uXm_OutPtrResultByteBufferToMaybeNull(length,count)					
#	define uXm_OutPtrOPtrResultByteBufferToMaybeNull(length,count)				
#	define uXm_OutPtrResultByteBufferAllMaybeNull(length)							
#	define uXm_OutPtrOPtrResultByteBufferAllMaybeNull(length)						


#	define uXm_OutRef														
#	define uXm_OutRefResultMaybeNull											

#	define uXm_OutRefResultBuffer(length)										
#	define uXm_OutRefResultByteBuffer(length)									
#	define uXm_OutRefResultBufferTo(length,count)								
#	define uXm_OutRefResultByteBufferTo(length,count)							
#	define uXm_OutRefResultBufferAll(length)									
#	define uXm_OutRefResultByteBufferAll(length)								

#	define uXm_OutRefResultBufferMaybeNull(length)								
#	define uXm_OutRefResultByteBufferMaybeNull(length)							
#	define uXm_OutRefResultBufferToMaybeNull(length,count)						
#	define uXm_OutRefResultBYEBufferToMaybeNull(length,count)					
#	define uXm_OutRefResultBufferAllMaybeNull(length)							
#	define uXm_OutRefResultByteBufferAllMaybeNull(length)						


#	define uXm_OutRefResultNullONFAIL										

#  endif
#else

#	define uXm_Use_decl_annotations		_Use_decl_annotations_

#	define uXm_Analyzis(axp)

// Check the return value of a function e.g. _Check_return_ ErrorCode Foo();
#	define uXm_CheckReturn
#	define uXm_MustInspectResult

// annotations to uXmpress value of integral or pointer parameter
#	define uXm_InRange(lb,ub)
#	define uXm_OutRange(lb,ub)
#	define uXm_RetRange(lb,ub)
#	define uXm_DerefINRange	(lb,ub)
#	define uXm_DerefOutRange(lb,ub)
#	define uXm_DerefRetRange(lb,ub)
#	define uXm_PreEqualTo(uXmpr)
#	define uXm_PostEqualTo(uXmpr)

#	define uXm_In															
#	define uXm_InOpt															

#	define uXm_InZ															
#	define uXm_InOptZ														

#	define uXm_InReads(length)													
#	define uXm_InReadsOpt(length)												
#	define uXm_InReadsBytes(length)												
#	define uXm_InReadsBytesOpt(length)											
#	define uXm_InReadsZ(length)													
#	define uXm_InReadsOptZ(length)												
#	define uXm_InReadsOrZ(length)												
#	define uXm_InReadsOrZOpt(length)											

#	define uXm_InReadsTo(length,count)												/* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters */
#	define uXm_InReadsToOpt(length,count)											/* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters and optional Null parameter */

#	define uXm_InReadsToPtr(ptr)												
#	define uXm_InReadsToPtrOpt(ptr)											
#	define uXm_InReadsToPtrZ(ptr)												
#	define uXm_InReadsToPtrOptZ(ptr)											


#	define uXm_Out															
#	define uXm_Outopt														

#	define uXm_OutWrites(length)												
#	define uXm_OutWritesOpt(length)												
#	define uXm_OutWritesBytes(length)											
#	define uXm_OutWritesBytesOpt(length)										
#	define uXm_OutWritesZ(length)												
#	define uXm_OutWritesOptZ(length)											
#	define uXm_OutWritesTo(length,count)										
#	define uXm_OutWritesToOpt(length,count)										
#	define uXm_OutWritesAll(length)												
#	define uXm_OutWritesAllOpt(length)											
#	define uXm_OutWritesBytesTo(length,count)									
#	define uXm_OutWritesBytesToOpt(length,count)									
#	define uXm_OutWritesBytesAll(length)										
#	define uXm_OutWritesBytesAllOpt(length)										

#	define uXm_OutWritesToPtr(ptr)											
#	define uXm_OutWritesToPtrOpt(ptr)											
#	define uXm_OutWritesToPtrZ(ptr)											
#	define uXm_OutWritesToPtrOptZ(ptr)										


#	define uXm_InOut															
#	define uXm_InOutopt														

#	define uXm_InOutM2																	/* an input/output modifiable ( type ) and ( Name ) */
#	define uXm_InOutM3														/* an input/output modifiable ( type ) and ( Name ) */
#	define uXm_InOutM4											/* an input/output modifiable ( type ) and ( Name ) */

#	define uXm_InOutoptM2																	/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#	define uXm_InOutoptM3													/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#	define uXm_InOutoptM4											/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */

#	define uXm_InOutZ														
#	define uXm_InOutoptZ														

#	define uXm_InOutUp(length)													
#	define uXm_InOutUpOpt(length)												
#	define uXm_InOutUpZ(length)													
#	define uXm_InOutUpOptZ(length)												
#	define uXm_InOutUpTo(length,count)											
#	define uXm_InOutUpToOpt(length,count)										
#	define uXm_InOutUpAll(length)												
#	define uXm_InOutUpAllOpt(length)											

#	define uXm_InOutUpBytes(length)												
#	define uXm_InOutUpBytesOpt(length)											
#	define uXm_InOutUpBytesTo(length,count)										
#	define uXm_InOutUpBytesToOpt(length,count)									
#	define uXm_InOutUpBytesAll(length)											
#	define uXm_InOutUpBytesAllOpt(length)										


#	define uXm_OutPtr														
#	define uXm_OutPtrResultMaybeNull											
#	define uXm_OutPtrOpt														
#	define uXm_OutPtrOPtrResultMaybeNull										

#	define uXm_OutPtrResultZ													
#	define uXm_OutPtrOPtrResultZ												
#	define uXm_OutPtrResultMaybeNullZ											
#	define uXm_OutPtrOPtrResultMaybeNullZ										

#	define uXm_OutPtrResultNullONFAIL											
#	define uXm_OutPtrOPtrResultNullONFAIL										

#	define uXm_COMOutPtr														
#	define uXm_COMOutPtrResultMaybeNull										
#	define uXm_COMOutPtrOpt													
#	define uXm_COMOutPtrOPtrResultMaybeNull									


#	define uXm_OutPtrResultBuffer(length)											
#	define uXm_OutPtrOPtrResultBuffer(length)										
#	define uXm_OutPtrResultBufferTo(length,count)									
#	define uXm_OutPtrOPtrResultBufferTo(length,count)								
#	define uXm_OutPtrResultBufferAll(length)										
#	define uXm_OutPtrOPtrResultBufferAll(length)									
#	define uXm_OutPtrResultBufferMaybeNull(length)								
#	define uXm_OutPtrOPtrResultBufferMaybeNull(length)							
#	define uXm_OutPtrResultBufferToMaybeNull(length,count)						
#	define uXm_OutPtrOPtrResultBufferToMaybeNull(length,count)					
#	define uXm_OutPtrResultBufferAllMaybeNull(length)								
#	define uXm_OutPtrOPtrResultBufferAllMaybeNull(length)							

#	define uXm_OutPtrResultByteBuffer(length)										
#	define uXm_OutPtrOPtrResultByteBuffer(length)									
#	define uXm_OutPtrResultByteBufferTo(length,count)								
#	define uXm_OutPtrOPtrResultByteBufferTo(length,count)							
#	define uXm_OutPtrResultByteBufferAll(length)									
#	define uXm_OutPtrOPtrResultByteBufferAll(length)								
#	define uXm_OutPtrResultByteBufferMaybeNull(length)							
#	define uXm_OutPtrOPtrResultByteBufferMaybeNull(length)						
#	define uXm_OutPtrResultByteBufferToMaybeNull(length,count)					
#	define uXm_OutPtrOPtrResultByteBufferToMaybeNull(length,count)				
#	define uXm_OutPtrResultByteBufferAllMaybeNull(length)							
#	define uXm_OutPtrOPtrResultByteBufferAllMaybeNull(length)						


#	define uXm_OutRef														
#	define uXm_OutRefResultMaybeNull											

#	define uXm_OutRefResultBuffer(length)										
#	define uXm_OutRefResultByteBuffer(length)									
#	define uXm_OutRefResultBufferTo(length,count)								
#	define uXm_OutRefResultByteBufferTo(length,count)							
#	define uXm_OutRefResultBufferAll(length)									
#	define uXm_OutRefResultByteBufferAll(length)								

#	define uXm_OutRefResultBufferMaybeNull(length)								
#	define uXm_OutRefResultByteBufferMaybeNull(length)							
#	define uXm_OutRefResultBufferToMaybeNull(length,count)						
#	define uXm_OutRefResultBYEBufferToMaybeNull(length,count)					
#	define uXm_OutRefResultBufferAllMaybeNull(length)							
#	define uXm_OutRefResultByteBufferAllMaybeNull(length)						


#	define uXm_OutRefResultNullONFAIL										

#endif

#endif  /*uXm_SAL_PROCESS_H*/
