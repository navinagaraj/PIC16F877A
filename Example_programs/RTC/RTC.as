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
# 4 "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	dw 0xFFFE&0xFFFB&0xFFFF&0xFFFF&0xFF7F ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_i2c_init
	FNCALL	_main,_delay
	FNCALL	_main,_i2c_wait
	FNCALL	_main,_i2c_start
	FNCALL	_main,_i2c_write
	FNCALL	_main,_i2c_stop
	FNCALL	_main,_i2c
	FNCALL	_i2c,_i2c_wait
	FNCALL	_i2c,_i2c_start
	FNCALL	_i2c,_i2c_write
	FNCALL	_i2c,_i2c_stop
	FNCALL	_i2c,_i2c_read
	FNCALL	_i2c,_sprintf
	FNCALL	_i2c,_print_uart
	FNCALL	_print_uart,_uart_tx
	FNCALL	_sprintf,___lwdiv
	FNCALL	_i2c_read,_i2c_wait
	FNCALL	_i2c_stop,_i2c_wait
	FNCALL	_i2c_write,_i2c_wait
	FNCALL	_i2c_start,_i2c_wait
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_string
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	17

;initializer for _string
	retlw	046h
	retlw	069h
	retlw	072h
	retlw	073h
	retlw	074h
	retlw	020h
	retlw	043h
	retlw	06Fh
	retlw	06Eh
	retlw	074h
	retlw	072h
	retlw	06Fh
	retlw	06Ch
	retlw	06Ch
	retlw	065h
	retlw	072h
	retlw	020h
	retlw	069h
	retlw	073h
	retlw	020h
	retlw	077h
	retlw	06Fh
	retlw	072h
	retlw	06Bh
	retlw	069h
	retlw	06Eh
	retlw	067h
	retlw	0Dh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
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
	global	_a
	global	_chk
	global	_i
	global	_strt
	global	_buffer
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
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RC0
_RC0	set	56
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
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_SPBRG
_SPBRG	set	153
	global	_SSPADD
_SSPADD	set	147
	global	_SSPCON2
_SSPCON2	set	145
	global	_SSPSTAT
_SSPSTAT	set	148
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
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	
STR_1:	
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
	file	"RTC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      16

_chk:
       ds      2

_i:
       ds      2

_strt:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_buffer:
       ds      50

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	17
_string:
       ds      50

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+016h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+032h)
	fcall	clear_ram
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
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+50)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
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
	global	?_i2c_init
?_i2c_init:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_i2c_wait
?_i2c_wait:	; 0 bytes @ 0x0
	global	?_i2c_start
?_i2c_start:	; 0 bytes @ 0x0
	global	?_i2c_stop
?_i2c_stop:	; 0 bytes @ 0x0
	global	?_i2c
?_i2c:	; 0 bytes @ 0x0
	global	?_print_uart
?_print_uart:	; 0 bytes @ 0x0
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	4
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x4
	global	??_i2c_init
??_i2c_init:	; 0 bytes @ 0x4
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	??_i2c_wait
??_i2c_wait:	; 0 bytes @ 0x4
	global	??_i2c_start
??_i2c_start:	; 0 bytes @ 0x4
	global	?_i2c_write
?_i2c_write:	; 0 bytes @ 0x4
	global	??_i2c_stop
??_i2c_stop:	; 0 bytes @ 0x4
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x4
	global	?_i2c_read
?_i2c_read:	; 2 bytes @ 0x4
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x4
	global	uart_tx@val
uart_tx@val:	; 1 bytes @ 0x4
	global	i2c_write@data
i2c_write@data:	; 2 bytes @ 0x4
	global	i2c_read@ack
i2c_read@ack:	; 2 bytes @ 0x4
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x4
	ds	1
	global	??_print_uart
??_print_uart:	; 0 bytes @ 0x5
	ds	1
	global	??_i2c_write
??_i2c_write:	; 0 bytes @ 0x6
	global	??_i2c_read
??_i2c_read:	; 0 bytes @ 0x6
	global	print_uart@str
print_uart@str:	; 1 bytes @ 0x6
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x6
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x8
	global	i2c_read@recv
i2c_read@recv:	; 2 bytes @ 0x8
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x0
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x2
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x3
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x3
	ds	15
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x12
	ds	3
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x15
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x17
	ds	4
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1C
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1D
	ds	1
	global	??_i2c
??_i2c:	; 0 bytes @ 0x1E
	ds	1
;;Data sizes: Strings 47, constant 8, data 50, bss 72, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80     31      53
;; BANK1           80      0      50
;; BANK3           96      0      50
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_i2c_read	unsigned short  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 30
;;		 -> STR_1(CODE[30]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 50
;;		 -> buffer(BANK1[50]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1323$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; print_uart@str	PTR unsigned char  size(1) Largest target is 50
;;		 -> buffer(BANK1[50]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _i2c->_i2c_read
;;   _print_uart->_uart_tx
;;   _sprintf->___lwdiv
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_i2c
;;   _i2c->_sprintf
;;   _sprintf->___lwdiv
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
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
;; (0) _main                                                 0     0      0     704
;;                          _uart_init
;;                           _i2c_init
;;                              _delay
;;                           _i2c_wait
;;                          _i2c_start
;;                          _i2c_write
;;                           _i2c_stop
;;                                _i2c
;; ---------------------------------------------------------------------------------
;; (1) _i2c                                                  1     1      0     682
;;                                             30 BANK0      1     1      0
;;                           _i2c_wait
;;                          _i2c_start
;;                          _i2c_write
;;                           _i2c_stop
;;                           _i2c_read
;;                            _sprintf
;;                         _print_uart
;; ---------------------------------------------------------------------------------
;; (2) _print_uart                                           2     2      0      67
;;                                              5 COMMON     2     2      0
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (2) _sprintf                                             27    12     15     548
;;                                              3 BANK0     27    12     15
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (2) _i2c_read                                             6     4      2      45
;;                                              4 COMMON     6     4      2
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (2) _i2c_stop                                             0     0      0       0
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (2) _i2c_write                                            2     0      2      22
;;                                              4 COMMON     2     0      2
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (2) _i2c_start                                            0     0      0       0
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              8     4      4     162
;;                                              4 COMMON     5     1      4
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _uart_tx                                              1     1      0      22
;;                                              4 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _i2c_wait                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _i2c_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ISR                                                  4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _i2c_init
;;   _delay
;;   _i2c_wait
;;   _i2c_start
;;     _i2c_wait
;;   _i2c_write
;;     _i2c_wait
;;   _i2c_stop
;;     _i2c_wait
;;   _i2c
;;     _i2c_wait
;;     _i2c_start
;;       _i2c_wait
;;     _i2c_write
;;       _i2c_wait
;;     _i2c_stop
;;       _i2c_wait
;;     _i2c_read
;;       _i2c_wait
;;     _sprintf
;;       ___lwdiv
;;     _print_uart
;;       _uart_tx
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      32       9       52.1%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      32       7       62.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      A6      12        0.0%
;;ABS                  0      0      A3       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     1F      35       5       66.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 24 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  720[COMMON] int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_uart_init
;;		_i2c_init
;;		_delay
;;		_i2c_wait
;;		_i2c_start
;;		_i2c_write
;;		_i2c_stop
;;		_i2c
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	24
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	25
	
l2318:	
;rtc.c: 25: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	26
;rtc.c: 26: TRISC0 = 0;
	bcf	(1080/8)^080h,(1080)&7
	line	27
	
l2320:	
;rtc.c: 27: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	28
	
l2322:	
;rtc.c: 28: GIE = 1;
	bsf	(95/8),(95)&7
	line	29
	
l2324:	
;rtc.c: 29: PEIE = 1;
	bsf	(94/8),(94)&7
	line	30
	
l2326:	
;rtc.c: 30: INTE = 1;
	bsf	(92/8),(92)&7
	line	31
	
l2328:	
;rtc.c: 31: uart_init();
	fcall	_uart_init
	line	32
	
l2330:	
;rtc.c: 32: i2c_init();
	fcall	_i2c_init
	line	33
	
l2332:	
;rtc.c: 33: delay();
	fcall	_delay
	line	34
	
l2334:	
;rtc.c: 34: i2c_wait();
	fcall	_i2c_wait
	line	35
	
l2336:	
;rtc.c: 35: i2c_start();
	fcall	_i2c_start
	line	36
	
l2338:	
;rtc.c: 36: i2c_write(0xD0);
	movlw	low(0D0h)
	movwf	(?_i2c_write)
	movlw	high(0D0h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	37
	
l2340:	
;rtc.c: 37: i2c_write(0x07);
	movlw	low(07h)
	movwf	(?_i2c_write)
	movlw	high(07h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	38
	
l2342:	
;rtc.c: 38: i2c_write(0x10);
	movlw	low(010h)
	movwf	(?_i2c_write)
	movlw	high(010h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	39
	
l2344:	
;rtc.c: 39: i2c_stop();
	fcall	_i2c_stop
	goto	l2346
	line	40
;rtc.c: 40: while(1)
	
l721:	
	line	42
	
l2346:	
;rtc.c: 41: {
;rtc.c: 42: if(strt==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_strt),w
	iorwf	(_strt+1),w
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l2352
u2550:
	line	44
	
l2348:	
;rtc.c: 43: {
;rtc.c: 44: i2c();
	fcall	_i2c
	line	45
	
l2350:	
;rtc.c: 45: strt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_strt)
	clrf	(_strt+1)
	line	46
;rtc.c: 46: }
	goto	l2354
	line	47
	
l722:	
	line	48
	
l2352:	
;rtc.c: 47: else
;rtc.c: 48: strt = 0;
	clrf	(_strt)
	clrf	(_strt+1)
	goto	l2354
	
l723:	
	line	49
	
l2354:	
;rtc.c: 49: chk = 1;
	movlw	low(01h)
	movwf	(_chk)
	movlw	high(01h)
	movwf	((_chk))+1
	line	50
;rtc.c: 50: while(chk==1);
	goto	l2356
	
l725:	
	goto	l2356
	
l724:	
	
l2356:	
	movlw	01h
	xorwf	(_chk),w
	iorwf	(_chk+1),w
	skipnz
	goto	u2561
	goto	u2560
u2561:
	goto	l2356
u2560:
	goto	l2346
	
l726:	
	goto	l2346
	line	51
	
l727:	
	line	40
	goto	l2346
	
l728:	
	line	52
	
l729:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_i2c
psect	text384,local,class=CODE,delta=2
global __ptext384
__ptext384:

;; *************** function _i2c *****************
;; Defined at:
;;		line 70 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2c_wait
;;		_i2c_start
;;		_i2c_write
;;		_i2c_stop
;;		_i2c_read
;;		_sprintf
;;		_print_uart
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text384
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	70
	global	__size_of_i2c
	__size_of_i2c	equ	__end_of_i2c-_i2c
	
_i2c:	
	opt	stack 4
; Regs used in _i2c: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	71
	
l2298:	
;rtc.c: 71: i2c_wait();
	fcall	_i2c_wait
	line	72
;rtc.c: 72: i2c_start();
	fcall	_i2c_start
	line	73
;rtc.c: 73: i2c_write(0xD0);
	movlw	low(0D0h)
	movwf	(?_i2c_write)
	movlw	high(0D0h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	74
;rtc.c: 74: i2c_write(0x00);
	movlw	low(0)
	movwf	(?_i2c_write)
	movlw	high(0)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	75
;rtc.c: 75: i2c_stop();
	fcall	_i2c_stop
	line	77
;rtc.c: 77: i2c_wait();
	fcall	_i2c_wait
	line	78
;rtc.c: 78: i2c_start();
	fcall	_i2c_start
	line	79
;rtc.c: 79: i2c_write(0xD1);
	movlw	low(0D1h)
	movwf	(?_i2c_write)
	movlw	high(0D1h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	80
	
l2300:	
;rtc.c: 80: for(i=0;i<8;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_i)
	clrf	(_i+1)
	
l2302:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2535
	movlw	low(08h)
	subwf	(_i),w
u2535:

	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l2306
u2530:
	goto	l2312
	
l2304:	
	goto	l2312
	line	81
	
l736:	
	line	82
	
l2306:	
;rtc.c: 81: {
;rtc.c: 82: a[i] = i2c_read(1);
	movlw	low(01h)
	movwf	(?_i2c_read)
	movlw	high(01h)
	movwf	((?_i2c_read))+1
	fcall	_i2c_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	movwf	(??_i2c+0)+0
	addwf	(??_i2c+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movf	(0+(?_i2c_read)),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_i2c_read)),w
	movwf	indf
	line	80
	
l2308:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l2310:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2545
	movlw	low(08h)
	subwf	(_i),w
u2545:

	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l2306
u2540:
	goto	l2312
	
l737:	
	line	84
	
l2312:	
;rtc.c: 83: }
;rtc.c: 84: i2c_stop();
	fcall	_i2c_stop
	line	86
	
l2314:	
;rtc.c: 86: sprintf(buffer,"%x : %x : %x\r%x\r%x : %x : %x\r",a[2],a[1],a[0],a[3],a[4],a[5],a[6]);
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c+0)+0
	movf	(??_i2c+0)+0,w
	movwf	(?_sprintf)
	movf	1+(_a)+04h,w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	0+(_a)+04h,w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	1+(_a)+02h,w
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	0+(_a)+02h,w
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movf	(_a+1),w
	clrf	1+(?_sprintf)+05h
	addwf	1+(?_sprintf)+05h
	movf	(_a),w
	clrf	0+(?_sprintf)+05h
	addwf	0+(?_sprintf)+05h

	movf	1+(_a)+06h,w
	clrf	1+(?_sprintf)+07h
	addwf	1+(?_sprintf)+07h
	movf	0+(_a)+06h,w
	clrf	0+(?_sprintf)+07h
	addwf	0+(?_sprintf)+07h

	movf	1+(_a)+08h,w
	clrf	1+(?_sprintf)+09h
	addwf	1+(?_sprintf)+09h
	movf	0+(_a)+08h,w
	clrf	0+(?_sprintf)+09h
	addwf	0+(?_sprintf)+09h

	movf	1+(_a)+0Ah,w
	clrf	1+(?_sprintf)+0Bh
	addwf	1+(?_sprintf)+0Bh
	movf	0+(_a)+0Ah,w
	clrf	0+(?_sprintf)+0Bh
	addwf	0+(?_sprintf)+0Bh

	movf	1+(_a)+0Ch,w
	clrf	1+(?_sprintf)+0Dh
	addwf	1+(?_sprintf)+0Dh
	movf	0+(_a)+0Ch,w
	clrf	0+(?_sprintf)+0Dh
	addwf	0+(?_sprintf)+0Dh

	movlw	(_buffer)&0ffh
	fcall	_sprintf
	line	87
	
l2316:	
;rtc.c: 87: print_uart(buffer);
	movlw	(_buffer)&0ffh
	fcall	_print_uart
	line	88
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of_i2c
	__end_of_i2c:
;; =============== function _i2c ends ============

	signat	_i2c,88
	global	_print_uart
psect	text385,local,class=CODE,delta=2
global __ptext385
__ptext385:

;; *************** function _print_uart *****************
;; Defined at:
;;		line 91 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> buffer(50), 
;; Auto vars:     Size  Location     Type
;;  str             1    6[COMMON] PTR unsigned char 
;;		 -> buffer(50), 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart_tx
;; This function is called by:
;;		_i2c
;; This function uses a non-reentrant model
;;
psect	text385
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	91
	global	__size_of_print_uart
	__size_of_print_uart	equ	__end_of_print_uart-_print_uart
	
_print_uart:	
	opt	stack 4
; Regs used in _print_uart: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print_uart@str stored from wreg
	movwf	(print_uart@str)
	line	93
	
l2290:	
;rtc.c: 93: while(*str)
	goto	l2296
	
l742:	
	line	95
	
l2292:	
;rtc.c: 94: {
;rtc.c: 95: uart_tx(*str);
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	96
	
l2294:	
;rtc.c: 96: str++;
	movlw	(01h)
	movwf	(??_print_uart+0)+0
	movf	(??_print_uart+0)+0,w
	addwf	(print_uart@str),f
	goto	l2296
	line	97
	
l741:	
	line	93
	
l2296:	
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l2292
u2520:
	goto	l744
	
l743:	
	line	98
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of_print_uart
	__end_of_print_uart:
;; =============== function _print_uart ends ============

	signat	_print_uart,4216
	global	_sprintf
psect	text386,local,class=CODE,delta=2
global __ptext386
__ptext386:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> buffer(50), 
;;  f               1    3[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(30), 
;; Auto vars:     Size  Location     Type
;;  sp              1   28[BANK0 ] PTR unsigned char 
;;		 -> buffer(50), 
;;  _val            4   23[BANK0 ] struct .
;;  c               1   29[BANK0 ] char 
;;  prec            1   27[BANK0 ] char 
;;  ap              1   22[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  flag            1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      15       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      27       0       0       0
;;Total ram usage:       27 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_i2c
;; This function uses a non-reentrant model
;;
psect	text386
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	
l2244:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	540
	goto	l2284
	
l790:	
	line	542
	
l2246:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2461
	goto	u2460
u2461:
	goto	l791
u2460:
	line	545
	
l2248:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2250:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	546
	goto	l2284
	line	547
	
l791:	
	line	552
	clrf	(sprintf@flag)
	line	638
	goto	l2254
	line	640
	
l793:	
	line	641
	goto	l2286
	line	721
	
l795:	
	line	726
	goto	l2256
	line	805
	
l797:	
	line	816
	goto	l2284
	line	825
	
l2252:	
	goto	l2256
	line	638
	
l792:	
	
l2254:	
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
	goto	l2286
	xorlw	120^0	; case 120
	skipnz
	goto	l2256
	goto	l2284
	opt asmopt_on

	line	825
	
l796:	
	line	1281
	
l2256:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l2258:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1311
	
l2260:	
	clrf	(sprintf@c)
	bsf	status,0
	rlf	(sprintf@c),f
	
l2262:	
	movf	(sprintf@c),w
	xorlw	04h
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l2266
u2470:
	goto	l2274
	
l2264:	
	goto	l2274
	line	1312
	
l798:	
	
l2266:	
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
	goto	u2485
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2485:
	skipnc
	goto	u2481
	goto	u2480
u2481:
	goto	l2270
u2480:
	goto	l2274
	line	1313
	
l2268:	
	goto	l2274
	
l800:	
	line	1311
	
l2270:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2272:	
	movf	(sprintf@c),w
	xorlw	04h
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l2266
u2490:
	goto	l2274
	
l799:	
	line	1467
	
l2274:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1469
	goto	l2282
	
l802:	
	line	1499
	
l2276:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1516
	
l2278:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2280:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2282
	line	1517
	
l801:	
	line	1469
	
l2282:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l2276
u2500:
	goto	l2284
	
l803:	
	goto	l2284
	line	1525
	
l789:	
	line	540
	
l2284:	
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
	goto	u2511
	goto	u2510
u2511:
	goto	l2246
u2510:
	goto	l2286
	
l804:	
	goto	l2286
	line	1527
	
l794:	
	line	1530
	
l2286:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l805
	line	1532
	
l2288:	
	line	1533
;	Return value of _sprintf is never used
	
l805:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_i2c_read
psect	text387,local,class=CODE,delta=2
global __ptext387
__ptext387:

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 127 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
;; Parameters:    Size  Location     Type
;;  ack             2    4[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  recv            2    8[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned short 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_wait
;; This function is called by:
;;		_i2c
;; This function uses a non-reentrant model
;;
psect	text387
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	127
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
	
_i2c_read:	
	opt	stack 4
; Regs used in _i2c_read: [wreg+status,2+status,0+pclath+cstack]
	line	129
	
l2230:	
;rtc.c: 128: unsigned short recv;
;rtc.c: 129: i2c_wait();
	fcall	_i2c_wait
	line	130
	
l2232:	
;rtc.c: 130: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	131
;rtc.c: 131: i2c_wait();
	fcall	_i2c_wait
	line	132
	
l2234:	
;rtc.c: 132: recv = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_i2c_read+0)+0
	clrf	(??_i2c_read+0)+0+1
	movf	0+(??_i2c_read+0)+0,w
	movwf	(i2c_read@recv)
	movf	1+(??_i2c_read+0)+0,w
	movwf	(i2c_read@recv+1)
	line	133
	
l2236:	
;rtc.c: 133: i2c_wait();
	fcall	_i2c_wait
	line	134
;rtc.c: 134: ACKDT = (ack)?0:1;
	movf	(i2c_read@ack+1),w
	iorwf	(i2c_read@ack),w
	skipnz
	goto	u2441
	goto	u2440
	
u2441:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	goto	u2454
u2440:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
u2454:
	line	135
	
l2238:	
;rtc.c: 135: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	136
	
l2240:	
;rtc.c: 136: return recv;
	movf	(i2c_read@recv+1),w
	clrf	(?_i2c_read+1)
	addwf	(?_i2c_read+1)
	movf	(i2c_read@recv),w
	clrf	(?_i2c_read)
	addwf	(?_i2c_read)

	goto	l768
	
l2242:	
	line	137
	
l768:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
;; =============== function _i2c_read ends ============

	signat	_i2c_read,4218
	global	_i2c_stop
psect	text388,local,class=CODE,delta=2
global __ptext388
__ptext388:

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 139 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_wait
;; This function is called by:
;;		_main
;;		_i2c
;; This function uses a non-reentrant model
;;
psect	text388
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	139
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
	opt	stack 4
; Regs used in _i2c_stop: [wreg+status,2+status,0+pclath+cstack]
	line	140
	
l2226:	
;rtc.c: 140: i2c_wait();
	fcall	_i2c_wait
	line	141
	
l2228:	
;rtc.c: 141: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	142
	
l771:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
;; =============== function _i2c_stop ends ============

	signat	_i2c_stop,88
	global	_i2c_write
psect	text389,local,class=CODE,delta=2
global __ptext389
__ptext389:

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 122 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
;; Parameters:    Size  Location     Type
;;  data            2    4[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_wait
;; This function is called by:
;;		_main
;;		_i2c
;; This function uses a non-reentrant model
;;
psect	text389
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	122
	global	__size_of_i2c_write
	__size_of_i2c_write	equ	__end_of_i2c_write-_i2c_write
	
_i2c_write:	
	opt	stack 4
; Regs used in _i2c_write: [wreg+status,2+status,0+pclath+cstack]
	line	123
	
l2222:	
;rtc.c: 123: i2c_wait();
	fcall	_i2c_wait
	line	124
	
l2224:	
;rtc.c: 124: SSPBUF = data;
	movf	(i2c_write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	125
	
l765:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
;; =============== function _i2c_write ends ============

	signat	_i2c_write,4216
	global	_i2c_start
psect	text390,local,class=CODE,delta=2
global __ptext390
__ptext390:

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 117 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_wait
;; This function is called by:
;;		_main
;;		_i2c
;; This function uses a non-reentrant model
;;
psect	text390
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	117
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
	opt	stack 4
; Regs used in _i2c_start: [wreg+status,2+status,0+pclath+cstack]
	line	118
	
l2218:	
;rtc.c: 118: i2c_wait();
	fcall	_i2c_wait
	line	119
	
l2220:	
;rtc.c: 119: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	120
	
l762:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
;; =============== function _i2c_start ends ============

	signat	_i2c_start,88
	global	___lwdiv
psect	text391,local,class=CODE,delta=2
global __ptext391
__ptext391:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[COMMON] unsigned int 
;;  dividend        2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    0[BANK0 ] unsigned int 
;;  counter         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       3       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text391
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2192:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2194:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2371
	goto	u2370
u2371:
	goto	l2214
u2370:
	line	11
	
l2196:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l2202
	
l822:	
	line	13
	
l2198:	
	movlw	01h
	
u2385:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2385
	line	14
	
l2200:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2202
	line	15
	
l821:	
	line	12
	
l2202:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l2198
u2390:
	goto	l2204
	
l823:	
	goto	l2204
	line	16
	
l824:	
	line	17
	
l2204:	
	movlw	01h
	
u2405:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2405
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2415
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2415:
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l2210
u2410:
	line	19
	
l2206:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2208:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2210
	line	21
	
l825:	
	line	22
	
l2210:	
	movlw	01h
	
u2425:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2425
	line	23
	
l2212:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l2204
u2430:
	goto	l2214
	
l826:	
	goto	l2214
	line	24
	
l820:	
	line	25
	
l2214:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l827
	
l2216:	
	line	26
	
l827:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_uart_tx
psect	text392,local,class=CODE,delta=2
global __ptext392
__ptext392:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 100 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_uart
;; This function uses a non-reentrant model
;;
psect	text392
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	100
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 4
; Regs used in _uart_tx: [wreg]
;uart_tx@val stored from wreg
	movwf	(uart_tx@val)
	line	101
	
l2190:	
;rtc.c: 101: TXREG=val;
	movf	(uart_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	102
;rtc.c: 102: while(TXIF==0);
	goto	l747
	
l748:	
	
l747:	
	btfss	(100/8),(100)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l747
u2360:
	
l749:	
	line	103
;rtc.c: 103: TXIF=0;
	bcf	(100/8),(100)&7
	line	104
	
l750:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_i2c_wait
psect	text393,local,class=CODE,delta=2
global __ptext393
__ptext393:

;; *************** function _i2c_wait *****************
;; Defined at:
;;		line 113 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_i2c
;;		_i2c_start
;;		_i2c_write
;;		_i2c_read
;;		_i2c_stop
;; This function uses a non-reentrant model
;;
psect	text393
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	113
	global	__size_of_i2c_wait
	__size_of_i2c_wait	equ	__end_of_i2c_wait-_i2c_wait
	
_i2c_wait:	
	opt	stack 4
; Regs used in _i2c_wait: [wreg+status,2]
	line	114
	
l2172:	
;rtc.c: 114: while ((SSPCON2 & 0x1f) || (SSPSTAT & 0x04)) ;
	goto	l2174
	
l757:	
	goto	l2174
	
l756:	
	
l2174:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w
	andlw	01Fh
	btfss	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l2174
u2330:
	
l2176:	
	btfsc	(148)^080h,(2)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l2174
u2340:
	goto	l759
	
l758:	
	line	115
	
l759:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_wait
	__end_of_i2c_wait:
;; =============== function _i2c_wait ends ============

	signat	_i2c_wait,88
	global	_delay
psect	text394,local,class=CODE,delta=2
global __ptext394
__ptext394:

;; *************** function _delay *****************
;; Defined at:
;;		line 144 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text394
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	144
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	145
	
l2166:	
;rtc.c: 145: TMR1CS=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	146
;rtc.c: 146: T1CKPS0=1;
	bsf	(132/8),(132)&7
	line	147
;rtc.c: 147: T1CKPS1=1;
	bsf	(133/8),(133)&7
	line	148
	
l2168:	
;rtc.c: 148: TMR1H=0X3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	149
;rtc.c: 149: TMR1L=0XB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	150
	
l2170:	
;rtc.c: 150: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	151
;rtc.c: 151: while(!TMR1IF);
	goto	l774
	
l775:	
	
l774:	
	btfss	(96/8),(96)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l774
u2320:
	
l776:	
	line	152
;rtc.c: 152: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	153
;rtc.c: 153: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	154
	
l777:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_i2c_init
psect	text395,local,class=CODE,delta=2
global __ptext395
__ptext395:

;; *************** function _i2c_init *****************
;; Defined at:
;;		line 106 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text395
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	106
	global	__size_of_i2c_init
	__size_of_i2c_init	equ	__end_of_i2c_init-_i2c_init
	
_i2c_init:	
	opt	stack 6
; Regs used in _i2c_init: [wreg+status,2]
	line	107
	
l2160:	
;rtc.c: 107: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	108
	
l2162:	
;rtc.c: 108: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	109
	
l2164:	
;rtc.c: 109: SSPADD = 49;
	movlw	(031h)
	movwf	(147)^080h	;volatile
	line	110
;rtc.c: 110: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	111
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_init
	__end_of_i2c_init:
;; =============== function _i2c_init ends ============

	signat	_i2c_init,88
	global	_uart_init
psect	text396,local,class=CODE,delta=2
global __ptext396
__ptext396:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 156 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text396
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	156
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 6
; Regs used in _uart_init: [wreg]
	line	157
	
l2148:	
;rtc.c: 157: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	158
;rtc.c: 158: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	159
	
l2150:	
;rtc.c: 159: SPBRG=31;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	160
	
l2152:	
;rtc.c: 160: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	161
	
l2154:	
;rtc.c: 161: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	162
	
l2156:	
;rtc.c: 162: TXIF=0;
	bcf	(100/8),(100)&7
	line	163
	
l2158:	
;rtc.c: 163: RCIF=0;
	bcf	(101/8),(101)&7
	line	164
	
l780:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_ISR
psect	text397,local,class=CODE,delta=2
global __ptext397
__ptext397:

;; *************** function _ISR *****************
;; Defined at:
;;		line 55 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
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
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text397
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rtc.c"
	line	55
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 4
; Regs used in _ISR: [wreg+status,2]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text397
	line	56
	
i1l2178:	
;rtc.c: 56: if(INTF)
	btfss	(89/8),(89)&7
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l2186
u235_20:
	line	58
	
i1l2180:	
;rtc.c: 57: {
;rtc.c: 58: strt = 1;
	movlw	low(01h)
	movwf	(_strt)
	movlw	high(01h)
	movwf	((_strt))+1
	line	59
	
i1l2182:	
;rtc.c: 59: RC0 = 1;
	bsf	(56/8),(56)&7
	line	60
	
i1l2184:	
;rtc.c: 60: chk = 0;
	clrf	(_chk)
	clrf	(_chk+1)
	goto	i1l2186
	line	61
	
i1l732:	
	line	62
	
i1l2186:	
;rtc.c: 61: }
;rtc.c: 62: INTF = 0;
	bcf	(89/8),(89)&7
	line	63
	
i1l2188:	
;rtc.c: 63: RC0 = 0;
	bcf	(56/8),(56)&7
	line	64
	
i1l733:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text398,local,class=CODE,delta=2
global __ptext398
__ptext398:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
