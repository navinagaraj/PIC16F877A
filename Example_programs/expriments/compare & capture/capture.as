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
# 4 "C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
	dw 0xFFFE&0xFFFB&0xFFFF&0xFFFF&0xFF7F ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_print_uart
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_print_uart,_uart_tx
	FNCALL	_print_uart,_delay
	FNROOT	_main
	global	_string
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
	line	9

;initializer for _string
	retlw	050h
	retlw	049h
	retlw	043h
	retlw	020h
	retlw	069h
	retlw	06Eh
	retlw	069h
	retlw	074h
	retlw	069h
	retlw	061h
	retlw	06Ch
	retlw	069h
	retlw	07Ah
	retlw	065h
	retlw	064h
	retlw	02Eh
	retlw	02Eh
	retlw	02Eh
	retlw	0Dh
	retlw	0Ah
	retlw	0
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1H
_CCPR1H	set	22
	global	_CCPR1L
_CCPR1L	set	21
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_CCP1IF
_CCP1IF	set	98
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
	global	_CCP1IE
_CCP1IE	set	1122
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	
STR_1:	
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	61	;'='
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	13
	retlw	32	;' '
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	61	;'='
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	13
	retlw	32	;' '
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	61	;'='
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	13
	retlw	32	;' '
	retlw	32	;' '
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	61	;'='
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	13
	retlw	0
psect	strings
	file	"capture.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
	line	9
_string:
       ds      21

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
	movlw low(__pdataBANK0+21)
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
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	uart_tx@val
uart_tx@val:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_print_uart
??_print_uart:	; 0 bytes @ 0x1
	ds	1
	global	print_uart@str
print_uart@str:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	ds	9
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x9
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xC
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xE
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0xF
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x13
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x14
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x15
	ds	2
	global	main@data
main@data:	; 10 bytes @ 0x17
	ds	10
	global	main@value
main@value:	; 2 bytes @ 0x21
	ds	2
	global	main@oldval
main@oldval:	; 2 bytes @ 0x23
	ds	2
	global	main@newval
main@newval:	; 2 bytes @ 0x25
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0x27
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x29
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x2B
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x2D
	ds	2
;;Data sizes: Strings 105, constant 10, data 21, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     47      68
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 105
;;		 -> STR_1(CODE[105]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;;		 -> main@data(BANK0[10]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1279$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; print_uart@str	PTR unsigned char  size(1) Largest target is 21
;;		 -> main@data(BANK0[10]), string(BANK0[21]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _sprintf->___lwmod
;;   _print_uart->_uart_tx
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                26    26      0    1149
;;                                             21 BANK0     26    26      0
;;                          _uart_init
;;                         _print_uart
;;                            _sprintf
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             21    12      9     798
;;                                              0 BANK0     21    12      9
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _print_uart                                           2     2      0      67
;;                                              1 COMMON     2     2      0
;;                            _uart_tx
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              8 COMMON     6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _uart_tx                                              1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _print_uart
;;     _uart_tx
;;     _delay
;;   _sprintf
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
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
;;DATA                 0      0      54      12        0.0%
;;ABS                  0      0      52       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     2F      44       5       85.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data           10   23[BANK0 ] unsigned char [10]
;;  d               2   45[BANK0 ] short 
;;  c               2   43[BANK0 ] short 
;;  b               2   41[BANK0 ] short 
;;  a               2   39[BANK0 ] short 
;;  newval          2   37[BANK0 ] short 
;;  oldval          2   35[BANK0 ] short 
;;  value           2   33[BANK0 ] short 
;; Return value:  Size  Location     Type
;;                  2  694[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      24       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      26       0       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart_init
;;		_print_uart
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	12
	
l2184:	
;capture.c: 12: short int a,b,c,d,oldval=0,newval=0,value=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@oldval)
	clrf	(main@oldval+1)
	clrf	(main@newval)
	clrf	(main@newval+1)
	clrf	(main@value)
	clrf	(main@value+1)
	line	14
	
l2186:	
;capture.c: 13: char data[10];
;capture.c: 14: TRISC2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1082/8)^080h,(1082)&7
	line	15
	
l2188:	
;capture.c: 15: uart_init();
	fcall	_uart_init
	line	16
	
l2190:	
;capture.c: 16: print_uart(string);
	movlw	(_string)&0ffh
	fcall	_print_uart
	goto	l2192
	line	17
;capture.c: 17: while(1)
	
l695:	
	line	19
	
l2192:	
;capture.c: 18: {
;capture.c: 19: CCP1CON = 0X05;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	20
	
l2194:	
;capture.c: 20: CCP1IE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1122/8)^080h,(1122)&7
	line	21
;capture.c: 21: while(CCP1IF == 0)
	goto	l2198
	
l697:	
	line	23
;capture.c: 22: {
;capture.c: 23: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	24
;capture.c: 24: CCP1IF = 0;
	bcf	(98/8),(98)&7
	line	25
	
l2196:	
;capture.c: 25: a = CCPR1H;
	movf	(22),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@a)
	movf	1+(??_main+0)+0,w
	movwf	(main@a+1)
	line	26
;capture.c: 26: b = CCPR1L;
	movf	(21),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@b)
	movf	1+(??_main+0)+0,w
	movwf	(main@b+1)
	goto	l2198
	line	27
	
l696:	
	line	21
	
l2198:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(98/8),(98)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l697
u2510:
	goto	l2210
	
l698:	
	line	28
;capture.c: 27: }
;capture.c: 28: while(CCP1IF == 0)
	goto	l2210
	
l700:	
	line	30
;capture.c: 29: {
;capture.c: 30: CCP1IF = 0;
	bcf	(98/8),(98)&7
	line	31
	
l2200:	
;capture.c: 31: c = CCPR1H;
	movf	(22),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@c)
	movf	1+(??_main+0)+0,w
	movwf	(main@c+1)
	line	32
;capture.c: 32: d = CCPR1L;
	movf	(21),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@d)
	movf	1+(??_main+0)+0,w
	movwf	(main@d+1)
	line	33
	
l2202:	
;capture.c: 33: oldval = ((a<<8)|b);
	movf	(main@a+1),w
	movwf	(??_main+0)+0+1
	movf	(main@a),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	movf	(main@b),w
	iorwf	0+(??_main+0)+0,w
	movwf	(main@oldval)
	movf	(main@b+1),w
	iorwf	1+(??_main+0)+0,w
	movwf	1+(main@oldval)
	line	34
	
l2204:	
;capture.c: 34: newval = ((c<<8)|d);
	movf	(main@c+1),w
	movwf	(??_main+0)+0+1
	movf	(main@c),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	movf	(main@d),w
	iorwf	0+(??_main+0)+0,w
	movwf	(main@newval)
	movf	(main@d+1),w
	iorwf	1+(??_main+0)+0,w
	movwf	1+(main@newval)
	line	35
	
l2206:	
;capture.c: 35: TMR1ON = 0;
	bcf	(128/8),(128)&7
	line	36
	
l2208:	
;capture.c: 36: value=oldval-newval;
	comf	(main@newval),w
	movwf	(??_main+0)+0
	comf	(main@newval+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(main@oldval),w
	addwf	0+(??_main+0)+0,w
	movwf	(main@value)
	movf	(main@oldval+1),w
	skipnc
	incf	(main@oldval+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(main@value)
	goto	l2210
	line	37
	
l699:	
	line	28
	
l2210:	
	btfss	(98/8),(98)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l700
u2520:
	goto	l2212
	
l701:	
	line	38
	
l2212:	
;capture.c: 37: }
;capture.c: 38: sprintf(data,"Data from capture A= %d \r Data from capture B= %d \r Data from capture c= %d \r  Data from capture d= %d \r",a,b,c,d);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_sprintf)
	movf	(main@a+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(main@a),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(main@b+1),w
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(main@b),w
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movf	(main@c+1),w
	clrf	1+(?_sprintf)+05h
	addwf	1+(?_sprintf)+05h
	movf	(main@c),w
	clrf	0+(?_sprintf)+05h
	addwf	0+(?_sprintf)+05h

	movf	(main@d+1),w
	clrf	1+(?_sprintf)+07h
	addwf	1+(?_sprintf)+07h
	movf	(main@d),w
	clrf	0+(?_sprintf)+07h
	addwf	0+(?_sprintf)+07h

	movlw	(main@data)&0ffh
	fcall	_sprintf
	line	39
	
l2214:	
;capture.c: 39: print_uart(data);
	movlw	(main@data)&0ffh
	fcall	_print_uart
	goto	l2192
	line	40
	
l702:	
	line	17
	goto	l2192
	
l703:	
	line	41
	
l704:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_sprintf
psect	text203,local,class=CODE,delta=2
global __ptext203
__ptext203:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@data(10), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(105), 
;; Auto vars:     Size  Location     Type
;;  sp              1   19[BANK0 ] PTR unsigned char 
;;		 -> main@data(10), 
;;  _val            4   15[BANK0 ] struct .
;;  c               1   20[BANK0 ] char 
;;  prec            1   14[BANK0 ] char 
;;  flag            1   13[BANK0 ] unsigned char 
;;  ap              1   12[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       9       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      21       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text203
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 6
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	
l2126:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	540
	goto	l2178
	
l735:	
	line	542
	
l2128:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2431
	goto	u2430
u2431:
	goto	l736
u2430:
	line	545
	
l2130:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2132:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	546
	goto	l2178
	line	547
	
l736:	
	line	552
	clrf	(sprintf@flag)
	line	638
	goto	l2136
	line	640
	
l738:	
	line	641
	goto	l2180
	line	700
	
l740:	
	goto	l2138
	line	701
	
l741:	
	line	702
	goto	l2138
	line	805
	
l743:	
	line	816
	goto	l2178
	line	825
	
l2134:	
	goto	l2138
	line	638
	
l737:	
	
l2136:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2180
	xorlw	100^0	; case 100
	skipnz
	goto	l2138
	xorlw	105^100	; case 105
	skipnz
	goto	l2138
	goto	l2178
	opt asmopt_on

	line	825
	
l742:	
	line	1254
	
l2138:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l2140:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1256
	
l2142:	
	btfss	(sprintf@_val+1),7
	goto	u2441
	goto	u2440
u2441:
	goto	l2148
u2440:
	line	1257
	
l2144:	
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1258
	
l2146:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l2148
	line	1259
	
l744:	
	line	1300
	
l2148:	
	clrf	(sprintf@c)
	bsf	status,0
	rlf	(sprintf@c),f
	
l2150:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2154
u2450:
	goto	l2162
	
l2152:	
	goto	l2162
	line	1301
	
l745:	
	
l2154:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u2465
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2465:
	skipnc
	goto	u2461
	goto	u2460
u2461:
	goto	l2158
u2460:
	goto	l2162
	line	1302
	
l2156:	
	goto	l2162
	
l747:	
	line	1300
	
l2158:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2160:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l2154
u2470:
	goto	l2162
	
l746:	
	line	1433
	
l2162:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2168
u2480:
	line	1434
	
l2164:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2166:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2168
	
l748:	
	line	1467
	
l2168:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1469
	goto	l2176
	
l750:	
	line	1484
	
l2170:	
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(sprintf@_val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(sprintf@_val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1516
	
l2172:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2174:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2176
	line	1517
	
l749:	
	line	1469
	
l2176:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l2170
u2490:
	goto	l2178
	
l751:	
	goto	l2178
	line	1525
	
l734:	
	line	540
	
l2178:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l2128
u2500:
	goto	l2180
	
l752:	
	goto	l2180
	line	1527
	
l739:	
	line	1530
	
l2180:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l753
	line	1532
	
l2182:	
	line	1533
;	Return value of _sprintf is never used
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_print_uart
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:

;; *************** function _print_uart *****************
;; Defined at:
;;		line 65 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> main@data(10), string(21), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR unsigned char 
;;		 -> main@data(10), string(21), 
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
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text204
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
	line	65
	global	__size_of_print_uart
	__size_of_print_uart	equ	__end_of_print_uart-_print_uart
	
_print_uart:	
	opt	stack 6
; Regs used in _print_uart: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print_uart@str stored from wreg
	movwf	(print_uart@str)
	line	67
	
l2118:	
;capture.c: 67: while(*str)
	goto	l716
	
l717:	
	line	69
	
l2120:	
;capture.c: 68: {
;capture.c: 69: uart_tx(*str);
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	70
	
l2122:	
;capture.c: 70: delay();
	fcall	_delay
	line	71
	
l2124:	
;capture.c: 71: str++;
	movlw	(01h)
	movwf	(??_print_uart+0)+0
	movf	(??_print_uart+0)+0,w
	addwf	(print_uart@str),f
	line	72
	
l716:	
	line	67
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l2120
u2420:
	goto	l719
	
l718:	
	line	73
	
l719:	
	return
	opt stack 0
GLOBAL	__end_of_print_uart
	__end_of_print_uart:
;; =============== function _print_uart ends ============

	signat	_print_uart,4216
	global	___lwmod
psect	text205,local,class=CODE,delta=2
global __ptext205
__ptext205:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text205
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2096:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l2114
u2360:
	line	9
	
l2098:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l2104
	
l780:	
	line	11
	
l2100:	
	movlw	01h
	
u2375:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2375
	line	12
	
l2102:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2104
	line	13
	
l779:	
	line	10
	
l2104:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l2100
u2380:
	goto	l2106
	
l781:	
	goto	l2106
	line	14
	
l782:	
	line	15
	
l2106:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2395
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2110
u2390:
	line	16
	
l2108:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l2110
	
l783:	
	line	17
	
l2110:	
	movlw	01h
	
u2405:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2405
	line	18
	
l2112:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2106
u2410:
	goto	l2114
	
l784:	
	goto	l2114
	line	19
	
l778:	
	line	20
	
l2114:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l785
	
l2116:	
	line	21
	
l785:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text206,local,class=CODE,delta=2
global __ptext206
__ptext206:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text206
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2070:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2072:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l2092
u2290:
	line	11
	
l2074:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l2080
	
l770:	
	line	13
	
l2076:	
	movlw	01h
	
u2305:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2305
	line	14
	
l2078:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2080
	line	15
	
l769:	
	line	12
	
l2080:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2076
u2310:
	goto	l2082
	
l771:	
	goto	l2082
	line	16
	
l772:	
	line	17
	
l2082:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2325
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2335
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2088
u2330:
	line	19
	
l2084:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2086:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2088
	line	21
	
l773:	
	line	22
	
l2088:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	23
	
l2090:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2082
u2350:
	goto	l2092
	
l774:	
	goto	l2092
	line	24
	
l768:	
	line	25
	
l2092:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l775
	
l2094:	
	line	26
	
l775:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay
psect	text207,local,class=CODE,delta=2
global __ptext207
__ptext207:

;; *************** function _delay *****************
;; Defined at:
;;		line 77 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_uart
;; This function uses a non-reentrant model
;;
psect	text207
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
	line	77
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	78
	
l2064:	
;capture.c: 78: TMR1CS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	79
;capture.c: 79: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	80
;capture.c: 80: T1CKPS1 = 1;
	bsf	(133/8),(133)&7
	line	81
	
l2066:	
;capture.c: 81: TMR1H = 0X0b;
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	82
;capture.c: 82: TMR1L = 0Xdb;
	movlw	(0DBh)
	movwf	(14)	;volatile
	line	83
	
l2068:	
;capture.c: 83: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	84
;capture.c: 84: while(!TMR1IF);
	goto	l722
	
l723:	
	
l722:	
	btfss	(96/8),(96)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l722
u2280:
	
l724:	
	line	85
;capture.c: 85: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	86
;capture.c: 86: TMR1ON = 0;
	bcf	(128/8),(128)&7
	line	87
	
l725:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_uart_tx
psect	text208,local,class=CODE,delta=2
global __ptext208
__ptext208:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 45 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
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
;; This function uses a non-reentrant model
;;
psect	text208
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
	line	45
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 6
; Regs used in _uart_tx: [wreg]
;uart_tx@val stored from wreg
	movwf	(uart_tx@val)
	line	46
	
l2062:	
;capture.c: 46: TXREG=val;
	movf	(uart_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	47
;capture.c: 47: while(TXIF==0);
	goto	l707
	
l708:	
	
l707:	
	btfss	(100/8),(100)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l707
u2270:
	
l709:	
	line	48
;capture.c: 48: TXIF = 0;
	bcf	(100/8),(100)&7
	line	49
	
l710:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_uart_init
psect	text209,local,class=CODE,delta=2
global __ptext209
__ptext209:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 53 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
psect	text209
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\expriments\compare & capture\capture.c"
	line	53
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg]
	line	54
	
l2050:	
;capture.c: 54: TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	55
;capture.c: 55: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	56
	
l2052:	
;capture.c: 56: SPBRG =31;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	57
	
l2054:	
;capture.c: 57: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	58
	
l2056:	
;capture.c: 58: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	59
	
l2058:	
;capture.c: 59: TXIF = 0;
	bcf	(100/8),(100)&7
	line	60
	
l2060:	
;capture.c: 60: RCIF = 0;
	bcf	(101/8),(101)&7
	line	61
	
l713:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
