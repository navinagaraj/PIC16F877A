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
# 2 "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
	dw 0xFFFE & 0xFFFB & 0xFFFF & 0xFFFF & 0xFF7F ;#
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_PORTC
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB4
_RB4	set	52
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
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"lcd_keypad.as"
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
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
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
;; (0) _main                                                 0     0      0      30
;;                            _lcd_cmd
;;                           _lcd_data
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
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _lcd_data
;;     _delay
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
;;		line 30 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  690[COMMON] int 
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
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	31
	
l1939:	
;lcd_keypad.c: 31: TRISD = 0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	32
	
l1941:	
;lcd_keypad.c: 32: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	33
	
l1943:	
;lcd_keypad.c: 33: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	34
;lcd_keypad.c: 34: PORTD = 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	36
	
l1945:	
;lcd_keypad.c: 36: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	37
	
l1947:	
;lcd_keypad.c: 37: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	38
	
l1949:	
;lcd_keypad.c: 38: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	39
	
l1951:	
;lcd_keypad.c: 39: lcd_cmd(0x0F);
	movlw	(0Fh)
	fcall	_lcd_cmd
	line	40
	
l1953:	
;lcd_keypad.c: 40: lcd_cmd(0X06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	41
	
l1955:	
;lcd_keypad.c: 41: lcd_cmd(0X80);
	movlw	(080h)
	fcall	_lcd_cmd
	goto	l1957
	line	42
;lcd_keypad.c: 42: while(1)
	
l691:	
	line	45
	
l1957:	
;lcd_keypad.c: 43: {
;lcd_keypad.c: 45: RD0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	46
	
l1959:	
;lcd_keypad.c: 46: RD1 = RD2 = RD3 = 0;
	bcf	(67/8),(67)&7
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	line	47
;lcd_keypad.c: 47: if(PORTD == 0x11)
	movf	(8),w	;volatile
	xorlw	011h
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l1963
u2150:
	line	49
	
l1961:	
;lcd_keypad.c: 48: {
;lcd_keypad.c: 49: lcd_data('7');
	movlw	(037h)
	fcall	_lcd_data
	line	50
;lcd_keypad.c: 50: while(RD4==1);
	goto	l693
	
l694:	
	
l693:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l693
u2160:
	goto	l696
	
l695:	
	line	52
;lcd_keypad.c: 52: }
	goto	l696
	line	53
	
l692:	
	
l1963:	
;lcd_keypad.c: 53: else if(PORTD == 0x21)
	movf	(8),w	;volatile
	xorlw	021h
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l1967
u2170:
	line	55
	
l1965:	
;lcd_keypad.c: 54: {
;lcd_keypad.c: 55: lcd_data('8');
	movlw	(038h)
	fcall	_lcd_data
	line	56
;lcd_keypad.c: 56: while(RD5==1);
	goto	l698
	
l699:	
	
l698:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(69/8),(69)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l698
u2180:
	goto	l696
	
l700:	
	line	58
;lcd_keypad.c: 58: }
	goto	l696
	line	59
	
l697:	
	
l1967:	
;lcd_keypad.c: 59: else if(PORTD == 0x41)
	movf	(8),w	;volatile
	xorlw	041h
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l1971
u2190:
	line	61
	
l1969:	
;lcd_keypad.c: 60: {
;lcd_keypad.c: 61: lcd_data('9');
	movlw	(039h)
	fcall	_lcd_data
	line	62
;lcd_keypad.c: 62: while(RD6==1);
	goto	l703
	
l704:	
	
l703:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(70/8),(70)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l703
u2200:
	goto	l696
	
l705:	
	line	64
;lcd_keypad.c: 64: }
	goto	l696
	line	65
	
l702:	
	
l1971:	
;lcd_keypad.c: 65: else if(PORTD == 0x81)
	movf	(8),w	;volatile
	xorlw	081h
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l696
u2210:
	line	67
	
l1973:	
;lcd_keypad.c: 66: {
;lcd_keypad.c: 67: lcd_data('A');
	movlw	(041h)
	fcall	_lcd_data
	line	68
;lcd_keypad.c: 68: while(RD7==1);
	goto	l708
	
l709:	
	
l708:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l708
u2220:
	goto	l696
	
l710:	
	goto	l696
	line	70
	
l707:	
	goto	l696
	line	71
	
l706:	
	goto	l696
	
l701:	
	
l696:	
;lcd_keypad.c: 70: }
;lcd_keypad.c: 71: RD0 = 0;
	bcf	(64/8),(64)&7
	line	72
;lcd_keypad.c: 72: RD1 = 1;
	bsf	(65/8),(65)&7
	line	73
;lcd_keypad.c: 73: RD2 = 0;
	bcf	(66/8),(66)&7
	line	74
;lcd_keypad.c: 74: RD3 = 0;
	bcf	(67/8),(67)&7
	line	75
	
l1975:	
;lcd_keypad.c: 75: if(PORTD == 0x12)
	movf	(8),w	;volatile
	xorlw	012h
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l1979
u2230:
	line	77
	
l1977:	
;lcd_keypad.c: 76: {
;lcd_keypad.c: 77: lcd_data('4');
	movlw	(034h)
	fcall	_lcd_data
	line	78
;lcd_keypad.c: 78: while(RD4==1);
	goto	l712
	
l713:	
	
l712:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l712
u2240:
	goto	l715
	
l714:	
	line	80
;lcd_keypad.c: 80: }
	goto	l715
	line	81
	
l711:	
	
l1979:	
;lcd_keypad.c: 81: else if(PORTD == 0x22)
	movf	(8),w	;volatile
	xorlw	022h
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l1983
u2250:
	line	83
	
l1981:	
;lcd_keypad.c: 82: {
;lcd_keypad.c: 83: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	line	84
;lcd_keypad.c: 84: while(RD5==1);
	goto	l717
	
l718:	
	
l717:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(69/8),(69)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l717
u2260:
	goto	l715
	
l719:	
	line	85
;lcd_keypad.c: 85: }
	goto	l715
	line	86
	
l716:	
	
l1983:	
;lcd_keypad.c: 86: else if(PORTD == 0x42)
	movf	(8),w	;volatile
	xorlw	042h
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l1987
u2270:
	line	88
	
l1985:	
;lcd_keypad.c: 87: {
;lcd_keypad.c: 88: lcd_data('6');
	movlw	(036h)
	fcall	_lcd_data
	line	89
;lcd_keypad.c: 89: while(RD6==1);
	goto	l722
	
l723:	
	
l722:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(70/8),(70)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l722
u2280:
	goto	l715
	
l724:	
	line	91
;lcd_keypad.c: 91: }
	goto	l715
	line	92
	
l721:	
	
l1987:	
;lcd_keypad.c: 92: else if(PORTD == 0x82)
	movf	(8),w	;volatile
	xorlw	082h
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l715
u2290:
	line	94
	
l1989:	
;lcd_keypad.c: 93: {
;lcd_keypad.c: 94: lcd_data('B');
	movlw	(042h)
	fcall	_lcd_data
	line	95
;lcd_keypad.c: 95: while(RD7==1);
	goto	l727
	
l728:	
	
l727:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l727
u2300:
	goto	l715
	
l729:	
	goto	l715
	line	96
	
l726:	
	goto	l715
	line	98
	
l725:	
	goto	l715
	
l720:	
	
l715:	
;lcd_keypad.c: 96: }
;lcd_keypad.c: 98: RD0 = 0;
	bcf	(64/8),(64)&7
	line	99
;lcd_keypad.c: 99: RD1 = 0;
	bcf	(65/8),(65)&7
	line	100
;lcd_keypad.c: 100: RD2 = 1;
	bsf	(66/8),(66)&7
	line	101
;lcd_keypad.c: 101: RD3 = 0;
	bcf	(67/8),(67)&7
	line	102
	
l1991:	
;lcd_keypad.c: 102: if(PORTD == 0x14)
	movf	(8),w	;volatile
	xorlw	014h
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l1995
u2310:
	line	104
	
l1993:	
;lcd_keypad.c: 103: {
;lcd_keypad.c: 104: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	line	105
;lcd_keypad.c: 105: while(RD4==1);
	goto	l731
	
l732:	
	
l731:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l731
u2320:
	goto	l734
	
l733:	
	line	106
;lcd_keypad.c: 106: }
	goto	l734
	line	107
	
l730:	
	
l1995:	
;lcd_keypad.c: 107: else if(PORTD == 0x24)
	movf	(8),w	;volatile
	xorlw	024h
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l1999
u2330:
	line	109
	
l1997:	
;lcd_keypad.c: 108: {
;lcd_keypad.c: 109: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	line	110
;lcd_keypad.c: 110: while(RD5==1);
	goto	l736
	
l737:	
	
l736:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(69/8),(69)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l736
u2340:
	goto	l734
	
l738:	
	line	112
;lcd_keypad.c: 112: }
	goto	l734
	line	113
	
l735:	
	
l1999:	
;lcd_keypad.c: 113: else if(PORTD == 0x44)
	movf	(8),w	;volatile
	xorlw	044h
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l2003
u2350:
	line	115
	
l2001:	
;lcd_keypad.c: 114: {
;lcd_keypad.c: 115: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	line	116
;lcd_keypad.c: 116: while(RD6==1);
	goto	l741
	
l742:	
	
l741:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(70/8),(70)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l741
u2360:
	goto	l734
	
l743:	
	line	118
;lcd_keypad.c: 118: }
	goto	l734
	line	119
	
l740:	
	
l2003:	
;lcd_keypad.c: 119: else if(PORTD == 0x84)
	movf	(8),w	;volatile
	xorlw	084h
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l734
u2370:
	line	121
	
l2005:	
;lcd_keypad.c: 120: {
;lcd_keypad.c: 121: lcd_data('C');
	movlw	(043h)
	fcall	_lcd_data
	line	122
;lcd_keypad.c: 122: while(RD7==1);
	goto	l746
	
l747:	
	
l746:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l746
u2380:
	goto	l734
	
l748:	
	goto	l734
	line	124
	
l745:	
	goto	l734
	line	125
	
l744:	
	goto	l734
	
l739:	
	
l734:	
;lcd_keypad.c: 124: }
;lcd_keypad.c: 125: RD0 = 0;
	bcf	(64/8),(64)&7
	line	126
;lcd_keypad.c: 126: RD1 = 0;
	bcf	(65/8),(65)&7
	line	127
;lcd_keypad.c: 127: RD2 = 0;
	bcf	(66/8),(66)&7
	line	128
;lcd_keypad.c: 128: RD3 = 1;
	bsf	(67/8),(67)&7
	line	129
	
l2007:	
;lcd_keypad.c: 129: if(PORTD == 0x18)
	movf	(8),w	;volatile
	xorlw	018h
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l2011
u2390:
	line	131
	
l2009:	
;lcd_keypad.c: 130: {
;lcd_keypad.c: 131: lcd_data('-');
	movlw	(02Dh)
	fcall	_lcd_data
	line	132
;lcd_keypad.c: 132: while(RD4==1);
	goto	l750
	
l751:	
	
l750:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l750
u2400:
	goto	l1957
	
l752:	
	line	134
;lcd_keypad.c: 134: }
	goto	l1957
	line	135
	
l749:	
	
l2011:	
;lcd_keypad.c: 135: else if(PORTD == 0x28)
	movf	(8),w	;volatile
	xorlw	028h
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l2015
u2410:
	line	137
	
l2013:	
;lcd_keypad.c: 136: {
;lcd_keypad.c: 137: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	line	138
;lcd_keypad.c: 138: while(RD5==1);
	goto	l755
	
l756:	
	
l755:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(69/8),(69)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l755
u2420:
	goto	l1957
	
l757:	
	line	140
;lcd_keypad.c: 140: }
	goto	l1957
	line	141
	
l754:	
	
l2015:	
;lcd_keypad.c: 141: else if(PORTD == 0x48)
	movf	(8),w	;volatile
	xorlw	048h
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l2019
u2430:
	line	143
	
l2017:	
;lcd_keypad.c: 142: {
;lcd_keypad.c: 143: lcd_data('-');
	movlw	(02Dh)
	fcall	_lcd_data
	line	144
;lcd_keypad.c: 144: while(RD6==1);
	goto	l760
	
l761:	
	
l760:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(70/8),(70)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l760
u2440:
	goto	l1957
	
l762:	
	line	146
;lcd_keypad.c: 146: }
	goto	l1957
	line	147
	
l759:	
	
l2019:	
;lcd_keypad.c: 147: else if(PORTD == 0x88)
	movf	(8),w	;volatile
	xorlw	088h
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l1957
u2450:
	line	149
	
l2021:	
;lcd_keypad.c: 148: {
;lcd_keypad.c: 149: lcd_data('D');
	movlw	(044h)
	fcall	_lcd_data
	line	150
;lcd_keypad.c: 150: while(RD7==1);
	goto	l765
	
l766:	
	
l765:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l765
u2460:
	goto	l1957
	
l767:	
	goto	l1957
	line	152
	
l764:	
	goto	l1957
	line	153
	
l763:	
	goto	l1957
	
l758:	
	goto	l1957
	
l753:	
	goto	l1957
	
l768:	
	line	42
	goto	l1957
	
l769:	
	line	154
	
l770:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_data
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 170 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
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
psect	text85
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
	line	170
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	171
	
l1931:	
;lcd_keypad.c: 171: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	172
;lcd_keypad.c: 172: RB1 = 0;
	bcf	(49/8),(49)&7
	line	173
;lcd_keypad.c: 173: RB2 = 1;
	bsf	(50/8),(50)&7
	line	174
	
l1933:	
;lcd_keypad.c: 174: PORTC = data;
	movf	(lcd_data@data),w
	movwf	(7)	;volatile
	line	175
	
l1935:	
;lcd_keypad.c: 175: delay();
	fcall	_delay
	line	176
	
l1937:	
;lcd_keypad.c: 176: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	177
	
l776:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_cmd
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 159 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
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
psect	text86
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
	line	159
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	160
	
l1923:	
;lcd_keypad.c: 160: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	161
;lcd_keypad.c: 161: RB1 = 0;
	bcf	(49/8),(49)&7
	line	162
;lcd_keypad.c: 162: RB2 = 1;
	bsf	(50/8),(50)&7
	line	163
	
l1925:	
;lcd_keypad.c: 163: PORTC = cmd;
	movf	(lcd_cmd@cmd),w
	movwf	(7)	;volatile
	line	164
	
l1927:	
;lcd_keypad.c: 164: delay();
	fcall	_delay
	line	165
	
l1929:	
;lcd_keypad.c: 165: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	166
	
l773:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_delay
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _delay *****************
;; Defined at:
;;		line 181 in file "C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
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
psect	text87
	file	"C:\Users\PalaniSakthi\Desktop\mplab\hardware\ASSignments\kepad_lcd\lcd_keypad.c"
	line	181
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	182
	
l1151:	
;lcd_keypad.c: 182: TMR1CS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	183
;lcd_keypad.c: 183: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	184
;lcd_keypad.c: 184: T1CKPS1 = 1;
	bsf	(133/8),(133)&7
	line	185
	
l1153:	
;lcd_keypad.c: 185: TMR1H = 0X3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	186
;lcd_keypad.c: 186: TMR1L = 0XB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	187
	
l1155:	
;lcd_keypad.c: 187: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	188
;lcd_keypad.c: 188: while(TMR1IF==0);
	goto	l779
	
l780:	
	
l779:	
	btfss	(96/8),(96)&7
	goto	u11
	goto	u10
u11:
	goto	l779
u10:
	
l781:	
	line	189
;lcd_keypad.c: 189: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	190
;lcd_keypad.c: 190: TMR1ON= 1;
	bsf	(128/8),(128)&7
	line	191
	
l782:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
