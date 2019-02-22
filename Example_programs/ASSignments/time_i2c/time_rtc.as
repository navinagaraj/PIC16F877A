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
# 4 "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	dw 0xFFFE&0xFFFB&0xFFFF&0xFFFF&0xFF7F ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_i2c_init
	FNCALL	_main,_print_uart
	FNCALL	_main,_i2c_wait
	FNCALL	_main,_i2c_start
	FNCALL	_main,_i2c_write
	FNCALL	_main,_i2c_stop
	FNCALL	_main,_delay
	FNCALL	_main,_i2c_read
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_i2c_read,_i2c_wait
	FNCALL	_i2c_stop,_i2c_wait
	FNCALL	_i2c_write,_i2c_wait
	FNCALL	_i2c_start,_i2c_wait
	FNCALL	_print_uart,_uart_tx
	FNCALL	_print_uart,_delay
	FNROOT	_main
	global	_string
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	17

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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\lib\doprnt.c"
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
	global	_SSPADD
_SSPADD	set	147
	global	_SSPCON2
_SSPCON2	set	145
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISB
_TRISB	set	134
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_SEN
_SEN	set	1160
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	
STR_1:	
	retlw	32	;' '
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	13
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	13
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	32	;' '
	retlw	58	;':'
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
	file	"time_rtc.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	17
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
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+20)
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
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	main@buffer
main@buffer:	; 50 bytes @ 0x0
	ds	50
	global	main@a
main@a:	; 16 bytes @ 0x32
	ds	16
	global	main@i
main@i:	; 2 bytes @ 0x42
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x0
	global	?_i2c_init
?_i2c_init:	; 0 bytes @ 0x0
	global	??_i2c_init
??_i2c_init:	; 0 bytes @ 0x0
	global	?_print_uart
?_print_uart:	; 0 bytes @ 0x0
	global	?_i2c_wait
?_i2c_wait:	; 0 bytes @ 0x0
	global	??_i2c_wait
??_i2c_wait:	; 0 bytes @ 0x0
	global	?_i2c_start
?_i2c_start:	; 0 bytes @ 0x0
	global	??_i2c_start
??_i2c_start:	; 0 bytes @ 0x0
	global	?_i2c_write
?_i2c_write:	; 0 bytes @ 0x0
	global	?_i2c_stop
?_i2c_stop:	; 0 bytes @ 0x0
	global	??_i2c_stop
??_i2c_stop:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x0
	global	?_i2c_read
?_i2c_read:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	uart_tx@val
uart_tx@val:	; 1 bytes @ 0x0
	global	i2c_write@data
i2c_write@data:	; 2 bytes @ 0x0
	global	i2c_read@ack
i2c_read@ack:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_print_uart
??_print_uart:	; 0 bytes @ 0x1
	ds	1
	global	??_i2c_write
??_i2c_write:	; 0 bytes @ 0x2
	global	??_i2c_read
??_i2c_read:	; 0 bytes @ 0x2
	global	print_uart@str
print_uart@str:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	i2c_read@recv
i2c_read@recv:	; 2 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x8
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	ds	15
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0xF
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x10
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x11
	ds	4
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x15
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x17
	ds	1
;;Data sizes: Strings 48, constant 8, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80     24      44
;; BANK1           80     68      68
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_i2c_read	unsigned short  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 31
;;		 -> STR_1(CODE[31]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 50
;;		 -> main@buffer(BANK1[50]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1314$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; print_uart@str	PTR unsigned char  size(1) Largest target is 50
;;		 -> main@buffer(BANK1[50]), string(BANK0[20]), 
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                69    69      0     987
;;                                             11 COMMON     1     1      0
;;                                              0 BANK1     68    68      0
;;                          _uart_init
;;                           _i2c_init
;;                         _print_uart
;;                           _i2c_wait
;;                          _i2c_start
;;                          _i2c_write
;;                           _i2c_stop
;;                              _delay
;;                           _i2c_read
;;                            _sprintf
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             27    12     15     548
;;                                              8 COMMON     3     3      0
;;                                              0 BANK0     24     9     15
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (1) _i2c_read                                             6     4      2      45
;;                                              0 COMMON     6     4      2
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (1) _i2c_stop                                             0     0      0       0
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (1) _i2c_write                                            2     0      2      22
;;                                              0 COMMON     2     0      2
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (1) _i2c_start                                            0     0      0       0
;;                           _i2c_wait
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
;; (2) _i2c_wait                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _i2c_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _i2c_init
;;   _print_uart
;;     _uart_tx
;;     _delay
;;   _i2c_wait
;;   _i2c_start
;;     _i2c_wait
;;   _i2c_write
;;     _i2c_wait
;;   _i2c_stop
;;     _i2c_wait
;;   _delay
;;   _i2c_read
;;     _i2c_wait
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
;;BANK1               50     44      44       7       85.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      7E      12        0.0%
;;ABS                  0      0      7C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     18      2C       5       55.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         50    0[BANK1 ] unsigned char [50]
;;  a              16   50[BANK1 ] int [8]
;;  i               2   66[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  2  708[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      68       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0      68       0       0
;;Total ram usage:       69 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart_init
;;		_i2c_init
;;		_print_uart
;;		_i2c_wait
;;		_i2c_start
;;		_i2c_write
;;		_i2c_stop
;;		_delay
;;		_i2c_read
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l2252:	
;i2c_time.c: 21: int a[8],i=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	line	22
;i2c_time.c: 22: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	24
	
l2254:	
;i2c_time.c: 23: unsigned char buffer[50];
;i2c_time.c: 24: uart_init();
	fcall	_uart_init
	line	25
	
l2256:	
;i2c_time.c: 25: i2c_init();
	fcall	_i2c_init
	line	27
	
l2258:	
;i2c_time.c: 27: print_uart(string);
	movlw	(_string)&0ffh
	fcall	_print_uart
	line	28
	
l2260:	
;i2c_time.c: 28: i2c_wait();
	fcall	_i2c_wait
	line	29
	
l2262:	
;i2c_time.c: 29: i2c_start();
	fcall	_i2c_start
	line	30
	
l2264:	
;i2c_time.c: 30: i2c_write(0xD0);
	movlw	low(0D0h)
	movwf	(?_i2c_write)
	movlw	high(0D0h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	31
	
l2266:	
;i2c_time.c: 31: i2c_write(0x00);
	movlw	low(0)
	movwf	(?_i2c_write)
	movlw	high(0)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	33
	
l2268:	
;i2c_time.c: 33: i2c_stop();
	fcall	_i2c_stop
	line	34
	
l2270:	
;i2c_time.c: 34: delay();
	fcall	_delay
	line	36
	
l2272:	
;i2c_time.c: 36: i2c_wait();
	fcall	_i2c_wait
	line	37
	
l2274:	
;i2c_time.c: 37: i2c_start();
	fcall	_i2c_start
	line	38
	
l2276:	
;i2c_time.c: 38: i2c_write(0xD0);
	movlw	low(0D0h)
	movwf	(?_i2c_write)
	movlw	high(0D0h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	39
	
l2278:	
;i2c_time.c: 39: i2c_write(0x00);
	movlw	low(0)
	movwf	(?_i2c_write)
	movlw	high(0)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	40
	
l2280:	
;i2c_time.c: 40: i2c_stop();
	fcall	_i2c_stop
	line	41
	
l2282:	
;i2c_time.c: 41: i2c_start();
	fcall	_i2c_start
	line	42
	
l2284:	
;i2c_time.c: 42: i2c_write(0xD7);
	movlw	low(0D7h)
	movwf	(?_i2c_write)
	movlw	high(0D7h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	43
	
l2286:	
;i2c_time.c: 43: i2c_write(0x90);
	movlw	low(090h)
	movwf	(?_i2c_write)
	movlw	high(090h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	44
	
l2288:	
;i2c_time.c: 44: i2c_stop();
	fcall	_i2c_stop
	line	46
	
l2290:	
;i2c_time.c: 46: i2c_wait();
	fcall	_i2c_wait
	line	47
	
l2292:	
;i2c_time.c: 47: i2c_start();
	fcall	_i2c_start
	line	48
	
l2294:	
;i2c_time.c: 48: i2c_write(0xD1);
	movlw	low(0D1h)
	movwf	(?_i2c_write)
	movlw	high(0D1h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	51
	
l2296:	
;i2c_time.c: 51: for(i=0;i<8;i++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	
l2298:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2495
	movlw	low(08h)
	subwf	(main@i)^080h,w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l2302
u2490:
	goto	l2308
	
l2300:	
	goto	l2308
	line	52
	
l709:	
	line	53
	
l2302:	
;i2c_time.c: 52: {
;i2c_time.c: 53: a[i] = i2c_read(1);
	movlw	low(01h)
	movwf	(?_i2c_read)
	movlw	high(01h)
	movwf	((?_i2c_read))+1
	fcall	_i2c_read
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(0+(?_i2c_read)),w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_i2c_read)),w
	movwf	indf
	line	51
	
l2304:	
	movlw	low(01h)
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	
l2306:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	low(08h)
	subwf	(main@i)^080h,w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2302
u2500:
	goto	l2308
	
l710:	
	line	55
	
l2308:	
;i2c_time.c: 54: }
;i2c_time.c: 55: i2c_stop();
	fcall	_i2c_stop
	line	57
	
l2310:	
;i2c_time.c: 57: sprintf(buffer," %x : %x : %x\r%x\r%x : %x : %x\r",a[0],a[1],a[2],a[3],a[4],a[5],a[6]);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@a+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@a)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(main@a)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(main@a)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(main@a)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+05h
	addwf	1+(?_sprintf)+05h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(main@a)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+05h
	addwf	0+(?_sprintf)+05h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(main@a)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+07h
	addwf	1+(?_sprintf)+07h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(main@a)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+07h
	addwf	0+(?_sprintf)+07h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(main@a)^080h+08h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+09h
	addwf	1+(?_sprintf)+09h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(main@a)^080h+08h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+09h
	addwf	0+(?_sprintf)+09h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(main@a)^080h+0Ah,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+0Bh
	addwf	1+(?_sprintf)+0Bh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(main@a)^080h+0Ah,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+0Bh
	addwf	0+(?_sprintf)+0Bh

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(main@a)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+0Dh
	addwf	1+(?_sprintf)+0Dh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(main@a)^080h+0Ch,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+0Dh
	addwf	0+(?_sprintf)+0Dh

	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	58
	
l2312:	
;i2c_time.c: 58: print_uart(buffer);
	movlw	(main@buffer)&0ffh
	fcall	_print_uart
	goto	l712
	line	61
;i2c_time.c: 61: while(1);
	
l711:	
	
l712:	
	goto	l712
	
l713:	
	line	63
	
l714:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_sprintf
psect	text336,local,class=CODE,delta=2
global __ptext336
__ptext336:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@buffer(50), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(31), 
;; Auto vars:     Size  Location     Type
;;  sp              1   22[BANK0 ] PTR unsigned char 
;;		 -> main@buffer(50), 
;;  _val            4   17[BANK0 ] struct .
;;  c               1   23[BANK0 ] char 
;;  prec            1   21[BANK0 ] char 
;;  ap              1   16[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  flag            1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      15       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3      24       0       0       0
;;Total ram usage:       27 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text336
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
	
l2206:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	540
	goto	l2246
	
l766:	
	line	542
	
l2208:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2431
	goto	u2430
u2431:
	goto	l767
u2430:
	line	545
	
l2210:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2212:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	546
	goto	l2246
	line	547
	
l767:	
	line	552
	clrf	(sprintf@flag)
	line	638
	goto	l2216
	line	640
	
l769:	
	line	641
	goto	l2248
	line	721
	
l771:	
	line	726
	goto	l2218
	line	805
	
l773:	
	line	816
	goto	l2246
	line	825
	
l2214:	
	goto	l2218
	line	638
	
l768:	
	
l2216:	
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
	goto	l2248
	xorlw	120^0	; case 120
	skipnz
	goto	l2218
	goto	l2246
	opt asmopt_on

	line	825
	
l772:	
	line	1281
	
l2218:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l2220:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1311
	
l2222:	
	clrf	(sprintf@c)
	bsf	status,0
	rlf	(sprintf@c),f
	
l2224:	
	movf	(sprintf@c),w
	xorlw	04h
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2228
u2440:
	goto	l2236
	
l2226:	
	goto	l2236
	line	1312
	
l774:	
	
l2228:	
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
	goto	u2455
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2455:
	skipnc
	goto	u2451
	goto	u2450
u2451:
	goto	l2232
u2450:
	goto	l2236
	line	1313
	
l2230:	
	goto	l2236
	
l776:	
	line	1311
	
l2232:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2234:	
	movf	(sprintf@c),w
	xorlw	04h
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l2228
u2460:
	goto	l2236
	
l775:	
	line	1467
	
l2236:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1469
	goto	l2244
	
l778:	
	line	1499
	
l2238:	
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
	
l2240:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2242:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2244
	line	1517
	
l777:	
	line	1469
	
l2244:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l2238
u2470:
	goto	l2246
	
l779:	
	goto	l2246
	line	1525
	
l765:	
	line	540
	
l2246:	
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
	goto	u2481
	goto	u2480
u2481:
	goto	l2208
u2480:
	goto	l2248
	
l780:	
	goto	l2248
	line	1527
	
l770:	
	line	1530
	
l2248:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l781
	line	1532
	
l2250:	
	line	1533
;	Return value of _sprintf is never used
	
l781:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_i2c_read
psect	text337,local,class=CODE,delta=2
global __ptext337
__ptext337:

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 102 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
;; Parameters:    Size  Location     Type
;;  ack             2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  recv            2    4[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_i2c_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text337
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	102
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
	
_i2c_read:	
	opt	stack 6
; Regs used in _i2c_read: [wreg+status,2+status,0+pclath+cstack]
	line	104
	
l2192:	
;i2c_time.c: 103: unsigned short recv;
;i2c_time.c: 104: i2c_wait();
	fcall	_i2c_wait
	line	105
	
l2194:	
;i2c_time.c: 105: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	106
;i2c_time.c: 106: i2c_wait();
	fcall	_i2c_wait
	line	107
	
l2196:	
;i2c_time.c: 107: recv = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_i2c_read+0)+0
	clrf	(??_i2c_read+0)+0+1
	movf	0+(??_i2c_read+0)+0,w
	movwf	(i2c_read@recv)
	movf	1+(??_i2c_read+0)+0,w
	movwf	(i2c_read@recv+1)
	line	108
	
l2198:	
;i2c_time.c: 108: i2c_wait();
	fcall	_i2c_wait
	line	109
;i2c_time.c: 109: ACKDT = (ack)?0:1;
	movf	(i2c_read@ack+1),w
	iorwf	(i2c_read@ack),w
	skipnz
	goto	u2411
	goto	u2410
	
u2411:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	goto	u2424
u2410:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
u2424:
	line	110
	
l2200:	
;i2c_time.c: 110: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	111
	
l2202:	
;i2c_time.c: 111: return recv;
	movf	(i2c_read@recv+1),w
	clrf	(?_i2c_read+1)
	addwf	(?_i2c_read+1)
	movf	(i2c_read@recv),w
	clrf	(?_i2c_read)
	addwf	(?_i2c_read)

	goto	l744
	
l2204:	
	line	112
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
;; =============== function _i2c_read ends ============

	signat	_i2c_read,4218
	global	_i2c_stop
psect	text338,local,class=CODE,delta=2
global __ptext338
__ptext338:

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 114 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_i2c_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text338
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	114
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
	opt	stack 6
; Regs used in _i2c_stop: [wreg+status,2+status,0+pclath+cstack]
	line	115
	
l2188:	
;i2c_time.c: 115: i2c_wait();
	fcall	_i2c_wait
	line	116
	
l2190:	
;i2c_time.c: 116: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	117
	
l747:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
;; =============== function _i2c_stop ends ============

	signat	_i2c_stop,88
	global	_i2c_write
psect	text339,local,class=CODE,delta=2
global __ptext339
__ptext339:

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 97 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
;; Parameters:    Size  Location     Type
;;  data            2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_i2c_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text339
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	97
	global	__size_of_i2c_write
	__size_of_i2c_write	equ	__end_of_i2c_write-_i2c_write
	
_i2c_write:	
	opt	stack 6
; Regs used in _i2c_write: [wreg+status,2+status,0+pclath+cstack]
	line	98
	
l2184:	
;i2c_time.c: 98: i2c_wait();
	fcall	_i2c_wait
	line	99
	
l2186:	
;i2c_time.c: 99: SSPBUF = data;
	movf	(i2c_write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	100
	
l741:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
;; =============== function _i2c_write ends ============

	signat	_i2c_write,4216
	global	_i2c_start
psect	text340,local,class=CODE,delta=2
global __ptext340
__ptext340:

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 92 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_i2c_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text340
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	92
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
	opt	stack 6
; Regs used in _i2c_start: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l2180:	
;i2c_time.c: 93: i2c_wait();
	fcall	_i2c_wait
	line	94
	
l2182:	
;i2c_time.c: 94: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	95
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
;; =============== function _i2c_start ends ============

	signat	_i2c_start,88
	global	_print_uart
psect	text341,local,class=CODE,delta=2
global __ptext341
__ptext341:

;; *************** function _print_uart *****************
;; Defined at:
;;		line 65 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> main@buffer(50), string(20), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR unsigned char 
;;		 -> main@buffer(50), string(20), 
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
psect	text341
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	65
	global	__size_of_print_uart
	__size_of_print_uart	equ	__end_of_print_uart-_print_uart
	
_print_uart:	
	opt	stack 6
; Regs used in _print_uart: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print_uart@str stored from wreg
	movwf	(print_uart@str)
	line	67
	
l2172:	
;i2c_time.c: 67: while(*str)
	goto	l717
	
l718:	
	line	69
	
l2174:	
;i2c_time.c: 68: {
;i2c_time.c: 69: uart_tx(*str);
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	70
	
l2176:	
;i2c_time.c: 70: delay();
	fcall	_delay
	line	71
	
l2178:	
;i2c_time.c: 71: str++;
	movlw	(01h)
	movwf	(??_print_uart+0)+0
	movf	(??_print_uart+0)+0,w
	addwf	(print_uart@str),f
	line	72
	
l717:	
	line	67
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l2174
u2400:
	goto	l720
	
l719:	
	line	73
	
l720:	
	return
	opt stack 0
GLOBAL	__end_of_print_uart
	__end_of_print_uart:
;; =============== function _print_uart ends ============

	signat	_print_uart,4216
	global	___lwdiv
psect	text342,local,class=CODE,delta=2
global __ptext342
__ptext342:

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
psect	text342
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2146:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2148:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l2168
u2330:
	line	11
	
l2150:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l2156
	
l798:	
	line	13
	
l2152:	
	movlw	01h
	
u2345:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2345
	line	14
	
l2154:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2156
	line	15
	
l797:	
	line	12
	
l2156:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l2152
u2350:
	goto	l2158
	
l799:	
	goto	l2158
	line	16
	
l800:	
	line	17
	
l2158:	
	movlw	01h
	
u2365:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2365
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2375
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2375:
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2164
u2370:
	line	19
	
l2160:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2162:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2164
	line	21
	
l801:	
	line	22
	
l2164:	
	movlw	01h
	
u2385:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2385
	line	23
	
l2166:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l2158
u2390:
	goto	l2168
	
l802:	
	goto	l2168
	line	24
	
l796:	
	line	25
	
l2168:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l803
	
l2170:	
	line	26
	
l803:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_uart_tx
psect	text343,local,class=CODE,delta=2
global __ptext343
__ptext343:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 75 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
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
psect	text343
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	75
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 6
; Regs used in _uart_tx: [wreg]
;uart_tx@val stored from wreg
	movwf	(uart_tx@val)
	line	76
	
l2144:	
;i2c_time.c: 76: TXREG=val;
	movf	(uart_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	77
;i2c_time.c: 77: while(TXIF==0);
	goto	l723
	
l724:	
	
l723:	
	btfss	(100/8),(100)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l723
u2320:
	
l725:	
	line	78
;i2c_time.c: 78: TXIF=0;
	bcf	(100/8),(100)&7
	line	79
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_delay
psect	text344,local,class=CODE,delta=2
global __ptext344
__ptext344:

;; *************** function _delay *****************
;; Defined at:
;;		line 119 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
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
psect	text344
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	119
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	120
	
l2138:	
;i2c_time.c: 120: TMR1CS=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	121
;i2c_time.c: 121: T1CKPS0=1;
	bsf	(132/8),(132)&7
	line	122
;i2c_time.c: 122: T1CKPS1=1;
	bsf	(133/8),(133)&7
	line	123
	
l2140:	
;i2c_time.c: 123: TMR1H=0X3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	124
;i2c_time.c: 124: TMR1L=0XB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	125
	
l2142:	
;i2c_time.c: 125: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	126
;i2c_time.c: 126: while(!TMR1IF);
	goto	l750
	
l751:	
	
l750:	
	btfss	(96/8),(96)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l750
u2310:
	
l752:	
	line	127
;i2c_time.c: 127: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	128
;i2c_time.c: 128: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	129
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_i2c_wait
psect	text345,local,class=CODE,delta=2
global __ptext345
__ptext345:

;; *************** function _i2c_wait *****************
;; Defined at:
;;		line 88 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
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
;;		_i2c_start
;;		_i2c_write
;;		_i2c_read
;;		_i2c_stop
;; This function uses a non-reentrant model
;;
psect	text345
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	88
	global	__size_of_i2c_wait
	__size_of_i2c_wait	equ	__end_of_i2c_wait-_i2c_wait
	
_i2c_wait:	
	opt	stack 6
; Regs used in _i2c_wait: [wreg+status,2]
	line	89
	
l2132:	
;i2c_time.c: 89: while ((SSPCON2 & 0x1F) || (SSPSTAT & 0x04) ) ;
	goto	l2134
	
l733:	
	goto	l2134
	
l732:	
	
l2134:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w
	andlw	01Fh
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l2134
u2290:
	
l2136:	
	btfsc	(148)^080h,(2)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l2134
u2300:
	goto	l735
	
l734:	
	line	90
	
l735:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_wait
	__end_of_i2c_wait:
;; =============== function _i2c_wait ends ============

	signat	_i2c_wait,88
	global	_i2c_init
psect	text346,local,class=CODE,delta=2
global __ptext346
__ptext346:

;; *************** function _i2c_init *****************
;; Defined at:
;;		line 81 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
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
psect	text346
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	81
	global	__size_of_i2c_init
	__size_of_i2c_init	equ	__end_of_i2c_init-_i2c_init
	
_i2c_init:	
	opt	stack 7
; Regs used in _i2c_init: [wreg+status,2]
	line	82
	
l2126:	
;i2c_time.c: 82: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	83
	
l2128:	
;i2c_time.c: 83: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	84
	
l2130:	
;i2c_time.c: 84: SSPADD = 49;
	movlw	(031h)
	movwf	(147)^080h	;volatile
	line	85
;i2c_time.c: 85: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	86
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_init
	__end_of_i2c_init:
;; =============== function _i2c_init ends ============

	signat	_i2c_init,88
	global	_uart_init
psect	text347,local,class=CODE,delta=2
global __ptext347
__ptext347:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 131 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
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
psect	text347
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\time_i2c\i2c_time.c"
	line	131
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg]
	line	132
	
l2114:	
;i2c_time.c: 132: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	133
;i2c_time.c: 133: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	136
	
l2116:	
;i2c_time.c: 136: SPBRG=31;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	137
	
l2118:	
;i2c_time.c: 137: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	138
	
l2120:	
;i2c_time.c: 138: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	139
	
l2122:	
;i2c_time.c: 139: TXIF=0;
	bcf	(100/8),(100)&7
	line	140
	
l2124:	
;i2c_time.c: 140: RCIF=0;
	bcf	(101/8),(101)&7
	line	141
	
l756:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
psect	text348,local,class=CODE,delta=2
global __ptext348
__ptext348:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
