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
# 4 "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	dw 0xFFFE&0xFFFB&0xFFFF&0xFFFF&0xFF7F ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_i2c_init
	FNCALL	_main,_schedule
	FNCALL	_schedule,_i2c_wait
	FNCALL	_schedule,_i2c_start
	FNCALL	_schedule,_i2c_write
	FNCALL	_schedule,_i2c_stop
	FNCALL	_schedule,_delay
	FNCALL	_schedule,_i2c_read
	FNCALL	_schedule,_sprintf
	FNCALL	_schedule,_print_uart
	FNCALL	_print_uart,_uart_tx
	FNCALL	_sprintf,___lwdiv
	FNCALL	_i2c_read,_i2c_wait
	FNCALL	_i2c_stop,_i2c_wait
	FNCALL	_i2c_write,_i2c_wait
	FNCALL	_i2c_start,_i2c_wait
	FNROOT	_main
	global	_string
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	18

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
	global	_a
	global	_i
	global	_j
	global	_k
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
	global	_RCIF
_RCIF	set	101
	global	_RD0
_RD0	set	64
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
	global	_TRISD0
_TRISD0	set	1088
	global	_TXEN
_TXEN	set	1221
	
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
	
STR_1:	
	retlw	37	;'%'
	retlw	120	;'x'
	retlw	32	;' '
	retlw	13
	retlw	0
psect	strings
	file	"schdule.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      16

_i:
       ds      2

_j:
       ds      2

_k:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	18
_string:
       ds      20

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_buffer:
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
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
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
	global	?_schedule
?_schedule:	; 0 bytes @ 0x0
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
	global	?_print_uart
?_print_uart:	; 0 bytes @ 0x0
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
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x8
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x8
	ds	3
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xB
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xE
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
	global	??_schedule
??_schedule:	; 0 bytes @ 0x9
	ds	1
;;Data sizes: Strings 22, constant 8, data 20, bss 72, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     10      52
;; BANK1           80      0      50
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_i2c_read	unsigned short  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 5
;;		 -> STR_1(CODE[5]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 50
;;		 -> buffer(BANK1[50]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(COMMON[2]), 
;;
;; S1321$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; print_uart@str	PTR unsigned char  size(1) Largest target is 50
;;		 -> buffer(BANK1[50]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _schedule->_sprintf
;;   _print_uart->_uart_tx
;;   _sprintf->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_schedule
;;   _schedule->_sprintf
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
;; (0) _main                                                 0     0      0     682
;;                          _uart_init
;;                           _i2c_init
;;                           _schedule
;; ---------------------------------------------------------------------------------
;; (1) _schedule                                             1     1      0     682
;;                                              9 BANK0      1     1      0
;;                           _i2c_wait
;;                          _i2c_start
;;                          _i2c_write
;;                           _i2c_stop
;;                              _delay
;;                           _i2c_read
;;                            _sprintf
;;                         _print_uart
;; ---------------------------------------------------------------------------------
;; (2) _print_uart                                           2     2      0      67
;;                                              1 COMMON     2     2      0
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (2) _sprintf                                             15    12      3     548
;;                                              8 COMMON     6     3      3
;;                                              0 BANK0      9     9      0
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (2) _i2c_read                                             6     4      2      45
;;                                              0 COMMON     6     4      2
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (2) _i2c_stop                                             0     0      0       0
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (2) _i2c_write                                            2     0      2      22
;;                                              0 COMMON     2     0      2
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (2) _i2c_start                                            0     0      0       0
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (3) _uart_tx                                              1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _i2c_wait                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _i2c_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _i2c_init
;;   _schedule
;;     _i2c_wait
;;     _i2c_start
;;       _i2c_wait
;;     _i2c_write
;;       _i2c_wait
;;     _i2c_stop
;;       _i2c_wait
;;     _delay
;;     _i2c_read
;;       _i2c_wait
;;     _sprintf
;;       ___lwdiv
;;     _print_uart
;;       _uart_tx
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
;;BANK1               50      0      32       7       62.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      77      12        0.0%
;;ABS                  0      0      74       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      A      34       5       65.0%
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
;;		line 24 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_uart_init
;;		_i2c_init
;;		_schedule
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	24
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	25
	
l2247:	
;i2c_Scheduling.c: 25: TRISD0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1088/8)^080h,(1088)&7
	line	26
	
l2249:	
;i2c_Scheduling.c: 26: uart_init();
	fcall	_uart_init
	line	27
;i2c_Scheduling.c: 27: i2c_init();
	fcall	_i2c_init
	line	28
	
l2251:	
;i2c_Scheduling.c: 28: schedule();
	fcall	_schedule
	line	29
	
l721:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_schedule
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _schedule *****************
;; Defined at:
;;		line 32 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_wait
;;		_i2c_start
;;		_i2c_write
;;		_i2c_stop
;;		_delay
;;		_i2c_read
;;		_sprintf
;;		_print_uart
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text356
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	32
	global	__size_of_schedule
	__size_of_schedule	equ	__end_of_schedule-_schedule
	
_schedule:	
	opt	stack 5
; Regs used in _schedule: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	35
	
l2219:	
;i2c_Scheduling.c: 34: {
;i2c_Scheduling.c: 35: i2c_wait();
	fcall	_i2c_wait
	line	36
;i2c_Scheduling.c: 36: i2c_start();
	fcall	_i2c_start
	line	37
;i2c_Scheduling.c: 37: i2c_write(0xD0);
	movlw	low(0D0h)
	movwf	(?_i2c_write)
	movlw	high(0D0h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	38
;i2c_Scheduling.c: 38: i2c_write(0x00);
	movlw	low(0)
	movwf	(?_i2c_write)
	movlw	high(0)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	39
;i2c_Scheduling.c: 39: i2c_stop();
	fcall	_i2c_stop
	line	41
;i2c_Scheduling.c: 41: delay();
	fcall	_delay
	line	42
;i2c_Scheduling.c: 42: i2c_wait();
	fcall	_i2c_wait
	line	44
;i2c_Scheduling.c: 44: i2c_start();
	fcall	_i2c_start
	line	45
;i2c_Scheduling.c: 45: i2c_write(0xD0);
	movlw	low(0D0h)
	movwf	(?_i2c_write)
	movlw	high(0D0h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	46
;i2c_Scheduling.c: 46: i2c_write(0x00);
	movlw	low(0)
	movwf	(?_i2c_write)
	movlw	high(0)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	47
;i2c_Scheduling.c: 47: i2c_stop();
	fcall	_i2c_stop
	line	49
;i2c_Scheduling.c: 49: i2c_start();
	fcall	_i2c_start
	line	50
;i2c_Scheduling.c: 50: i2c_write(0xD7);
	movlw	low(0D7h)
	movwf	(?_i2c_write)
	movlw	high(0D7h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	51
;i2c_Scheduling.c: 51: i2c_write(0x90);
	movlw	low(090h)
	movwf	(?_i2c_write)
	movlw	high(090h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	52
;i2c_Scheduling.c: 52: i2c_stop();
	fcall	_i2c_stop
	line	54
;i2c_Scheduling.c: 54: i2c_wait();
	fcall	_i2c_wait
	line	55
;i2c_Scheduling.c: 55: i2c_start();
	fcall	_i2c_start
	line	56
;i2c_Scheduling.c: 56: i2c_write(0xD1);
	movlw	low(0D1h)
	movwf	(?_i2c_write)
	movlw	high(0D1h)
	movwf	((?_i2c_write))+1
	fcall	_i2c_write
	line	58
	
l2221:	
;i2c_Scheduling.c: 58: for(i=0;i<2;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_i)
	clrf	(_i+1)
	
l2223:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	low(02h)
	subwf	(_i),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2227
u2500:
	goto	l2233
	
l2225:	
	goto	l2233
	line	59
	
l724:	
	line	60
	
l2227:	
;i2c_Scheduling.c: 59: {
;i2c_Scheduling.c: 60: a[i] = i2c_read(1);
	movlw	low(01h)
	movwf	(?_i2c_read)
	movlw	high(01h)
	movwf	((?_i2c_read))+1
	fcall	_i2c_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	movwf	(??_schedule+0)+0
	addwf	(??_schedule+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movf	(0+(?_i2c_read)),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_i2c_read)),w
	movwf	indf
	line	58
	
l2229:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l2231:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2515
	movlw	low(02h)
	subwf	(_i),w
u2515:

	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l2227
u2510:
	goto	l2233
	
l725:	
	line	62
	
l2233:	
;i2c_Scheduling.c: 61: }
;i2c_Scheduling.c: 62: j = a[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a+1),w
	clrf	(_j+1)
	addwf	(_j+1)
	movf	(_a),w
	clrf	(_j)
	addwf	(_j)

	line	63
	
l2235:	
;i2c_Scheduling.c: 63: i2c_stop();
	fcall	_i2c_stop
	line	64
	
l2237:	
;i2c_Scheduling.c: 64: if(k!=j)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_j+1),w
	xorwf	(_k+1),w
	skipz
	goto	u2525
	movf	(_j),w
	xorwf	(_k),w
u2525:

	skipnz
	goto	u2521
	goto	u2520
u2521:
	goto	l727
u2520:
	line	66
	
l2239:	
;i2c_Scheduling.c: 65: {
;i2c_Scheduling.c: 66: k = j;
	movf	(_j+1),w
	clrf	(_k+1)
	addwf	(_k+1)
	movf	(_j),w
	clrf	(_k)
	addwf	(_k)

	line	67
	
l2241:	
;i2c_Scheduling.c: 67: sprintf(buffer,"%x \r",k);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_schedule+0)+0
	movf	(??_schedule+0)+0,w
	movwf	(?_sprintf)
	movf	(_k+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_k),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(_buffer)&0ffh
	fcall	_sprintf
	line	68
	
l2243:	
;i2c_Scheduling.c: 68: RD0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	69
	
l2245:	
;i2c_Scheduling.c: 69: print_uart(buffer);
	movlw	(_buffer)&0ffh
	fcall	_print_uart
	goto	l727
	line	70
	
l726:	
	line	75
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_schedule
	__end_of_schedule:
;; =============== function _schedule ends ============

	signat	_schedule,88
	global	_print_uart
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _print_uart *****************
;; Defined at:
;;		line 79 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> buffer(50), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uart_tx
;; This function is called by:
;;		_schedule
;; This function uses a non-reentrant model
;;
psect	text357
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	79
	global	__size_of_print_uart
	__size_of_print_uart	equ	__end_of_print_uart-_print_uart
	
_print_uart:	
	opt	stack 5
; Regs used in _print_uart: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print_uart@str stored from wreg
	movwf	(print_uart@str)
	line	80
	
l2211:	
;i2c_Scheduling.c: 80: while(*str)
	goto	l2217
	
l731:	
	line	82
	
l2213:	
;i2c_Scheduling.c: 81: {
;i2c_Scheduling.c: 82: uart_tx(*str);
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	83
	
l2215:	
;i2c_Scheduling.c: 83: str++;
	movlw	(01h)
	movwf	(??_print_uart+0)+0
	movf	(??_print_uart+0)+0,w
	addwf	(print_uart@str),f
	goto	l2217
	line	84
	
l730:	
	line	80
	
l2217:	
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l2213
u2490:
	goto	l733
	
l732:	
	line	85
	
l733:	
	return
	opt stack 0
GLOBAL	__end_of_print_uart
	__end_of_print_uart:
;; =============== function _print_uart ends ============

	signat	_print_uart,4216
	global	_sprintf
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> buffer(50), 
;;  f               1    8[COMMON] PTR const unsigned char 
;;		 -> STR_1(5), 
;; Auto vars:     Size  Location     Type
;;  sp              1    7[BANK0 ] PTR unsigned char 
;;		 -> buffer(50), 
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
;;		_schedule
;; This function uses a non-reentrant model
;;
psect	text358
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 5
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	
l2165:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	540
	goto	l2205
	
l779:	
	line	542
	
l2167:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2431
	goto	u2430
u2431:
	goto	l780
u2430:
	line	545
	
l2169:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2171:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	546
	goto	l2205
	line	547
	
l780:	
	line	552
	clrf	(sprintf@flag)
	line	638
	goto	l2175
	line	640
	
l782:	
	line	641
	goto	l2207
	line	721
	
l784:	
	line	726
	goto	l2177
	line	805
	
l786:	
	line	816
	goto	l2205
	line	825
	
l2173:	
	goto	l2177
	line	638
	
l781:	
	
l2175:	
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
	goto	l2207
	xorlw	120^0	; case 120
	skipnz
	goto	l2177
	goto	l2205
	opt asmopt_on

	line	825
	
l785:	
	line	1281
	
l2177:	
	movf	(sprintf@ap),w
	movwf	fsr0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l2179:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1311
	
l2181:	
	clrf	(sprintf@c)
	bsf	status,0
	rlf	(sprintf@c),f
	
l2183:	
	movf	(sprintf@c),w
	xorlw	04h
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2187
u2440:
	goto	l2195
	
l2185:	
	goto	l2195
	line	1312
	
l787:	
	
l2187:	
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
	goto	l2191
u2450:
	goto	l2195
	line	1313
	
l2189:	
	goto	l2195
	
l789:	
	line	1311
	
l2191:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2193:	
	movf	(sprintf@c),w
	xorlw	04h
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l2187
u2460:
	goto	l2195
	
l788:	
	line	1467
	
l2195:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1469
	goto	l2203
	
l791:	
	line	1499
	
l2197:	
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
	
l2199:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2201:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l2203
	line	1517
	
l790:	
	line	1469
	
l2203:	
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
	goto	l2197
u2470:
	goto	l2205
	
l792:	
	goto	l2205
	line	1525
	
l778:	
	line	540
	
l2205:	
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
	goto	l2167
u2480:
	goto	l2207
	
l793:	
	goto	l2207
	line	1527
	
l783:	
	line	1530
	
l2207:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l794
	line	1532
	
l2209:	
	line	1533
;	Return value of _sprintf is never used
	
l794:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_i2c_read
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 114 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
;;		_schedule
;; This function uses a non-reentrant model
;;
psect	text359
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	114
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
	
_i2c_read:	
	opt	stack 5
; Regs used in _i2c_read: [wreg+status,2+status,0+pclath+cstack]
	line	116
	
l2151:	
;i2c_Scheduling.c: 115: unsigned short recv;
;i2c_Scheduling.c: 116: i2c_wait();
	fcall	_i2c_wait
	line	117
	
l2153:	
;i2c_Scheduling.c: 117: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	118
;i2c_Scheduling.c: 118: i2c_wait();
	fcall	_i2c_wait
	line	119
	
l2155:	
;i2c_Scheduling.c: 119: recv = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_i2c_read+0)+0
	clrf	(??_i2c_read+0)+0+1
	movf	0+(??_i2c_read+0)+0,w
	movwf	(i2c_read@recv)
	movf	1+(??_i2c_read+0)+0,w
	movwf	(i2c_read@recv+1)
	line	120
	
l2157:	
;i2c_Scheduling.c: 120: i2c_wait();
	fcall	_i2c_wait
	line	121
;i2c_Scheduling.c: 121: ACKDT = (ack)?0:1;
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
	line	122
	
l2159:	
;i2c_Scheduling.c: 122: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	123
	
l2161:	
;i2c_Scheduling.c: 123: return recv;
	movf	(i2c_read@recv+1),w
	clrf	(?_i2c_read+1)
	addwf	(?_i2c_read+1)
	movf	(i2c_read@recv),w
	clrf	(?_i2c_read)
	addwf	(?_i2c_read)

	goto	l757
	
l2163:	
	line	124
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
;; =============== function _i2c_read ends ============

	signat	_i2c_read,4218
	global	_i2c_stop
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 126 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
;;		_schedule
;; This function uses a non-reentrant model
;;
psect	text360
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	126
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
	opt	stack 5
; Regs used in _i2c_stop: [wreg+status,2+status,0+pclath+cstack]
	line	127
	
l2147:	
;i2c_Scheduling.c: 127: i2c_wait();
	fcall	_i2c_wait
	line	128
	
l2149:	
;i2c_Scheduling.c: 128: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	129
	
l760:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
;; =============== function _i2c_stop ends ============

	signat	_i2c_stop,88
	global	_i2c_write
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 109 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
;;		_schedule
;; This function uses a non-reentrant model
;;
psect	text361
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	109
	global	__size_of_i2c_write
	__size_of_i2c_write	equ	__end_of_i2c_write-_i2c_write
	
_i2c_write:	
	opt	stack 5
; Regs used in _i2c_write: [wreg+status,2+status,0+pclath+cstack]
	line	110
	
l2143:	
;i2c_Scheduling.c: 110: i2c_wait();
	fcall	_i2c_wait
	line	111
	
l2145:	
;i2c_Scheduling.c: 111: SSPBUF = data;
	movf	(i2c_write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	112
	
l754:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
;; =============== function _i2c_write ends ============

	signat	_i2c_write,4216
	global	_i2c_start
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 104 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
;;		_schedule
;; This function uses a non-reentrant model
;;
psect	text362
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	104
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
	opt	stack 5
; Regs used in _i2c_start: [wreg+status,2+status,0+pclath+cstack]
	line	105
	
l2139:	
;i2c_Scheduling.c: 105: i2c_wait();
	fcall	_i2c_wait
	line	106
	
l2141:	
;i2c_Scheduling.c: 106: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	107
	
l751:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
;; =============== function _i2c_start ends ============

	signat	_i2c_start,88
	global	___lwdiv
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

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
psect	text363
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2113:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2115:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2341
	goto	u2340
u2341:
	goto	l2135
u2340:
	line	11
	
l2117:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l2123
	
l811:	
	line	13
	
l2119:	
	movlw	01h
	
u2355:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2355
	line	14
	
l2121:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2123
	line	15
	
l810:	
	line	12
	
l2123:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l2119
u2360:
	goto	l2125
	
l812:	
	goto	l2125
	line	16
	
l813:	
	line	17
	
l2125:	
	movlw	01h
	
u2375:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2375
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2385
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2385:
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2131
u2380:
	line	19
	
l2127:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2129:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2131
	line	21
	
l814:	
	line	22
	
l2131:	
	movlw	01h
	
u2395:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2395
	line	23
	
l2133:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l2125
u2400:
	goto	l2135
	
l815:	
	goto	l2135
	line	24
	
l809:	
	line	25
	
l2135:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l816
	
l2137:	
	line	26
	
l816:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_uart_tx
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 87 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
psect	text364
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	87
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 5
; Regs used in _uart_tx: [wreg]
;uart_tx@val stored from wreg
	movwf	(uart_tx@val)
	line	88
	
l2111:	
;i2c_Scheduling.c: 88: TXREG=val;
	movf	(uart_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	89
;i2c_Scheduling.c: 89: while(TXIF==0);
	goto	l736
	
l737:	
	
l736:	
	btfss	(100/8),(100)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l736
u2330:
	
l738:	
	line	90
;i2c_Scheduling.c: 90: TXIF=0;
	bcf	(100/8),(100)&7
	line	91
	
l739:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_delay
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

;; *************** function _delay *****************
;; Defined at:
;;		line 131 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
;;		_schedule
;; This function uses a non-reentrant model
;;
psect	text365
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	131
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	132
	
l2105:	
;i2c_Scheduling.c: 132: TMR1CS=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	133
;i2c_Scheduling.c: 133: T1CKPS0=1;
	bsf	(132/8),(132)&7
	line	134
;i2c_Scheduling.c: 134: T1CKPS1=1;
	bsf	(133/8),(133)&7
	line	135
	
l2107:	
;i2c_Scheduling.c: 135: TMR1H=0X3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	136
;i2c_Scheduling.c: 136: TMR1L=0XB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	137
	
l2109:	
;i2c_Scheduling.c: 137: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	138
;i2c_Scheduling.c: 138: while(!TMR1IF);
	goto	l763
	
l764:	
	
l763:	
	btfss	(96/8),(96)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l763
u2320:
	
l765:	
	line	139
;i2c_Scheduling.c: 139: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	140
;i2c_Scheduling.c: 140: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	141
	
l766:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_i2c_wait
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

;; *************** function _i2c_wait *****************
;; Defined at:
;;		line 100 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
;;		_schedule
;;		_i2c_start
;;		_i2c_write
;;		_i2c_read
;;		_i2c_stop
;; This function uses a non-reentrant model
;;
psect	text366
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	100
	global	__size_of_i2c_wait
	__size_of_i2c_wait	equ	__end_of_i2c_wait-_i2c_wait
	
_i2c_wait:	
	opt	stack 5
; Regs used in _i2c_wait: [wreg+status,2]
	line	101
	
l2099:	
;i2c_Scheduling.c: 101: while ((SSPCON2 & 0x1F) || (SSPSTAT & 0x04) ) ;
	goto	l2101
	
l746:	
	goto	l2101
	
l745:	
	
l2101:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w
	andlw	01Fh
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l2101
u2300:
	
l2103:	
	btfsc	(148)^080h,(2)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2101
u2310:
	goto	l748
	
l747:	
	line	102
	
l748:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_wait
	__end_of_i2c_wait:
;; =============== function _i2c_wait ends ============

	signat	_i2c_wait,88
	global	_i2c_init
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function _i2c_init *****************
;; Defined at:
;;		line 93 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
psect	text367
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	93
	global	__size_of_i2c_init
	__size_of_i2c_init	equ	__end_of_i2c_init-_i2c_init
	
_i2c_init:	
	opt	stack 7
; Regs used in _i2c_init: [wreg+status,2]
	line	94
	
l1193:	
;i2c_Scheduling.c: 94: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	95
	
l1195:	
;i2c_Scheduling.c: 95: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	96
	
l1197:	
;i2c_Scheduling.c: 96: SSPADD = 49;
	movlw	(031h)
	movwf	(147)^080h	;volatile
	line	97
;i2c_Scheduling.c: 97: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	98
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_init
	__end_of_i2c_init:
;; =============== function _i2c_init ends ============

	signat	_i2c_init,88
	global	_uart_init
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 143 in file "E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
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
psect	text368
	file	"E:\programs\mplab\hardware\I2C scheduling\i2c_Scheduling.c"
	line	143
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg]
	line	144
	
l1181:	
;i2c_Scheduling.c: 144: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	145
;i2c_Scheduling.c: 145: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	146
	
l1183:	
;i2c_Scheduling.c: 146: SPBRG=31;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	147
	
l1185:	
;i2c_Scheduling.c: 147: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	148
	
l1187:	
;i2c_Scheduling.c: 148: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	149
	
l1189:	
;i2c_Scheduling.c: 149: TXIF=0;
	bcf	(100/8),(100)&7
	line	150
	
l1191:	
;i2c_Scheduling.c: 150: RCIF=0;
	bcf	(101/8),(101)&7
	line	151
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
psect	text369,local,class=CODE,delta=2
global __ptext369
__ptext369:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
