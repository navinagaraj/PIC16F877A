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
# 3 "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
	dw 0xFFFE&0xFFFB&0xFFFF&0xFFFF&0xFF7F ;#
	FNCALL	_main,_uart_init
	FNROOT	_main
	FNCALL	_ISR,_print_uart
	FNCALL	_print_uart,_uart_tx
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_string
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
	line	8

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
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	file	"rtc_rec.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
_string:
       ds      50

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
	movlw low(__pdataBANK0+50)
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
	global	?_print_uart
?_print_uart:	; 0 bytes @ 0x0
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	uart_tx@val
uart_tx@val:	; 1 bytes @ 0x0
	ds	1
	global	??_print_uart
??_print_uart:	; 0 bytes @ 0x1
	ds	1
	global	print_uart@str
print_uart@str:	; 1 bytes @ 0x2
	ds	1
	global	??_ISR
??_ISR:	; 0 bytes @ 0x3
	ds	4
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x7
	global	??_main
??_main:	; 0 bytes @ 0x7
;;Data sizes: Strings 0, constant 0, data 50, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0      50
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; print_uart@str	PTR unsigned char  size(1) Largest target is 50
;;		 -> string(BANK0[50]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->_print_uart
;;   _print_uart->_uart_tx
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0       0
;;                          _uart_init
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _ISR                                                  4     4      0      45
;;                                              3 COMMON     4     4      0
;;                         _print_uart
;; ---------------------------------------------------------------------------------
;; (3) _print_uart                                           2     2      0      45
;;                                              1 COMMON     2     2      0
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (4) _uart_tx                                              1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;
;; _ISR (ROOT)
;;   _print_uart
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
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      40      12        0.0%
;;ABS                  0      0      39       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50      0      32       5       62.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  692[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l1882:	
;rtc_rr.c: 12: uart_init();
	fcall	_uart_init
	line	13
	
l1884:	
;rtc_rr.c: 13: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	14
	
l1886:	
;rtc_rr.c: 14: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	15
	
l1888:	
;rtc_rr.c: 15: GIE = 1;
	bsf	(95/8),(95)&7
	line	16
	
l1890:	
;rtc_rr.c: 16: PEIE = 1;
	bsf	(94/8),(94)&7
	line	17
	
l1892:	
;rtc_rr.c: 17: INTE = 1;
	bsf	(92/8),(92)&7
	goto	l694
	line	18
;rtc_rr.c: 18: while(1);
	
l693:	
	
l694:	
	goto	l694
	
l695:	
	line	19
	
l696:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_uart_init
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 30 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text97
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
	line	30
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 4
; Regs used in _uart_init: [wreg]
	line	31
	
l1088:	
;rtc_rr.c: 31: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	32
;rtc_rr.c: 32: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	33
	
l1090:	
;rtc_rr.c: 33: SPBRG=31;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	34
	
l1092:	
;rtc_rr.c: 34: TXEN=1;
	bsf	(1221/8)^080h,(1221)&7
	line	35
	
l1094:	
;rtc_rr.c: 35: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	36
	
l1096:	
;rtc_rr.c: 36: TXIF=0;
	bcf	(100/8),(100)&7
	line	37
	
l1098:	
;rtc_rr.c: 37: RCIF=0;
	bcf	(101/8),(101)&7
	line	38
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_ISR
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _ISR *****************
;; Defined at:
;;		line 21 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_print_uart
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text98
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
	line	21
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 4
; Regs used in _ISR: [allreg]
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
psect	text98
	line	22
	
i1l1100:	
;rtc_rr.c: 22: if(INTF)
	btfss	(89/8),(89)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1104
u1_20:
	line	24
	
i1l1102:	
;rtc_rr.c: 23: {
;rtc_rr.c: 24: print_uart(string);
	movlw	(_string)&0ffh
	fcall	_print_uart
	goto	i1l1104
	line	25
	
i1l699:	
	line	26
	
i1l1104:	
;rtc_rr.c: 25: }
;rtc_rr.c: 26: INTF = 0;
	bcf	(89/8),(89)&7
	line	27
	
i1l700:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	global	_print_uart
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:

;; *************** function _print_uart *****************
;; Defined at:
;;		line 41 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> string(50), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR unsigned char 
;;		 -> string(50), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text99
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
	line	41
	global	__size_of_print_uart
	__size_of_print_uart	equ	__end_of_print_uart-_print_uart
	
_print_uart:	
	opt	stack 4
; Regs used in _print_uart: [allreg]
;print_uart@str stored from wreg
	movwf	(print_uart@str)
	line	43
	
i1l1106:	
;rtc_rr.c: 43: while(*str)
	goto	i1l1112
	
i1l707:	
	line	45
	
i1l1108:	
;rtc_rr.c: 44: {
;rtc_rr.c: 45: uart_tx(*str);
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	46
	
i1l1110:	
;rtc_rr.c: 46: str++;
	movlw	(01h)
	movwf	(??_print_uart+0)+0
	movf	(??_print_uart+0)+0,w
	addwf	(print_uart@str),f
	goto	i1l1112
	line	47
	
i1l706:	
	line	43
	
i1l1112:	
	movf	(print_uart@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1108
u2_20:
	goto	i1l709
	
i1l708:	
	line	48
	
i1l709:	
	return
	opt stack 0
GLOBAL	__end_of_print_uart
	__end_of_print_uart:
;; =============== function _print_uart ends ============

	signat	_print_uart,4216
	global	_uart_tx
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 51 in file "D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
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
psect	text100
	file	"D:\programs_AND_ softwares\programs\mplab\hardware\RTC\rec\rtc_rr.c"
	line	51
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 4
; Regs used in _uart_tx: [wreg]
;uart_tx@val stored from wreg
	movwf	(uart_tx@val)
	line	52
	
i1l1114:	
;rtc_rr.c: 52: TXREG=val;
	movf	(uart_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	53
;rtc_rr.c: 53: while(TXIF==0);
	goto	i1l712
	
i1l713:	
	
i1l712:	
	btfss	(100/8),(100)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l712
u3_20:
	
i1l714:	
	line	54
;rtc_rr.c: 54: TXIF=0;
	bcf	(100/8),(100)&7
	line	55
	
i1l715:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
