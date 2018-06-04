uxarginvoke macro argNo:REQ, invCnt:REQ, func:REQ, args:VARARG
	local dstSize, stackPos
	
	REGS15STORAGE
	
	ifb <args>
		invoke func
	else
		if invCnt EQ 2
			mov RRCX,rcx
			if @Arch EQ 0
			movaps RXMM0,xmm0
			else
			vmovaps RXMM0,xmm0
			endif
		elseif invCnt EQ 3
			mov RRCX,rcx
			mov RRDX,rdx
			if @Arch EQ 0
			movaps RXMM0,xmm0
			movaps RXMM1,xmm1
			else
			vmovaps RXMM0,xmm0
			vmovaps RXMM1,xmm1
			endif
		elseif invCnt EQ 4
			mov RRCX,rcx
			mov RRDX,rdx
			mov RR8,r8
			if @Arch EQ 0
			movaps RXMM0,xmm0
			movaps RXMM1,xmm1
			movaps RXMM2,xmm2
			else
			vmovaps RXMM0,xmm0
			vmovaps RXMM1,xmm1
			vmovaps RXMM2,xmm2
			endif
		elseif invCnt GE 5
			mov RRCX,rcx
			mov RRDX,rdx
			mov RR8,r8
			mov RR9,r9
			if @Arch EQ 0
			movaps RXMM0,xmm0
			movaps RXMM1,xmm1
			movaps RXMM2,xmm2
			movaps RXMM3,xmm3
			else
			vmovaps RXMM0,xmm0
			vmovaps RXMM1,xmm1
			vmovaps RXMM2,xmm2
			vmovaps RXMM3,xmm3
			endif
		endif
		invoke func, args
		if invCnt EQ 2
			mov rcx,RRCX
			if @Arch EQ 0
			movaps xmm0,RXMM0
			else
			vmovaps xmm0,RXMM0
			endif
		elseif invCnt EQ 3
			mov rcx,RRCX
			mov rdx,RRDX
			if @Arch EQ 0
			movaps xmm0,RXMM0
			movaps xmm1,RXMM1
			else
			vmovaps xmm0,RXMM0
			vmovaps xmm1,RXMM1
			endif
		elseif invCnt EQ 4
			mov rcx,RRCX
			mov rdx,RRDX
			mov r8,RR8
			if @Arch EQ 0
			movaps xmm0,RXMM0
			movaps xmm1,RXMM1
			movaps xmm2,RXMM2
			else
			vmovaps xmm0,RXMM0
			vmovaps xmm1,RXMM1
			vmovaps xmm2,RXMM2
			endif
		elseif invCnt GE 5
			mov rcx,RRCX
			mov rdx,RRDX
			mov r8,RR8
			mov r9,RR9
			if @Arch EQ 0
			movaps xmm0,RXMM0
			movaps xmm1,RXMM1
			movaps xmm2,RXMM2
			movaps xmm3,RXMM3
			else
			vmovaps xmm0,RXMM0
			vmovaps xmm1,RXMM1
			vmovaps xmm2,RXMM2
			vmovaps xmm3,RXMM3
			endif
		endif	
	endif

	if @LastReturnType EQ 0
		dstSize = 1
	elseif @LastReturnType EQ 0x40
		dstSize = 1
	elseif @LastReturnType EQ 1
		dstSize = 2
	elseif @LastReturnType EQ 0x41
		dstSize = 2
	elseif @LastReturnType EQ 2
		dstSize = 4
	elseif @LastReturnType EQ 0x42
		dstSize = 4
	elseif @LastReturnType EQ 3
		dstSize = 8
	elseif @LastReturnType EQ 0x43
		dstSize = 8
	elseif @LastReturnType EQ 0xc3
		dstSize = 8
	elseif @LastReturnType EQ 6
		dstSize = 16
	elseif @LastReturnType EQ 7
		dstSize = 32
	elseif @LastReturnType EQ 8
		dstSize = 64
	elseif @LastReturnType EQ 0x22
		dstSize = 16
	elseif @LastReturnType EQ 0x23
		dstSize = 16
	else
		dstSize = 4
	endif

	if argNo EQ 1
		if dstSize EQ 1
			mov cl,al
			exitm<cl>
		elseif dstSize EQ 2
			mov cx,ax
			exitm<cx>
		elseif dstSize EQ 4
			mov ecx,eax
			exitm<ecx>
		elseif dstSize EQ 8
			mov rcx,rax
			exitm<rcx>
		elseif dstSize EQ 16
			exitm<xmm0>
		elseif dstSize EQ 32
			exitm<ymm0>
		elseif dstSize EQ 64	
			exitm<zmm0>
		endif
	elseif argNo EQ 2
		if dstSize EQ 1
			mov dl,al
			exitm<dl>
		elseif dstSize EQ 2
			mov dx,ax
			exitm<dx>
		elseif dstSize EQ 4
			mov edx,eax
			exitm<edx>
		elseif dstSize EQ 8
			mov rdx,rax
			exitm<rdx>
		elseif dstSize EQ 16
			if @Arch EQ 0
				movdqa xmm1,xmm0
			else
				vmovdqa xmm1,xmm0
			endif
			exitm<xmm1>
		elseif dstSize EQ 32
			vmovdqa ymm1,ymm0
			exitm<ymm1>
		elseif dstSize EQ 64	
			vmovdqa zmm1,zmm0
			exitm<zmm1>
		endif
	elseif argNo EQ 3
		if dstSize EQ 1
			mov r8b,al
			exitm<r8b>
		elseif dstSize EQ 2
			mov r8w,ax
			exitm<r8w>
		elseif dstSize EQ 4
			mov r8d,eax
			exitm<r8d>
		elseif dstSize EQ 8
			mov r8,rax
			exitm<r8>
		elseif dstSize EQ 16
			if @Arch EQ 0
				movdqa xmm2,xmm0
			else
				vmovdqa xmm2,xmm0
			endif
			exitm<xmm2>
		elseif dstSize EQ 32
			vmovdqa ymm2,ymm0
			exitm<ymm2>
		elseif dstSize EQ 64	
			vmovdqa zmm2,zmm0
			exitm<zmm2>
		endif
	elseif argNo EQ 4
		if dstSize EQ 1
			mov r9b,al
			exitm<r9b>
		elseif dstSize EQ 2
			mov r9w,ax
			exitm<r9w>
		elseif dstSize EQ 4
			mov r9d,eax
			exitm<r9d>
		elseif dstSize EQ 8
			mov r9,rax
			exitm<r9>
		elseif dstSize EQ 16
			if @Arch EQ 0
				movdqa xmm3,xmm0
			else
				vmovdqa xmm3,xmm0
			endif
			exitm<xmm3>
		elseif dstSize EQ 32
			vmovdqa ymm3,ymm0
			exitm<ymm3>
		elseif dstSize EQ 64	
			vmovdqa zmm3,zmm0
			exitm<zmm3>
		endif
	else
		if dstSize EQ 1
			mov [rsp+0x20+((argNo-5)*8)],al
		elseif dstSize EQ 2
			mov [rsp+0x20+((argNo-5)*8)],ax
		elseif dstSize EQ 4
			mov [rsp+0x20+((argNo-5)*8)],eax
		elseif dstSize EQ 8
			mov [rsp+0x20+((argNo-5)*8)],rax
		elseif (dstSize EQ 16) OR (dstSize EQ 32) OR (dstSize EQ 64)
			if @Arch EQ 0
				movsd [rsp+0x20+((argNo-5)*8)],xmm0
			else
				vmovsd [rsp+0x20+((argNo-5)*8)],xmm0
			endif
		endif
		exitm<[rsp+0x20+((argNo-5)*8)]>
	endif
endm

UX_ARRAY macro arrType:REQ, sizeArr:REQ
	cdef textequ <__&arrType&_def>
	% IFDEF cdef
			mov		r8,		8
	else
			mov		r8,		sizeof(arrType)
	endif
			imul	r8,		sizeArr
		MEMALLOC(r8)
		exitm<rax>
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

UX_METHOD macro className:REQ, method:REQ, retType:REQ, usesStr:REQ, args:VARARG
		curClass textequ <className>
		curMethod textequ <method>
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proto >, <(&retType&)>, < thisPtr:psr>, <&className&>
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
			assume rcx:ptr curClass
	else
			assume rdi:ptr curClass
	endif
		align 16
			fnex
endm

UX_STATICMETHOD macro className:REQ, method:REQ, retType:REQ, usesStr:REQ, args:VARARG
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
			assume rcx:ptr curClass
	else
			assume rdi:ptr curClass
	endif
		align 16
			fnex
endm

UX_VECMETHOD macro className:REQ, method:REQ, retType:REQ, usesStr:REQ, args:VARARG
		curClass textequ <className>
		curMethod textequ <method>
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proto __veccall >, <(&retType&)>, < thisPtr:psr>, <&className&>
	ifnb <args>
		fnex catstr fnex, <, >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, <Pto typedef proto __veccall >, <(&retType&)>, < thisPtr:psr>, <&className&>
	ifnb <args>
		fnex catstr fnex, <, >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proc __veccall >, <(&retType&)>, < >, <&usesStr&>, < thisPtr:psr>, <&className&>
	ifnb <args>
		fnex catstr fnex, <, >, <&args&>
	else
	endif
	ifdef WINDOWS
			assume rcx:ptr curClass
	else
			assume rdi:ptr curClass
	endif
		align 16
		fnex
endm

UX_STATICVECMETHOD macro className:REQ, method:REQ, retType:REQ, usesStr:REQ, args:VARARG
		curClass textequ <className>
		curMethod textequ <method>
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proto __veccall >, <(&retType&)>
	ifnb <args>
		fnex catstr fnex, < >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, <Pto typedef proto __veccall >, <(&retType&)>
	ifnb <args>
		fnex catstr fnex, < >, <&args&>
	else
	endif
		fnex
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <&method&>
		fnex catstr fnex, < proc __veccall >, <(&retType&)>, < >, <&usesStr&>
	ifnb <args>
		fnex catstr fnex, < >, <&args&>
	else
	endif
	ifdef WINDOWS
			assume rcx:ptr curClass
	else
			assume rdi:ptr curClass
	endif
		align 16
		fnex
endm

UX_ENDMETHOD macro
	ifdef WINDOWS
			assume rcx:nothing
	else
			assume rdi:nothing
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
		% mov	r8,		sizeof(className)
		MEMALLOC(r8)
	.if(rax != 0)
		mov		rdi,	rax
		% lea	rsi,	_stat&className
		% mov	rcx,	sizeof(className)
		rep movsb
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <Init>
	ifnb <ctorArgs>
		fnex2 textequ <invoke fnex, rax, ctorArgs>
	else
		fnex2 textequ <invoke fnex, rax>
	endif
		fnex2
	.endif
		exitm<rax>
endm

UX_RBXNEW macro className:REQ, ctorArgs:VARARG
		% mov	r8,		sizeof(className)
		MEMALLOC(r8)
	.if (rax != 0)
		mov		rdi,	rax
		% lea	rsi,	_stat&className
		% mov	rcx,	sizeof(className)
		rep movsb
		fnex textequ <_>
		fnex catstr fnex, <&className&>
		fnex catstr fnex, <_>
		fnex catstr fnex, <Init>
	ifnb <ctorArgs>
		fnex2 textequ <invoke fnex, rax, ctorArgs>
	else
		fnex2 textequ <invoke fnex, rax>
	endif
		fnex2
		mov rbx, rax
	.endif
		exitm<rbx>
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
	elseif @LastReturnType EQ 3
		exitm <rax>
	elseif @LastReturnType EQ 0x43
		exitm <rax>
	elseif @LastReturnType EQ 0xc3
		exitm <rax>
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
	elseif @LastReturnType EQ 3
		exitm <rax>
	elseif @LastReturnType EQ 0x43
		exitm <rax>
	elseif @LastReturnType EQ 0xc3
		exitm <rax>
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
		mov rcx, objPtr
		mov rax, [rcx]
		call qword ptr[rax + 8]
	else
		mov rdi, objPtr
		mov rax, [rdi]
		call qword ptr[rax + 8]
	endif
		MEMFREE(objPtr)
endm

UX_VINVOKE macro pInterface:REQ, Interface:REQ, Function:REQ, args:VARARG
	InterfacePtr textequ <_>
	InterfacePtr catstr InterfacePtr, <&Interface>, <_>, <&Function>, <Pto>
	if(OPATTR(pInterface)) and 00010000b
		ifnb <args>
			ifdef WINDOWS
					ifdifi <&pInterface>, <rcx>
						mov rcx, &pInterface
					endif
					mov r15, [rcx]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx, &args
			else
					mov rdi, &pInterface
					mov r15, [rdi]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi, &args
			endif
		else
			ifdef WINDOWS
					ifdifi <&pInterface>, <rcx>
						mov rcx,&pInterface
					endif
					mov r15,[rcx]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx
			else
					mov rdi,&pInterface
					mov r15,[rdi]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi
			endif
		endif
	else
		ifdef WINDOWS
				ifdifi <&pInterface>, <rcx>
					mov rcx,pInterface
				endif
				mov r15,[rcx]
		else
				ifdifi <&pInterface>, <rdi>
					mov rdi,pInterface
				endif
				mov r15,[rdi]
		endif
		ifdef WINDOWS
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
endm

UX_V macro pInterface:REQ, Interface:REQ, Function:REQ, args:VARARG
	InterfacePtr textequ <_>
	InterfacePtr catstr InterfacePtr, <&Interface>, <_>, <&Function>, <Pto>
	if(OPATTR(pInterface)) and 00010000b
		ifnb <args>
			ifdef WINDOWS
					ifdifi <&pInterface>, <rcx>
						mov rcx,&pInterface
					endif
					mov r15,[rcx]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx, &args
			else
					mov rdi,&pInterface
					mov r15,[rdi]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi, &args
			endif
		else
			ifdef WINDOWS
					ifdifi <&pInterface>, <rcx>
						mov rcx,&pInterface
					endif
					mov r15,[rcx]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rcx
			else
					mov rdi,&pInterface
					mov r15,[rdi]
					invoke(InterfacePtr ptr[r15].&Interface&vtbl.&Function), rdi
			endif
		endif
	else
		ifdef WINDOWS
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
	elseif @LastReturnType EQ 3
		exitm <rax>
	elseif @LastReturnType EQ 0x43
		exitm <rax>
	elseif @LastReturnType EQ 0xc3
		exitm <rax>
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
	elseif @LastReturnType EQ 3
		exitm <rax>
	elseif @LastReturnType EQ 0x43
		exitm <rax>
	elseif @LastReturnType EQ 0xc3
		exitm <rax>
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

UX_VCOMINVOKE macro pInterface:REQ, Interface:REQ, Function:REQ, args:VARARG
InterfacePtr textequ <_>
InterfacePtr catstr InterfacePtr, <&Interface>, <_>, <&Function>, <Pto>
if(OPATTR(pInterface)) and 00010000b
ifnb <args>
invoke(InterfacePtr ptr[&pInterface].&Interface.&Function), pInterface, &args
else
invoke(InterfacePtr ptr[&pInterface].&Interface.&Function), pInterface
endif
else
mov rcx, pInterface
mov r15,[rcx]
ifnb <args>
for arg, <args>
ifidni <&arg>, <rcx>
.err <rcx is not allowed as a Method parameter with indirect object label>
endif
endm
invoke(InterfacePtr ptr[r15].&Interface.&Function), rcx, &args
else
invoke(InterfacePtr ptr[r15].&Interface.&Function), rcx
endif
endif
endm

UX_VCOM macro pInterface:REQ, Interface:REQ, Function:REQ, args:VARARG
InterfacePtr textequ <_>
InterfacePtr catstr InterfacePtr, <&Interface>, <_>, <&Function>, <Pto>
if(OPATTR(pInterface)) and 00010000b
ifnb <args>
invoke(InterfacePtr ptr[&pInterface].&Interface.&Function), pInterface, &args
else
invoke(InterfacePtr ptr[&pInterface].&Interface.&Function), pInterface
endif
else
mov rcx, pInterface
mov r15,[rcx]
ifnb <args>
for arg, <args>
ifidni <&arg>, <rcx>
.err <rcx is not allowed as a Method parameter with indirect object label>
endif
endm
invoke(InterfacePtr ptr[r15].&Interface.&Function), rcx, &args
else
invoke(InterfacePtr ptr[r15].&Interface.&Function), rcx
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
elseif @LastReturnType EQ 3
exitm <rax>
elseif @LastReturnType EQ 0x43
exitm <rax>
elseif @LastReturnType EQ 0xc3
exitm <rax>
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


UX_DEREF macro itype:REQ, proc:REQ, argCount:REQ, argsAndRefs:VARARG
    local i, ptrstr, typestr, argstr
    argstr textequ < >
    i = 0
    for dref, <argsAndRefs>
        if i LT argCount+1 
			if i GT 0
				argstr catstr argstr, <,>, <&dref&>
			endif
        else
            if (i-argCount) MOD 2 EQ 1
                ptrstr textequ <&dref&>
            else
                typestr textequ <&dref&>
                if (i-argCount) EQ 1
                    % if(OPATTR(ptrstr)) EQ 0x30
                        % mov rcx, &ptrstr&
                    else
                        % mov rcx, @CatStr(<[>, <&ptrstr&>, <].>, <&typestr&>)
                    endif
                else
                    % mov rcx, @CatStr(<[>, <&ptrstr&>, <].>, <&typestr&>)
                endif
            endif
        endif
    i = i + 1
    endm

	% if @SizeStr(<%&argstr&>) GT 3
		argstr SUBSTR argstr, 3
	endif
	if argCount EQ 0
	   argstr textequ <>
	endif
	
    if argCount GT 0
	    InterfacePtr textequ <_>
        InterfacePtr catstr InterfacePtr, <&itype>, <_>, <&proc>, <Pto>
        if(OPATTR(rcx)) and 00010000b
            if argCount GT 0
                ifdef WINDOWS
                    mov r15,[rcx]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx, &argstr
                else
                    mov rdi,rcx
                    mov r15,[rdi]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rdi, &argstr
                endif
            else
                ifdef WINDOWS
                    mov r15,[rcx]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx
                else
                    mov rdi,rcx
                    mov r15,[rdi]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rdi
                endif
            endif
        else
            mov r15,[rcx]
            if argCount GT 0
                for arg, <argstr>
                    ifidni <&arg>, <rcx>
                        .err <rcx is not allowed as a Method parameter with indirect object label>
                    endif
                endm
                % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx, &argstr
            else
                invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx
            endif
        endif
    else
        InterfacePtr textequ <_>
        InterfacePtr catstr InterfacePtr, <&itype>, <_>, <&proc>, <Pto>
        if(OPATTR(rcx)) and 00010000b
            if argCount GT 0
                ifdef WINDOWS
                    mov r15,[rcx]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx, &argstr
                else
                    mov rdi,rcx
                    mov r15,[rdi]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rdi, &argstr
                endif
            else
                ifdef WINDOWS
                    mov r15,[rcx]
                    invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx
                else
                    mov rdi,rcx
                    mov r15,[rdi]
                    invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rdi
                endif
            endif
        else
            mov r15,[rcx]
            if argCount GT 0
                for arg, <argstr>
                    ifidni <&arg>, <rcx>
                        .err <rcx is not allowed as a Method parameter with indirect object label>
                    endif
                endm
                % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx, &argstr
            else
                invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx
            endif
        endif
    endif
endm

UX_DEREFI macro itype:REQ, proc:REQ,  argCount:REQ, argsAndRefs:VARARG
   local i, ptrstr, typestr, argstr
    argstr textequ < >
    i = 0
    for dref, <argsAndRefs>
        if i LT argCount OR argCount EQ 0
			if argCount GT 0
				argstr catstr argstr, <,>, <&dref&>
			endif
        else
            if (i-argCount) MOD 2 EQ 0
                ptrstr textequ <&dref&>
            else
                typestr textequ <&dref&>
                if (i-argCount) EQ 1
                    % if(OPATTR(ptrstr)) EQ 0x30
                        % mov rcx, &ptrstr&
                    else
                        % mov rcx, @CatStr(<[>, <&ptrstr&>, <].>, <&typestr&>)
                    endif
                else
                    % mov rcx, @CatStr(<[>, <&ptrstr&>, <].>, <&typestr&>)
                endif
            endif
        endif
    i = i + 1
    endm

	% if @SizeStr(<%&argstr&>) GT 3
		argstr SUBSTR argstr, 3
	endif
	
    ifnb <argstr>
        InterfacePtr textequ <_>
        InterfacePtr catstr InterfacePtr, <&itype>, <_>, <&proc>, <Pto>
        if(OPATTR(rcx)) and 00010000b
            ifnb <argstr>
                ifdef WINDOWS
                    mov r15,[rcx]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx, &argstr
                else
                    mov rdi,rcx
                    mov r15,[rdi]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rdi, &argstr
                endif
            else
                ifdef WINDOWS
                    mov r15,[rcx]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx
                else
                    mov rdi,rcx
                    mov r15,[rdi]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rdi
                endif
            endif
        else
            mov r15,[rcx]
            ifnb <argstr>
                for arg, <argstr>
                    ifidni <&arg>, <rcx>
                        .err <rcx is not allowed as a Method parameter with indirect object label>
                    endif
                endm
                % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx, &argstr
            else
                invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx
            endif
        endif
    else
        InterfacePtr textequ <_>
        InterfacePtr catstr InterfacePtr, <&itype>, <_>, <&proc>, <Pto>
        if(OPATTR(rcx)) and 00010000b
            ifnb <argstr>
                ifdef WINDOWS
                    mov r15,[rcx]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx, &argstr
                else
                    mov rdi,rcx
                    mov r15,[rdi]
                    % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rdi, &argstr
                endif
            else
                ifdef WINDOWS
                    mov r15,[rcx]
                    invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx
                else
                    mov rdi,rcx
                    mov r15,[rdi]
                    invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rdi
                endif
            endif
        else
            mov r15,[rcx]
            ifnb <argstr>
                for arg, <argstr>
                    ifidni <&arg>, <rcx>
                        .err <rcx is not allowed as a Method parameter with indirect object label>
                    endif
                endm
                % invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx, &argstr
            else
                invoke(InterfacePtr ptr[r15].&itype&vtbl.&proc), rcx
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
    elseif @LastReturnType EQ 3
        exitm <rax>
    elseif @LastReturnType EQ 0x43
        exitm <rax>
    elseif @LastReturnType EQ 0xc3
        exitm <rax>
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
