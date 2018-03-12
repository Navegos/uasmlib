; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128ib struct 16
	    b0 byte ?
	    b1 byte ?
	    b2 byte ?
	    b3 byte ?
	    b4 byte ?
	    b5 byte ?
	    b6 byte ?
	    b7 byte ?
	    b8 byte ?
	    b9 byte ?
	    b10 byte ?
	    b11 byte ?
	    b12 byte ?
	    b13 byte ?
	    b14 byte ?
	    b15 byte ?	
    __uXm128ib ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128iw struct 16
    	w0 word ?
	    w1 word ?
    	w2 word ?
    	w3 word ?
    	w4 word ?
       	w5 word ?
    	w6 word ?
    	w7 word ?	
    __uXm128iw ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128id struct 16
    	i0 dword ?
    	i1 dword ?
    	i2 dword ?
    	i3 dword ?	
    __uXm128id ends

; MM128 = yes
; HFA   = no
; HVA   = no
    __uXm128iq struct 16
    	q0 qword ?
    	q1 qword ?
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
