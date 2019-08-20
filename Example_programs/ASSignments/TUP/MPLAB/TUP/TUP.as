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
# 11 "C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	dw 0xFFFE & 0xFFFB & 0xFFFF & 0xFFFF & 0xFF7F ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_delay
	FNCALL	_main,_print_uart
	FNCALL	_main,_call
	FNCALL	_call,___awmod
	FNCALL	_call,___awdiv
	FNCALL	_call,_uart_tx
	FNCALL	_print_uart,_uart_tx
	FNROOT	_main
	global	_i
	global	_text_uart2
	global	_text_uart
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	14

;initializer for _i
	retlw	01h
	retlw	0

psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	line	21

;initializer for _text_uart2
	retlw	020h
	retlw	020h
	retlw	053h
	retlw	065h
	retlw	063h
	retlw	06Fh
	retlw	06Eh
	retlw	064h
	retlw	0Ah
	retlw	0Dh
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	20

;initializer for _text_uart
	retlw	049h
	retlw	020h
	retlw	061h
	retlw	06Dh
	retlw	020h
	retlw	041h
	retlw	06Ch
	retlw	069h
	retlw	076h
	retlw	065h
	retlw	020h
	retlw	03Dh
	retlw	020h
	retlw	0
	global	_PORTB
_PORTB	set	6
	global	_RCSTA
_RCSTA	set	24
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
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
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TXSTA
_TXSTA	set	152
	global	_TRISB7
_TRISB7	set	1079
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	file	"TUP.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	14
_i:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	21
_text_uart2:
       ds      11

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	20
_text_uart:
       ds      14

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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+14)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+11)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x0
	global	?_print_uart
?_print_uart:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	uart_tx@val
uart_tx@val:	; 1 bytes @ 0x0
	global	delay@k
delay@k:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_print_uart
??_print_uart:	; 0 bytes @ 0x1
	ds	1
	global	print_uart@str
print_uart@str:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?_call
?_call:	; 0 bytes @ 0x9
	global	call@i
call@i:	; 2 bytes @ 0x9
	ds	2
	global	??_call
??_call:	; 0 bytes @ 0xB
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xC
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	call@arr
call@arr:	; 60 bytes @ 0x0
	ds	60
	global	call@j
call@j:	; 2 bytes @ 0x3C
	ds	2
	global	call@data
call@data:	; 2 bytes @ 0x3E
	ds	2
	global	call@count
call@count:	; 2 bytes @ 0x40
	ds	2
;;Data sizes: Strings 0, constant 0, data 27, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      14
;; BANK0           80     66      77
;; BANK1           80      0      14
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; print_uart@str	PTR unsigned char  size(1) Largest target is 14
;;		 -> text_uart2(BANK0[11]), text_uart(BANK1[14]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_call
;;   _call->___awdiv
;;   _print_uart->_uart_tx
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_call
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
;; (0) _main                                                 0     0      0    1005
;;                          _uart_init
;;                              _delay
;;                         _print_uart
;;                               _call
;; ---------------------------------------------------------------------------------
;; (1) _call                                                69    67      2     892
;;                                              9 COMMON     3     1      2
;;                                              0 BANK0     66    66      0
;;                            ___awmod
;;                            ___awdiv
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (1) _print_uart                                           2     2      0      67
;;                                              1 COMMON     2     2      0
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) _uart_tx                                              1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _delay
;;   _print_uart
;;     _uart_tx
;;   _call
;;     ___awmod
;;     ___awdiv
;;     _uart_tx
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
;;BANK1               50      0       E       7       17.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      6B      12        0.0%
;;ABS                  0      0      69       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     42      4D       5       96.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      C       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 43 in file "C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  704[COMMON] int 
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
;;		_uart_init
;;		_delay
;;		_print_uart
;;		_call
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	43
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	44
	
l2128:	
;TUP.c: 44: uart_init();
	fcall	_uart_init
	line	45
	
l2130:	
;TUP.c: 45: TRISB7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1079/8)^080h,(1079)&7
	goto	l2132
	line	46
;TUP.c: 46: while(1)
	
l705:	
	line	48
	
l2132:	
;TUP.c: 47: {
;TUP.c: 48: delay();
	fcall	_delay
	line	49
	
l2134:	
;TUP.c: 49: PORTB = 0XFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	50
	
l2136:	
;TUP.c: 50: delay();
	fcall	_delay
	line	51
	
l2138:	
;TUP.c: 51: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	52
	
l2140:	
;TUP.c: 52: print_uart(text_uart);
	movlw	(_text_uart)&0ffh
	fcall	_print_uart
	line	53
	
l2142:	
;TUP.c: 53: call(i);
	movf	(_i+1),w
	clrf	(?_call+1)
	addwf	(?_call+1)
	movf	(_i),w
	clrf	(?_call)
	addwf	(?_call)

	fcall	_call
	line	54
	
l2144:	
;TUP.c: 54: print_uart(text_uart2);
	movlw	(_text_uart2)&0ffh
	fcall	_print_uart
	line	55
	
l2146:	
;TUP.c: 55: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	goto	l2132
	line	56
	
l706:	
	line	46
	goto	l2132
	
l707:	
	line	57
	
l708:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_call
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _call *****************
;; Defined at:
;;		line 90 in file "C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
;; Parameters:    Size  Location     Type
;;  i               2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  arr            60    0[BANK0 ] int [30]
;;  count           2   64[BANK0 ] int 
;;  data            2   62[BANK0 ] int 
;;  j               2   60[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0      66       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3      66       0       0       0
;;Total ram usage:       69 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uart_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text197
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	90
	global	__size_of_call
	__size_of_call	equ	__end_of_call-_call
	
_call:	
	opt	stack 6
; Regs used in _call: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	91
	
l2102:	
;TUP.c: 91: int data,j,count=0,arr[30];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(call@count)
	clrf	(call@count+1)
	line	92
	
l2104:	
;TUP.c: 92: data = i;
	movf	(call@i+1),w
	clrf	(call@data+1)
	addwf	(call@data+1)
	movf	(call@i),w
	clrf	(call@data)
	addwf	(call@data)

	line	93
;TUP.c: 93: while(data != 0)
	goto	l2114
	
l727:	
	line	95
	
l2106:	
;TUP.c: 94: {
;TUP.c: 95: j = data%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(call@data+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(call@data),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(call@j+1)
	addwf	(call@j+1)
	movf	(0+(?___awmod)),w
	clrf	(call@j)
	addwf	(call@j)

	line	96
	
l2108:	
;TUP.c: 96: arr[count] = j;
	movf	(call@count),w
	movwf	(??_call+0)+0
	addwf	(??_call+0)+0,w
	addlw	call@arr&0ffh
	movwf	fsr0
	movf	(call@j),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(call@j+1),w
	movwf	indf
	line	97
	
l2110:	
;TUP.c: 97: data = data/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(call@data+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(call@data),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(call@data+1)
	addwf	(call@data+1)
	movf	(0+(?___awdiv)),w
	clrf	(call@data)
	addwf	(call@data)

	line	98
	
l2112:	
;TUP.c: 98: count++;
	movlw	low(01h)
	addwf	(call@count),f
	skipnc
	incf	(call@count+1),f
	movlw	high(01h)
	addwf	(call@count+1),f
	goto	l2114
	line	99
	
l726:	
	line	93
	
l2114:	
	movf	((call@data+1)),w
	iorwf	((call@data)),w
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l2106
u2460:
	goto	l2116
	
l728:	
	line	100
	
l2116:	
;TUP.c: 99: }
;TUP.c: 100: count = count-1;
	movf	(call@count),w
	addlw	low(-1)
	movwf	(call@count)
	movf	(call@count+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(call@count)
	line	101
	
l2118:	
;TUP.c: 101: for( ;count!=-1; )
	movlw	high(-1)
	xorwf	(call@count+1),w
	skipz
	goto	u2475
	movlw	low(-1)
	xorwf	(call@count),w
u2475:

	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l2122
u2470:
	goto	l731
	
l2120:	
	goto	l731
	line	102
	
l729:	
	line	103
	
l2122:	
;TUP.c: 102: {
;TUP.c: 103: uart_tx((arr[count]+48));
	movf	(call@count),w
	movwf	(??_call+0)+0
	addwf	(??_call+0)+0,w
	addlw	call@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	030h
	fcall	_uart_tx
	line	104
	
l2124:	
;TUP.c: 104: count--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(call@count),f
	skipnc
	incf	(call@count+1),f
	movlw	high(-1)
	addwf	(call@count+1),f
	line	101
	
l2126:	
	movlw	high(-1)
	xorwf	(call@count+1),w
	skipz
	goto	u2485
	movlw	low(-1)
	xorwf	(call@count),w
u2485:

	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2122
u2480:
	goto	l731
	
l730:	
	line	106
	
l731:	
	return
	opt stack 0
GLOBAL	__end_of_call
	__end_of_call:
;; =============== function _call ends ============

	signat	_call,4216
	global	_print_uart
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _print_uart *****************
;; Defined at:
;;		line 81 in file "C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> text_uart2(11), text_uart(14), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR unsigned char 
;;		 -> text_uart2(11), text_uart(14), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uart_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text198
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	81
	global	__size_of_print_uart
	__size_of_print_uart	equ	__end_of_print_uart-_print_uart
	
_print_uart:	
	opt	stack 6
; Regs used in _print_uart: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print_uart@str stored from wreg
	movwf	(print_uart@str)
	line	82
	
l2094:	
;TUP.c: 82: while(*str)
	goto	l2100
	
l721:	
	line	84
	
l2096:	
;TUP.c: 83: {
;TUP.c: 84: uart_tx(*str);
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	85
	
l2098:	
;TUP.c: 85: str++;
	movlw	(01h)
	movwf	(??_print_uart+0)+0
	movf	(??_print_uart+0)+0,w
	addwf	(print_uart@str),f
	goto	l2100
	line	86
	
l720:	
	line	82
	
l2100:	
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2096
u2450:
	goto	l723
	
l722:	
	line	87
	
l723:	
	return
	opt stack 0
GLOBAL	__end_of_print_uart
	__end_of_print_uart:
;; =============== function _print_uart ends ============

	signat	_print_uart,4216
	global	___awmod
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_call
;; This function uses a non-reentrant model
;;
psect	text199
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2060:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2361
	goto	u2360
u2361:
	goto	l2064
u2360:
	line	10
	
l2062:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2064
	line	12
	
l948:	
	line	13
	
l2064:	
	btfss	(___awmod@divisor+1),7
	goto	u2371
	goto	u2370
u2371:
	goto	l2068
u2370:
	line	14
	
l2066:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2068
	
l949:	
	line	15
	
l2068:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l2086
u2380:
	line	16
	
l2070:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2076
	
l952:	
	line	18
	
l2072:	
	movlw	01h
	
u2395:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2395
	line	19
	
l2074:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2076
	line	20
	
l951:	
	line	17
	
l2076:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l2072
u2400:
	goto	l2078
	
l953:	
	goto	l2078
	line	21
	
l954:	
	line	22
	
l2078:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2415
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2415:
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l2082
u2410:
	line	23
	
l2080:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2082
	
l955:	
	line	24
	
l2082:	
	movlw	01h
	
u2425:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2425
	line	25
	
l2084:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l2078
u2430:
	goto	l2086
	
l956:	
	goto	l2086
	line	26
	
l950:	
	line	27
	
l2086:	
	movf	(___awmod@sign),w
	skipz
	goto	u2440
	goto	l2090
u2440:
	line	28
	
l2088:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2090
	
l957:	
	line	29
	
l2090:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l958
	
l2092:	
	line	30
	
l958:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text200,local,class=CODE,delta=2
global __ptext200
__ptext200:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_call
;; This function uses a non-reentrant model
;;
psect	text200
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2020:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2261
	goto	u2260
u2261:
	goto	l2024
u2260:
	line	11
	
l2022:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2024
	line	13
	
l880:	
	line	14
	
l2024:	
	btfss	(___awdiv@dividend+1),7
	goto	u2271
	goto	u2270
u2271:
	goto	l2030
u2270:
	line	15
	
l2026:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2028:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2030
	line	17
	
l881:	
	line	18
	
l2030:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2032:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2281
	goto	u2280
u2281:
	goto	l2052
u2280:
	line	20
	
l2034:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2040
	
l884:	
	line	22
	
l2036:	
	movlw	01h
	
u2295:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2295
	line	23
	
l2038:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2040
	line	24
	
l883:	
	line	21
	
l2040:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l2036
u2300:
	goto	l2042
	
l885:	
	goto	l2042
	line	25
	
l886:	
	line	26
	
l2042:	
	movlw	01h
	
u2315:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2315
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2325
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2325:
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l2048
u2320:
	line	28
	
l2044:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2046:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2048
	line	30
	
l887:	
	line	31
	
l2048:	
	movlw	01h
	
u2335:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2335
	line	32
	
l2050:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l2042
u2340:
	goto	l2052
	
l888:	
	goto	l2052
	line	33
	
l882:	
	line	34
	
l2052:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2350
	goto	l2056
u2350:
	line	35
	
l2054:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2056
	
l889:	
	line	36
	
l2056:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l890
	
l2058:	
	line	37
	
l890:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_uart_tx
psect	text201,local,class=CODE,delta=2
global __ptext201
__ptext201:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 61 in file "C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_uart
;;		_call
;; This function uses a non-reentrant model
;;
psect	text201
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	61
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 6
; Regs used in _uart_tx: [wreg]
;uart_tx@val stored from wreg
	movwf	(uart_tx@val)
	line	62
	
l2018:	
;TUP.c: 62: TXREG = val;
	movf	(uart_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	63
;TUP.c: 63: while(TXIF == 0);
	goto	l711
	
l712:	
	
l711:	
	btfss	(100/8),(100)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l711
u2250:
	
l713:	
	line	64
;TUP.c: 64: TXIF = 0;
	bcf	(100/8),(100)&7
	line	65
	
l714:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_uart_init
psect	text202,local,class=CODE,delta=2
global __ptext202
__ptext202:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 68 in file "C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text202
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	68
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg+status,2]
	line	69
	
l2004:	
;TUP.c: 69: TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	70
;TUP.c: 70: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	71
	
l2006:	
;TUP.c: 71: TXSTA = 0X00;
	clrf	(152)^080h	;volatile
	line	72
;TUP.c: 72: RCSTA = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(24)	;volatile
	line	73
	
l2008:	
;TUP.c: 73: SPBRG = 31;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	74
	
l2010:	
;TUP.c: 74: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	75
	
l2012:	
;TUP.c: 75: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	76
	
l2014:	
;TUP.c: 76: TXIF = 0;
	bcf	(100/8),(100)&7
	line	77
	
l2016:	
;TUP.c: 77: RCIF = 0;
	bcf	(101/8),(101)&7
	line	78
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_delay
psect	text203,local,class=CODE,delta=2
global __ptext203
__ptext203:

;; *************** function _delay *****************
;; Defined at:
;;		line 28 in file "C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    0[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text203
	file	"C:\Users\M_A_N_I\Documents\GitHub\PIC16F877A\Example_programs\ASSignments\TUP\MPLAB\TUP\TUP.c"
	line	28
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	29
	
l1990:	
;TUP.c: 29: for(int k = 0; k<5; k++)
	clrf	(delay@k)
	clrf	(delay@k+1)
	
l1992:	
	movf	(delay@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(05h)
	subwf	(delay@k),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l697
u2220:
	goto	l702
	
l1994:	
	goto	l702
	line	30
	
l697:	
	line	31
;TUP.c: 30: {
;TUP.c: 31: TMR1CS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	32
;TUP.c: 32: T1CKPS1 = 1;
	bsf	(133/8),(133)&7
	line	33
;TUP.c: 33: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	34
	
l1996:	
;TUP.c: 34: TMR1H = 0X0B;
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	35
;TUP.c: 35: TMR1L = 0XDB;
	movlw	(0DBh)
	movwf	(14)	;volatile
	line	36
	
l1998:	
;TUP.c: 36: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	37
;TUP.c: 37: while(!TMR1IF);
	goto	l699
	
l700:	
	
l699:	
	btfss	(96/8),(96)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l699
u2230:
	
l701:	
	line	38
;TUP.c: 38: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	29
	
l2000:	
	movlw	low(01h)
	addwf	(delay@k),f
	skipnc
	incf	(delay@k+1),f
	movlw	high(01h)
	addwf	(delay@k+1),f
	
l2002:	
	movf	(delay@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(05h)
	subwf	(delay@k),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l697
u2240:
	goto	l702
	
l698:	
	line	40
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
