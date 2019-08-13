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
# 3 "C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
	dw 0xFFFE & 0xFFFB & 0xFFFF & 0xFFFF & 0xFF7F ;#
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_ADC_Read
	FNCALL	_main,___wmul
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_ADCON0
psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
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
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISB0
_TRISB0	set	1072
	file	"soil sensor.as"
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
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_ADC_Read
?_ADC_Read:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x0
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	2
	global	??_ADC_Read
??_ADC_Read:	; 0 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	ADC_Read@ADC_channel
ADC_Read@ADC_channel:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	3
	global	main@i
main@i:	; 2 bytes @ 0x9
	ds	2
	global	main@data
main@data:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_ADC_Read	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___wmul
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                17    17      0     300
;;                                              6 COMMON     7     7      0
;;                            _lcd_cmd
;;                           _ADC_Init
;;                           _ADC_Read
;;                             ___wmul
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      15
;;                                              0 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Read                                             5     3      2      15
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              1     1      0      15
;;                                              0 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4      60
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _ADC_Init
;;   _ADC_Read
;;   ___wmul
;;   _lcd_data
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
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
;;		line 18 in file "C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    9[COMMON] int 
;;  data            2   11[COMMON] unsigned int 
;;  e               2    0        int 
;;  d               2    0        int 
;;  c               2    0        int 
;;  b               2    0        int 
;;  a               2    0        int 
;; Return value:  Size  Location     Type
;;                  2  694[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;;		_ADC_Init
;;		_ADC_Read
;;		___wmul
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	20
	
l1934:	
;soil sensor.c: 20: TRISD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	21
;soil sensor.c: 21: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	22
	
l1936:	
;soil sensor.c: 22: TRISB0 = 1;
	bsf	(1072/8)^080h,(1072)&7
	line	24
	
l1938:	
;soil sensor.c: 24: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	25
	
l1940:	
;soil sensor.c: 25: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	26
	
l1942:	
;soil sensor.c: 26: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	27
	
l1944:	
;soil sensor.c: 27: lcd_cmd(0x0F);
	movlw	(0Fh)
	fcall	_lcd_cmd
	line	28
	
l1946:	
;soil sensor.c: 28: lcd_cmd(0X06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	29
	
l1948:	
;soil sensor.c: 29: lcd_cmd(0X80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	30
	
l1950:	
;soil sensor.c: 30: ADC_Init();
	fcall	_ADC_Init
	goto	l1952
	line	31
;soil sensor.c: 31: while(1)
	
l695:	
	line	34
	
l1952:	
;soil sensor.c: 32: {
;soil sensor.c: 33: int a,b,c,d,e;
;soil sensor.c: 34: unsigned int data=ADC_Read(0);
	movlw	(0)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	clrf	(main@data+1)
	addwf	(main@data+1)
	movf	(0+(?_ADC_Read)),w
	clrf	(main@data)
	addwf	(main@data)

	line	35
	
l1954:	
;soil sensor.c: 35: data = ((data*100)/(1024));
	movf	(main@data+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@data),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+?___wmul),w
	movwf	(??_main+0)+0
	movf	(1+?___wmul),w
	movwf	((??_main+0)+0+1)
	movlw	0Ah
u2205:
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u2205
	movf	0+(??_main+0)+0,w
	movwf	(main@data)
	movf	1+(??_main+0)+0,w
	movwf	(main@data+1)
	line	36
	
l1956:	
;soil sensor.c: 36: if(data == 0 )
	movf	((main@data+1)),w
	iorwf	((main@data)),w
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l1960
u2210:
	line	38
	
l1958:	
;soil sensor.c: 37: {
;soil sensor.c: 38: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	goto	l1960
	line	39
	
l696:	
	line	41
	
l1960:	
;soil sensor.c: 39: }
;soil sensor.c: 41: if(data > 1 && data <10)
	movlw	high(02h)
	subwf	(main@data+1),w
	movlw	low(02h)
	skipnz
	subwf	(main@data),w
	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l1966
u2220:
	
l1962:	
	movlw	high(0Ah)
	subwf	(main@data+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(main@data),w
	skipnc
	goto	u2231
	goto	u2230
u2231:
	goto	l1966
u2230:
	line	43
	
l1964:	
;soil sensor.c: 42: {
;soil sensor.c: 43: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	goto	l1966
	line	44
	
l697:	
	line	46
	
l1966:	
;soil sensor.c: 44: }
;soil sensor.c: 46: if(data > 10 && data < 20)
	movlw	high(0Bh)
	subwf	(main@data+1),w
	movlw	low(0Bh)
	skipnz
	subwf	(main@data),w
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l1972
u2240:
	
l1968:	
	movlw	high(014h)
	subwf	(main@data+1),w
	movlw	low(014h)
	skipnz
	subwf	(main@data),w
	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l1972
u2250:
	line	48
	
l1970:	
;soil sensor.c: 47: {
;soil sensor.c: 48: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	goto	l1972
	line	49
	
l698:	
	line	50
	
l1972:	
;soil sensor.c: 49: }
;soil sensor.c: 50: if(data > 20 && data < 30)
	movlw	high(015h)
	subwf	(main@data+1),w
	movlw	low(015h)
	skipnz
	subwf	(main@data),w
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l1978
u2260:
	
l1974:	
	movlw	high(01Eh)
	subwf	(main@data+1),w
	movlw	low(01Eh)
	skipnz
	subwf	(main@data),w
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l1978
u2270:
	line	52
	
l1976:	
;soil sensor.c: 51: {
;soil sensor.c: 52: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	goto	l1978
	line	53
	
l699:	
	line	55
	
l1978:	
;soil sensor.c: 53: }
;soil sensor.c: 55: if(data > 30 && data < 40)
	movlw	high(01Fh)
	subwf	(main@data+1),w
	movlw	low(01Fh)
	skipnz
	subwf	(main@data),w
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l1984
u2280:
	
l1980:	
	movlw	high(028h)
	subwf	(main@data+1),w
	movlw	low(028h)
	skipnz
	subwf	(main@data),w
	skipnc
	goto	u2291
	goto	u2290
u2291:
	goto	l1984
u2290:
	line	57
	
l1982:	
;soil sensor.c: 56: {
;soil sensor.c: 57: lcd_data('4');
	movlw	(034h)
	fcall	_lcd_data
	goto	l1984
	line	58
	
l700:	
	line	59
	
l1984:	
;soil sensor.c: 58: }
;soil sensor.c: 59: if(data > 50)
	movlw	high(033h)
	subwf	(main@data+1),w
	movlw	low(033h)
	skipnz
	subwf	(main@data),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l1988
u2300:
	line	61
	
l1986:	
;soil sensor.c: 60: {
;soil sensor.c: 61: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	goto	l1988
	line	62
	
l701:	
	line	63
	
l1988:	
;soil sensor.c: 62: }
;soil sensor.c: 63: for(int i=0;i<20;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1990:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(014h)
	subwf	(main@i),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l1994
u2310:
	goto	l1998
	
l1992:	
	goto	l1998
	line	64
	
l702:	
	line	65
	
l1994:	
;soil sensor.c: 64: {
;soil sensor.c: 65: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	decfsz	((??_main+0)+0+2),f
	goto	u2337
opt asmopt_on

	line	63
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1996:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2325
	movlw	low(014h)
	subwf	(main@i),w
u2325:

	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l1994
u2320:
	goto	l1998
	
l703:	
	line	67
	
l1998:	
;soil sensor.c: 66: }
;soil sensor.c: 67: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	goto	l1952
	line	68
	
l704:	
	line	31
	goto	l1952
	
l705:	
	line	70
	
l706:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_data
psect	text116,local,class=CODE,delta=2
global __ptext116
__ptext116:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 134 in file "C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
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
psect	text116
	file	"C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
	line	134
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	135
	
l1926:	
;soil sensor.c: 135: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	136
;soil sensor.c: 136: RC1 = 0;
	bcf	(57/8),(57)&7
	line	137
;soil sensor.c: 137: RC2 = 1;
	bsf	(58/8),(58)&7
	line	138
	
l1928:	
;soil sensor.c: 138: PORTD = data;
	movf	(lcd_data@data),w
	movwf	(8)	;volatile
	line	139
	
l1930:	
;soil sensor.c: 139: delay();
	fcall	_delay
	line	140
	
l1932:	
;soil sensor.c: 140: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	141
	
l735:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_ADC_Read
psect	text117,local,class=CODE,delta=2
global __ptext117
__ptext117:

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 81 in file "C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
;; Parameters:    Size  Location     Type
;;  ADC_channel     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ADC_channel     1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text117
	file	"C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
	line	81
	global	__size_of_ADC_Read
	__size_of_ADC_Read	equ	__end_of_ADC_Read-_ADC_Read
	
_ADC_Read:	
	opt	stack 7
; Regs used in _ADC_Read: [wreg+status,2+status,0+btemp+1]
;ADC_Read@ADC_channel stored from wreg
	movwf	(ADC_Read@ADC_channel)
	line	82
	
l1916:	
;soil sensor.c: 82: ADCON0 &= 0xC5;
	movlw	(0C5h)
	movwf	(??_ADC_Read+0)+0
	movf	(??_ADC_Read+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	83
;soil sensor.c: 83: ADCON0 |= ADC_channel<<3;
	movf	(ADC_Read@ADC_channel),w
	movwf	(??_ADC_Read+0)+0
	movlw	(03h)-1
u2185:
	clrc
	rlf	(??_ADC_Read+0)+0,f
	addlw	-1
	skipz
	goto	u2185
	clrc
	rlf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+1)+0
	movf	(??_ADC_Read+1)+0,w
	iorwf	(31),f	;volatile
	line	84
	
l1918:	
;soil sensor.c: 84: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_ADC_Read+0)+0+1),f
	movlw	251
movwf	((??_ADC_Read+0)+0),f
u2347:
	decfsz	((??_ADC_Read+0)+0),f
	goto	u2347
	decfsz	((??_ADC_Read+0)+0+1),f
	goto	u2347
	nop2
opt asmopt_on

	line	85
	
l1920:	
;soil sensor.c: 85: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	86
;soil sensor.c: 86: while(GO_nDONE);
	goto	l712
	
l713:	
	
l712:	
	btfsc	(250/8),(250)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l712
u2190:
	goto	l1922
	
l714:	
	line	87
	
l1922:	
;soil sensor.c: 87: return ((ADRESH<<8)+ADRESL);
	movf	(30),w	;volatile
	movwf	(??_ADC_Read+0)+0
	clrf	(??_ADC_Read+0)+0+1
	movf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+0)+1
	clrf	(??_ADC_Read+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_ADC_Read+0)+0,w
	movwf	(?_ADC_Read)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_ADC_Read+0)+0,w
	movwf	1+(?_ADC_Read)
	goto	l715
	
l1924:	
	line	88
	
l715:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
;; =============== function _ADC_Read ends ============

	signat	_ADC_Read,4218
	global	_lcd_cmd
psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 123 in file "C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
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
psect	text118
	file	"C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
	line	123
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	124
	
l1908:	
;soil sensor.c: 124: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	125
;soil sensor.c: 125: RC1 = 0;
	bcf	(57/8),(57)&7
	line	126
;soil sensor.c: 126: RC2 = 1;
	bsf	(58/8),(58)&7
	line	127
	
l1910:	
;soil sensor.c: 127: PORTD = cmd;
	movf	(lcd_cmd@cmd),w
	movwf	(8)	;volatile
	line	128
	
l1912:	
;soil sensor.c: 128: delay();
	fcall	_delay
	line	129
	
l1914:	
;soil sensor.c: 129: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	130
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	___wmul
psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text119
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l1148:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1150
	line	6
	
l744:	
	line	7
	
l1150:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u71
	goto	u70
u71:
	goto	l745
u70:
	line	8
	
l1152:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l745:	
	line	9
	movlw	01h
	
u85:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u85
	line	10
	
l1154:	
	movlw	01h
	
u95:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u95
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l1150
u100:
	goto	l1156
	
l746:	
	line	12
	
l1156:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l747
	
l1158:	
	line	13
	
l747:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_delay
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

;; *************** function _delay *****************
;; Defined at:
;;		line 92 in file "C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
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
psect	text120
	file	"C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
	line	92
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	93
	
l1118:	
;soil sensor.c: 93: TMR1CS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	94
;soil sensor.c: 94: T1CKPS0 = 1;
	bsf	(132/8),(132)&7
	line	95
;soil sensor.c: 95: T1CKPS1 = 1;
	bsf	(133/8),(133)&7
	line	96
	
l1120:	
;soil sensor.c: 96: TMR1H = 0X3C;
	movlw	(03Ch)
	movwf	(15)	;volatile
	line	97
;soil sensor.c: 97: TMR1L = 0XB0;
	movlw	(0B0h)
	movwf	(14)	;volatile
	line	98
	
l1122:	
;soil sensor.c: 98: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	99
;soil sensor.c: 99: while(TMR1IF==0);
	goto	l718
	
l719:	
	
l718:	
	btfss	(96/8),(96)&7
	goto	u11
	goto	u10
u11:
	goto	l718
u10:
	
l720:	
	line	100
;soil sensor.c: 100: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	101
;soil sensor.c: 101: TMR1ON= 1;
	bsf	(128/8),(128)&7
	line	102
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_ADC_Init
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 74 in file "C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
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
psect	text121
	file	"C:\Users\M_A_N_I\Desktop\Soil sensor\soil sensor.c"
	line	74
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 7
; Regs used in _ADC_Init: [wreg]
	line	75
	
l1116:	
;soil sensor.c: 75: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	76
;soil sensor.c: 76: ADCON1 = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	78
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
