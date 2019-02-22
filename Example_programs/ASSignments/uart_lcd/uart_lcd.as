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
# 3 "C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
	dw 0xFFFE & 0xFFFB & 0xFFFF & 0xFFFF & 0xFF7F ;#
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_uart_init
	FNCALL	_main,_uart_tx
	FNCALL	_main,_delay
	FNCALL	_uart_tx,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_PORTD
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
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
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	file	"uart_lcd.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x0
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x0
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	uart_tx@val
uart_tx@val:	; 1 bytes @ 0x0
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x0
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      1       1
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_cmd
;;   _main->_uart_tx
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
;; (0) _main                                                 0     0      0      45
;;                            _lcd_cmd
;;                          _uart_init
;;                            _uart_tx
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _uart_tx                                              1     1      0      30
;;                                              0 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              1     1      0      15
;;                                              0 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _uart_init
;;   _uart_tx
;;     _delay
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      1       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 32 in file "C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  696[COMMON] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;;		_uart_init
;;		_uart_tx
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
	line	32
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l1883:	
;uart_lcd.c: 33: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	34
;uart_lcd.c: 34: TRISD=0;
	clrf	(136)^080h	;volatile
	line	35
;uart_lcd.c: 35: TRISC=0;
	clrf	(135)^080h	;volatile
	line	37
	
l1885:	
;uart_lcd.c: 37: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	38
	
l1887:	
;uart_lcd.c: 38: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	39
	
l1889:	
;uart_lcd.c: 39: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	40
	
l1891:	
;uart_lcd.c: 40: lcd_cmd(0x0F);
	movlw	(0Fh)
	fcall	_lcd_cmd
	line	41
	
l1893:	
;uart_lcd.c: 41: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	42
	
l1895:	
;uart_lcd.c: 42: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	43
	
l1897:	
;uart_lcd.c: 43: uart_init();
	fcall	_uart_init
	line	44
	
l1899:	
;uart_lcd.c: 44: uart_tx('a');
	movlw	(061h)
	fcall	_uart_tx
	line	45
	
l1901:	
;uart_lcd.c: 45: delay();
	fcall	_delay
	line	46
	
l1903:	
;uart_lcd.c: 46: uart_tx('b');
	movlw	(062h)
	fcall	_uart_tx
	line	47
	
l1905:	
;uart_lcd.c: 47: delay();
	fcall	_delay
	line	48
	
l1907:	
;uart_lcd.c: 48: uart_tx('c');
	movlw	(063h)
	fcall	_uart_tx
	line	49
	
l1909:	
;uart_lcd.c: 49: delay();
	fcall	_delay
	line	50
	
l1911:	
;uart_lcd.c: 50: uart_tx('d');
	movlw	(064h)
	fcall	_uart_tx
	line	51
	
l1913:	
;uart_lcd.c: 51: delay();
	fcall	_delay
	goto	l698
	line	52
;uart_lcd.c: 52: while(1);
	
l697:	
	
l698:	
	goto	l698
	
l699:	
	line	53
	
l700:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_uart_tx
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 57 in file "C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text97
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
	line	57
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 6
; Regs used in _uart_tx: [wreg+status,2+status,0+pclath+cstack]
;uart_tx@val stored from wreg
	line	59
	movwf	(uart_tx@val)
	
l1875:	
;uart_lcd.c: 59: TXREG = val;
	movf	(uart_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	60
;uart_lcd.c: 60: while(TXIF==0);
	goto	l703
	
l704:	
	
l703:	
	btfss	(100/8),(100)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l703
u2150:
	
l705:	
	line	61
;uart_lcd.c: 61: TXIF=0;
	bcf	(100/8),(100)&7
	line	62
;uart_lcd.c: 62: RC0=1;
	bsf	(56/8),(56)&7
	line	63
;uart_lcd.c: 63: RC1=0;
	bcf	(57/8),(57)&7
	line	64
;uart_lcd.c: 64: RC2=1;
	bsf	(58/8),(58)&7
	line	65
	
l1877:	
;uart_lcd.c: 65: PORTD=val;
	movf	(uart_tx@val),w
	movwf	(8)	;volatile
	line	66
	
l1879:	
;uart_lcd.c: 66: delay();
	fcall	_delay
	line	67
	
l1881:	
;uart_lcd.c: 67: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	68
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_lcd_cmd
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 92 in file "C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text98
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
	line	92
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	93
	
l1867:	
;uart_lcd.c: 93: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	94
;uart_lcd.c: 94: RC1=0;
	bcf	(57/8),(57)&7
	line	95
;uart_lcd.c: 95: RC2=1;
	bsf	(58/8),(58)&7
	line	96
	
l1869:	
;uart_lcd.c: 96: PORTD=cmd;
	movf	(lcd_cmd@cmd),w
	movwf	(8)	;volatile
	line	97
	
l1871:	
;uart_lcd.c: 97: delay();
	fcall	_delay
	line	98
	
l1873:	
;uart_lcd.c: 98: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	99
	
l712:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_uart_init
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 78 in file "C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
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
psect	text99
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
	line	78
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg+status,2]
	line	79
	
l1087:	
;uart_lcd.c: 79: TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	80
;uart_lcd.c: 80: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	82
	
l1089:	
;uart_lcd.c: 82: TXSTA = 0x00;
	clrf	(152)^080h	;volatile
	line	83
;uart_lcd.c: 83: RCSTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(24)	;volatile
	line	84
	
l1091:	
;uart_lcd.c: 84: SPBRG = 31;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	85
	
l1093:	
;uart_lcd.c: 85: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	86
	
l1095:	
;uart_lcd.c: 86: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	87
	
l1097:	
;uart_lcd.c: 87: TXIF=0;
	bcf	(100/8),(100)&7
	line	88
	
l1099:	
;uart_lcd.c: 88: RCIF=0;
	bcf	(101/8),(101)&7
	line	89
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_delay
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

;; *************** function _delay *****************
;; Defined at:
;;		line 19 in file "C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
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
;;		_uart_tx
;;		_lcd_cmd
;; This function uses a non-reentrant model
;;
psect	text100
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\uart_lcd\uart_lcd.c"
	line	19
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	20
	
l1081:	
;uart_lcd.c: 20: TMR1CS=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	21
;uart_lcd.c: 21: T1CKPS0=1;
	bsf	(132/8),(132)&7
	line	22
;uart_lcd.c: 22: T1CKPS1=1;
	bsf	(133/8),(133)&7
	line	23
	
l1083:	
;uart_lcd.c: 23: TMR1H=0X3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	24
;uart_lcd.c: 24: TMR1L=0XB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	25
	
l1085:	
;uart_lcd.c: 25: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	26
;uart_lcd.c: 26: while(!TMR1IF);
	goto	l691
	
l692:	
	
l691:	
	btfss	(96/8),(96)&7
	goto	u11
	goto	u10
u11:
	goto	l691
u10:
	
l693:	
	line	27
;uart_lcd.c: 27: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	28
;uart_lcd.c: 28: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	29
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
