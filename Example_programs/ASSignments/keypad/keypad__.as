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
# 2 "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad\keypad.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad\keypad.c"
	dw 0x1F7A ;#
	FNROOT	_main
	global	_PORTC
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_RB1
_RB1	set	49
	global	_RBIF
_RBIF	set	88
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
	global	_TMR1IF
_TMR1IF	set	96
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISB1
_TRISB1	set	1073
	file	"keypad__.as"
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
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;; (0) _main                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad\keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  684[COMMON] int 
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Jeeva\Desktop\mplab\hardware\ASSignments\keypad\keypad.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	21
	
l1141:	
;keypad.c: 21: TRISD = 0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	22
	
l1143:	
;keypad.c: 22: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	23
	
l1145:	
;keypad.c: 23: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	24
	
l1147:	
;keypad.c: 24: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	25
	
l1149:	
;keypad.c: 25: RBIF = 0;
	bcf	(88/8),(88)&7
	line	26
	
l1151:	
;keypad.c: 26: PORTD = 0x0F;
	movlw	(0Fh)
	movwf	(8)	;volatile
	goto	l1153
	line	27
;keypad.c: 27: while(1)
	
l685:	
	line	29
	
l1153:	
;keypad.c: 28: {
;keypad.c: 29: RD0 = 1;
	bsf	(64/8),(64)&7
	line	30
	
l1155:	
;keypad.c: 30: RD1 = RD2 = RD3 = 0;
	bcf	(67/8),(67)&7
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	line	31
	
l1157:	
;keypad.c: 31: if(RD4 == 1 && RD0 == 1 && RD1 ==0 && RD2 == 0 && RD3 == 0)
	btfss	(68/8),(68)&7
	goto	u11
	goto	u10
u11:
	goto	l686
u10:
	
l1159:	
	btfss	(64/8),(64)&7
	goto	u21
	goto	u20
u21:
	goto	l686
u20:
	
l1161:	
	btfsc	(65/8),(65)&7
	goto	u31
	goto	u30
u31:
	goto	l686
u30:
	
l1163:	
	btfsc	(66/8),(66)&7
	goto	u41
	goto	u40
u41:
	goto	l686
u40:
	
l1165:	
	btfsc	(67/8),(67)&7
	goto	u51
	goto	u50
u51:
	goto	l686
u50:
	line	33
	
l1167:	
;keypad.c: 32: {
;keypad.c: 33: PORTC = 0xE0;
	movlw	(0E0h)
	movwf	(7)	;volatile
	line	34
;keypad.c: 34: while(RD4==1);
	goto	l687
	
l688:	
	
l687:	
	btfsc	(68/8),(68)&7
	goto	u61
	goto	u60
u61:
	goto	l687
u60:
	goto	l690
	
l689:	
	line	35
;keypad.c: 35: }
	goto	l690
	line	36
	
l686:	
;keypad.c: 36: else if(RD5 == 1 && RD0 == 1 && RD1 ==0 && RD2 == 0 && RD3 == 0)
	btfss	(69/8),(69)&7
	goto	u71
	goto	u70
u71:
	goto	l691
u70:
	
l1169:	
	btfss	(64/8),(64)&7
	goto	u81
	goto	u80
u81:
	goto	l691
u80:
	
l1171:	
	btfsc	(65/8),(65)&7
	goto	u91
	goto	u90
u91:
	goto	l691
u90:
	
l1173:	
	btfsc	(66/8),(66)&7
	goto	u101
	goto	u100
u101:
	goto	l691
u100:
	
l1175:	
	btfsc	(67/8),(67)&7
	goto	u111
	goto	u110
u111:
	goto	l691
u110:
	line	38
	
l1177:	
;keypad.c: 37: {
;keypad.c: 38: PORTC = 0xFE;
	movlw	(0FEh)
	movwf	(7)	;volatile
	line	39
;keypad.c: 39: while(RD5==1);
	goto	l692
	
l693:	
	
l692:	
	btfsc	(69/8),(69)&7
	goto	u121
	goto	u120
u121:
	goto	l692
u120:
	goto	l690
	
l694:	
	line	40
;keypad.c: 40: }
	goto	l690
	line	41
	
l691:	
;keypad.c: 41: else if(RD6 == 1 && RD0 == 1 && RD1 ==0 && RD2 == 0 && RD3 == 0)
	btfss	(70/8),(70)&7
	goto	u131
	goto	u130
u131:
	goto	l696
u130:
	
l1179:	
	btfss	(64/8),(64)&7
	goto	u141
	goto	u140
u141:
	goto	l696
u140:
	
l1181:	
	btfsc	(65/8),(65)&7
	goto	u151
	goto	u150
u151:
	goto	l696
u150:
	
l1183:	
	btfsc	(66/8),(66)&7
	goto	u161
	goto	u160
u161:
	goto	l696
u160:
	
l1185:	
	btfsc	(67/8),(67)&7
	goto	u171
	goto	u170
u171:
	goto	l696
u170:
	line	43
	
l1187:	
;keypad.c: 42: {
;keypad.c: 43: PORTC = 0xF6;
	movlw	(0F6h)
	movwf	(7)	;volatile
	line	44
;keypad.c: 44: while(RD6==1);
	goto	l697
	
l698:	
	
l697:	
	btfsc	(70/8),(70)&7
	goto	u181
	goto	u180
u181:
	goto	l697
u180:
	goto	l690
	
l699:	
	line	45
;keypad.c: 45: }
	goto	l690
	line	46
	
l696:	
;keypad.c: 46: else if(RD7 == 1 && RD0 == 1 && RD1 ==0 && RD2 == 0 && RD3 == 0)
	btfss	(71/8),(71)&7
	goto	u191
	goto	u190
u191:
	goto	l690
u190:
	
l1189:	
	btfss	(64/8),(64)&7
	goto	u201
	goto	u200
u201:
	goto	l690
u200:
	
l1191:	
	btfsc	(65/8),(65)&7
	goto	u211
	goto	u210
u211:
	goto	l690
u210:
	
l1193:	
	btfsc	(66/8),(66)&7
	goto	u221
	goto	u220
u221:
	goto	l690
u220:
	
l1195:	
	btfsc	(67/8),(67)&7
	goto	u231
	goto	u230
u231:
	goto	l690
u230:
	line	48
	
l1197:	
;keypad.c: 47: {
;keypad.c: 48: PORTC = 0xEE;
	movlw	(0EEh)
	movwf	(7)	;volatile
	line	49
;keypad.c: 49: while(RD7==1);
	goto	l702
	
l703:	
	
l702:	
	btfsc	(71/8),(71)&7
	goto	u241
	goto	u240
u241:
	goto	l702
u240:
	goto	l690
	
l704:	
	goto	l690
	line	50
	
l701:	
	goto	l690
	line	51
	
l700:	
	goto	l690
	
l695:	
	
l690:	
;keypad.c: 50: }
;keypad.c: 51: RD0 = 0;
	bcf	(64/8),(64)&7
	line	52
;keypad.c: 52: RD1 = 1;
	bsf	(65/8),(65)&7
	line	53
;keypad.c: 53: RD2 = 0;
	bcf	(66/8),(66)&7
	line	54
;keypad.c: 54: RD3 = 0;
	bcf	(67/8),(67)&7
	line	55
;keypad.c: 55: if(RD4 == 1 && RD1 == 1 && RD0 ==0 && RD2 == 0 && RD3 == 0)
	btfss	(68/8),(68)&7
	goto	u251
	goto	u250
u251:
	goto	l705
u250:
	
l1199:	
	btfss	(65/8),(65)&7
	goto	u261
	goto	u260
u261:
	goto	l705
u260:
	
l1201:	
	btfsc	(64/8),(64)&7
	goto	u271
	goto	u270
u271:
	goto	l705
u270:
	
l1203:	
	btfsc	(66/8),(66)&7
	goto	u281
	goto	u280
u281:
	goto	l705
u280:
	
l1205:	
	btfsc	(67/8),(67)&7
	goto	u291
	goto	u290
u291:
	goto	l705
u290:
	line	57
	
l1207:	
;keypad.c: 56: {
;keypad.c: 57: PORTC = 0x66;
	movlw	(066h)
	movwf	(7)	;volatile
	line	58
;keypad.c: 58: while(RD4==1);
	goto	l706
	
l707:	
	
l706:	
	btfsc	(68/8),(68)&7
	goto	u301
	goto	u300
u301:
	goto	l706
u300:
	goto	l709
	
l708:	
	line	59
;keypad.c: 59: }
	goto	l709
	line	60
	
l705:	
;keypad.c: 60: else if(RD5 == 1 && RD1 == 1 && RD0 ==0 && RD2 == 0 && RD3 == 0)
	btfss	(69/8),(69)&7
	goto	u311
	goto	u310
u311:
	goto	l710
u310:
	
l1209:	
	btfss	(65/8),(65)&7
	goto	u321
	goto	u320
u321:
	goto	l710
u320:
	
l1211:	
	btfsc	(64/8),(64)&7
	goto	u331
	goto	u330
u331:
	goto	l710
u330:
	
l1213:	
	btfsc	(66/8),(66)&7
	goto	u341
	goto	u340
u341:
	goto	l710
u340:
	
l1215:	
	btfsc	(67/8),(67)&7
	goto	u351
	goto	u350
u351:
	goto	l710
u350:
	line	62
	
l1217:	
;keypad.c: 61: {
;keypad.c: 62: PORTC = 0xB6;
	movlw	(0B6h)
	movwf	(7)	;volatile
	line	63
;keypad.c: 63: while(RD5==1);
	goto	l711
	
l712:	
	
l711:	
	btfsc	(69/8),(69)&7
	goto	u361
	goto	u360
u361:
	goto	l711
u360:
	goto	l709
	
l713:	
	line	64
;keypad.c: 64: }
	goto	l709
	line	65
	
l710:	
;keypad.c: 65: else if(RD6 == 1 && RD1 == 1 && RD0 ==0 && RD2 == 0 && RD3 == 0)
	btfss	(70/8),(70)&7
	goto	u371
	goto	u370
u371:
	goto	l715
u370:
	
l1219:	
	btfss	(65/8),(65)&7
	goto	u381
	goto	u380
u381:
	goto	l715
u380:
	
l1221:	
	btfsc	(64/8),(64)&7
	goto	u391
	goto	u390
u391:
	goto	l715
u390:
	
l1223:	
	btfsc	(66/8),(66)&7
	goto	u401
	goto	u400
u401:
	goto	l715
u400:
	
l1225:	
	btfsc	(67/8),(67)&7
	goto	u411
	goto	u410
u411:
	goto	l715
u410:
	line	67
	
l1227:	
;keypad.c: 66: {
;keypad.c: 67: PORTC = 0xBE;
	movlw	(0BEh)
	movwf	(7)	;volatile
	line	68
;keypad.c: 68: while(RD6==1);
	goto	l716
	
l717:	
	
l716:	
	btfsc	(70/8),(70)&7
	goto	u421
	goto	u420
u421:
	goto	l716
u420:
	goto	l709
	
l718:	
	line	69
;keypad.c: 69: }
	goto	l709
	line	70
	
l715:	
;keypad.c: 70: else if(RD7 == 1 && RD1 == 1 && RD0 ==0 && RD2 == 0 && RD3 == 0)
	btfss	(71/8),(71)&7
	goto	u431
	goto	u430
u431:
	goto	l709
u430:
	
l1229:	
	btfss	(65/8),(65)&7
	goto	u441
	goto	u440
u441:
	goto	l709
u440:
	
l1231:	
	btfsc	(64/8),(64)&7
	goto	u451
	goto	u450
u451:
	goto	l709
u450:
	
l1233:	
	btfsc	(66/8),(66)&7
	goto	u461
	goto	u460
u461:
	goto	l709
u460:
	
l1235:	
	btfsc	(67/8),(67)&7
	goto	u471
	goto	u470
u471:
	goto	l709
u470:
	line	72
	
l1237:	
;keypad.c: 71: {
;keypad.c: 72: PORTC = 0x3E;
	movlw	(03Eh)
	movwf	(7)	;volatile
	line	73
;keypad.c: 73: while(RD7==1);
	goto	l721
	
l722:	
	
l721:	
	btfsc	(71/8),(71)&7
	goto	u481
	goto	u480
u481:
	goto	l721
u480:
	goto	l709
	
l723:	
	goto	l709
	line	74
	
l720:	
	goto	l709
	line	75
	
l719:	
	goto	l709
	
l714:	
	
l709:	
;keypad.c: 74: }
;keypad.c: 75: RD0 = 0;
	bcf	(64/8),(64)&7
	line	76
;keypad.c: 76: RD1 = 0;
	bcf	(65/8),(65)&7
	line	77
;keypad.c: 77: RD2 = 1;
	bsf	(66/8),(66)&7
	line	78
;keypad.c: 78: RD3 = 0;
	bcf	(67/8),(67)&7
	line	79
;keypad.c: 79: if(RD4 == 1 && RD2 == 1 && RD1 ==0 && RD0 == 0 && RD3 == 0)
	btfss	(68/8),(68)&7
	goto	u491
	goto	u490
u491:
	goto	l724
u490:
	
l1239:	
	btfss	(66/8),(66)&7
	goto	u501
	goto	u500
u501:
	goto	l724
u500:
	
l1241:	
	btfsc	(65/8),(65)&7
	goto	u511
	goto	u510
u511:
	goto	l724
u510:
	
l1243:	
	btfsc	(64/8),(64)&7
	goto	u521
	goto	u520
u521:
	goto	l724
u520:
	
l1245:	
	btfsc	(67/8),(67)&7
	goto	u531
	goto	u530
u531:
	goto	l724
u530:
	line	81
	
l1247:	
;keypad.c: 80: {
;keypad.c: 81: PORTC = 0x60;
	movlw	(060h)
	movwf	(7)	;volatile
	line	82
;keypad.c: 82: while(RD4==1);
	goto	l725
	
l726:	
	
l725:	
	btfsc	(68/8),(68)&7
	goto	u541
	goto	u540
u541:
	goto	l725
u540:
	goto	l728
	
l727:	
	line	83
;keypad.c: 83: }
	goto	l728
	line	84
	
l724:	
;keypad.c: 84: else if(RD5 == 1 && RD2 == 1 && RD1 ==0 && RD0 == 0 && RD3 == 0)
	btfss	(69/8),(69)&7
	goto	u551
	goto	u550
u551:
	goto	l729
u550:
	
l1249:	
	btfss	(66/8),(66)&7
	goto	u561
	goto	u560
u561:
	goto	l729
u560:
	
l1251:	
	btfsc	(65/8),(65)&7
	goto	u571
	goto	u570
u571:
	goto	l729
u570:
	
l1253:	
	btfsc	(64/8),(64)&7
	goto	u581
	goto	u580
u581:
	goto	l729
u580:
	
l1255:	
	btfsc	(67/8),(67)&7
	goto	u591
	goto	u590
u591:
	goto	l729
u590:
	line	86
	
l1257:	
;keypad.c: 85: {
;keypad.c: 86: PORTC = 0xDA;
	movlw	(0DAh)
	movwf	(7)	;volatile
	line	87
;keypad.c: 87: while(RD5==1);
	goto	l730
	
l731:	
	
l730:	
	btfsc	(69/8),(69)&7
	goto	u601
	goto	u600
u601:
	goto	l730
u600:
	goto	l728
	
l732:	
	line	88
;keypad.c: 88: }
	goto	l728
	line	89
	
l729:	
;keypad.c: 89: else if(RD6 == 1 && RD2 == 1 && RD1 ==0 && RD0 == 0 && RD3 == 0)
	btfss	(70/8),(70)&7
	goto	u611
	goto	u610
u611:
	goto	l734
u610:
	
l1259:	
	btfss	(66/8),(66)&7
	goto	u621
	goto	u620
u621:
	goto	l734
u620:
	
l1261:	
	btfsc	(65/8),(65)&7
	goto	u631
	goto	u630
u631:
	goto	l734
u630:
	
l1263:	
	btfsc	(64/8),(64)&7
	goto	u641
	goto	u640
u641:
	goto	l734
u640:
	
l1265:	
	btfsc	(67/8),(67)&7
	goto	u651
	goto	u650
u651:
	goto	l734
u650:
	line	91
	
l1267:	
;keypad.c: 90: {
;keypad.c: 91: PORTC = 0xF2;
	movlw	(0F2h)
	movwf	(7)	;volatile
	line	92
;keypad.c: 92: while(RD6==1);
	goto	l735
	
l736:	
	
l735:	
	btfsc	(70/8),(70)&7
	goto	u661
	goto	u660
u661:
	goto	l735
u660:
	goto	l728
	
l737:	
	line	93
;keypad.c: 93: }
	goto	l728
	line	94
	
l734:	
;keypad.c: 94: else if(RD7 == 1 && RD2 == 1 && RD1 ==0 && RD0 == 0 && RD3 == 0)
	btfss	(71/8),(71)&7
	goto	u671
	goto	u670
u671:
	goto	l728
u670:
	
l1269:	
	btfss	(66/8),(66)&7
	goto	u681
	goto	u680
u681:
	goto	l728
u680:
	
l1271:	
	btfsc	(65/8),(65)&7
	goto	u691
	goto	u690
u691:
	goto	l728
u690:
	
l1273:	
	btfsc	(64/8),(64)&7
	goto	u701
	goto	u700
u701:
	goto	l728
u700:
	
l1275:	
	btfsc	(67/8),(67)&7
	goto	u711
	goto	u710
u711:
	goto	l728
u710:
	line	96
	
l1277:	
;keypad.c: 95: {
;keypad.c: 96: PORTC = 0x1A;
	movlw	(01Ah)
	movwf	(7)	;volatile
	line	97
;keypad.c: 97: while(RD7==1);
	goto	l740
	
l741:	
	
l740:	
	btfsc	(71/8),(71)&7
	goto	u721
	goto	u720
u721:
	goto	l740
u720:
	goto	l728
	
l742:	
	goto	l728
	line	98
	
l739:	
	goto	l728
	line	99
	
l738:	
	goto	l728
	
l733:	
	
l728:	
;keypad.c: 98: }
;keypad.c: 99: RD0 = 0;
	bcf	(64/8),(64)&7
	line	100
;keypad.c: 100: RD1 = 0;
	bcf	(65/8),(65)&7
	line	101
;keypad.c: 101: RD2 = 0;
	bcf	(66/8),(66)&7
	line	102
;keypad.c: 102: RD3 = 1;
	bsf	(67/8),(67)&7
	line	103
;keypad.c: 103: if(RD4 == 1 && RD3 == 1 && RD1 ==0 && RD2 == 0 && RD0 == 0)
	btfss	(68/8),(68)&7
	goto	u731
	goto	u730
u731:
	goto	l743
u730:
	
l1279:	
	btfss	(67/8),(67)&7
	goto	u741
	goto	u740
u741:
	goto	l743
u740:
	
l1281:	
	btfsc	(65/8),(65)&7
	goto	u751
	goto	u750
u751:
	goto	l743
u750:
	
l1283:	
	btfsc	(66/8),(66)&7
	goto	u761
	goto	u760
u761:
	goto	l743
u760:
	
l1285:	
	btfsc	(64/8),(64)&7
	goto	u771
	goto	u770
u771:
	goto	l743
u770:
	line	105
	
l1287:	
;keypad.c: 104: {
;keypad.c: 105: PORTC = 0x02;
	movlw	(02h)
	movwf	(7)	;volatile
	line	106
;keypad.c: 106: while(RD4==1);
	goto	l744
	
l745:	
	
l744:	
	btfsc	(68/8),(68)&7
	goto	u781
	goto	u780
u781:
	goto	l744
u780:
	goto	l1153
	
l746:	
	line	107
;keypad.c: 107: }
	goto	l1153
	line	108
	
l743:	
;keypad.c: 108: else if(RD5 == 1 && RD3 == 1 && RD1 ==0 && RD2 == 0 && RD0 == 0)
	btfss	(69/8),(69)&7
	goto	u791
	goto	u790
u791:
	goto	l748
u790:
	
l1289:	
	btfss	(67/8),(67)&7
	goto	u801
	goto	u800
u801:
	goto	l748
u800:
	
l1291:	
	btfsc	(65/8),(65)&7
	goto	u811
	goto	u810
u811:
	goto	l748
u810:
	
l1293:	
	btfsc	(66/8),(66)&7
	goto	u821
	goto	u820
u821:
	goto	l748
u820:
	
l1295:	
	btfsc	(64/8),(64)&7
	goto	u831
	goto	u830
u831:
	goto	l748
u830:
	line	110
	
l1297:	
;keypad.c: 109: {
;keypad.c: 110: PORTC = 0xFC;
	movlw	(0FCh)
	movwf	(7)	;volatile
	line	111
;keypad.c: 111: while(RD5==1);
	goto	l749
	
l750:	
	
l749:	
	btfsc	(69/8),(69)&7
	goto	u841
	goto	u840
u841:
	goto	l749
u840:
	goto	l1153
	
l751:	
	line	112
;keypad.c: 112: }
	goto	l1153
	line	113
	
l748:	
;keypad.c: 113: else if(RD6 == 1 && RD3 == 1 && RD1 ==0 && RD2 == 0 && RD0 == 0)
	btfss	(70/8),(70)&7
	goto	u851
	goto	u850
u851:
	goto	l753
u850:
	
l1299:	
	btfss	(67/8),(67)&7
	goto	u861
	goto	u860
u861:
	goto	l753
u860:
	
l1301:	
	btfsc	(65/8),(65)&7
	goto	u871
	goto	u870
u871:
	goto	l753
u870:
	
l1303:	
	btfsc	(66/8),(66)&7
	goto	u881
	goto	u880
u881:
	goto	l753
u880:
	
l1305:	
	btfsc	(64/8),(64)&7
	goto	u891
	goto	u890
u891:
	goto	l753
u890:
	line	115
	
l1307:	
;keypad.c: 114: {
;keypad.c: 115: PORTC = 0x02;
	movlw	(02h)
	movwf	(7)	;volatile
	line	116
;keypad.c: 116: while(RD6==1);
	goto	l754
	
l755:	
	
l754:	
	btfsc	(70/8),(70)&7
	goto	u901
	goto	u900
u901:
	goto	l754
u900:
	goto	l1153
	
l756:	
	line	117
;keypad.c: 117: }
	goto	l1153
	line	118
	
l753:	
;keypad.c: 118: else if(RD7 == 1 && RD3 == 1 && RD1 ==0 && RD2 == 0 && RD0 == 0)
	btfss	(71/8),(71)&7
	goto	u911
	goto	u910
u911:
	goto	l1153
u910:
	
l1309:	
	btfss	(67/8),(67)&7
	goto	u921
	goto	u920
u921:
	goto	l1153
u920:
	
l1311:	
	btfsc	(65/8),(65)&7
	goto	u931
	goto	u930
u931:
	goto	l1153
u930:
	
l1313:	
	btfsc	(66/8),(66)&7
	goto	u941
	goto	u940
u941:
	goto	l1153
u940:
	
l1315:	
	btfsc	(64/8),(64)&7
	goto	u951
	goto	u950
u951:
	goto	l1153
u950:
	line	120
	
l1317:	
;keypad.c: 119: {
;keypad.c: 120: PORTC = 0x7A;
	movlw	(07Ah)
	movwf	(7)	;volatile
	line	121
;keypad.c: 121: while(RD7==1);
	goto	l759
	
l760:	
	
l759:	
	btfsc	(71/8),(71)&7
	goto	u961
	goto	u960
u961:
	goto	l759
u960:
	goto	l1153
	
l761:	
	goto	l1153
	line	122
	
l758:	
	goto	l1153
	line	123
	
l757:	
	goto	l1153
	
l752:	
	goto	l1153
	
l747:	
	goto	l1153
	
l762:	
	line	27
	goto	l1153
	
l763:	
	line	125
	
l764:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
