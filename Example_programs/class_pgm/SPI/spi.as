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
# 4 "C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	dw 0xFFFE & 0xFFFB & 0xFFFF & 0xFFFF & 0xFF7F ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_print_uart
	FNCALL	_main,_spi_init
	FNCALL	_main,_delay
	FNCALL	_main,_spi_transfer
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_print_uart,_uart_tx
	FNCALL	_print_uart,_delay
	FNROOT	_main
	global	_string
	global	_message1
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	15

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
	retlw	0
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	line	16

;initializer for _message1
	retlw	049h
	retlw	06Eh
	retlw	069h
	retlw	074h
	retlw	069h
	retlw	061h
	retlw	06Ch
	retlw	069h
	retlw	07Ah
	retlw	069h
	retlw	06Eh
	retlw	067h
	retlw	020h
	retlw	064h
	retlw	065h
	retlw	076h
	retlw	069h
	retlw	063h
	retlw	065h
	retlw	0Dh
	retlw	0
	global	_hexpowers
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
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\lib\doprnt.c"
	line	358
_hexpowers:
	retlw	01h
	retlw	0

	retlw	010h
	retlw	0

	retlw	0
	retlw	01h

	retlw	0
	retlw	010h

	global	_hexpowers
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_RC1
_RC1	set	57
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_SSPEN
_SSPEN	set	165
	global	_SSPIF
_SSPIF	set	99
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
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TXSTA
_TXSTA	set	152
	global	_SSPIE
_SSPIE	set	1123
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC5
_TRISC5	set	1085
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
	retlw	115	;'s'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	13
	retlw	0
psect	strings
	
STR_2:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	55	;'7'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	99	;'c'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	0
psect	strings
	file	"spi.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	16
_message1:
       ds      21

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	15
_string:
       ds      20

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
	movlw low(__pdataBANK1+20)
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
	global	?_spi_init
?_spi_init:	; 0 bytes @ 0x0
	global	??_spi_init
??_spi_init:	; 0 bytes @ 0x0
	global	??_spi_transfer
??_spi_transfer:	; 0 bytes @ 0x0
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x0
	global	?_spi_transfer
?_spi_transfer:	; 1 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	spi_transfer@data
spi_transfer@data:	; 1 bytes @ 0x0
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
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x8
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x8
	ds	3
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xB
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x0
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x1
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x2
	ds	4
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x6
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x7
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x8
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	3
	global	main@arr
main@arr:	; 30 bytes @ 0xC
	ds	30
	global	main@reciv
main@reciv:	; 1 bytes @ 0x2A
	ds	1
	global	main@var
main@var:	; 1 bytes @ 0x2B
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x2C
	ds	1
	global	main@j
main@j:	; 1 bytes @ 0x2D
	ds	1
;;Data sizes: Strings 37, constant 8, data 41, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     46      67
;; BANK1           80      0      20
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 20
;;		 -> STR_1(CODE[20]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 30
;;		 -> main@arr(BANK0[30]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(COMMON[2]), 
;;
;; S1281$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; print_uart@str	PTR unsigned char  size(1) Largest target is 30
;;		 -> main@arr(BANK0[30]), message1(BANK0[21]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_sprintf
;;   _sprintf->___lwdiv
;;   _print_uart->_uart_tx
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                37    37      0     852
;;                                              9 BANK0     37    37      0
;;                          _uart_init
;;                         _print_uart
;;                           _spi_init
;;                              _delay
;;                       _spi_transfer
;;                            _sprintf
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             15    12      3     548
;;                                              8 COMMON     6     3      3
;;                                              0 BANK0      9     9      0
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (1) _print_uart                                           2     2      0      67
;;                                              1 COMMON     2     2      0
;;                            _uart_tx
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (2) _uart_tx                                              1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _spi_transfer                                         1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _spi_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _print_uart
;;     _uart_tx
;;     _delay
;;   _spi_init
;;   _delay
;;   _spi_transfer
;;   _sprintf
;;     ___lwdiv
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
;;BANK1               50      0      14       7       25.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      67      12        0.0%
;;ABS                  0      0      65       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     2E      43       5       83.8%
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
;;		line 42 in file "C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  arr            30   12[BANK0 ] unsigned char [30]
;;  j               1   45[BANK0 ] unsigned char 
;;  i               1   44[BANK0 ] unsigned char 
;;  var             1   43[BANK0 ] unsigned char 
;;  reciv           1   42[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  705[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      34       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      37       0       0       0
;;Total ram usage:       37 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart_init
;;		_print_uart
;;		_spi_init
;;		_delay
;;		_spi_transfer
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	42
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l2198:	
;spi.c: 43: unsigned char i,j, reciv,var=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@var)
	line	45
	
l2200:	
;spi.c: 44: char arr[30];
;spi.c: 45: uart_init();
	fcall	_uart_init
	line	46
	
l2202:	
;spi.c: 46: print_uart(message1);
	movlw	(_message1)&0ffh
	fcall	_print_uart
	line	47
	
l2204:	
;spi.c: 47: spi_init();
	fcall	_spi_init
	line	48
	
l2206:	
;spi.c: 48: delay();
	fcall	_delay
	line	49
	
l2208:	
;spi.c: 49: for (j=0;j<10;j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	
l2210:	
	movlw	(0Ah)
	subwf	(main@j),w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l706
u2460:
	goto	l711
	
l2212:	
	goto	l711
	line	50
	
l706:	
	line	51
;spi.c: 50: {
;spi.c: 51: RC1 = 0;
	bcf	(57/8),(57)&7
	line	52
	
l2214:	
;spi.c: 52: reciv = spi_transfer(var);
	movf	(main@var),w
	fcall	_spi_transfer
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@reciv)
	line	53
	
l2216:	
;spi.c: 53: RC1 = 1;
	bsf	(57/8),(57)&7
	line	55
	
l2218:	
;spi.c: 55: sprintf(arr,"Data from slave %x\r",reciv);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_sprintf)
	movf	(main@reciv),w
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	movf	0+(??_main+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_main+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(main@arr)&0ffh
	fcall	_sprintf
	line	56
	
l2220:	
;spi.c: 56: arr[29]=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(main@arr)+01Dh
	line	57
	
l2222:	
;spi.c: 57: print_uart(arr);
	movlw	(main@arr)&0ffh
	fcall	_print_uart
	line	58
	
l2224:	
;spi.c: 58: for (i=0;i<120;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l2226:	
	movlw	(078h)
	subwf	(main@i),w
	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l2230
u2470:
	goto	l2236
	
l2228:	
	goto	l2236
	line	59
	
l708:	
	
l2230:	
;spi.c: 59: delay();
	fcall	_delay
	line	58
	
l2232:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2234:	
	movlw	(078h)
	subwf	(main@i),w
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l2230
u2480:
	goto	l2236
	
l709:	
	line	60
	
l2236:	
;spi.c: 60: var++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@var),f
	line	49
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@j),f
	
l2238:	
	movlw	(0Ah)
	subwf	(main@j),w
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l706
u2490:
	goto	l711
	
l707:	
	goto	l711
	line	62
;spi.c: 61: }
;spi.c: 62: while(1);
	
l710:	
	
l711:	
	goto	l711
	
l712:	
	line	64
	
l713:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_sprintf
psect	text242,local,class=CODE,delta=2
global __ptext242
__ptext242:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files\HI-TECH Software\PICC\9.81\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@arr(30), 
;;  f               1    8[COMMON] PTR const unsigned char 
;;		 -> STR_1(20), 
;; Auto vars:     Size  Location     Type
;;  sp              1    7[BANK0 ] PTR unsigned char 
;;		 -> main@arr(30), 
;;  _val            4    2[BANK0 ] struct .
;;  c               1    8[BANK0 ] char 
;;  prec            1    6[BANK0 ] char 
;;  ap              1    1[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  flag            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         6       9       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text242
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\doprnt.c"
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
	
l2152:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	540
	goto	l2192
	
l750:	
	line	542
	
l2154:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2401
	goto	u2400
u2401:
	goto	l751
u2400:
	line	545
	
l2156:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2158:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	546
	goto	l2192
	line	547
	
l751:	
	line	552
	clrf	(sprintf@flag)
	line	638
	goto	l2162
	line	640
	
l753:	
	line	641
	goto	l2194
	line	721
	
l755:	
	line	726
	goto	l2164
	line	805
	
l757:	
	line	816
	goto	l2192
	line	825
	
l2160:	
	goto	l2164
	line	638
	
l752:	
	
l2162:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
; rangetable           125     6 (fixed)
; spacedrange          248     9 (fixed)
; locatedrange         121     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2194
	xorlw	120^0	; case 120
	skipnz
	goto	l2164
	goto	l2192
	opt asmopt_on

	line	825
	
l756:	
	line	1281
	
l2164:	
	movf	(sprintf@ap),w
	movwf	fsr0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l2166:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1311
	
l2168:	
	clrf	(sprintf@c)
	bsf	status,0
	rlf	(sprintf@c),f
	
l2170:	
	movf	(sprintf@c),w
	xorlw	04h
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l2174
u2410:
	goto	l2182
	
l2172:	
	goto	l2182
	line	1312
	
l758:	
	
l2174:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_hexpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u2425
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2425:
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l2178
u2420:
	goto	l2182
	line	1313
	
l2176:	
	goto	l2182
	
l760:	
	line	1311
	
l2178:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2180:	
	movf	(sprintf@c),w
	xorlw	04h
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l2174
u2430:
	goto	l2182
	
l759:	
	line	1467
	
l2182:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1469
	goto	l2190
	
l762:	
	line	1499
	
l2184:	
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_hexpowers-__stringbase))
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
	movf	(0+(?___lwdiv)),w
	andlw	0Fh
	addlw	low((STR_2-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@c)
	line	1516
	
l2186:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2188:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2190
	line	1517
	
l761:	
	line	1469
	
l2190:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2184
u2440:
	goto	l2192
	
l763:	
	goto	l2192
	line	1525
	
l749:	
	line	540
	
l2192:	
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
	goto	u2451
	goto	u2450
u2451:
	goto	l2154
u2450:
	goto	l2194
	
l764:	
	goto	l2194
	line	1527
	
l754:	
	line	1530
	
l2194:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l765
	line	1532
	
l2196:	
	line	1533
;	Return value of _sprintf is never used
	
l765:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_print_uart
psect	text243,local,class=CODE,delta=2
global __ptext243
__ptext243:

;; *************** function _print_uart *****************
;; Defined at:
;;		line 116 in file "C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> main@arr(30), message1(21), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR unsigned char 
;;		 -> main@arr(30), message1(21), 
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
psect	text243
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	116
	global	__size_of_print_uart
	__size_of_print_uart	equ	__end_of_print_uart-_print_uart
	
_print_uart:	
	opt	stack 6
; Regs used in _print_uart: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print_uart@str stored from wreg
	movwf	(print_uart@str)
	line	118
	
l2144:	
;spi.c: 118: while(*str)
	goto	l737
	
l738:	
	line	120
	
l2146:	
;spi.c: 119: {
;spi.c: 120: uart_tx(*str);
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	121
	
l2148:	
;spi.c: 121: delay();
	fcall	_delay
	line	122
	
l2150:	
;spi.c: 122: str++;
	movlw	(01h)
	movwf	(??_print_uart+0)+0
	movf	(??_print_uart+0)+0,w
	addwf	(print_uart@str),f
	line	123
	
l737:	
	line	118
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l2146
u2390:
	goto	l740
	
l739:	
	line	124
	
l740:	
	return
	opt stack 0
GLOBAL	__end_of_print_uart
	__end_of_print_uart:
;; =============== function _print_uart ends ============

	signat	_print_uart,4216
	global	___lwdiv
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
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
psect	text244
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2118:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2120:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l2140
u2320:
	line	11
	
l2122:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l2128
	
l782:	
	line	13
	
l2124:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2335
	line	14
	
l2126:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2128
	line	15
	
l781:	
	line	12
	
l2128:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l2124
u2340:
	goto	l2130
	
l783:	
	goto	l2130
	line	16
	
l784:	
	line	17
	
l2130:	
	movlw	01h
	
u2355:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2355
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2365
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2136
u2360:
	line	19
	
l2132:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2134:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2136
	line	21
	
l785:	
	line	22
	
l2136:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	23
	
l2138:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l2130
u2380:
	goto	l2140
	
l786:	
	goto	l2140
	line	24
	
l780:	
	line	25
	
l2140:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l787
	
l2142:	
	line	26
	
l787:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_uart_tx
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 68 in file "C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
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
psect	text245
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	68
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 6
; Regs used in _uart_tx: [wreg]
;uart_tx@val stored from wreg
	line	70
	movwf	(uart_tx@val)
	
l2116:	
;spi.c: 70: TXREG = val;
	movf	(uart_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	71
;spi.c: 71: while(TXIF==0);
	goto	l716
	
l717:	
	
l716:	
	btfss	(100/8),(100)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l716
u2310:
	
l718:	
	line	72
;spi.c: 72: TXIF=0;
	bcf	(100/8),(100)&7
	line	73
	
l719:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_delay
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function _delay *****************
;; Defined at:
;;		line 99 in file "C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
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
;;		_print_uart
;; This function uses a non-reentrant model
;;
psect	text246
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	99
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	100
	
l2110:	
;spi.c: 100: TMR1CS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	101
;spi.c: 101: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	102
;spi.c: 102: T1CKPS1 = 1;
	bsf	(133/8),(133)&7
	line	103
	
l2112:	
;spi.c: 103: TMR1H = 0XFA;
	movlw	(0FAh)
	movwf	(15)	;volatile
	line	104
;spi.c: 104: TMR1L = 0XDB;
	movlw	(0DBh)
	movwf	(14)	;volatile
	line	105
	
l2114:	
;spi.c: 105: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	106
;spi.c: 106: while(TMR1IF==0);
	goto	l731
	
l732:	
	
l731:	
	btfss	(96/8),(96)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l731
u2300:
	
l733:	
	line	107
;spi.c: 107: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	108
;spi.c: 108: TMR1ON= 1;
	bsf	(128/8),(128)&7
	line	109
	
l734:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_uart_init
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 83 in file "C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
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
psect	text247
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	83
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg+status,2]
	line	84
	
l2096:	
;spi.c: 84: TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	85
;spi.c: 85: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	87
	
l2098:	
;spi.c: 87: TXSTA = 0x00;
	clrf	(152)^080h	;volatile
	line	88
;spi.c: 88: RCSTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(24)	;volatile
	line	89
	
l2100:	
;spi.c: 89: SPBRG = 31;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	90
	
l2102:	
;spi.c: 90: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	91
	
l2104:	
;spi.c: 91: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	92
	
l2106:	
;spi.c: 92: TXIF=0;
	bcf	(100/8),(100)&7
	line	93
	
l2108:	
;spi.c: 93: RCIF=0;
	bcf	(101/8),(101)&7
	line	94
	
l728:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_spi_transfer
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:

;; *************** function _spi_transfer *****************
;; Defined at:
;;		line 33 in file "C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text248
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	33
	global	__size_of_spi_transfer
	__size_of_spi_transfer	equ	__end_of_spi_transfer-_spi_transfer
	
_spi_transfer:	
	opt	stack 7
; Regs used in _spi_transfer: [wreg]
;spi_transfer@data stored from wreg
	movwf	(spi_transfer@data)
	line	34
	
l2090:	
;spi.c: 34: SSPBUF = data;
	movf	(spi_transfer@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	35
;spi.c: 35: while(SSPIF==0);
	goto	l700
	
l701:	
	
l700:	
	btfss	(99/8),(99)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l700
u2290:
	
l702:	
	line	36
;spi.c: 36: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	37
	
l2092:	
;spi.c: 37: return SSPBUF;
	movf	(19),w	;volatile
	goto	l703
	
l2094:	
	line	38
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_spi_transfer
	__end_of_spi_transfer:
;; =============== function _spi_transfer ends ============

	signat	_spi_transfer,4217
	global	_spi_init
psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:

;; *************** function _spi_init *****************
;; Defined at:
;;		line 19 in file "C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
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
psect	text249
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\SPI\spi.c"
	line	19
	global	__size_of_spi_init
	__size_of_spi_init	equ	__end_of_spi_init-_spi_init
	
_spi_init:	
	opt	stack 7
; Regs used in _spi_init: [wreg+status,2]
	line	20
	
l2072:	
;spi.c: 20: SSPSTAT = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	21
	
l2074:	
;spi.c: 21: SSPCON = 0x12;
	movlw	(012h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	22
	
l2076:	
;spi.c: 22: SSPIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1123/8)^080h,(1123)&7
	line	23
	
l2078:	
;spi.c: 23: SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	24
	
l2080:	
;spi.c: 24: SSPEN = 1;
	bsf	(165/8),(165)&7
	line	25
	
l2082:	
;spi.c: 25: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	26
	
l2084:	
;spi.c: 26: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	27
	
l2086:	
;spi.c: 27: TRISC5 = 0;
	bcf	(1085/8)^080h,(1085)&7
	line	28
	
l2088:	
;spi.c: 28: TRISC1 = 0;
	bcf	(1081/8)^080h,(1081)&7
	line	29
	
l697:	
	return
	opt stack 0
GLOBAL	__end_of_spi_init
	__end_of_spi_init:
;; =============== function _spi_init ends ============

	signat	_spi_init,88
psect	text250,local,class=CODE,delta=2
global __ptext250
__ptext250:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
