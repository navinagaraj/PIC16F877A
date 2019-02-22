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
# 2 "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
	dw 0x1F7A ;#
	FNCALL	_main,_num
	FNCALL	_num,_delay
	FNROOT	_main
	global	_arr
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
	line	7

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
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
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
	file	"time__1.as"
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
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
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
	global	??_num
??_num:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 10, bss 14, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0      14
;; BANK0           80      0      12
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _num
;;     _delay
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
;;DATA                 0      0      1C      12        0.0%
;;ABS                  0      0      1A       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0       C       5       15.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      0       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 10 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  706[COMMON] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_num
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	11
	
l2034:	
;time__1.c: 11: TRISD3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1091/8)^080h,(1091)&7
	line	12
;time__1.c: 12: TRISD2 = 0;
	bcf	(1090/8)^080h,(1090)&7
	line	13
;time__1.c: 13: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	14
;time__1.c: 14: TRISD0 = 0;
	bcf	(1088/8)^080h,(1088)&7
	line	15
	
l2036:	
;time__1.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;time__1.c: 16: while(1)
	
l707:	
	line	18
;time__1.c: 17: {
;time__1.c: 18: for(a=0;a<6;a++)
	clrf	(_a)
	clrf	(_a+1)
	
l2038:	
	movf	(_a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2325
	movlw	low(06h)
	subwf	(_a),w
u2325:

	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l2042
u2320:
	goto	l707
	
l2040:	
	goto	l707
	line	19
	
l708:	
	
l2042:	
;time__1.c: 19: for(b=0;b<10;b++)
	clrf	(_b)
	clrf	(_b+1)
	
l2044:	
	movf	(_b+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2335
	movlw	low(0Ah)
	subwf	(_b),w
u2335:

	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2048
u2330:
	goto	l2074
	
l2046:	
	goto	l2074
	line	20
	
l710:	
	
l2048:	
;time__1.c: 20: for(c=0;c<6;c++)
	clrf	(_c)
	clrf	(_c+1)
	
l2050:	
	movf	(_c+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2345
	movlw	low(06h)
	subwf	(_c),w
u2345:

	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l2054
u2340:
	goto	l2070
	
l2052:	
	goto	l2070
	line	21
	
l712:	
	
l2054:	
;time__1.c: 21: for(d=0;d<10;d++)
	clrf	(_d)
	clrf	(_d+1)
	
l2056:	
	movf	(_d+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2355
	movlw	low(0Ah)
	subwf	(_d),w
u2355:

	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l2060
u2350:
	goto	l2066
	
l2058:	
	goto	l2066
	line	24
	
l714:	
	
l2060:	
;time__1.c: 24: num();
	fcall	_num
	line	21
	
l2062:	
	movlw	low(01h)
	addwf	(_d),f
	skipnc
	incf	(_d+1),f
	movlw	high(01h)
	addwf	(_d+1),f
	
l2064:	
	movf	(_d+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(0Ah)
	subwf	(_d),w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2060
u2360:
	goto	l2066
	
l715:	
	line	20
	
l2066:	
	movlw	low(01h)
	addwf	(_c),f
	skipnc
	incf	(_c+1),f
	movlw	high(01h)
	addwf	(_c+1),f
	
l2068:	
	movf	(_c+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(06h)
	subwf	(_c),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2054
u2370:
	goto	l2070
	
l713:	
	line	19
	
l2070:	
	movlw	low(01h)
	addwf	(_b),f
	skipnc
	incf	(_b+1),f
	movlw	high(01h)
	addwf	(_b+1),f
	
l2072:	
	movf	(_b+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2385
	movlw	low(0Ah)
	subwf	(_b),w
u2385:

	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2048
u2380:
	goto	l2074
	
l711:	
	line	18
	
l2074:	
	movlw	low(01h)
	addwf	(_a),f
	skipnc
	incf	(_a+1),f
	movlw	high(01h)
	addwf	(_a+1),f
	
l2076:	
	movf	(_a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(06h)
	subwf	(_a),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2042
u2390:
	goto	l707
	
l709:	
	goto	l707
	line	25
	
l716:	
	line	16
	goto	l707
	
l717:	
	line	26
	
l718:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_num
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _num *****************
;; Defined at:
;;		line 28 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text97
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
	line	28
	global	__size_of_num
	__size_of_num	equ	__end_of_num-_num
	
_num:	
	opt	stack 6
; Regs used in _num: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l1982:	
;time__1.c: 29: for(i=0;i<10;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l1984:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2295
	movlw	low(0Ah)
	subwf	(_i),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l721
u2290:
	goto	l726
	
l1986:	
	goto	l726
	line	30
	
l721:	
	line	31
;time__1.c: 30: {
;time__1.c: 31: TMR1CS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	32
;time__1.c: 32: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	33
;time__1.c: 33: T1CKPS1 = 1;
	bsf	(133/8),(133)&7
	line	34
	
l1988:	
;time__1.c: 34: TMR1H = 0X0B;
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	35
;time__1.c: 35: TMR1L = 0XDC;
	movlw	(0DCh)
	movwf	(14)	;volatile
	line	36
	
l1990:	
;time__1.c: 36: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	37
;time__1.c: 37: while(!TMR1IF)
	goto	l2028
	
l724:	
	line	39
;time__1.c: 38: {
;time__1.c: 39: RD0 = 0;
	bcf	(64/8),(64)&7
	line	40
;time__1.c: 40: RD1 = 0;
	bcf	(65/8),(65)&7
	line	41
;time__1.c: 41: RD2 = 0;
	bcf	(66/8),(66)&7
	line	42
;time__1.c: 42: RD3 = 1;
	bsf	(67/8),(67)&7
	line	43
	
l1992:	
;time__1.c: 43: PORTB = arr[d];
	movf	(_d),w
	addlw	_arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	44
	
l1994:	
;time__1.c: 44: delay();
	fcall	_delay
	line	45
	
l1996:	
;time__1.c: 45: RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	46
	
l1998:	
;time__1.c: 46: RD1 = 0;
	bcf	(65/8),(65)&7
	line	47
	
l2000:	
;time__1.c: 47: RD2 = 1;
	bsf	(66/8),(66)&7
	line	48
	
l2002:	
;time__1.c: 48: RD3 = 0;
	bcf	(67/8),(67)&7
	line	49
	
l2004:	
;time__1.c: 49: PORTB = arr[c];
	movf	(_c),w
	addlw	_arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	50
;time__1.c: 50: delay();
	fcall	_delay
	line	51
	
l2006:	
;time__1.c: 51: RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	52
	
l2008:	
;time__1.c: 52: RD1 = 1;
	bsf	(65/8),(65)&7
	line	53
	
l2010:	
;time__1.c: 53: RD2 = 0;
	bcf	(66/8),(66)&7
	line	54
	
l2012:	
;time__1.c: 54: RD3 = 0;
	bcf	(67/8),(67)&7
	line	55
	
l2014:	
;time__1.c: 55: PORTB = arr[b]+1;
	movf	(_b),w
	addlw	_arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	01h
	movwf	(6)	;volatile
	line	56
	
l2016:	
;time__1.c: 56: delay();
	fcall	_delay
	line	57
	
l2018:	
;time__1.c: 57: RD0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	58
	
l2020:	
;time__1.c: 58: RD1 = 0;
	bcf	(65/8),(65)&7
	line	59
	
l2022:	
;time__1.c: 59: RD2 = 0;
	bcf	(66/8),(66)&7
	line	60
	
l2024:	
;time__1.c: 60: RD3 = 0;
	bcf	(67/8),(67)&7
	line	61
;time__1.c: 61: PORTB = arr[a];
	movf	(_a),w
	addlw	_arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	62
	
l2026:	
;time__1.c: 62: delay();
	fcall	_delay
	goto	l2028
	line	63
	
l723:	
	line	37
	
l2028:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l724
u2300:
	
l725:	
	line	64
;time__1.c: 63: }
;time__1.c: 64: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	29
	
l2030:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l2032:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(0Ah)
	subwf	(_i),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l721
u2310:
	goto	l726
	
l722:	
	line	66
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_num
	__end_of_num:
;; =============== function _num ends ============

	signat	_num,88
	global	_delay
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _delay *****************
;; Defined at:
;;		line 69 in file "C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
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
;;		_num
;; This function uses a non-reentrant model
;;
psect	text98
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\TIME\time__1.c"
	line	69
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	70
	
l1972:	
;time__1.c: 70: for(j=0;j<1000;j++);
	clrf	(_j)
	clrf	(_j+1)
	
l1974:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(03E8h)
	subwf	(_j),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1978
u2270:
	goto	l731
	
l1976:	
	goto	l731
	
l729:	
	
l1978:	
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l1980:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2285
	movlw	low(03E8h)
	subwf	(_j),w
u2285:

	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l1978
u2280:
	goto	l731
	
l730:	
	line	71
	
l731:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
