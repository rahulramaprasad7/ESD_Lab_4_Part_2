;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module lcdCommands
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lookUpTable
	.globl _messages
	.globl _uiLines
	.globl _memset
	.globl _printf_tiny
	.globl _putchar
	.globl _getchar
	.globl _printf
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _goToXY_PARM_2
	.globl _readCharacter
	.globl _writeCharacter
	.globl _busyPoll
	.globl _lcdGeneral
	.globl _delay
	.globl _timerInit
	.globl _busyWait
	.globl _lcdInit
	.globl _lcdPutCh
	.globl _lcdClear
	.globl _goToAddr
	.globl _goToXY
	.globl _customCharacter
	.globl _readLCD
	.globl _putsLCD
	.globl _gets
	.globl _ramDump
	.globl _gamePacman
	.globl _makePacmanRight
	.globl _makePacmanLeft
	.globl _printBinary
	.globl _atoh
	.globl _printMenu
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_putsLCD_sloc0_1_0:
	.ds 2
_putsLCD_sloc1_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_lcdGeneral	=	0xf000
_busyPoll	=	0xf200
_writeCharacter	=	0xf100
_readCharacter	=	0xf300
_lcdPutCh_x_65536_76:
	.ds 1
_goToAddr_x_65536_79:
	.ds 1
_goToXY_PARM_2:
	.ds 1
_goToXY_x_65536_81:
	.ds 1
_customCharacter_x_65536_83:
	.ds 8
_customCharacter_temp8_196609_86	=	0xf000
_putsLCD_y_65536_90:
	.ds 3
_putsLCD_i_65536_91:
	.ds 2
_gets_s_65536_94:
	.ds 3
_gets_count_65536_95:
	.ds 2
_ramDump_i_65536_100:
	.ds 1
_gamePacman_i_65537_112:
	.ds 2
_gamePacman_count_65537_112:
	.ds 2
_printBinary_x_65536_125:
	.ds 2
_atoh_ap_65536_128:
	.ds 3
_atoh_p_65536_129:
	.ds 3
_atoh_lcase_65536_129:
	.ds 2
_atoh_n_65537_130:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated with name '_delay_i_65536_71'
;------------------------------------------------------------
;	lcdCommands.c:9: void delay()
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lcdCommands.c:12: for ( i = 0 ; i < 1000; i++);
	mov	r6,#0xe8
	mov	r7,#0x03
00104$:
	dec	r6
	cjne	r6,#0xff,00113$
	dec	r7
00113$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	lcdCommands.c:13: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timerInit'
;------------------------------------------------------------
;	lcdCommands.c:15: void timerInit()
;	-----------------------------------------
;	 function timerInit
;	-----------------------------------------
_timerInit:
;	lcdCommands.c:17: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	lcdCommands.c:18: TH0 = 0x4B;
	mov	_TH0,#0x4b
;	lcdCommands.c:19: TL0 = 0xFC;
	mov	_TL0,#0xfc
;	lcdCommands.c:20: TR0 = 1;           //turn ON Timer zero
;	assignBit
	setb	_TR0
;	lcdCommands.c:21: EA = 1;            //Enable Global Interrupt bit
;	assignBit
	setb	_EA
;	lcdCommands.c:22: ET0 = 1;           //Enable TImer0 Interrupt
;	assignBit
	setb	_ET0
;	lcdCommands.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'busyWait'
;------------------------------------------------------------
;	lcdCommands.c:25: void busyWait()
;	-----------------------------------------
;	 function busyWait
;	-----------------------------------------
_busyWait:
;	lcdCommands.c:27: while (busyPoll & 0x80);
00101$:
	mov	dptr,#_busyPoll
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jb	acc.7,00101$
;	lcdCommands.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdInit'
;------------------------------------------------------------
;	lcdCommands.c:30: void lcdInit()
;	-----------------------------------------
;	 function lcdInit
;	-----------------------------------------
_lcdInit:
;	lcdCommands.c:32: delay();
	lcall	_delay
;	lcdCommands.c:33: lcdGeneral = 0x30;
	mov	dptr,#_lcdGeneral
	mov	a,#0x30
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:34: delay();
	lcall	_delay
;	lcdCommands.c:35: lcdGeneral = 0x30;
	mov	dptr,#_lcdGeneral
	mov	a,#0x30
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:36: delay();
	lcall	_delay
;	lcdCommands.c:37: lcdGeneral = 0x30;
	mov	dptr,#_lcdGeneral
	mov	a,#0x30
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:38: busyWait();
	lcall	_busyWait
;	lcdCommands.c:39: lcdGeneral = 0x38;
	mov	dptr,#_lcdGeneral
	mov	a,#0x38
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:40: busyWait();
	lcall	_busyWait
;	lcdCommands.c:41: lcdGeneral = 0x08;
	mov	dptr,#_lcdGeneral
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:42: busyWait();
	lcall	_busyWait
;	lcdCommands.c:43: lcdGeneral = 0x0C;
	mov	dptr,#_lcdGeneral
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:44: busyWait();
	lcall	_busyWait
;	lcdCommands.c:45: lcdGeneral = 0x06;
	mov	dptr,#_lcdGeneral
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:46: busyWait();
	lcall	_busyWait
;	lcdCommands.c:47: lcdGeneral = 0x01;
	mov	dptr,#_lcdGeneral
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdPutCh'
;------------------------------------------------------------
;x                         Allocated with name '_lcdPutCh_x_65536_76'
;------------------------------------------------------------
;	lcdCommands.c:50: void lcdPutCh(uint8_t x)
;	-----------------------------------------
;	 function lcdPutCh
;	-----------------------------------------
_lcdPutCh:
	mov	a,dpl
	mov	dptr,#_lcdPutCh_x_65536_76
	movx	@dptr,a
;	lcdCommands.c:52: busyWait();
	lcall	_busyWait
;	lcdCommands.c:53: writeCharacter = x;
	mov	dptr,#_lcdPutCh_x_65536_76
	movx	a,@dptr
	mov	dptr,#_writeCharacter
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdClear'
;------------------------------------------------------------
;	lcdCommands.c:56: void lcdClear()
;	-----------------------------------------
;	 function lcdClear
;	-----------------------------------------
_lcdClear:
;	lcdCommands.c:58: busyWait();
	lcall	_busyWait
;	lcdCommands.c:59: lcdGeneral = 0x01;
	mov	dptr,#_lcdGeneral
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'goToAddr'
;------------------------------------------------------------
;x                         Allocated with name '_goToAddr_x_65536_79'
;------------------------------------------------------------
;	lcdCommands.c:62: void goToAddr(uint8_t x)
;	-----------------------------------------
;	 function goToAddr
;	-----------------------------------------
_goToAddr:
	mov	a,dpl
	mov	dptr,#_goToAddr_x_65536_79
	movx	@dptr,a
;	lcdCommands.c:64: busyWait();
	lcall	_busyWait
;	lcdCommands.c:65: lcdGeneral = 0x80 | x;
	mov	dptr,#_goToAddr_x_65536_79
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_lcdGeneral
	mov	a,#0x80
	orl	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'goToXY'
;------------------------------------------------------------
;y                         Allocated with name '_goToXY_PARM_2'
;x                         Allocated with name '_goToXY_x_65536_81'
;------------------------------------------------------------
;	lcdCommands.c:68: void goToXY(uint8_t x, uint8_t y)
;	-----------------------------------------
;	 function goToXY
;	-----------------------------------------
_goToXY:
	mov	a,dpl
	mov	dptr,#_goToXY_x_65536_81
	movx	@dptr,a
;	lcdCommands.c:70: busyWait();
	lcall	_busyWait
;	lcdCommands.c:71: goToAddr(lookUpTable[x][y]);
	mov	dptr,#_goToXY_x_65536_81
	movx	a,@dptr
	mov	b,#0x10
	mul	ab
	add	a,#_lookUpTable
	mov	r6,a
	mov	a,#(_lookUpTable >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_goToXY_PARM_2
	movx	a,@dptr
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
;	lcdCommands.c:72: }
	ljmp	_goToAddr
;------------------------------------------------------------
;Allocation info for local variables in function 'customCharacter'
;------------------------------------------------------------
;temp                      Allocated with name '_customCharacter_temp_65536_83'
;i                         Allocated with name '_customCharacter_i_65536_83'
;x                         Allocated with name '_customCharacter_x_65536_83'
;temp8                     Allocated with name '_customCharacter_temp8_196609_86'
;------------------------------------------------------------
;	lcdCommands.c:74: void customCharacter()
;	-----------------------------------------
;	 function customCharacter
;	-----------------------------------------
_customCharacter:
;	lcdCommands.c:79: for(i = 0; i < 8; i++)
	mov	r7,#0x00
00106$:
;	lcdCommands.c:81: busyWait();
	push	ar7
	lcall	_busyWait
	pop	ar7
;	lcdCommands.c:83: temp8 = 0x40 | (0x28 + i);
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	orl	ar5,#0x40
	mov	dptr,#_customCharacter_temp8_196609_86
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:84: printf("%x %x\n\r",temp8, (0x40 | (0x28 + i)));
	mov	dptr,#_customCharacter_temp8_196609_86
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar5
	push	ar6
	push	ar3
	push	ar4
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	lcdCommands.c:85: busyWait();
	lcall	_busyWait
	pop	ar7
;	lcdCommands.c:86: do{
	mov	ar6,r7
00102$:
;	lcdCommands.c:87: printf_tiny("\n\rEnter value for Row %d\n\r", (i+1));
	mov	ar4,r6
	mov	r5,#0x00
	inc	r4
	cjne	r4,#0x00,00127$
	inc	r5
00127$:
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	lcdCommands.c:88: gets(x);
	mov	dptr,#_customCharacter_x_65536_83
	mov	b,#0x00
	lcall	_gets
;	lcdCommands.c:90: temp = atoh(x);
	mov	dptr,#_customCharacter_x_65536_83
	mov	b,#0x00
	lcall	_atoh
	mov	r5,dpl
	pop	ar6
;	lcdCommands.c:91: }while(temp < 0 || temp > 0x1F);
	mov	a,r5
	add	a,#0xff - 0x1f
	jc	00102$
;	lcdCommands.c:93: writeCharacter = temp;
	mov	dptr,#_writeCharacter
	mov	a,r5
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:94: busyWait();
	push	ar6
	lcall	_busyWait
;	lcdCommands.c:95: memset(x,'\0',8 * sizeof(char));
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_customCharacter_x_65536_83
	mov	b,#0x00
	lcall	_memset
	pop	ar6
;	lcdCommands.c:79: for(i = 0; i < 8; i++)
	mov	a,r6
	inc	a
	mov	r7,a
	cjne	r7,#0x08,00129$
00129$:
	jnc	00130$
	ljmp	00106$
00130$:
;	lcdCommands.c:97: lcdGeneral = 0x80 | 0x11;
	mov	dptr,#_lcdGeneral
	mov	a,#0x91
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:98: busyWait();
	lcall	_busyWait
;	lcdCommands.c:99: writeCharacter = 0x05;
	mov	dptr,#_writeCharacter
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readLCD'
;------------------------------------------------------------
;temp1                     Allocated with name '_readLCD_temp1_65537_89'
;------------------------------------------------------------
;	lcdCommands.c:102: uint8_t readLCD()
;	-----------------------------------------
;	 function readLCD
;	-----------------------------------------
_readLCD:
;	lcdCommands.c:104: busyWait();
	lcall	_busyWait
;	lcdCommands.c:105: uint8_t temp1 = readCharacter;
	mov	dptr,#_readCharacter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	lcdCommands.c:106: return temp1;
	mov	dpl,r6
;	lcdCommands.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putsLCD'
;------------------------------------------------------------
;sloc0                     Allocated with name '_putsLCD_sloc0_1_0'
;sloc1                     Allocated with name '_putsLCD_sloc1_1_0'
;y                         Allocated with name '_putsLCD_y_65536_90'
;i                         Allocated with name '_putsLCD_i_65536_91'
;j                         Allocated with name '_putsLCD_j_65536_91'
;k                         Allocated with name '_putsLCD_k_65536_91'
;------------------------------------------------------------
;	lcdCommands.c:109: void putsLCD(char* y)
;	-----------------------------------------
;	 function putsLCD
;	-----------------------------------------
_putsLCD:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_putsLCD_y_65536_90
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:111: int i = 0,j = 0, k =0;
	mov	dptr,#_putsLCD_i_65536_91
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:112: while(y[i + (j * 16)] != '\0')
	mov	dptr,#_putsLCD_y_65536_90
	movx	a,@dptr
	mov	_putsLCD_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_putsLCD_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_putsLCD_sloc1_1_0 + 2),a
	mov	r2,_putsLCD_sloc1_1_0
	mov	r3,(_putsLCD_sloc1_1_0 + 1)
	mov	r4,(_putsLCD_sloc1_1_0 + 2)
	mov	r0,#0x00
	mov	r1,#0x00
00103$:
	mov	ar6,r0
	mov	a,r1
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	dptr,#_putsLCD_i_65536_91
	movx	a,@dptr
	mov	_putsLCD_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_putsLCD_sloc0_1_0 + 1),a
	mov	a,r6
	add	a,_putsLCD_sloc0_1_0
	mov	r6,a
	mov	a,r7
	addc	a,(_putsLCD_sloc0_1_0 + 1)
	mov	r7,a
	mov	a,r6
	add	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
	mov	ar5,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	jnz	00121$
	ret
00121$:
;	lcdCommands.c:114: busyWait();
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_busyWait
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	lcdCommands.c:115: if( i > 15)
	clr	c
	mov	a,#0x0f
	subb	a,_putsLCD_sloc0_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_putsLCD_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	lcdCommands.c:117: j++;
	inc	r0
	cjne	r0,#0x00,00123$
	inc	r1
00123$:
;	lcdCommands.c:118: i = 0;
	mov	dptr,#_putsLCD_i_65536_91
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00102$:
;	lcdCommands.c:121: goToAddr(lookUpTable[j][i]);
	push	ar2
	push	ar3
	push	ar4
	mov	ar3,r0
	mov	a,r1
	swap	a
	anl	a,#0xf0
	xch	a,r3
	swap	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xf0
	xch	a,r3
	xrl	a,r3
	mov	r4,a
	mov	a,r3
	add	a,#_lookUpTable
	mov	r2,a
	mov	a,r4
	addc	a,#(_lookUpTable >> 8)
	mov	r7,a
	mov	dptr,#_putsLCD_i_65536_91
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,r2
	mov	dpl,a
	mov	a,r6
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_goToAddr
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	lcdCommands.c:122: lcdPutCh(y[i + (j * 16)]);
	mov	a,r3
	add	a,r5
	mov	r3,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
	mov	a,r3
	add	a,_putsLCD_sloc1_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_putsLCD_sloc1_1_0 + 1)
	mov	r4,a
	mov	r7,(_putsLCD_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_lcdPutCh
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	lcdCommands.c:123: i++;
	mov	dptr,#_putsLCD_i_65536_91
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	pop	ar4
	pop	ar3
	pop	ar2
;	lcdCommands.c:125: }
	ljmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated with name '_gets_s_65536_94'
;c                         Allocated with name '_gets_c_65536_95'
;count                     Allocated with name '_gets_count_65536_95'
;------------------------------------------------------------
;	lcdCommands.c:127: char *gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
_gets:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_gets_s_65536_94
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:130: unsigned int count = 0;
	mov	dptr,#_gets_count_65536_95
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:132: while (1)
00111$:
;	lcdCommands.c:134: c = getchar ();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	lcdCommands.c:135: switch(c)
	cjne	r6,#0x08,00139$
	sjmp	00101$
00139$:
	cjne	r6,#0x0a,00140$
	sjmp	00105$
00140$:
	cjne	r6,#0x0d,00141$
	sjmp	00105$
00141$:
	ljmp	00106$
;	lcdCommands.c:137: case '\b': /* backspace */
00101$:
;	lcdCommands.c:138: if (count)
	mov	dptr,#_gets_count_65536_95
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_gets_count_65536_95
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00142$
	ljmp	00107$
00142$:
;	lcdCommands.c:140: putchar ('\b');
	mov	dptr,#0x0008
	push	ar7
	push	ar5
	lcall	_putchar
;	lcdCommands.c:141: putchar (' ');
	mov	dptr,#0x0020
	lcall	_putchar
;	lcdCommands.c:142: putchar ('\b');
	mov	dptr,#0x0008
	lcall	_putchar
	pop	ar5
	pop	ar7
;	lcdCommands.c:143: --s;
	mov	dptr,#_gets_s_65536_94
	movx	a,@dptr
	add	a,#0xff
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_gets_s_65536_94
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:144: --count;
	dec	r5
	cjne	r5,#0xff,00143$
	dec	r7
00143$:
	mov	dptr,#_gets_count_65536_95
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:146: break;
;	lcdCommands.c:149: case '\r': /* CR or LF */
	sjmp	00107$
00105$:
;	lcdCommands.c:150: putchar ('\r');
	mov	dptr,#0x000d
	lcall	_putchar
;	lcdCommands.c:151: putchar ('\n');
	mov	dptr,#0x000a
	lcall	_putchar
;	lcdCommands.c:152: *s = 0;
	mov	dptr,#_gets_s_65536_94
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	clr	a
	lcall	__gptrput
;	lcdCommands.c:153: return s;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
;	lcdCommands.c:155: default:
	ret
00106$:
;	lcdCommands.c:156: *s++ = c;
	mov	dptr,#_gets_s_65536_94
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
	mov	dptr,#_gets_s_65536_94
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:157: ++count;
	mov	dptr,#_gets_count_65536_95
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	lcdCommands.c:158: putchar (c);
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	lcdCommands.c:160: }
00107$:
;	lcdCommands.c:161: if (count == 48)
	mov	dptr,#_gets_count_65536_95
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x30,00144$
	cjne	r7,#0x00,00144$
	sjmp	00145$
00144$:
	ljmp	00111$
00145$:
;	lcdCommands.c:163: printf("\n\rPlease Input a maximum of 48 characters\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcdCommands.c:164: break;
;	lcdCommands.c:167: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ramDump'
;------------------------------------------------------------
;i                         Allocated with name '_ramDump_i_65536_100'
;j                         Allocated with name '_ramDump_j_65536_100'
;x                         Allocated with name '_ramDump_x_196609_103'
;x                         Allocated with name '_ramDump_x_196609_108'
;------------------------------------------------------------
;	lcdCommands.c:169: void ramDump()
;	-----------------------------------------
;	 function ramDump
;	-----------------------------------------
_ramDump:
;	lcdCommands.c:173: printf_tiny("\n\rDDRAM Contents\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcdCommands.c:174: for (i = 0; i < 128; i += 16)      //Print 64 ASCII characters in each line
	mov	dptr,#_ramDump_i_65536_100
	clr	a
	movx	@dptr,a
00109$:
;	lcdCommands.c:176: lcdGeneral = 0x80 | i;
	mov	dptr,#_ramDump_i_65536_100
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_lcdGeneral
	mov	a,#0x80
	orl	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:177: uint8_t x = readLCD();
	push	ar7
	push	ar6
	push	ar5
	lcall	_readLCD
	mov	r4,dpl
	pop	ar5
	pop	ar6
;	lcdCommands.c:178: printf("%2x: ",i);
	push	ar6
	push	ar5
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	lcdCommands.c:179: for (j = i; j < (i+16) && j < 128; j++)    //Print the contents of buffer in ASCII
00107$:
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,#0x10
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,r5
	subb	a,r2
	mov	a,r6
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	clr	c
	mov	a,r5
	subb	a,#0x80
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	lcdCommands.c:181: printf("%2x ", x);
	mov	ar2,r4
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	lcdCommands.c:179: for (j = i; j < (i+16) && j < 128; j++)    //Print the contents of buffer in ASCII
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
	sjmp	00107$
00101$:
;	lcdCommands.c:183: printf_tiny("\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcdCommands.c:174: for (i = 0; i < 128; i += 16)      //Print 64 ASCII characters in each line
	mov	dptr,#_ramDump_i_65536_100
	movx	a,@dptr
	add	a,#0x10
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00160$
00160$:
	jnc	00161$
	ljmp	00109$
00161$:
;	lcdCommands.c:185: printf_tiny("\n\rCGRAM Contents\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcdCommands.c:186: for (i = 0; i < 64; i += 16)      //Print 64 ASCII characters in each line
	mov	dptr,#_ramDump_i_65536_100
	clr	a
	movx	@dptr,a
00115$:
;	lcdCommands.c:188: lcdGeneral = 0x40 | i;
	mov	dptr,#_ramDump_i_65536_100
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_lcdGeneral
	mov	a,#0x40
	orl	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:189: uint8_t x = readLCD();
	push	ar7
	push	ar6
	push	ar5
	lcall	_readLCD
	mov	r4,dpl
	pop	ar5
	pop	ar6
;	lcdCommands.c:190: printf("%2x: ",i);
	push	ar6
	push	ar5
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	lcdCommands.c:191: for (j = i; j < (i+16) && j < 64; j++)    //Print the contents of buffer in ASCII
00113$:
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,#0x10
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,r5
	subb	a,r2
	mov	a,r6
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
	clr	c
	mov	a,r5
	subb	a,#0x40
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	lcdCommands.c:193: printf("%2x ", x);
	mov	ar2,r4
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	lcdCommands.c:191: for (j = i; j < (i+16) && j < 64; j++)    //Print the contents of buffer in ASCII
	inc	r5
	cjne	r5,#0x00,00113$
	inc	r6
	sjmp	00113$
00103$:
;	lcdCommands.c:195: printf_tiny("\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcdCommands.c:186: for (i = 0; i < 64; i += 16)      //Print 64 ASCII characters in each line
	mov	dptr,#_ramDump_i_65536_100
	movx	a,@dptr
	add	a,#0x10
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x40,00165$
00165$:
	jnc	00166$
	ljmp	00115$
00166$:
;	lcdCommands.c:197: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gamePacman'
;------------------------------------------------------------
;ch                        Allocated with name '_gamePacman_ch_65537_112'
;i                         Allocated with name '_gamePacman_i_65537_112'
;count                     Allocated with name '_gamePacman_count_65537_112'
;checkEnter                Allocated with name '_gamePacman_checkEnter_196610_116'
;checkEnter1               Allocated with name '_gamePacman_checkEnter1_196610_120'
;------------------------------------------------------------
;	lcdCommands.c:199: void gamePacman()
;	-----------------------------------------
;	 function gamePacman
;	-----------------------------------------
_gamePacman:
;	lcdCommands.c:201: lcdClear();
	lcall	_lcdClear
;	lcdCommands.c:203: int i = 1;
	mov	dptr,#_gamePacman_i_65537_112
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:204: int count = 0;
	mov	dptr,#_gamePacman_count_65537_112
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:205: makePacmanRight();
	lcall	_makePacmanRight
;	lcdCommands.c:206: makePacmanLeft();
	lcall	_makePacmanLeft
;	lcdCommands.c:207: goToAddr(lookUpTable[0][4]);
	mov	dptr,#(_lookUpTable + 0x0004)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:208: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:209: goToAddr(lookUpTable[0][5]);
	mov	dptr,#(_lookUpTable + 0x0005)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:210: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:211: goToAddr(lookUpTable[0][8]);
	mov	dptr,#(_lookUpTable + 0x0008)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:212: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:213: goToAddr(lookUpTable[0][9]);
	mov	dptr,#(_lookUpTable + 0x0009)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:214: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:215: goToAddr(lookUpTable[0][12]);
	mov	dptr,#(_lookUpTable + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:216: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:217: goToAddr(lookUpTable[0][13]);
	mov	dptr,#(_lookUpTable + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:218: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:219: goToAddr(lookUpTable[0][14]);
	mov	dptr,#(_lookUpTable + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:220: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:221: goToAddr(lookUpTable[1][1]);
	mov	dptr,#(_lookUpTable + 0x0011)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:222: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:223: goToAddr(lookUpTable[1][2]);
	mov	dptr,#(_lookUpTable + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:224: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:225: goToAddr(lookUpTable[1][3]);
	mov	dptr,#(_lookUpTable + 0x0013)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:226: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:227: goToAddr(lookUpTable[1][12]);
	mov	dptr,#(_lookUpTable + 0x001c)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:228: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:229: goToAddr(lookUpTable[1][13]);
	mov	dptr,#(_lookUpTable + 0x001d)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:230: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:231: printf_tiny("\n\rEnter w to go up, s to go down, a to go left and d to go right and q to quit\n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcdCommands.c:232: do{
00115$:
;	lcdCommands.c:233: if(count == 12)
	mov	dptr,#_gamePacman_count_65537_112
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x0c,00102$
	cjne	r7,#0x00,00102$
;	lcdCommands.c:235: lcdClear();
	lcall	_lcdClear
;	lcdCommands.c:236: putsLCD("GAME OVER! PRESS p to restart");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_putsLCD
;	lcdCommands.c:237: printMenu();
;	lcdCommands.c:238: break;
	ljmp	_printMenu
00102$:
;	lcdCommands.c:240: ch = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	lcdCommands.c:241: if(ch == 'd')
	cjne	r4,#0x64,00154$
	sjmp	00155$
00154$:
	ljmp	00108$
00155$:
;	lcdCommands.c:243: goToAddr(lookUpTable[0][i-1]);
	mov	dptr,#_gamePacman_i_65537_112
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r3
	mov	a,r2
	dec	a
	mov	dptr,#_lookUpTable
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_goToAddr
;	lcdCommands.c:244: busyWait();
	lcall	_busyWait
;	lcdCommands.c:245: lcdPutCh(' ');
	mov	dpl,#0x20
	lcall	_lcdPutCh
;	lcdCommands.c:246: busyWait();
	lcall	_busyWait
	pop	ar3
	pop	ar4
	pop	ar5
;	lcdCommands.c:247: goToAddr(lookUpTable[0][i]);
	mov	a,r3
	add	a,#_lookUpTable
	mov	dpl,a
	mov	a,r5
	addc	a,#(_lookUpTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar4
	lcall	_goToAddr
;	lcdCommands.c:248: busyWait();
	lcall	_busyWait
;	lcdCommands.c:249: char checkEnter = readLCD();
	lcall	_readLCD
	mov	r5,dpl
	pop	ar4
	pop	ar6
	pop	ar7
;	lcdCommands.c:250: if(checkEnter == '*')
	cjne	r5,#0x2a,00104$
;	lcdCommands.c:252: count++;
	mov	dptr,#_gamePacman_count_65537_112
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:253: putchar(7);
	mov	dptr,#0x0007
	push	ar4
	lcall	_putchar
	pop	ar4
00104$:
;	lcdCommands.c:255: busyWait();
	push	ar4
	lcall	_busyWait
	pop	ar4
;	lcdCommands.c:256: lcdGeneral = 0x80 | (lookUpTable[0][i]);
	mov	dptr,#_gamePacman_i_65537_112
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_lookUpTable
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lookUpTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#_lcdGeneral
	mov	a,#0x80
	orl	a,r5
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:257: busyWait();
	push	ar7
	push	ar6
	push	ar4
	lcall	_busyWait
;	lcdCommands.c:258: writeCharacter = 0x00;
	mov	dptr,#_writeCharacter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:259: busyWait();
	lcall	_busyWait
	pop	ar4
	pop	ar6
	pop	ar7
;	lcdCommands.c:260: if(i >= 47)
	clr	c
	mov	a,r6
	subb	a,#0x2f
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
;	lcdCommands.c:262: goToAddr(lookUpTable[2][15]);
	mov	dptr,#(_lookUpTable + 0x002f)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar4
	lcall	_goToAddr
;	lcdCommands.c:263: busyWait();
	lcall	_busyWait
;	lcdCommands.c:264: lcdPutCh(' ');
	mov	dpl,#0x20
	lcall	_lcdPutCh
;	lcdCommands.c:265: busyWait();
	lcall	_busyWait
	pop	ar4
;	lcdCommands.c:266: i = 0;
	mov	dptr,#_gamePacman_i_65537_112
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00106$:
;	lcdCommands.c:268: i++;
	mov	dptr,#_gamePacman_i_65537_112
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00108$:
;	lcdCommands.c:270: i--;
	mov	dptr,#_gamePacman_i_65537_112
	movx	a,@dptr
	add	a,#0xff
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_gamePacman_i_65537_112
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:272: if(ch == 'a')
	cjne	r4,#0x61,00159$
	sjmp	00160$
00159$:
	ljmp	00114$
00160$:
;	lcdCommands.c:274: goToAddr(lookUpTable[0][i+1]);
	mov	dptr,#_gamePacman_i_65537_112
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	a,r5
	inc	a
	mov	dptr,#_lookUpTable
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar4
	lcall	_goToAddr
;	lcdCommands.c:275: busyWait();
	lcall	_busyWait
;	lcdCommands.c:276: lcdPutCh(' ');
	mov	dpl,#0x20
	lcall	_lcdPutCh
;	lcdCommands.c:277: busyWait();
	lcall	_busyWait
	pop	ar4
	pop	ar6
	pop	ar7
;	lcdCommands.c:278: goToAddr(lookUpTable[0][i]);
	mov	a,r6
	add	a,#_lookUpTable
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lookUpTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar4
	lcall	_goToAddr
;	lcdCommands.c:279: busyWait();
	lcall	_busyWait
;	lcdCommands.c:280: char checkEnter1 = readLCD();
	lcall	_readLCD
	mov	r7,dpl
	pop	ar4
;	lcdCommands.c:281: if(checkEnter1 == '*')
	cjne	r7,#0x2a,00110$
;	lcdCommands.c:283: count++;
	mov	dptr,#_gamePacman_count_65537_112
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	lcdCommands.c:284: putchar(7);
	mov	dptr,#0x0007
	push	ar4
	lcall	_putchar
	pop	ar4
00110$:
;	lcdCommands.c:286: busyWait();
	push	ar4
	lcall	_busyWait
	pop	ar4
;	lcdCommands.c:287: lcdGeneral = 0x80 | (lookUpTable[0][i]);
	mov	dptr,#_gamePacman_i_65537_112
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_lookUpTable
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lookUpTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#_lcdGeneral
	mov	a,#0x80
	orl	a,r5
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:288: busyWait();
	push	ar7
	push	ar6
	push	ar4
	lcall	_busyWait
;	lcdCommands.c:289: writeCharacter = 0x03;
	mov	dptr,#_writeCharacter
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:290: busyWait();
	lcall	_busyWait
	pop	ar4
	pop	ar6
	pop	ar7
;	lcdCommands.c:291: if( i <= 0)
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00112$
;	lcdCommands.c:293: goToAddr(lookUpTable[0][0]);
	mov	dptr,#_lookUpTable
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar4
	lcall	_goToAddr
;	lcdCommands.c:294: busyWait();
	lcall	_busyWait
;	lcdCommands.c:295: lcdPutCh(' ');
	mov	dpl,#0x20
	lcall	_lcdPutCh
;	lcdCommands.c:296: busyWait();
	lcall	_busyWait
	pop	ar4
;	lcdCommands.c:297: i = 47;
	mov	dptr,#_gamePacman_i_65537_112
	mov	a,#0x2f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00112$:
;	lcdCommands.c:299: i--;
	mov	dptr,#_gamePacman_i_65537_112
	movx	a,@dptr
	add	a,#0xff
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_gamePacman_i_65537_112
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00114$:
;	lcdCommands.c:301: i++;
	mov	dptr,#_gamePacman_i_65537_112
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	lcdCommands.c:302: }while(ch != 'q');
	cjne	r4,#0x71,00164$
	ret
00164$:
	ljmp	00115$
;	lcdCommands.c:303: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makePacmanRight'
;------------------------------------------------------------
;	lcdCommands.c:305: void makePacmanRight()
;	-----------------------------------------
;	 function makePacmanRight
;	-----------------------------------------
_makePacmanRight:
;	lcdCommands.c:307: busyWait();
	lcall	_busyWait
;	lcdCommands.c:308: lcdGeneral = 0x40 | 0x00;
	mov	dptr,#_lcdGeneral
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:309: busyWait();
	lcall	_busyWait
;	lcdCommands.c:310: writeCharacter = 0x06;
	mov	dptr,#_writeCharacter
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:311: busyWait();
	lcall	_busyWait
;	lcdCommands.c:312: lcdGeneral = 0x40 | 0x01;
	mov	dptr,#_lcdGeneral
	mov	a,#0x41
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:313: busyWait();
	lcall	_busyWait
;	lcdCommands.c:314: writeCharacter = 0x09;
	mov	dptr,#_writeCharacter
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:315: busyWait();
	lcall	_busyWait
;	lcdCommands.c:316: lcdGeneral = 0x40 | 0x02;
	mov	dptr,#_lcdGeneral
	mov	a,#0x42
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:317: busyWait();
	lcall	_busyWait
;	lcdCommands.c:318: writeCharacter = 0x12;
	mov	dptr,#_writeCharacter
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:319: busyWait();
	lcall	_busyWait
;	lcdCommands.c:320: lcdGeneral = 0x40 | 0x03;
	mov	dptr,#_lcdGeneral
	mov	a,#0x43
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:321: busyWait();
	lcall	_busyWait
;	lcdCommands.c:322: writeCharacter = 0x14;
	mov	dptr,#_writeCharacter
	mov	a,#0x14
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:323: busyWait();
	lcall	_busyWait
;	lcdCommands.c:324: lcdGeneral = 0x40 | 0x04;
	mov	dptr,#_lcdGeneral
	mov	a,#0x44
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:325: busyWait();
	lcall	_busyWait
;	lcdCommands.c:326: writeCharacter = 0x14;
	mov	dptr,#_writeCharacter
	mov	a,#0x14
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:327: busyWait();
	lcall	_busyWait
;	lcdCommands.c:328: lcdGeneral = 0x40 | 0x05;
	mov	dptr,#_lcdGeneral
	mov	a,#0x45
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:329: busyWait();
	lcall	_busyWait
;	lcdCommands.c:330: writeCharacter = 0x12;
	mov	dptr,#_writeCharacter
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:331: busyWait();
	lcall	_busyWait
;	lcdCommands.c:332: lcdGeneral = 0x40 | 0x06;
	mov	dptr,#_lcdGeneral
	mov	a,#0x46
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:333: busyWait();
	lcall	_busyWait
;	lcdCommands.c:334: writeCharacter = 0x09;
	mov	dptr,#_writeCharacter
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:335: busyWait();
	lcall	_busyWait
;	lcdCommands.c:336: lcdGeneral = 0x40 | 0x07;
	mov	dptr,#_lcdGeneral
	mov	a,#0x47
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:337: busyWait();
	lcall	_busyWait
;	lcdCommands.c:338: writeCharacter = 0x06;
	mov	dptr,#_writeCharacter
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:339: busyWait();
	lcall	_busyWait
;	lcdCommands.c:340: goToXY(3,1);
	mov	dptr,#_goToXY_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_goToXY
;	lcdCommands.c:341: busyWait();
	lcall	_busyWait
;	lcdCommands.c:342: lcdGeneral = 0x80 | 0x00;
	mov	dptr,#_lcdGeneral
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:343: busyWait();
	lcall	_busyWait
;	lcdCommands.c:344: writeCharacter = 0x00;
	mov	dptr,#_writeCharacter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:345: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makePacmanLeft'
;------------------------------------------------------------
;	lcdCommands.c:346: void makePacmanLeft()
;	-----------------------------------------
;	 function makePacmanLeft
;	-----------------------------------------
_makePacmanLeft:
;	lcdCommands.c:348: busyWait();
	lcall	_busyWait
;	lcdCommands.c:349: lcdGeneral = 0x40 | 0x18;
	mov	dptr,#_lcdGeneral
	mov	a,#0x58
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:350: busyWait();
	lcall	_busyWait
;	lcdCommands.c:351: writeCharacter = 0x0C;
	mov	dptr,#_writeCharacter
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:352: busyWait();
	lcall	_busyWait
;	lcdCommands.c:353: lcdGeneral = 0x40 | 0x19;
	mov	dptr,#_lcdGeneral
	mov	a,#0x59
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:354: busyWait();
	lcall	_busyWait
;	lcdCommands.c:355: writeCharacter = 0x12;
	mov	dptr,#_writeCharacter
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:356: busyWait();
	lcall	_busyWait
;	lcdCommands.c:357: lcdGeneral = 0x40 | 0x1A;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:358: busyWait();
	lcall	_busyWait
;	lcdCommands.c:359: writeCharacter = 0x09;
	mov	dptr,#_writeCharacter
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:360: busyWait();
	lcall	_busyWait
;	lcdCommands.c:361: lcdGeneral = 0x40 | 0x1B;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:362: busyWait();
	lcall	_busyWait
;	lcdCommands.c:363: writeCharacter = 0x05;
	mov	dptr,#_writeCharacter
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:364: busyWait();
	lcall	_busyWait
;	lcdCommands.c:365: lcdGeneral = 0x40 | 0x1C;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:366: busyWait();
	lcall	_busyWait
;	lcdCommands.c:367: writeCharacter = 0x05;
	mov	dptr,#_writeCharacter
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:368: busyWait();
	lcall	_busyWait
;	lcdCommands.c:369: lcdGeneral = 0x40 | 0x1D;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5d
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:370: busyWait();
	lcall	_busyWait
;	lcdCommands.c:371: writeCharacter = 0x09;
	mov	dptr,#_writeCharacter
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:372: busyWait();
	lcall	_busyWait
;	lcdCommands.c:373: lcdGeneral = 0x40 | 0x1E;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5e
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:374: busyWait();
	lcall	_busyWait
;	lcdCommands.c:375: writeCharacter = 0x12;
	mov	dptr,#_writeCharacter
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:376: busyWait();
	lcall	_busyWait
;	lcdCommands.c:377: lcdGeneral = 0x40 | 0x1F;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:378: busyWait();
	lcall	_busyWait
;	lcdCommands.c:379: writeCharacter = 0x0C;
	mov	dptr,#_writeCharacter
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:380: busyWait();
;	lcdCommands.c:384: }
	ljmp	_busyWait
;------------------------------------------------------------
;Allocation info for local variables in function 'printBinary'
;------------------------------------------------------------
;x                         Allocated with name '_printBinary_x_65536_125'
;temp2                     Allocated with name '_printBinary_temp2_65536_126'
;------------------------------------------------------------
;	lcdCommands.c:386: void printBinary(int x)
;	-----------------------------------------
;	 function printBinary
;	-----------------------------------------
_printBinary:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_printBinary_x_65536_125
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:389: while(x != 0)
00101$:
	mov	dptr,#_printBinary_x_65536_125
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00104$
;	lcdCommands.c:391: temp2 = x % 2;
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:392: putchar(temp2);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	lcall	_putchar
	pop	ar6
	pop	ar7
;	lcdCommands.c:393: x = x / 2;
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_printBinary_x_65536_125
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00104$:
;	lcdCommands.c:395: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atoh'
;------------------------------------------------------------
;ap                        Allocated with name '_atoh_ap_65536_128'
;p                         Allocated with name '_atoh_p_65536_129'
;digit                     Allocated with name '_atoh_digit_65536_129'
;lcase                     Allocated with name '_atoh_lcase_65536_129'
;n                         Allocated with name '_atoh_n_65537_130'
;------------------------------------------------------------
;	lcdCommands.c:397: unsigned char atoh(char *ap)
;	-----------------------------------------
;	 function atoh
;	-----------------------------------------
_atoh:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_atoh_ap_65536_128
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:402: p = ap;
	mov	dptr,#_atoh_ap_65536_128
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	lcdCommands.c:403: unsigned char n = 0;
	mov	dptr,#_atoh_n_65537_130
	clr	a
	movx	@dptr,a
;	lcdCommands.c:404: while(*p == ' ' || *p == '	')
00102$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x20,00178$
	sjmp	00103$
00178$:
	cjne	r4,#0x09,00141$
00103$:
;	lcdCommands.c:405: p++;
	inc	r5
	cjne	r5,#0x00,00102$
	inc	r6
	sjmp	00102$
00141$:
	mov	dptr,#_atoh_p_65536_129
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:407: if(*p == '0' && ((*(p+1) == 'x') || (*(p+1) == 'X')))
	cjne	r4,#0x30,00118$
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x78,00184$
	sjmp	00105$
00184$:
	cjne	r4,#0x58,00118$
00105$:
;	lcdCommands.c:408: p+=2;
	mov	dptr,#_atoh_p_65536_129
	mov	a,#0x02
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:410: while ((digit = (*p >= '0' && *p <= '9')) ||
00118$:
	mov	dptr,#_atoh_p_65536_129
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x30,00187$
00187$:
	jc	00123$
	mov	a,r7
	add	a,#0xff - 0x39
	jnc	00124$
00123$:
	mov	r7,#0x00
	sjmp	00125$
00124$:
	mov	r7,#0x01
00125$:
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	jnz	00119$
;	lcdCommands.c:411: (lcase = (*p >= 'a' && *p <= 'f')) ||
	mov	dptr,#_atoh_p_65536_129
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x61,00191$
00191$:
	jc	00126$
	mov	a,r7
	add	a,#0xff - 0x66
	jnc	00127$
00126$:
	mov	r7,#0x00
	sjmp	00128$
00127$:
	mov	r7,#0x01
00128$:
	mov	a,r7
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dptr,#_atoh_lcase_65536_129
	mov	a,r4
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r7
	jnz	00119$
;	lcdCommands.c:412: (*p >= 'A' && *p <= 'F')) {
	mov	dptr,#_atoh_p_65536_129
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x41,00195$
00195$:
	jnc	00196$
	ljmp	00120$
00196$:
	mov	a,r7
	add	a,#0xff - 0x46
	jnc	00197$
	ljmp	00120$
00197$:
00119$:
;	lcdCommands.c:413: n *= 16;
	mov	dptr,#_atoh_n_65537_130
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	movx	@dptr,a
;	lcdCommands.c:414: if (digit)	n += *p++ - '0';
	mov	a,r5
	orl	a,r6
	jz	00113$
	mov	dptr,#_atoh_p_65536_129
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_atoh_p_65536_129
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	dptr,#_atoh_n_65537_130
	movx	a,@dptr
	mov	r7,a
	add	a,r4
	movx	@dptr,a
	ljmp	00118$
00113$:
;	lcdCommands.c:415: else if (lcase)	n += 10 + (*p++ - 'a');
	mov	dptr,#_atoh_lcase_65536_129
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00110$
	mov	dptr,#_atoh_p_65536_129
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_atoh_p_65536_129
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,#0xa9
	add	a,r4
	mov	r4,a
	mov	dptr,#_atoh_n_65537_130
	movx	a,@dptr
	mov	r7,a
	add	a,r4
	movx	@dptr,a
	ljmp	00118$
00110$:
;	lcdCommands.c:416: else		n += 10 + (*p++ - 'A');
	mov	dptr,#_atoh_p_65536_129
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_atoh_p_65536_129
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,#0xc9
	add	a,r4
	mov	r4,a
	mov	dptr,#_atoh_n_65537_130
	movx	a,@dptr
	mov	r7,a
	add	a,r4
	movx	@dptr,a
	ljmp	00118$
00120$:
;	lcdCommands.c:418: return(n);
	mov	dptr,#_atoh_n_65537_130
	movx	a,@dptr
;	lcdCommands.c:419: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printMenu'
;------------------------------------------------------------
;i                         Allocated with name '_printMenu_i_65536_132'
;------------------------------------------------------------
;	lcdCommands.c:421: void printMenu()
;	-----------------------------------------
;	 function printMenu
;	-----------------------------------------
_printMenu:
;	lcdCommands.c:424: printf("%s",uiLines);
	mov	a,#_uiLines
	push	acc
	mov	a,#(_uiLines >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	lcdCommands.c:425: printf("\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcdCommands.c:426: for ( i = 0; i < 10; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	lcdCommands.c:428: printf("%s",messages[i]);
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0028
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,#_messages
	mov	r4,a
	mov	a,r5
	addc	a,#(_messages >> 8)
	mov	r5,a
	mov	r3,#0x80
	push	ar4
	push	ar5
	push	ar3
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,r3
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	lcdCommands.c:429: printf_tiny("\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	lcdCommands.c:426: for ( i = 0; i < 10; i++)
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
00115$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	lcdCommands.c:431: printf("%s",uiLines);
	mov	a,#_uiLines
	push	acc
	mov	a,#(_uiLines >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	lcdCommands.c:432: printf("\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	lcdCommands.c:434: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_uiLines:
	.db 0x0a
	.db 0x0d
	.ascii "-------------------------------------------------"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
_messages:
	.ascii " Enter w to write a character "
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii " Enter s to write a string"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii " Enter p to play pacman "
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii " Enter d to perform RAM dump "
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii " Enter g for custom character"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii " Enter x to reset timer"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii " Enter y to pause timer"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii " Enter z to resume timer"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii " Enter s to clear screen"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii " Enter m for main menu "
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
_lookUpTable:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.db #0x47	; 71	'G'
	.db #0x48	; 72	'H'
	.db #0x49	; 73	'I'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x4c	; 76	'L'
	.db #0x4d	; 77	'M'
	.db #0x4e	; 78	'N'
	.db #0x4f	; 79	'O'
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x50	; 80	'P'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0x57	; 87	'W'
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0x5a	; 90	'Z'
	.db #0x5b	; 91
	.db #0x5c	; 92
	.db #0x5d	; 93
	.db #0x5e	; 94
	.db #0x5f	; 95
	.area CONST   (CODE)
___str_0:
	.ascii "%x %x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "Enter value for Row %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "Please Input a maximum of 48 characters"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "DDRAM Contents"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "%2x: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "%2x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "CGRAM Contents"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "Enter w to go up, s to go down, a to go left and d to go rig"
	.ascii "ht and q to quit"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "GAME OVER! PRESS p to restart"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "%s"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
