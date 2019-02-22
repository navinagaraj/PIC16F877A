opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 18 "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	psect config,class=CONFIG,delta=2 ;#
# 18 "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	dw 0x1F7A ;#
	FNCALL	_main,_num
	FNCALL	_num,_second_1st_dig
	FNCALL	_num,_second_2nd_dig
	FNCALL	_num,_hour_1st_dig
	FNCALL	_num,_hour_2nd_dig
	FNCALL	_hour_2nd_dig,_delay
	FNCALL	_hour_1st_dig,_delay
	FNCALL	_second_2nd_dig,_delay
	FNCALL	_second_1st_dig,_delay
	FNROOT	_main
	global	_arr
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	line	25

;initializer for _arr
	retlw	0FCh
	retlw	060h
	retlw	0DAh
	retlw	0F2h
	retlw	066h
	retlw	0B6h
	retlw	0BEh
	retlw	0E0h
	retlw	0FEh
	retlw	0F6h
	global	_f
	global	_b
	global	_c
	global	_d
	global	_e
	global	_i
	global	_j
	global	_a
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_a:
       ds      2

	global	_PORTB
_PORTB	set	6
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TRISB
_TRISB	set	134
	global	_TRISD0
_TRISD0	set	1088
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD2
_TRISD2	set	1090
	global	_TRISD3
_TRISD3	set	1091
	file	"7sed_time__second.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_b:
       ds      2

_c:
       ds      2

_d:
       ds      2

_e:
       ds      2

_i:
       ds      2

_j:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_f:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
_arr:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
	clrf	((__pbssCOMMON)+8)&07Fh
	clrf	((__pbssCOMMON)+9)&07Fh
	clrf	((__pbssCOMMON)+10)&07Fh
	clrf	((__pbssCOMMON)+11)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+10)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_num
?_num:	; 0 bytes @ 0x0
	global	?_second_1st_dig
?_second_1st_dig:	; 0 bytes @ 0x0
	global	?_second_2nd_dig
?_second_2nd_dig:	; 0 bytes @ 0x0
	global	?_hour_1st_dig
?_hour_1st_dig:	; 0 bytes @ 0x0
	global	?_hour_2nd_dig
?_hour_2nd_dig:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	2
	global	??_num
??_num:	; 0 bytes @ 0x2
	global	??_second_1st_dig
??_second_1st_dig:	; 0 bytes @ 0x2
	global	??_second_2nd_dig
??_second_2nd_dig:	; 0 bytes @ 0x2
	global	??_hour_1st_dig
??_hour_1st_dig:	; 0 bytes @ 0x2
	global	??_hour_2nd_dig
??_hour_2nd_dig:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 10, bss 14, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2      14
;; BANK0           80      0      14
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_hour_2nd_dig	void  size(1) Largest target is 0
;;
;; ?_hour_1st_dig	void  size(1) Largest target is 0
;;
;; ?_second_2nd_dig	void  size(1) Largest target is 0
;;
;; ?_second_1st_dig	void  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _num->_second_1st_dig
;;   _num->_second_2nd_dig
;;   _num->_hour_1st_dig
;;   _num->_hour_2nd_dig
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0       0
;;                                _num
;; ---------------------------------------------------------------------------------
;; (1) _num                                                  0     0      0       0
;;                     _second_1st_dig
;;                     _second_2nd_dig
;;                       _hour_1st_dig
;;                       _hour_2nd_dig
;; ---------------------------------------------------------------------------------
;; (2) _hour_2nd_dig                                         2     0      2       0
;;                                              0 COMMON     2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _hour_1st_dig                                         2     0      2       0
;;                                              0 COMMON     2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _second_2nd_dig                                       2     0      2       0
;;                                              0 COMMON     2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _second_1st_dig                                       2     0      2       0
;;                                              0 COMMON     2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _num
;;     _second_1st_dig
;;       _delay
;;     _second_2nd_dig
;;       _delay
;;     _hour_1st_dig
;;       _delay
;;     _hour_2nd_dig
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      1F      12        0.0%
;;ABS                  0      0      1C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0       E       5       17.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      2       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  712[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_num
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l2056:	
;7seg_time_second.c: 31: TRISD3 = TRISD2 = TRISD1 = TRISD0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1088/8)^080h,(1088)&7
	bcf	(1089/8)^080h,(1089)&7
	bcf	(1090/8)^080h,(1090)&7
	bcf	(1091/8)^080h,(1091)&7
	line	32
	
l2058:	
;7seg_time_second.c: 32: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	33
;7seg_time_second.c: 33: while(1)
	
l713:	
	line	35
;7seg_time_second.c: 34: {
;7seg_time_second.c: 35: for(a=0;a<6;a++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a)
	clrf	(_a+1)
	
l2060:	
	movf	(_a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(06h)
	subwf	(_a),w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2064
u2360:
	goto	l713
	
l2062:	
	goto	l713
	line	36
	
l714:	
	
l2064:	
;7seg_time_second.c: 36: for(b=0;b<10;b++)
	clrf	(_b)
	clrf	(_b+1)
	
l2066:	
	movf	(_b+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(0Ah)
	subwf	(_b),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2070
u2370:
	goto	l2116
	
l2068:	
	goto	l2116
	line	37
	
l716:	
	
l2070:	
;7seg_time_second.c: 37: for(e=0;e<6;e++)
	clrf	(_e)
	clrf	(_e+1)
	
l2072:	
	movf	(_e+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2385
	movlw	low(06h)
	subwf	(_e),w
u2385:

	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2076
u2380:
	goto	l2112
	
l2074:	
	goto	l2112
	line	38
	
l718:	
	
l2076:	
;7seg_time_second.c: 38: for(f=0;f<10;f++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f)
	clrf	(_f+1)
	
l2078:	
	movf	(_f+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(0Ah)
	subwf	(_f),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2082
u2390:
	goto	l2108
	
l2080:	
	goto	l2108
	line	39
	
l720:	
	
l2082:	
;7seg_time_second.c: 39: for(c=0;c<6;c++)
	clrf	(_c)
	clrf	(_c+1)
	
l2084:	
	movf	(_c+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(06h)
	subwf	(_c),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l2088
u2400:
	goto	l2104
	
l2086:	
	goto	l2104
	line	40
	
l722:	
	
l2088:	
;7seg_time_second.c: 40: for(d=0;d<10;d++)
	clrf	(_d)
	clrf	(_d+1)
	
l2090:	
	movf	(_d+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2415
	movlw	low(0Ah)
	subwf	(_d),w
u2415:

	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l2094
u2410:
	goto	l2100
	
l2092:	
	goto	l2100
	line	41
	
l724:	
	
l2094:	
;7seg_time_second.c: 41: num();
	fcall	_num
	line	40
	
l2096:	
	movlw	low(01h)
	addwf	(_d),f
	skipnc
	incf	(_d+1),f
	movlw	high(01h)
	addwf	(_d+1),f
	
l2098:	
	movf	(_d+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2425
	movlw	low(0Ah)
	subwf	(_d),w
u2425:

	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2094
u2420:
	goto	l2100
	
l725:	
	line	39
	
l2100:	
	movlw	low(01h)
	addwf	(_c),f
	skipnc
	incf	(_c+1),f
	movlw	high(01h)
	addwf	(_c+1),f
	
l2102:	
	movf	(_c+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2435
	movlw	low(06h)
	subwf	(_c),w
u2435:

	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l2088
u2430:
	goto	l2104
	
l723:	
	line	38
	
l2104:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_f),f
	skipnc
	incf	(_f+1),f
	movlw	high(01h)
	addwf	(_f+1),f
	
l2106:	
	movf	(_f+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2445
	movlw	low(0Ah)
	subwf	(_f),w
u2445:

	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l2082
u2440:
	goto	l2108
	
l721:	
	line	37
	
l2108:	
	movlw	low(01h)
	addwf	(_e),f
	skipnc
	incf	(_e+1),f
	movlw	high(01h)
	addwf	(_e+1),f
	
l2110:	
	movf	(_e+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2455
	movlw	low(06h)
	subwf	(_e),w
u2455:

	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l2076
u2450:
	goto	l2112
	
l719:	
	line	36
	
l2112:	
	movlw	low(01h)
	addwf	(_b),f
	skipnc
	incf	(_b+1),f
	movlw	high(01h)
	addwf	(_b+1),f
	
l2114:	
	movf	(_b+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2465
	movlw	low(0Ah)
	subwf	(_b),w
u2465:

	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l2070
u2460:
	goto	l2116
	
l717:	
	line	35
	
l2116:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_a),f
	skipnc
	incf	(_a+1),f
	movlw	high(01h)
	addwf	(_a+1),f
	
l2118:	
	movf	(_a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2475
	movlw	low(06h)
	subwf	(_a),w
u2475:

	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l2064
u2470:
	goto	l713
	
l715:	
	goto	l713
	line	42
	
l726:	
	line	33
	goto	l713
	
l727:	
	line	43
	
l728:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_num
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _num *****************
;; Defined at:
;;		line 48 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_second_1st_dig
;;		_second_2nd_dig
;;		_hour_1st_dig
;;		_hour_2nd_dig
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text193
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	line	48
	global	__size_of_num
	__size_of_num	equ	__end_of_num-_num
	
_num:	
	opt	stack 5
; Regs used in _num: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	49
	
l2038:	
;7seg_time_second.c: 49: for(i=0;i<10;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l2040:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2335
	movlw	low(0Ah)
	subwf	(_i),w
u2335:

	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l731
u2330:
	goto	l736
	
l2042:	
	goto	l736
	line	50
	
l731:	
	line	51
;7seg_time_second.c: 50: {
;7seg_time_second.c: 51: TMR1CS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	52
;7seg_time_second.c: 52: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	53
;7seg_time_second.c: 53: T1CKPS1 = 1;
	bsf	(133/8),(133)&7
	line	54
	
l2044:	
;7seg_time_second.c: 54: TMR1H = 0X0B;
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	55
;7seg_time_second.c: 55: TMR1L = 0XDC;
	movlw	(0DCh)
	movwf	(14)	;volatile
	line	56
	
l2046:	
;7seg_time_second.c: 56: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	57
;7seg_time_second.c: 57: while(!TMR1IF)
	goto	l2050
	
l734:	
	line	59
	
l2048:	
;7seg_time_second.c: 58: {
;7seg_time_second.c: 59: second_1st_dig(d);
	movf	(_d+1),w
	clrf	(?_second_1st_dig+1)
	addwf	(?_second_1st_dig+1)
	movf	(_d),w
	clrf	(?_second_1st_dig)
	addwf	(?_second_1st_dig)

	fcall	_second_1st_dig
	line	60
;7seg_time_second.c: 60: second_2nd_dig(c);
	movf	(_c+1),w
	clrf	(?_second_2nd_dig+1)
	addwf	(?_second_2nd_dig+1)
	movf	(_c),w
	clrf	(?_second_2nd_dig)
	addwf	(?_second_2nd_dig)

	fcall	_second_2nd_dig
	line	61
;7seg_time_second.c: 61: hour_1st_dig(b);
	movf	(_b+1),w
	clrf	(?_hour_1st_dig+1)
	addwf	(?_hour_1st_dig+1)
	movf	(_b),w
	clrf	(?_hour_1st_dig)
	addwf	(?_hour_1st_dig)

	fcall	_hour_1st_dig
	line	62
;7seg_time_second.c: 62: hour_2nd_dig(a);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a+1),w
	clrf	(?_hour_2nd_dig+1)
	addwf	(?_hour_2nd_dig+1)
	movf	(_a),w
	clrf	(?_hour_2nd_dig)
	addwf	(?_hour_2nd_dig)

	fcall	_hour_2nd_dig
	goto	l2050
	line	63
	
l733:	
	line	57
	
l2050:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l2048
u2340:
	
l735:	
	line	64
;7seg_time_second.c: 63: }
;7seg_time_second.c: 64: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	49
	
l2052:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l2054:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2355
	movlw	low(0Ah)
	subwf	(_i),w
u2355:

	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l731
u2350:
	goto	l736
	
l732:	
	line	66
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_num
	__end_of_num:
;; =============== function _num ends ============

	signat	_num,88
	global	_hour_2nd_dig
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function _hour_2nd_dig *****************
;; Defined at:
;;		line 108 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_num
;; This function uses a non-reentrant model
;;
psect	text194
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	line	108
	global	__size_of_hour_2nd_dig
	__size_of_hour_2nd_dig	equ	__end_of_hour_2nd_dig-_hour_2nd_dig
	
_hour_2nd_dig:	
	opt	stack 5
; Regs used in _hour_2nd_dig: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	109
	
l2032:	
;7seg_time_second.c: 109: RD0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	110
;7seg_time_second.c: 110: RD1 = RD2 = RD3 = 0;
	bcf	(67/8),(67)&7
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	line	111
	
l2034:	
;7seg_time_second.c: 111: PORTB = arr[a];
	movf	(_a),w
	addlw	_arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	112
	
l2036:	
;7seg_time_second.c: 112: delay();
	fcall	_delay
	line	113
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_hour_2nd_dig
	__end_of_hour_2nd_dig:
;; =============== function _hour_2nd_dig ends ============

	signat	_hour_2nd_dig,88
	global	_hour_1st_dig
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function _hour_1st_dig *****************
;; Defined at:
;;		line 98 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_num
;; This function uses a non-reentrant model
;;
psect	text195
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	line	98
	global	__size_of_hour_1st_dig
	__size_of_hour_1st_dig	equ	__end_of_hour_1st_dig-_hour_1st_dig
	
_hour_1st_dig:	
	opt	stack 5
; Regs used in _hour_1st_dig: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	99
	
l2026:	
;7seg_time_second.c: 99: RD1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	100
;7seg_time_second.c: 100: RD0 = RD2 = RD3 = 0;
	bcf	(67/8),(67)&7
	bcf	(66/8),(66)&7
	bcf	(64/8),(64)&7
	line	101
	
l2028:	
;7seg_time_second.c: 101: PORTB = arr[b]+1;
	movf	(_b),w
	addlw	_arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	01h
	movwf	(6)	;volatile
	line	102
	
l2030:	
;7seg_time_second.c: 102: delay();
	fcall	_delay
	line	103
	
l750:	
	return
	opt stack 0
GLOBAL	__end_of_hour_1st_dig
	__end_of_hour_1st_dig:
;; =============== function _hour_1st_dig ends ============

	signat	_hour_1st_dig,88
	global	_second_2nd_dig
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function _second_2nd_dig *****************
;; Defined at:
;;		line 88 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_num
;; This function uses a non-reentrant model
;;
psect	text196
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	line	88
	global	__size_of_second_2nd_dig
	__size_of_second_2nd_dig	equ	__end_of_second_2nd_dig-_second_2nd_dig
	
_second_2nd_dig:	
	opt	stack 5
; Regs used in _second_2nd_dig: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	89
	
l2020:	
;7seg_time_second.c: 89: RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	90
;7seg_time_second.c: 90: RD0 = RD1 = RD3 = 0;
	bcf	(67/8),(67)&7
	bcf	(65/8),(65)&7
	bcf	(64/8),(64)&7
	line	91
	
l2022:	
;7seg_time_second.c: 91: PORTB = arr[c];
	movf	(_c),w
	addlw	_arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	92
	
l2024:	
;7seg_time_second.c: 92: delay();
	fcall	_delay
	line	93
	
l747:	
	return
	opt stack 0
GLOBAL	__end_of_second_2nd_dig
	__end_of_second_2nd_dig:
;; =============== function _second_2nd_dig ends ============

	signat	_second_2nd_dig,88
	global	_second_1st_dig
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _second_1st_dig *****************
;; Defined at:
;;		line 78 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_num
;; This function uses a non-reentrant model
;;
psect	text197
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	line	78
	global	__size_of_second_1st_dig
	__size_of_second_1st_dig	equ	__end_of_second_1st_dig-_second_1st_dig
	
_second_1st_dig:	
	opt	stack 5
; Regs used in _second_1st_dig: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	79
	
l2014:	
;7seg_time_second.c: 79: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	80
;7seg_time_second.c: 80: RD0 = RD1 = RD2 = 0;
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	bcf	(64/8),(64)&7
	line	81
	
l2016:	
;7seg_time_second.c: 81: PORTB = arr[d];
	movf	(_d),w
	addlw	_arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	82
	
l2018:	
;7seg_time_second.c: 82: delay();
	fcall	_delay
	line	83
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of_second_1st_dig
	__end_of_second_1st_dig:
;; =============== function _second_1st_dig ends ============

	signat	_second_1st_dig,88
	global	_delay
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _delay *****************
;; Defined at:
;;		line 71 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_second_1st_dig
;;		_second_2nd_dig
;;		_hour_1st_dig
;;		_hour_2nd_dig
;; This function uses a non-reentrant model
;;
psect	text198
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\7seg_time_second.c"
	line	71
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	72
	
l2004:	
;7seg_time_second.c: 72: for(j=0;j<1000;j++);
	clrf	(_j)
	clrf	(_j+1)
	
l2006:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(03E8h)
	subwf	(_j),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l2010
u2310:
	goto	l741
	
l2008:	
	goto	l741
	
l739:	
	
l2010:	
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l2012:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2325
	movlw	low(03E8h)
	subwf	(_j),w
u2325:

	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l2010
u2320:
	goto	l741
	
l740:	
	line	73
	
l741:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
