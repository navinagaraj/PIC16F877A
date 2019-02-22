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
# 2 "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
	dw 0xFFFE & 0xFFFB & 0xFFFF & 0xFFFF & 0xFF7F ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_data
	FNCALL	_main,_uart_tx
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_PORTB
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
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
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
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
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	file	"keypad_uart_lcd.as"
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
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x0
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
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
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x0
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x0
	global	uart_tx@val
uart_tx@val:	; 1 bytes @ 0x0
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
;;   _main->_lcd_data
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
;;                          _uart_init
;;                            _lcd_cmd
;;                           _lcd_data
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      15
;;                                              0 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              1     1      0      15
;;                                              0 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _uart_tx                                              1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _lcd_cmd
;;     _delay
;;   _lcd_data
;;     _delay
;;   _uart_tx
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
;;		line 28 in file "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  694[COMMON] int 
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
;;		_uart_init
;;		_lcd_cmd
;;		_lcd_data
;;		_uart_tx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l1984:	
;keypad_uart_lcd.c: 29: uart_init();
	fcall	_uart_init
	line	30
	
l1986:	
;keypad_uart_lcd.c: 30: TRISD = 0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	31
	
l1988:	
;keypad_uart_lcd.c: 31: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	32
	
l1990:	
;keypad_uart_lcd.c: 32: TRISC0 = 0;
	bcf	(1080/8)^080h,(1080)&7
	line	33
	
l1992:	
;keypad_uart_lcd.c: 33: TRISC1 = 0;
	bcf	(1081/8)^080h,(1081)&7
	line	34
	
l1994:	
;keypad_uart_lcd.c: 34: TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7
	line	35
	
l1996:	
;keypad_uart_lcd.c: 35: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	36
	
l1998:	
;keypad_uart_lcd.c: 36: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	37
	
l2000:	
;keypad_uart_lcd.c: 37: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	38
	
l2002:	
;keypad_uart_lcd.c: 38: PORTD = 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	40
;keypad_uart_lcd.c: 40: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	41
;keypad_uart_lcd.c: 41: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	42
;keypad_uart_lcd.c: 42: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	43
;keypad_uart_lcd.c: 43: lcd_cmd(0x0F);
	movlw	(0Fh)
	fcall	_lcd_cmd
	line	44
;keypad_uart_lcd.c: 44: lcd_cmd(0X06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	45
;keypad_uart_lcd.c: 45: lcd_cmd(0X80);
	movlw	(080h)
	fcall	_lcd_cmd
	goto	l2004
	line	47
;keypad_uart_lcd.c: 47: while(1)
	
l695:	
	line	49
	
l2004:	
;keypad_uart_lcd.c: 48: {
;keypad_uart_lcd.c: 49: RD0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	50
	
l2006:	
;keypad_uart_lcd.c: 50: RD1 = RD2 = RD3 = 0;
	bcf	(67/8),(67)&7
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	line	51
	
l2008:	
;keypad_uart_lcd.c: 51: if(PORTD == 0x11)
	movf	(8),w	;volatile
	xorlw	011h
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l2012
u2170:
	line	53
	
l2010:	
;keypad_uart_lcd.c: 52: {
;keypad_uart_lcd.c: 53: lcd_data('7');
	movlw	(037h)
	fcall	_lcd_data
	line	54
;keypad_uart_lcd.c: 54: uart_tx('7');
	movlw	(037h)
	fcall	_uart_tx
	line	55
;keypad_uart_lcd.c: 55: while(RD4==1);
	goto	l697
	
l698:	
	
l697:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l697
u2180:
	goto	l700
	
l699:	
	line	57
;keypad_uart_lcd.c: 57: }
	goto	l700
	line	58
	
l696:	
	
l2012:	
;keypad_uart_lcd.c: 58: else if(PORTD == 0x21)
	movf	(8),w	;volatile
	xorlw	021h
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l2016
u2190:
	line	60
	
l2014:	
;keypad_uart_lcd.c: 59: {
;keypad_uart_lcd.c: 60: lcd_data('8');
	movlw	(038h)
	fcall	_lcd_data
	line	61
;keypad_uart_lcd.c: 61: uart_tx('8');
	movlw	(038h)
	fcall	_uart_tx
	line	62
;keypad_uart_lcd.c: 62: while(RD5==1);
	goto	l702
	
l703:	
	
l702:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(69/8),(69)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l702
u2200:
	goto	l700
	
l704:	
	line	64
;keypad_uart_lcd.c: 64: }
	goto	l700
	line	65
	
l701:	
	
l2016:	
;keypad_uart_lcd.c: 65: else if(PORTD == 0x41)
	movf	(8),w	;volatile
	xorlw	041h
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l2020
u2210:
	line	67
	
l2018:	
;keypad_uart_lcd.c: 66: {
;keypad_uart_lcd.c: 67: lcd_data('9');
	movlw	(039h)
	fcall	_lcd_data
	line	68
;keypad_uart_lcd.c: 68: uart_tx('9');
	movlw	(039h)
	fcall	_uart_tx
	line	69
;keypad_uart_lcd.c: 69: while(RD6==1);
	goto	l707
	
l708:	
	
l707:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(70/8),(70)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l707
u2220:
	goto	l700
	
l709:	
	line	71
;keypad_uart_lcd.c: 71: }
	goto	l700
	line	72
	
l706:	
	
l2020:	
;keypad_uart_lcd.c: 72: else if(PORTD == 0x81)
	movf	(8),w	;volatile
	xorlw	081h
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l711
u2230:
	line	74
	
l2022:	
;keypad_uart_lcd.c: 73: {
;keypad_uart_lcd.c: 74: lcd_data('A');
	movlw	(041h)
	fcall	_lcd_data
	line	75
;keypad_uart_lcd.c: 75: uart_tx('A');
	movlw	(041h)
	fcall	_uart_tx
	line	76
;keypad_uart_lcd.c: 76: while(RD7==1);
	goto	l712
	
l713:	
	
l712:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l712
u2240:
	goto	l700
	
l714:	
	line	78
;keypad_uart_lcd.c: 78: }
	goto	l700
	line	79
	
l711:	
	line	81
;keypad_uart_lcd.c: 79: else
;keypad_uart_lcd.c: 80: {
;keypad_uart_lcd.c: 81: RC0 = 0;
	bcf	(56/8),(56)&7
	line	82
;keypad_uart_lcd.c: 82: RC1 = 0;
	bcf	(57/8),(57)&7
	line	83
;keypad_uart_lcd.c: 83: RC2 = 0;
	bcf	(58/8),(58)&7
	goto	l700
	line	84
	
l715:	
	goto	l700
	
l710:	
	goto	l700
	
l705:	
	
l700:	
	line	85
;keypad_uart_lcd.c: 84: }
;keypad_uart_lcd.c: 85: RD0 = 0;
	bcf	(64/8),(64)&7
	line	86
;keypad_uart_lcd.c: 86: RD1 = 1;
	bsf	(65/8),(65)&7
	line	87
;keypad_uart_lcd.c: 87: RD2 = 0;
	bcf	(66/8),(66)&7
	line	88
;keypad_uart_lcd.c: 88: RD3 = 0;
	bcf	(67/8),(67)&7
	line	89
	
l2024:	
;keypad_uart_lcd.c: 89: if(PORTD == 0x12)
	movf	(8),w	;volatile
	xorlw	012h
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2028
u2250:
	line	91
	
l2026:	
;keypad_uart_lcd.c: 90: {
;keypad_uart_lcd.c: 91: lcd_data('4');
	movlw	(034h)
	fcall	_lcd_data
	line	92
;keypad_uart_lcd.c: 92: uart_tx('4');
	movlw	(034h)
	fcall	_uart_tx
	line	93
;keypad_uart_lcd.c: 93: while(RD4==1);
	goto	l717
	
l718:	
	
l717:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l717
u2260:
	goto	l720
	
l719:	
	line	95
;keypad_uart_lcd.c: 95: }
	goto	l720
	line	96
	
l716:	
	
l2028:	
;keypad_uart_lcd.c: 96: else if(PORTD == 0x22)
	movf	(8),w	;volatile
	xorlw	022h
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l2032
u2270:
	line	98
	
l2030:	
;keypad_uart_lcd.c: 97: {
;keypad_uart_lcd.c: 98: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	line	99
;keypad_uart_lcd.c: 99: uart_tx('5');
	movlw	(035h)
	fcall	_uart_tx
	line	100
;keypad_uart_lcd.c: 100: while(RD5==1);
	goto	l722
	
l723:	
	
l722:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(69/8),(69)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l722
u2280:
	goto	l720
	
l724:	
	line	101
;keypad_uart_lcd.c: 101: }
	goto	l720
	line	102
	
l721:	
	
l2032:	
;keypad_uart_lcd.c: 102: else if(PORTD == 0x42)
	movf	(8),w	;volatile
	xorlw	042h
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l2036
u2290:
	line	104
	
l2034:	
;keypad_uart_lcd.c: 103: {
;keypad_uart_lcd.c: 104: lcd_data('6');
	movlw	(036h)
	fcall	_lcd_data
	line	105
;keypad_uart_lcd.c: 105: uart_tx('6');
	movlw	(036h)
	fcall	_uart_tx
	line	106
;keypad_uart_lcd.c: 106: while(RD6==1);
	goto	l727
	
l728:	
	
l727:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(70/8),(70)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l727
u2300:
	goto	l720
	
l729:	
	line	108
;keypad_uart_lcd.c: 108: }
	goto	l720
	line	109
	
l726:	
	
l2036:	
;keypad_uart_lcd.c: 109: else if(PORTD == 0x82)
	movf	(8),w	;volatile
	xorlw	082h
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l731
u2310:
	line	111
	
l2038:	
;keypad_uart_lcd.c: 110: {
;keypad_uart_lcd.c: 111: lcd_data('B');
	movlw	(042h)
	fcall	_lcd_data
	line	112
;keypad_uart_lcd.c: 112: uart_tx('B');
	movlw	(042h)
	fcall	_uart_tx
	line	113
;keypad_uart_lcd.c: 113: while(RD7==1);
	goto	l732
	
l733:	
	
l732:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l732
u2320:
	goto	l720
	
l734:	
	line	114
;keypad_uart_lcd.c: 114: }
	goto	l720
	line	115
	
l731:	
	line	117
;keypad_uart_lcd.c: 115: else
;keypad_uart_lcd.c: 116: {
;keypad_uart_lcd.c: 117: RC0 = 0;
	bcf	(56/8),(56)&7
	line	118
;keypad_uart_lcd.c: 118: RC1 = 0;
	bcf	(57/8),(57)&7
	line	119
;keypad_uart_lcd.c: 119: RC2 = 0;
	bcf	(58/8),(58)&7
	goto	l720
	line	121
	
l735:	
	goto	l720
	
l730:	
	goto	l720
	
l725:	
	
l720:	
	line	122
;keypad_uart_lcd.c: 121: }
;keypad_uart_lcd.c: 122: RD0 = 0;
	bcf	(64/8),(64)&7
	line	123
;keypad_uart_lcd.c: 123: RD1 = 0;
	bcf	(65/8),(65)&7
	line	124
;keypad_uart_lcd.c: 124: RD2 = 1;
	bsf	(66/8),(66)&7
	line	125
;keypad_uart_lcd.c: 125: RD3 = 0;
	bcf	(67/8),(67)&7
	line	126
	
l2040:	
;keypad_uart_lcd.c: 126: if(PORTD == 0x14)
	movf	(8),w	;volatile
	xorlw	014h
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l2044
u2330:
	line	128
	
l2042:	
;keypad_uart_lcd.c: 127: {
;keypad_uart_lcd.c: 128: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	line	129
;keypad_uart_lcd.c: 129: uart_tx('1');
	movlw	(031h)
	fcall	_uart_tx
	line	130
;keypad_uart_lcd.c: 130: while(RD4==1);
	goto	l737
	
l738:	
	
l737:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l737
u2340:
	goto	l740
	
l739:	
	line	131
;keypad_uart_lcd.c: 131: }
	goto	l740
	line	132
	
l736:	
	
l2044:	
;keypad_uart_lcd.c: 132: else if(PORTD == 0x24)
	movf	(8),w	;volatile
	xorlw	024h
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l2048
u2350:
	line	134
	
l2046:	
;keypad_uart_lcd.c: 133: {
;keypad_uart_lcd.c: 134: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	line	135
;keypad_uart_lcd.c: 135: uart_tx('2');
	movlw	(032h)
	fcall	_uart_tx
	line	136
;keypad_uart_lcd.c: 136: while(RD5==1);
	goto	l742
	
l743:	
	
l742:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(69/8),(69)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l742
u2360:
	goto	l740
	
l744:	
	line	138
;keypad_uart_lcd.c: 138: }
	goto	l740
	line	139
	
l741:	
	
l2048:	
;keypad_uart_lcd.c: 139: else if(PORTD == 0x44)
	movf	(8),w	;volatile
	xorlw	044h
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2052
u2370:
	line	141
	
l2050:	
;keypad_uart_lcd.c: 140: {
;keypad_uart_lcd.c: 141: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	line	142
;keypad_uart_lcd.c: 142: uart_tx('3');
	movlw	(033h)
	fcall	_uart_tx
	line	143
;keypad_uart_lcd.c: 143: while(RD6==1);
	goto	l747
	
l748:	
	
l747:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(70/8),(70)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l747
u2380:
	goto	l740
	
l749:	
	line	145
;keypad_uart_lcd.c: 145: }
	goto	l740
	line	146
	
l746:	
	
l2052:	
;keypad_uart_lcd.c: 146: else if(PORTD == 0x84)
	movf	(8),w	;volatile
	xorlw	084h
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l751
u2390:
	line	148
	
l2054:	
;keypad_uart_lcd.c: 147: {
;keypad_uart_lcd.c: 148: lcd_data('C');
	movlw	(043h)
	fcall	_lcd_data
	line	149
;keypad_uart_lcd.c: 149: uart_tx('C');
	movlw	(043h)
	fcall	_uart_tx
	line	150
;keypad_uart_lcd.c: 150: while(RD7==1);
	goto	l752
	
l753:	
	
l752:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l752
u2400:
	goto	l740
	
l754:	
	line	152
;keypad_uart_lcd.c: 152: }
	goto	l740
	line	153
	
l751:	
	line	155
;keypad_uart_lcd.c: 153: else
;keypad_uart_lcd.c: 154: {
;keypad_uart_lcd.c: 155: RC0 = 0;
	bcf	(56/8),(56)&7
	line	156
;keypad_uart_lcd.c: 156: RC1 = 0;
	bcf	(57/8),(57)&7
	line	157
;keypad_uart_lcd.c: 157: RC2 = 0;
	bcf	(58/8),(58)&7
	goto	l740
	line	159
	
l755:	
	goto	l740
	
l750:	
	goto	l740
	
l745:	
	
l740:	
	line	160
;keypad_uart_lcd.c: 159: }
;keypad_uart_lcd.c: 160: RD0 = 0;
	bcf	(64/8),(64)&7
	line	161
;keypad_uart_lcd.c: 161: RD1 = 0;
	bcf	(65/8),(65)&7
	line	162
;keypad_uart_lcd.c: 162: RD2 = 0;
	bcf	(66/8),(66)&7
	line	163
;keypad_uart_lcd.c: 163: RD3 = 1;
	bsf	(67/8),(67)&7
	line	164
	
l2056:	
;keypad_uart_lcd.c: 164: if(PORTD == 0x18)
	movf	(8),w	;volatile
	xorlw	018h
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l2060
u2410:
	line	166
	
l2058:	
;keypad_uart_lcd.c: 165: {
;keypad_uart_lcd.c: 166: lcd_data('/');
	movlw	(02Fh)
	fcall	_lcd_data
	line	167
;keypad_uart_lcd.c: 167: uart_tx('/');
	movlw	(02Fh)
	fcall	_uart_tx
	line	168
;keypad_uart_lcd.c: 168: while(RD4==1);
	goto	l757
	
l758:	
	
l757:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l757
u2420:
	goto	l2004
	
l759:	
	line	170
;keypad_uart_lcd.c: 170: }
	goto	l2004
	line	171
	
l756:	
	
l2060:	
;keypad_uart_lcd.c: 171: else if(PORTD == 0x28)
	movf	(8),w	;volatile
	xorlw	028h
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l2064
u2430:
	line	173
	
l2062:	
;keypad_uart_lcd.c: 172: {
;keypad_uart_lcd.c: 173: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	line	174
;keypad_uart_lcd.c: 174: uart_tx('0');
	movlw	(030h)
	fcall	_uart_tx
	line	175
;keypad_uart_lcd.c: 175: while(RD5==1);
	goto	l762
	
l763:	
	
l762:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(69/8),(69)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l762
u2440:
	goto	l2004
	
l764:	
	line	177
;keypad_uart_lcd.c: 177: }
	goto	l2004
	line	178
	
l761:	
	
l2064:	
;keypad_uart_lcd.c: 178: else if(PORTD == 0x48)
	movf	(8),w	;volatile
	xorlw	048h
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2068
u2450:
	line	180
	
l2066:	
;keypad_uart_lcd.c: 179: {
;keypad_uart_lcd.c: 180: lcd_data('=');
	movlw	(03Dh)
	fcall	_lcd_data
	line	181
;keypad_uart_lcd.c: 181: uart_tx('=');
	movlw	(03Dh)
	fcall	_uart_tx
	line	182
;keypad_uart_lcd.c: 182: while(RD6==1);
	goto	l767
	
l768:	
	
l767:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(70/8),(70)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l767
u2460:
	goto	l2004
	
l769:	
	line	184
;keypad_uart_lcd.c: 184: }
	goto	l2004
	line	185
	
l766:	
	
l2068:	
;keypad_uart_lcd.c: 185: else if(PORTD == 0x88)
	movf	(8),w	;volatile
	xorlw	088h
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l771
u2470:
	line	187
	
l2070:	
;keypad_uart_lcd.c: 186: {
;keypad_uart_lcd.c: 187: lcd_data('D');
	movlw	(044h)
	fcall	_lcd_data
	line	188
;keypad_uart_lcd.c: 188: uart_tx('D');
	movlw	(044h)
	fcall	_uart_tx
	line	189
;keypad_uart_lcd.c: 189: while(RD7==1);
	goto	l772
	
l773:	
	
l772:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l772
u2480:
	goto	l2004
	
l774:	
	line	191
;keypad_uart_lcd.c: 191: }
	goto	l2004
	line	192
	
l771:	
	line	194
;keypad_uart_lcd.c: 192: else
;keypad_uart_lcd.c: 193: {
;keypad_uart_lcd.c: 194: RC0 = 0;
	bcf	(56/8),(56)&7
	line	195
;keypad_uart_lcd.c: 195: RC1 = 0;
	bcf	(57/8),(57)&7
	line	196
;keypad_uart_lcd.c: 196: RC2 = 0;
	bcf	(58/8),(58)&7
	goto	l2004
	line	197
	
l775:	
	goto	l2004
	
l770:	
	goto	l2004
	
l765:	
	goto	l2004
	
l760:	
	goto	l2004
	line	199
	
l776:	
	line	47
	goto	l2004
	
l777:	
	line	200
	
l778:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_data
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 216 in file "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
psect	text111
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
	line	216
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	217
	
l1976:	
;keypad_uart_lcd.c: 217: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	218
;keypad_uart_lcd.c: 218: RC1 = 0;
	bcf	(57/8),(57)&7
	line	219
;keypad_uart_lcd.c: 219: RC2 = 1;
	bsf	(58/8),(58)&7
	line	220
	
l1978:	
;keypad_uart_lcd.c: 220: PORTB = data;
	movf	(lcd_data@data),w
	movwf	(6)	;volatile
	line	221
	
l1980:	
;keypad_uart_lcd.c: 221: delay();
	fcall	_delay
	line	222
	
l1982:	
;keypad_uart_lcd.c: 222: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	223
	
l784:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_cmd
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 205 in file "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
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
psect	text112
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
	line	205
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	206
	
l1968:	
;keypad_uart_lcd.c: 206: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	207
;keypad_uart_lcd.c: 207: RC1 = 0;
	bcf	(57/8),(57)&7
	line	208
;keypad_uart_lcd.c: 208: RC2 = 1;
	bsf	(58/8),(58)&7
	line	209
	
l1970:	
;keypad_uart_lcd.c: 209: PORTB = cmd;
	movf	(lcd_cmd@cmd),w
	movwf	(6)	;volatile
	line	210
	
l1972:	
;keypad_uart_lcd.c: 210: delay();
	fcall	_delay
	line	211
	
l1974:	
;keypad_uart_lcd.c: 211: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	212
	
l781:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_delay
psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:

;; *************** function _delay *****************
;; Defined at:
;;		line 227 in file "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
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
;;		_lcd_cmd
;;		_lcd_data
;; This function uses a non-reentrant model
;;
psect	text113
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
	line	227
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	228
	
l1190:	
;keypad_uart_lcd.c: 228: TMR1CS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	229
;keypad_uart_lcd.c: 229: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	230
;keypad_uart_lcd.c: 230: T1CKPS1 = 1;
	bsf	(133/8),(133)&7
	line	231
	
l1192:	
;keypad_uart_lcd.c: 231: TMR1H = 0X3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	232
;keypad_uart_lcd.c: 232: TMR1L = 0XB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	233
	
l1194:	
;keypad_uart_lcd.c: 233: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	234
;keypad_uart_lcd.c: 234: while(TMR1IF==0);
	goto	l787
	
l788:	
	
l787:	
	btfss	(96/8),(96)&7
	goto	u21
	goto	u20
u21:
	goto	l787
u20:
	
l789:	
	line	235
;keypad_uart_lcd.c: 235: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	236
;keypad_uart_lcd.c: 236: TMR1ON= 1;
	bsf	(128/8),(128)&7
	line	237
	
l790:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_uart_tx
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 241 in file "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text114
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
	line	241
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 7
; Regs used in _uart_tx: [wreg]
;uart_tx@val stored from wreg
	line	243
	movwf	(uart_tx@val)
	
l1188:	
;keypad_uart_lcd.c: 243: TXREG = val;
	movf	(uart_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	244
;keypad_uart_lcd.c: 244: while(TXIF==0);
	goto	l793
	
l794:	
	
l793:	
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l793
u10:
	
l795:	
	line	245
;keypad_uart_lcd.c: 245: TXIF=0;
	bcf	(100/8),(100)&7
	line	246
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_uart_init
psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 256 in file "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
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
psect	text115
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad_uart_lcd\keypad_uart_lcd.c"
	line	256
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg+status,2]
	line	257
	
l1174:	
;keypad_uart_lcd.c: 257: TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	258
;keypad_uart_lcd.c: 258: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	260
	
l1176:	
;keypad_uart_lcd.c: 260: TXSTA = 0x00;
	clrf	(152)^080h	;volatile
	line	261
;keypad_uart_lcd.c: 261: RCSTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(24)	;volatile
	line	262
	
l1178:	
;keypad_uart_lcd.c: 262: SPBRG = 31;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	263
	
l1180:	
;keypad_uart_lcd.c: 263: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	264
	
l1182:	
;keypad_uart_lcd.c: 264: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	265
	
l1184:	
;keypad_uart_lcd.c: 265: TXIF=0;
	bcf	(100/8),(100)&7
	line	266
	
l1186:	
;keypad_uart_lcd.c: 266: RCIF=0;
	bcf	(101/8),(101)&7
	line	267
	
l805:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
psect	text116,local,class=CODE,delta=2
global __ptext116
__ptext116:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
