if @Platform EQ 0
	ifndef WIN32
		define WIN32
	endif
	ifndef __X32__
		define __X32__
	endif
	ifndef WINDOWS
		define WINDOWS
	endif
endif

if @Platform EQ 1
	ifndef WIN64
		define WIN64
	endif
	ifndef __X64__
		define __X64__
	endif
	ifndef WINDOWS
		define WINDOWS
	endif
endif

if @Platform EQ 2
	ifndef ELF32
		define ELF32
	endif
	ifndef __X32__
		define __X32__
	endif
	ifndef UNIX
		define UNIX
	endif
endif

if @Platform EQ 3
	ifndef ELF64
		define ELF64
	endif
	ifndef __X64__
		define __X64__
	endif
	ifndef UNIX
		define UNIX
	endif
endif

if @Platform EQ 4
	ifndef MACHO64
		define MACHO64
	endif
	ifndef __X64__
		define __X64__
	endif
	ifndef UNIX
		define UNIX
	endif
endif

ifdef WINDOWS
	ifdef __X64__
		ifndef DEFINED_VECTORCALL
			define DEFINED_VECTORCALL
		endif
		UX_VECCALL		textequ		<VECTORCALL>
		;Parameters RCX/XMM0, RDX/XMM1, R8/XMM2, R9/XMM3 + XMM0-XMM5/YMM0-YMM5
		;Preserve RBX, RBP, RDI, RSI, RSP, R12, R13, R14, R15, XMM6:XMM15
		;Return EAX:EDX/XMM0:XMM3
	else	
		ifdef __X32_VECTORCALL__ ;not available with uasm macrolib
			ifndef DEFINED_VECTORCALL
				define DEFINED_VECTORCALL
			endif
			UX_VECCALL		textequ		<VECTORCALL>
			;ECX,EDX, XMM0-XMM5/YMM0-YMM5
			;Preserve RBX, RBP, RDI, RSI, RSP, R12, R13, R14, R15, XMM6:XMM15
			;Return EAX:EDX/XMM0:XMM3
		else
			ifndef DEFINED_FASTCALL
				define DEFINED_FASTCALL
			endif
			UX_VECCALL		textequ		<FASTCALL> 
			;Parameters ECX, EDX
			;Preserve EBX
			;Return EAX:EDX/XMM0:XMM3
		endif
	endif ;__X64__
else
	ifdef __X64__
		ifndef DEFINED_SYSTEMV
			define DEFINED_SYSTEMV
		endif
		UX_VECCALL		textequ		<SYSTEMV>
		;Parameters RDI, RSI, RDX, RCX, R8, R9, XMM0–XMM7/YMM0–YMM7
		;Preserve RBX, RSP, RBP, R12, R13, R14, R15
		;Return EAX:EDX/XMM0:XMM3
	else
		ifdef __X32_SYSTEMV__
			ifndef DEFINED_SYSTEMV
				define DEFINED_SYSTEMV
			endif
			UX_VECCALL		textequ		<SYSTEMV>
			;none?ECX,EDX, XMM0–XMM7/YMM0–YMM7
			;Preserve EBX, ESI, EDI, EBP, ESP
			;Return EAX:EDX/XMM0:XMM3
		else
			ifndef DEFINED_FASTCALL
				define DEFINED_FASTCALL
			endif
			UX_VECCALL		textequ		<FASTCALL>
			;Parameters ECX, EDX
			;Preserve EBX
			;Return EAX:EDX/XMM0:XMM3
		endif
	endif ;__X64__
endif ;WINDOWS

ifdef WINDOWS
	ifdef __X64__
			UX_USESRBX			textequ		<USES rbx>
			UX_USESRBXSIDI		textequ		<USES rbx rsi rdi>
			UX_INSTPTR			textequ		<rcx>
			;UX_VECMETHOD		textequ		<VECMETHOD>
			;UX_STATICVECMETHOD	textequ		<STATICVECMETHOD>
	else
			UX_USESRBX			textequ		<USES ebx>
			;UX_USESRBXSIDI		textequ		<USES ebx esi edi>
			UX_USESRBXSIDI		textequ		<USES ebx>
			UX_INSTPTR			textequ		<ecx>
			;UX_VECMETHOD		textequ		<METHOD>
			;UX_STATICVECMETHOD	textequ		<STATICMETHOD>
	endif ;__X64__
else
	ifdef __X64__
			UX_USESRBX			textequ		<USES rbx>
			UX_USESRBXSIDI		textequ		<USES rbx rsi rdi>
			UX_INSTPTR			textequ		<rdi>
	else
			UX_USESRBX			textequ		<USES ebx>
			;UX_USESRBXSIDI		textequ		<USES ebx esi edi>
			UX_USESRBXSIDI		textequ		<USES ebx>
			UX_INSTPTR			textequ		<ecx>
	endif ;__X64__
			;UX_VECMETHOD		textequ		<METHOD>
			;UX_STATICVECMETHOD	textequ		<STATICMETHOD>
endif ;WINDOWS


UX_ARRAY macro arrType:REQ, sizeArr:REQ
	cdef textequ <__&arrType&_def>
	% IFDEF cdef
		ifndef __X64__
			mov		eax,	8
		else
			mov		r8,		8
		endif
	else
		ifndef __X64__
			mov		eax,	sizeof(arrType)
		else
			mov		r8,		sizeof(arrType)
		endif
	endif
		ifndef __X64__
			imul	eax,	sizeArr
		else
			imul	r8,		sizeArr
		endif
	ifndef __X64__
		MEMALLOC(eax)
		exitm<eax>
	else
		MEMALLOC(r8)
		exitm<rax>
	endif
endm

UX_DELETEARRAY macro arrPtr:REQ
	MEMFREE(arrPtr)
endm

UX_OINTERFACE macro CName:REQ
	% __&CName&_def = 1
	% __&CName&_size = 16
	curClass textequ <CName>
	@CatStr(CName, <vtbl CSTRUCT >)
	__0 dq 0
	__1 dq 0
	ptrDefS textequ <psr>
	ptrDefS catstr ptrDefS, <&curClass&>, < typedef ptr >, <&curClass&>
	% ptrDefS
endm

UX_ENDOINTERFACE macro
	curClass ends
	;ptrDefS textequ <psr>
	;ptrDefS catstr ptrDefS, <&curClass&>, < typedef ptr >, <&curClass&>
	;% ptrDefS
endm

UX_CVIRTUAL macro method:REQ, retType:REQ, protoDef:VARARG
		local sz1, sz2
		pDef catstr < typedef proto >, <(&retType&)>, < thisPtr:ptr>
	ifnb <protoDef>
		pDef catstr pDef, <, >, <&protoDef>
	endif
		sz2 catstr <_>, curClass, <_&method>, <Pto>
		% &sz2 &pDef
		% sz1 typedef ptr &sz2
		% method sz1 0
		% __&curClass&_size = __&curClass&_size + 8
		fnex textequ <_>
		fnex catstr fnex, curClass, <_>, <&method&>, < proto >, <(&retType&)>, < thisPtr:psr>, curClass
	ifnb <&protoDef>
		fnex catstr fnex, <, >, <&protoDef&>
	else
	endif
		fnex
endm

UX_CLASS macro CName:REQ
	% __&CName&_def = 1
	% __&CName&_size = 16
	curClass textequ <CName>
	@CatStr(CName, <vtbl CSTRUCT >)
	ctorS textequ <ctor dq offset _&CName&_Init>
	dtorS textequ <dtor dq offset _&CName&_Destroy>
	ctorS
	dtorS
endm

UX_ENDCLASS macro
	curClass ends
	.data
	align 16
	% _stat&curClass&vtbl &curClass&vtbl <>
	align 16
	% _stat&curClass& curClass <>
	ptrDefS textequ <psr>
	ptrDefS catstr ptrDefS, <&curClass&>, < typedef ptr >, <&curClass&>
	% ptrDefS
	ptrDefS2 textequ <psr>
	ptrDefS2 catstr ptrDefS2, <&curClass&vtbl>, < typedef ptr >, <&curClass&vtbl>
	% ptrDefS2
	.code
endm

UX_ENDMETHODS macro	
	local evtbl
	% evtbl catstr <&curClass&>, <vtbl>, < ends>
	evtbl
	@CatStr(curClass, < CSTRUCT >)
	% pVtbl dq offset _stat&curClass&vtbl
endm

UX_CMETHOD macro method:REQ
	local sz1, sz2
	sz2 catstr <_>, curClass, <_&method>, <Pto>
	% sz1 typedef ptr &sz2
	% method sz1 offset _&curClass&_&method&
	% __&curClass&_size = __&curClass&_size + 8
endm

UX_CSTATIC macro method:REQ
	local sz1, sz2
	sz2 catstr <_>, curClass, <_&method>, <Pto>
	% sz1 typedef ptr &sz2
	% method sz1 offset _&curClass&_&method&
	% __&curClass&_size = __&curClass&_size + 8
endm

UX_METHOD macro className:REQ, method:REQ, retType:=<dword>, usesStr:=<UX_USESRBXSIDI>, args:VARARG
		curClass textequ <className>
		curMethod textequ <method>
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proto >, <(&retType&)> , < thisPtr:psr>, <&className&>
	ifnb <args>
		fnex catstr fnex, <, >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, <Pto typedef proto >, <(&retType&)>, < thisPtr:psr>, <&className&>
	ifnb <args>
		fnex catstr fnex, <, >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proc>, <(&retType&)>, < >, <&usesStr&>, < thisPtr:psr>, <&className&>
	ifnb <args>
		fnex catstr fnex, <, >, <&args&>
	else
	endif
	ifdef WINDOWS
		ifndef __X64__
			assume ecx:ptr curClass
		else
			assume rcx:ptr curClass
		endif
	else
		ifndef __X64__
			assume ecx:ptr curClass
		else
			assume rdi:ptr curClass
		endif
	endif
		align 16
			fnex
endm

UX_STATICMETHOD macro className:REQ, method:REQ, retType:=<dword>, usesStr:=<UX_USESRBXSIDI>, args:VARARG
		curClass textequ <className>
		curMethod textequ <method>
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proto >, <(&retType&)>
	ifnb <args>
		fnex catstr fnex, < >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, <Pto typedef proto >, <(&retType&)>
	ifnb <args>
		fnex catstr fnex, < >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proc>, <(&retType&)>, < >, <&usesStr&>
	ifnb <args>
		fnex catstr fnex, < >, <&args&>
	else
	endif
	ifdef WINDOWS
		ifndef __X64__
			assume ecx:ptr curClass
		else
			assume rcx:ptr curClass
		endif
	else
		ifndef __X64__
			assume ecx:ptr curClass
		else
			assume rdi:ptr curClass
		endif
	endif
		align 16
			fnex
endm

UX_VECMETHOD macro className:REQ, method:REQ, retType:=<dword>, usesStr:=<UX_USESRBXSIDI>, args:VARARG
		curClass textequ <className>
		curMethod textequ <method>
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proto UX_VECCALL >, <(&retType&)> , < thisPtr:psr>, <&className&>
	ifnb <args>
		fnex catstr fnex, <, >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, <Pto typedef proto UX_VECCALL >, <(&retType&)>, < thisPtr:psr>, <&className&>
	ifnb <args>
		fnex catstr fnex, <, >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proc UX_VECCALL >, <(&retType&)>, < >, <&usesStr&>, < thisPtr:psr>, <&className&>
	ifnb <args>
		fnex catstr fnex, <, >, <&args&>
	else
	endif
	ifdef WINDOWS
		ifndef __X64__
			assume ecx:ptr curClass
		else
			assume rcx:ptr curClass
		endif
	else
		ifndef __X64__
			assume ecx:ptr curClass
		else
			assume rdi:ptr curClass
		endif
	endif
		align 16
		fnex
endm

UX_STATICVECMETHOD macro className:REQ, method:REQ, retType:=<dword>, usesStr:=<UX_USESRBXSIDI>, args:VARARG
		curClass textequ <className>
		curMethod textequ <method>
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proto UX_VECCALL >, <(&retType&)>
	ifnb <args>
		fnex catstr fnex, < >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, <Pto typedef proto UX_VECCALL >, <(&retType&)>
	ifnb <args>
		fnex catstr fnex, < >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proc UX_VECCALL >, <(&retType&)>, < >, <&usesStr&>
	ifnb <args>
		fnex catstr fnex, < >, <&args&>
	else
	endif
	ifdef WINDOWS
		ifndef __X64__
			assume ecx:ptr curClass
		else
			assume rcx:ptr curClass
		endif
	else
		ifndef __X64__
			assume ecx:ptr curClass
		else
			assume rdi:ptr curClass
		endif
	endif
		align 16
		fnex
endm

UX_ENDMETHOD macro
	ifdef WINDOWS
		ifndef __X64__
			assume ecx:nothing
		else
			assume rcx:nothing
		endif
	else
		ifndef __X64__
			assume ecx:nothing
		else
			assume rdi:nothing
		endif
	endif
		fnex textequ <_>
		fnex catstr fnex, curClass
		fnex catstr fnex, <_>
		fnex catstr fnex, curMethod
		fnex catstr fnex, < ENDP>
		fnex
endm

UX_DECLARE macro varName:REQ, typeName:VARARG
	ldef textequ <local &varName&>
	ldef catstr ldef, < : >
	ldef catstr ldef, <typeName>
	% ldef
endm

UX_STATICREF macro reg:REQ, classType:REQ
	% lea reg, _stat&classType&
endm

UX_NEW macro className:REQ, ctorArgs:VARARG
	ifndef __X64__
		% mov	eax,		sizeof(className)
		MEMALLOC(eax)
	.if(eax != 0)
		mov		edi,	eax
		% lea	esi,	_stat&className
		% mov	ecx,	sizeof(className)
	else
		% mov	r8,		sizeof(className)
		MEMALLOC(r8)
	.if(rax != 0)
		mov		rdi,	rax
		% lea	rsi,	_stat&className
		% mov	rcx,	sizeof(className)
	endif
		rep movsb
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <Init>
	ifnb <ctorArgs>
	ifndef __X64__
		fnex2 textequ <invoke fnex, eax, ctorArgs>
	else
		fnex2 textequ <invoke fnex, rax, ctorArgs>
	endif
	else
	ifndef __X64__
		fnex2 textequ <invoke fnex, eax>
	else
		fnex2 textequ <invoke fnex, rax>
	endif
	endif
		fnex2
	.endif
	ifndef __X64__
		exitm<eax>
	else
		exitm<rax>
	endif
endm

UX_RBXNEW macro className:REQ, ctorArgs:VARARG
	ifndef __X64__
		% mov	eax,		sizeof(className)
		MEMALLOC(eax)
	.if (eax != 0)
		mov		edi,	eax
		% lea	esi,	_stat&className
		% mov	ecx,	sizeof(className)
	else
		% mov	r8,		sizeof(className)
		MEMALLOC(r8)
	.if (rax != 0)
		mov		rdi,	rax
		% lea	rsi,	_stat&className
		% mov	rcx,	sizeof(className)
	endif
		rep movsb
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <Init>
	ifnb <ctorArgs>
	ifndef __X64__
		fnex2 textequ <invoke fnex, eax, ctorArgs>
	else
		fnex2 textequ <invoke fnex, rax, ctorArgs>
	endif
	else
		fnex2 textequ <invoke fnex, rax>
	endif
		fnex2
	ifndef __X64__
		mov ebx, eax
	else
		mov rbx, rax
	endif
	.endif
	ifndef __X64__
		exitm<ebx>
	else
		exitm<rbx>
	endif
endm

UX_ITEM macro objPtr:REQ, idx:REQ
	exitm<[_V(objPtr, Iterator, Items, idx)]>
endm

UX_ITEMR macro objPtr:REQ, idx:REQ
	exitm<_V(objPtr, Iterator, Items, idx)>
endm

UX_INVOKE macro className:REQ, method:REQ, objPtr:REQ, args:VARARG
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
	ifnb <args>
		fnex2 textequ <invoke fnex, &objPtr&, &args&>
	else
		fnex2 textequ <invoke fnex, &objPtr&>
	endif
		fnex2
endm

UX_I macro className:REQ, method:REQ, objPtr:REQ, args:VARARG
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex2 textequ <invoke fnex, &objPtr&, &args&>
		fnex2
	if @LastReturnType EQ 0
		exitm <al>
	elseif @LastReturnType EQ 0x40
		exitm <al>
	elseif @LastReturnType EQ 1
		exitm <ax>
	elseif @LastReturnType EQ 0x41
		exitm <ax>
	elseif @LastReturnType EQ 2
		exitm <eax>
	elseif @LastReturnType EQ 0x42
		exitm <eax>
	ifdef __X64__
	elseif @LastReturnType EQ 3
		exitm <rax>
	elseif @LastReturnType EQ 0x43
		exitm <rax>
	elseif @LastReturnType EQ 0xc3
		exitm <rax>
	endif
	elseif @LastReturnType EQ 6
		exitm <xmm0>
	elseif @LastReturnType EQ 7
		exitm <ymm0>
	elseif @LastReturnType EQ 8
		exitm <zmm0>
	elseif @LastReturnType EQ 0x22
		exitm <xmm0>
	elseif @LastReturnType EQ 0x23
		exitm <xmm0>
	else
		exitm <eax>
	endif
endm

UX_STATIC macro className:REQ, method:REQ, args:VARARG
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex2 textequ <invoke fnex, &args&>
		fnex2
	if @LastReturnType EQ 0
		exitm <al>
	elseif @LastReturnType EQ 0x40
		exitm <al>
	elseif @LastReturnType EQ 1
		exitm <ax>
	elseif @LastReturnType EQ 0x41
		exitm <ax>
	elseif @LastReturnType EQ 2
		exitm <eax>
	elseif @LastReturnType EQ 0x42
		exitm <eax>
	ifdef __X64__
	elseif @LastReturnType EQ 3
		exitm <rax>
	elseif @LastReturnType EQ 0x43
		exitm <rax>
	elseif @LastReturnType EQ 0xc3
		exitm <rax>
	endif
	elseif @LastReturnType EQ 6
		exitm <xmm0>
	elseif @LastReturnType EQ 7
		exitm <ymm0>
	elseif @LastReturnType EQ 8
		exitm <zmm0>
	elseif @LastReturnType EQ 0x22
		exitm <xmm0>
	elseif @LastReturnType EQ 0x23
		exitm <xmm0>
	else
		exitm <eax>
	endif
endm

UX_DELETE macro objPtr:REQ
	ifdef WINDOWS
	ifndef __X64__
		mov ecx, objPtr
		mov eax, [ecx]
		call qword ptr[eax + 8]
	else
		mov rcx, objPtr
		mov rax, [rcx]
		call qword ptr[rax + 8]
	endif
	else
	ifndef __X64__
		mov ecx, objPtr
		mov eax, [ecx]
		call qword ptr[eax + 8]
	else
		mov rdi, objPtr
		mov rax, [rdi]
		call qword ptr[rax + 8]
	endif
	endif
		MEMFREE(objPtr)
endm

UX_VINVOKE macro pInterface:REQ, Interface:REQ, Function:REQ, args:VARARG
	InterfacePtr textequ <_>
	InterfacePtr catstr InterfacePtr, <&Interface>, <_>, <&Function>, <Pto>
	if(OPATTR(pInterface)) and 00010000b
		ifnb <args>
			ifdef WINDOWS
				ifndef __X64__
					ifdifi <&pInterface>, <ecx>
						mov ecx, &pInterface
					endif
					mov eax, [ecx]
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx, &args
				else
					ifdifi <&pInterface>, <rcx>
						mov rcx, &pInterface
					endif
					mov r15, [rcx]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx, &args
				endif
			else
				ifndef __X64__
					mov ecx, &pInterface
					mov eax, [ecx]
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx, &args
				else
					mov rdi, &pInterface
					mov r15, [rdi]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi, &args
				endif
			endif
		else
			ifdef WINDOWS
				ifndef __X64__
					ifdifi <&pInterface>, <ecx>
						mov ecx,&pInterface
					endif
					mov eax,[ecx]
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx
				else
					ifdifi <&pInterface>, <rcx>
						mov rcx,&pInterface
					endif
					mov r15,[rcx]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx
				endif
			else
				ifndef __X64__
					mov ecx,&pInterface
					mov eax,[ecx]
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx
				else
					mov rdi,&pInterface
					mov r15,[rdi]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi
				endif
			endif
		endif
	else
		ifdef WINDOWS
			ifndef __X64__
				ifdifi <&pInterface>, <ecx>
					mov ecx,pInterface
				endif
				mov eax,[ecx]
			else
				ifdifi <&pInterface>, <rcx>
					mov rcx,pInterface
				endif
				mov r15,[rcx]
			endif
		else
			ifndef __X64__
				ifdifi <&pInterface>, <ecx>
					mov ecx,pInterface
				endif
				mov eax,[ecx]
			else
				ifdifi <&pInterface>, <rdi>
					mov rdi,pInterface
				endif
				mov r15,[rdi]
			endif
		endif
		ifdef WINDOWS
			ifndef __X64__
				ifnb <args>
					for arg, <args>
						ifidni <&arg>, <ecx>
							.err <ecx is not allowed as a Method parameter with indirect object label>
						endif
					endm
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx, &args
				else
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx
				endif
			else
				ifnb <args>
					for arg, <args>
						ifidni <&arg>, <rcx>
							.err <rcx is not allowed as a Method parameter with indirect object label>
						endif
					endm
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx, &args
				else
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx
				endif
			endif
		else
			ifndef __X64__
				ifnb <args>
					for arg, <args>
						ifidni <&arg>, <ecx>
							.err <ecx is not allowed as a Method parameter with indirect object label>
						endif
					endm
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx, &args
				else
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx
				endif
			else
				ifnb <args>
					for arg, <args>
						ifidni <&arg>, <rdi>
							.err <rdi is not allowed as a Method parameter with indirect object label>
						endif
					endm
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi, &args
				else
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi
				endif
			endif
		endif
	endif
endm

UX_V macro pInterface:REQ, Interface:REQ, Function:REQ, args:VARARG
	InterfacePtr textequ <_>
	InterfacePtr catstr InterfacePtr, <&Interface>, <_>, <&Function>, <Pto>
	if(OPATTR(pInterface)) and 00010000b
		ifnb <args>
			ifdef WINDOWS
				ifndef __X64__
					ifdifi <&pInterface>, <ecx>
						mov ecx,&pInterface
					endif
					mov eax,[ecx]
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx, &args
				else
					ifdifi <&pInterface>, <rcx>
						mov rcx,&pInterface
					endif
					mov r15,[rcx]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx, &args
				endif
			else
				ifndef __X64__
					mov ecx,&pInterface
					mov eax,[ecx]
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx, &args
				else
					mov rdi,&pInterface
					mov r15,[rdi]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi, &args
				endif
			endif
		else
			ifdef WINDOWS
				ifndef __X64__
					ifdifi <&pInterface>, <ecx>
						mov ecx,&pInterface
					endif
					mov eax,[ecx]
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx
				else
					ifdifi <&pInterface>, <rcx>
						mov rcx,&pInterface
					endif
					mov r15,[rcx]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx
				endif
			else
				ifndef __X64__
					mov ecx,&pInterface
					mov eax,[ecx]
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx
				else
					mov rdi,&pInterface
					mov r15,[rdi]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi
				endif
			endif
		endif
	else
		ifdef WINDOWS
			ifndef __X64__
				ifdifi <&pInterface>, <ecx>
					mov ecx,pInterface
				endif
				mov eax,[ecx]
				ifnb <args>
					for arg, <args>
						ifidni <&arg>, <ecx>
							.err <ecx is not allowed as a Method parameter with indirect object label>
						endif
					endm
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx, &args
				else
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx
				endif
			else
				ifdifi <&pInterface>, <rcx>
					mov rcx,pInterface
				endif
				mov r15,[rcx]
				ifnb <args>
					for arg, <args>
						ifidni <&arg>, <rcx>
							.err <rcx is not allowed as a Method parameter with indirect object label>
						endif
					endm
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx, &args
				else
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx
				endif
			endif
		else
			ifndef __X64__
				mov ecx,pInterface
				mov eax,[ecx]
				ifnb <args>
					for arg, <args>
						ifidni <&arg>, <ecx>
							.err <ecx is not allowed as a Method parameter with indirect object label>
						endif
					endm
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx, &args
				else
					invoke(InterfacePtr ptr[eax].&Interface&vtbl.&Function), ecx
				endif
			else
				mov rdi,pInterface
				mov r15,[rdi]
				ifnb <args>
					for arg, <args>
						ifidni <&arg>, <rdi>
							.err <rdi is not allowed as a Method parameter with indirect object label>
						endif
					endm
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi, &args
				else
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi
				endif
			endif
		endif
	endif
	if @LastReturnType EQ 0
		exitm <al>
	elseif @LastReturnType EQ 0x40
		exitm <al>
	elseif @LastReturnType EQ 1
		exitm <ax>
	elseif @LastReturnType EQ 0x41
		exitm <ax>
	elseif @LastReturnType EQ 2
		exitm <eax>
	elseif @LastReturnType EQ 0x42
		exitm <eax>
	ifdef __X64__
	elseif @LastReturnType EQ 3
		exitm <rax>
	elseif @LastReturnType EQ 0x43
		exitm <rax>
	elseif @LastReturnType EQ 0xc3
		exitm <rax>
	endif
	elseif @LastReturnType EQ 6
		exitm <xmm0>
	elseif @LastReturnType EQ 7
		exitm <ymm0>
	elseif @LastReturnType EQ 8
		exitm <zmm0>
	elseif @LastReturnType EQ 0x22
		exitm <xmm0>
	elseif @LastReturnType EQ 0x23
		exitm <xmm0>
	else
		exitm <eax>
	endif
endm

UX_UINVOKE macro func:REQ, args:VARARG
	ifb <args>
		invoke func
	else
		invoke func, args
	endif
	if @LastReturnType EQ 0
		exitm <al>
	elseif @LastReturnType EQ 0x40
		exitm <al>
	elseif @LastReturnType EQ 1
		exitm <ax>
	elseif @LastReturnType EQ 0x41
		exitm <ax>
	elseif @LastReturnType EQ 2
		exitm <eax>
	elseif @LastReturnType EQ 0x42
		exitm <eax>
	ifdef __X64__
	elseif @LastReturnType EQ 3
		exitm <rax>
	elseif @LastReturnType EQ 0x43
		exitm <rax>
	elseif @LastReturnType EQ 0xc3
		exitm <rax>
	endif
	elseif @LastReturnType EQ 6
		exitm <xmm0>
	elseif @LastReturnType EQ 7
		exitm <ymm0>
	elseif @LastReturnType EQ 8
		exitm <zmm0>
	elseif @LastReturnType EQ 0x22
		exitm <xmm0>
	elseif @LastReturnType EQ 0x23
		exitm <xmm0>
	else
		exitm <eax>
	endif
endm

;delete release, acquire, _vd, _vb, _vw, _vf

UX_COMINTERFACE macro CName:REQ
	curClass textequ <CName>
	% __&CName&_size = 24
	@CatStr(CName, <vtbl COMSTRUCT>)
	ptrDefS textequ <psr>
	ptrDefS catstr ptrDefS, <&curClass&>, < typedef ptr >, <&curClass&>
	% ptrDefS
	CVIRTUAL QueryInterface, <qword>, :ptr
	CVIRTUAL AddRef, <dword>
	CVIRTUAL Release, <dword>
endm

UX_ENDCOMINTERFACE macro
	UX_ENDMETHODS
	curClass ends
endm


false	equ		0
true	equ		1

; /* EFLAGS %eax=00H, %ebx=00H */
bit_CPUID 					equ		00200000h	; 1 << 21

; /* %eax=00H, %ecx %ebx */
bit_ntel					equ		6c65746eh	; 'GenuineIntel'
bit_cAMD					equ		444d4163h	; 'AuthenticAMD'

; /* %eax=00H, %ebx */
bit_Cent					equ		746e6543h	; 'CentaurHauls'
bit_VIA						equ		20414956h	; 'VIA VIA VIA'
bit_Cyri					equ		69727943h	; 'CyrixInstead'
bit_NexG					equ		4778654eh	; 'NexGenDriven'

; /* %eax=01H, %ecx */
bit_SSE3					equ		00000001h	; 1 << 0
bit_PCLMULQDQ				equ		00000002h	; 1 << 1
bit_MONITOR 				equ		00000008h	; 1 << 3
bit_SSSE3 					equ		00000200h	; 1 << 9
bit_FMA 					equ		00001000h	; 1 << 12
bit_CMPXCHG16B 				equ		00002000h	; 1 << 13
bit_SSE41 					equ		00080000h	; 1 << 19
bit_SSE42 					equ		00100000h	; 1 << 20
bit_MOVBE 					equ		00400000h	; 1 << 22
bit_POPCNT 					equ		00800000h	; 1 << 23
bit_AES 					equ		02000000h	; 1 << 25
bit_XSAVE 					equ		04000000h	; 1 << 26
bit_OSXSAVE 				equ		08000000h	; 1 << 27
bit_AVX 					equ		10000000h	; 1 << 28
bit_F16C 					equ		20000000h	; 1 << 29
bit_RDRAND 					equ		40000000h	; 1 << 30

bit_AVX_FMA					equ		18001000h	; 1 << 12 | 1 << 27 | 1 << 28
bit_OSXS_AVX				equ		18000000h	; 1 << 27 | 1 << 28
bit_AVX_F16C				equ		38000000h	; 1 << 27 | 1 << 28 | 1 << 29

bit_SSE3_AES 				equ		02000001h	; 1 << 0 | 1 << 25
bit_SSSE3_AES 				equ		02000200h	; 1 << 9 | 1 << 25
bit_SSE41_AES 				equ		02080000h	; 1 << 19 | 1 << 25
bit_SSE42_AES 				equ		02100000h	; 1 << 20 | 1 << 25

bit_SSE3_PCLMULQDQ			equ		00000003h	; 1 << 1 | 1 << 1
bit_SSSE3_PCLMULQDQ			equ		00000202h	; 1 << 1 | 1 << 9
bit_SSE41_PCLMULQDQ			equ		00080002h	; 1 << 1 | 1 << 19
bit_SSE42_PCLMULQDQ			equ		00100002h	; 1 << 1 | 1 << 20

; /* %eax=01H, %edx */
bit_FPU						equ		00000001h	; 1 << 0
bit_TSC						equ		00000010h	; 1 << 4
bit_MSR						equ		00000020h	; 1 << 5
bit_CMPXCHG8B				equ		00000100h	; 1 << 8
bit_SEP						equ		00000800h	; 1 << 11
bit_CMOV					equ		00008000h	; 1 << 15
bit_CLFSH					equ		00080000h	; 1 << 19
bit_MMX						equ		00800000h	; 1 << 23
bit_FXSR					equ		01000000h	; 1 << 24
bit_SSE						equ		02000000h	; 1 << 25
bit_SSE2					equ		04000000h	; 1 << 26

; /* %eax=07H, %ebx */
bit_FSGSBASE				equ		00000001h	; 1 << 0
bit_SGX						equ		00000004h	; 1 << 2
bit_BMI1					equ		00000008h	; 1 << 3
bit_HLE						equ		00000010h	; 1 << 4
bit_AVX2					equ		00000020h	; 1 << 5
bit_SMEP					equ		00000080h	; 1 << 7
bit_BMI2					equ		00000100h	; 1 << 8
bit_ERMS					equ		00000200h	; 1 << 9
bit_INVPCID					equ		00000400h	; 1 << 10
bit_RTM						equ		00000800h	; 1 << 11
bit_MPX						equ		00004000h	; 1 << 14
bit_AVX512F					equ		00010000h	; 1 << 16
bit_AVX512DQ				equ		00020000h	; 1 << 17
bit_RDSEED					equ		00040000h	; 1 << 18
bit_ADX						equ		00080000h	; 1 << 19
bit_SMAP					equ		00100000h	; 1 << 20
bit_AVX512_IFMA				equ		00200000h	; 1 << 21
bit_CLFLUSHOPT				equ		00800000h	; 1 << 23
bit_CLWB					equ		01000000h	; 1 << 24
bit_AVX512PF				equ		04000000h	; 1 << 26
bit_AVX512ER				equ		08000000h	; 1 << 27
bit_AVX512CD				equ		10000000h	; 1 << 28
bit_SHA						equ		20000000h	; 1 << 29
bit_AVX512BW				equ		40000000h	; 1 << 30
bit_AVX512VL				equ		80000000h	; 1 << 31

bit_AVX512F_DQ				equ		00030000h	; 1 << 16 | 1 << 17
bit_AVX512F_DQ_VL			equ		80030000h	; 1 << 16 | 1 << 17 | 1 << 31
bit_AVX512F_IFMA			equ		00210000h	; 1 << 16 | 1 << 21
bit_AVX512F_IFMA_VL			equ		80210000h	; 1 << 16 | 1 << 21 | 1 << 31
bit_AVX512F_PF				equ		04010000h	; 1 << 16 | 1 << 26
bit_AVX512F_ER				equ		08010000h	; 1 << 16 | 1 << 27
bit_AVX512F_CD				equ		10010000h	; 1 << 16 | 1 << 28
bit_AVX512F_CD_VL			equ		90010000h	; 1 << 16 | 1 << 28 | 1 << 31
bit_AVX512F_BW				equ		40010000h	; 1 << 16 | 1 << 30
bit_AVX512F_BW_VL			equ		0C0010000h	; 1 << 16 | 1 << 30 | 1 << 31
bit_AVX512F_VL				equ		80010000h	; 1 << 16 | 1 << 31

; /* %eax=07H, %ecx */
bit_PREFETCHWT1				equ		00000001h	; 1 << 0
bit_AVX512_VBMI				equ		00000002h	; 1 << 1
bit_UMIP					equ		00000004h	; 1 << 2
bit_PKU						equ		00000008h	; 1 << 3
bit_OSPKE					equ		00000010h	; 1 << 4
bit_AVX512_VBMI2			equ		00000040h	; 1 << 6
bit_GFNI					equ		00000100h	; 1 << 8
bit_VAES					equ		00000200h	; 1 << 9
bit_VPCLMULQDQ				equ		00000400h	; 1 << 10
bit_AVX512_VNNI				equ		00000800h	; 1 << 11
bit_AVX512_BITALG			equ		00001000h	; 1 << 12
bit_AVX512_VPOPCNTDQ		equ		00004000h	; 1 << 14
bit_RDPID					equ		00400000h	; 1 << 22

; /* %eax=07H, %edx */
bit_AVX512_4VNNIW			equ		00000004h	; 1 << 2
bit_AVX512_4FMAPS			equ		00000008h	; 1 << 3

; /* %eax=80000001H, %ecx */
bit_LAHF					equ		00000001h	; 1 << 0
bit_LZCNT					equ		00000020h	; 1 << 5
bit_ABM						equ		00000020h	; 1 << 5
bit_SSE4a					equ		00000040h	; 1 << 6
bit_PREFETCHW				equ		00000100h	; 1 << 8
bit_XOP						equ		00000800h	; 1 << 11
bit_LWP						equ		00008000h	; 1 << 15
bit_FMA4					equ		00010000h	; 1 << 16
bit_TBM						equ		00200000h	; 1 << 21
bit_MWAITX					equ		20000000h	; 1 << 29

; /* %eax=80000001H, %edx */
bit_SYSCALL					equ		00000800h	; 1 << 11
bit_MMXEXT					equ		00400000h	; 1 << 22
bit_RDTSCP					equ		08000000h	; 1 << 27
bit_3DNOWEXT				equ		40000000h	; 1 << 30
bit_3DNOW					equ		80000000h	; 1 << 31
