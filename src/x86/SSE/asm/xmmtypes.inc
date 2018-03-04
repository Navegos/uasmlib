; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128ib struct 16
	    b0 BYTE ?
	    b1 BYTE ?
	    b2 BYTE ?
	    b3 BYTE ?
	    b4 BYTE ?
	    b5 BYTE ?
	    b6 BYTE ?
	    b7 BYTE ?
	    b8 BYTE ?
	    b9 BYTE ?
	    b10 BYTE ?
	    b11 BYTE ?
	    b12 BYTE ?
	    b13 BYTE ?
	    b14 BYTE ?
	    b15 BYTE ?	
    __uXm128ib ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128iw struct 16
    	w0 WORD ?
	    w1 WORD ?
    	w2 WORD ?
    	w3 WORD ?
    	w4 WORD ?
       	w5 WORD ?
    	w6 WORD ?
    	w7 WORD ?	
    __uXm128iw ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128id struct 16
    	i0 DWORD ?
    	i1 DWORD ?
    	i2 DWORD ?
    	i3 DWORD ?	
    __uXm128id ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128iq struct 16
    	q0 QWORD ?
    	q1 QWORD ?
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
    	f0 real4 ?
    	f1 real4 ?
    	f2 real4 ?
    	f3 real4 ?
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
    	d0 real8 ?
    	d1 real8 ?	
    __uXm128d ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128fed union 16
    	f __uXm128f <>
    	ib __uXm128ib <>
    	iw __uXm128iw <>	
    	id __uXm128id <>
    	iq __uXm128iq <>
    	d __uXm128d <>
    __uXm128fed ends
