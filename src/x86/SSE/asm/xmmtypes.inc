; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128ib struct 16
		_xmmib byte 16 dup(?)
    __uXm128ib ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128iw struct 16
		_xmmiw word 8 dup(?)
    __uXm128iw ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128id struct 16
		_xmmid dword 4 dup(?)
    __uXm128id ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128iq struct 16
		_xmmiq qword 2 dup(?)
    __uXm128iq ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128i union 16
    	ib __uXm128ib <>
    	iw __uXm128iw <>	
    	id __uXm128id <>
    	iq __uXm128iq <>	
    __uXm128i ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128f struct 16
		_xmmf real4 4 dup(?)
    __uXm128f ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128 union 16
    	f __uXm128f <>
    	ib __uXm128ib <>
    	iw __uXm128iw <>	
    	id __uXm128id <>
    	iq __uXm128iq <>	
    __uXm128 ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128d struct 16
		_xmmf real8 2 dup(?)
    __uXm128d ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128fd union 16
    	f __uXm128f <>
    	d __uXm128d <>
    __uXm128fd ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128fid union 16
    	f __uXm128f <>
    	ib __uXm128ib <>
    	iw __uXm128iw <>	
    	id __uXm128id <>
    	iq __uXm128iq <>
    	d __uXm128d <>
    __uXm128fid ends
