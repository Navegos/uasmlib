; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128ib struct 16
		_xmmib byte 16 dup(?)
    __uX128ib ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128iw struct 16
		_xmmiw word 8 dup(?)
    __uX128iw ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128id struct 16
		_xmmid dword 4 dup(?)
    __uX128id ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128iq struct 16
		_xmmiq qword 2 dup(?)
    __uX128iq ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128i union 16
    	ib __uX128ib <>
    	iw __uX128iw <>	
    	id __uX128id <>
    	iq __uX128iq <>	
    __uX128i ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128f struct 16
		_xmmf real4 4 dup(?)
    __uX128f ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128 union 16
    	f __uX128f <>
    	ib __uX128ib <>
    	iw __uX128iw <>	
    	id __uX128id <>
    	iq __uX128iq <>	
    __uX128 ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128d struct 16
		_xmmf real8 2 dup(?)
    __uX128d ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128fd union 16
    	f __uX128f <>
    	d __uX128d <>
    __uX128fd ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uX128fid union 16
    	f __uX128f <>
    	ib __uX128ib <>
    	iw __uX128iw <>	
    	id __uX128id <>
    	iq __uX128iq <>
    	d __uX128d <>
    __uX128fid ends
