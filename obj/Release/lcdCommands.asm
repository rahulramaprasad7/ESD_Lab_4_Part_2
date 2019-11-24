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
_ramDump_i_65537_101:
	.ds 1
_gamePacman_i_65538_115:
	.ds 2
_gamePacman_count_65538_115:
	.ds 1
_printBinary_x_65536_128:
	.ds 2
_atoh_ap_65536_131:
	.ds 3
_atoh_p_65536_132:
	.ds 3
_atoh_lcase_65536_132:
	.ds 2
_atoh_n_65537_133:
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
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	dptr,#_customCharacter_temp8_196609_86
	mov	a,#0x40
	orl	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:84: printf("%x %x\n\r",temp8, (0x40 | (0x30 + i)));
	mov	a,#0x30
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	orl	ar5,#0x40
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
;	lcdCommands.c:99: writeCharacter = 0x06;
	mov	dptr,#_writeCharacter
	mov	a,#0x06
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
;	lcdCommands.c:106: busyWait();
	push	ar6
	lcall	_busyWait
	pop	ar6
;	lcdCommands.c:107: return temp1;
	mov	dpl,r6
;	lcdCommands.c:108: }
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
;	lcdCommands.c:110: void putsLCD(char* y)
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
;	lcdCommands.c:112: int i = 0,j = 0, k =0;
	mov	dptr,#_putsLCD_i_65536_91
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:113: while(y[i + (j * 16)] != '\0')
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
;	lcdCommands.c:115: busyWait();
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
;	lcdCommands.c:116: if( i > 15)
	clr	c
	mov	a,#0x0f
	subb	a,_putsLCD_sloc0_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_putsLCD_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	lcdCommands.c:118: j++;
	inc	r0
	cjne	r0,#0x00,00123$
	inc	r1
00123$:
;	lcdCommands.c:119: i = 0;
	mov	dptr,#_putsLCD_i_65536_91
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00102$:
;	lcdCommands.c:122: goToAddr(lookUpTable[j][i]);
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
;	lcdCommands.c:123: lcdPutCh(y[i + (j * 16)]);
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
;	lcdCommands.c:124: i++;
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
;	lcdCommands.c:126: }
	ljmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated with name '_gets_s_65536_94'
;c                         Allocated with name '_gets_c_65536_95'
;count                     Allocated with name '_gets_count_65536_95'
;------------------------------------------------------------
;	lcdCommands.c:128: char *gets (char *s)
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
;	lcdCommands.c:131: unsigned int count = 0;
	mov	dptr,#_gets_count_65536_95
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:133: while (1)
00111$:
;	lcdCommands.c:135: c = getchar ();
	lcall	_getchar
	mov	r6,dpl
	mov	r7,dph
;	lcdCommands.c:136: switch(c)
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
;	lcdCommands.c:138: case '\b': /* backspace */
00101$:
;	lcdCommands.c:139: if (count)
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
;	lcdCommands.c:141: putchar ('\b');
	mov	dptr,#0x0008
	push	ar7
	push	ar5
	lcall	_putchar
;	lcdCommands.c:142: putchar (' ');
	mov	dptr,#0x0020
	lcall	_putchar
;	lcdCommands.c:143: putchar ('\b');
	mov	dptr,#0x0008
	lcall	_putchar
	pop	ar5
	pop	ar7
;	lcdCommands.c:144: --s;
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
;	lcdCommands.c:145: --count;
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
;	lcdCommands.c:147: break;
;	lcdCommands.c:150: case '\r': /* CR or LF */
	sjmp	00107$
00105$:
;	lcdCommands.c:151: putchar ('\r');
	mov	dptr,#0x000d
	lcall	_putchar
;	lcdCommands.c:152: putchar ('\n');
	mov	dptr,#0x000a
	lcall	_putchar
;	lcdCommands.c:153: *s = 0;
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
;	lcdCommands.c:154: return s;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
;	lcdCommands.c:156: default:
	ret
00106$:
;	lcdCommands.c:157: *s++ = c;
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
;	lcdCommands.c:158: ++count;
	mov	dptr,#_gets_count_65536_95
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	lcdCommands.c:159: putchar (c);
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	lcdCommands.c:161: }
00107$:
;	lcdCommands.c:162: if (count == 48)
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
;	lcdCommands.c:164: printf("\n\rPlease Input a maximum of 48 characters\n\r");
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
;	lcdCommands.c:165: break;
;	lcdCommands.c:168: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ramDump'
;------------------------------------------------------------
;i                         Allocated with name '_ramDump_i_65537_101'
;j                         Allocated with name '_ramDump_j_65537_101'
;x                         Allocated with name '_ramDump_x_327682_106'
;x                         Allocated with name '_ramDump_x_327682_111'
;------------------------------------------------------------
;	lcdCommands.c:170: void ramDump()
;	-----------------------------------------
;	 function ramDump
;	-----------------------------------------
_ramDump:
;	lcdCommands.c:172: lcdClear();
	lcall	_lcdClear
;	lcdCommands.c:175: printf_tiny("\n\rDDRAM Contents\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcdCommands.c:176: for (i = 0; i <= 0x5F; i += 16)      //Print 64 ASCII characters in each line
	mov	dptr,#_ramDump_i_65537_101
	clr	a
	movx	@dptr,a
00109$:
;	lcdCommands.c:178: printf("%2x: ",i);
	mov	dptr,#_ramDump_i_65537_101
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	push	ar7
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
	pop	ar7
;	lcdCommands.c:179: for (j = i; j < (i+16) && j <= 0x5F; j++)    //Print the contents of buffer in ASCII
	mov	ar6,r7
00107$:
	mov	ar4,r6
	mov	r5,#0x00
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	ar2,r7
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	mov	a,r7
	add	a,#0xff - 0x5f
	jc	00101$
;	lcdCommands.c:181: lcdGeneral = 0x80 | j;
	mov	dptr,#_lcdGeneral
	mov	a,#0x80
	orl	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:182: uint8_t x = readLCD();
	push	ar7
	push	ar6
	lcall	_readLCD
	mov	r5,dpl
;	lcdCommands.c:183: printf("%2x ", x);
	mov	r4,#0x00
	push	ar5
	push	ar4
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
	pop	ar6
	pop	ar7
;	lcdCommands.c:179: for (j = i; j < (i+16) && j <= 0x5F; j++)    //Print the contents of buffer in ASCII
	inc	r7
	sjmp	00107$
00101$:
;	lcdCommands.c:185: printf_tiny("\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcdCommands.c:176: for (i = 0; i <= 0x5F; i += 16)      //Print 64 ASCII characters in each line
	mov	dptr,#_ramDump_i_65537_101
	movx	a,@dptr
	mov	r7,a
	add	a,#0x10
	movx	@dptr,a
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x5f
	jc	00154$
	ljmp	00109$
00154$:
;	lcdCommands.c:187: printf_tiny("\n\rCGRAM Contents\n\r");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcdCommands.c:188: for (i = 0; i <= 7; i ++)      //Print 64 ASCII characters in each line
	mov	r7,#0x00
00113$:
;	lcdCommands.c:190: printf_tiny("\n\rCharacter %d\n\r",i);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
;	lcdCommands.c:191: for (j = 0; j <= 7; j++)    //Print the contents of buffer in ASCII
	mov	ar6,r7
	mov	r5,#0x00
00111$:
;	lcdCommands.c:193: printf("Row %2x: ", j);
	mov	ar3,r5
	mov	r4,#0x00
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar3
	push	ar4
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	lcdCommands.c:194: lcdGeneral = 0x40 | j | (i << 3);
	orl	ar3,#0x40
	mov	ar1,r6
	clr	a
	rr	a
	anl	a,#0xf8
	xch	a,r1
	swap	a
	rr	a
	xch	a,r1
	xrl	a,r1
	xch	a,r1
	anl	a,#0xf8
	xch	a,r1
	xrl	a,r1
	mov	r2,a
	mov	dptr,#_lcdGeneral
	mov	a,r1
	orl	a,r3
	movx	@dptr,a
	mov	a,r2
	orl	a,r4
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:195: uint8_t x = readLCD();
	push	ar6
	push	ar5
	lcall	_readLCD
	mov	r4,dpl
;	lcdCommands.c:196: printf("%2x ", x);
	mov	r3,#0x00
	push	ar4
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
;	lcdCommands.c:197: printf_tiny("\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
;	lcdCommands.c:191: for (j = 0; j <= 7; j++)    //Print the contents of buffer in ASCII
	inc	r5
	mov	a,r5
	add	a,#0xff - 0x07
	jc	00155$
	ljmp	00111$
00155$:
;	lcdCommands.c:199: printf_tiny("\n\r");
	push	ar6
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
;	lcdCommands.c:188: for (i = 0; i <= 7; i ++)      //Print 64 ASCII characters in each line
	mov	a,r6
	inc	a
	mov  r7,a
	add	a,#0xff - 0x07
	jc	00156$
	ljmp	00113$
00156$:
;	lcdCommands.c:201: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gamePacman'
;------------------------------------------------------------
;abcd                      Allocated with name '_gamePacman_abcd_65537_113'
;ch                        Allocated with name '_gamePacman_ch_65538_115'
;i                         Allocated with name '_gamePacman_i_65538_115'
;count                     Allocated with name '_gamePacman_count_65538_115'
;checkEnter                Allocated with name '_gamePacman_checkEnter_196611_119'
;checkEnter1               Allocated with name '_gamePacman_checkEnter1_196611_123'
;------------------------------------------------------------
;	lcdCommands.c:203: void gamePacman()
;	-----------------------------------------
;	 function gamePacman
;	-----------------------------------------
_gamePacman:
;	lcdCommands.c:205: lcdClear();
	lcall	_lcdClear
;	lcdCommands.c:207: putsLCD("WELCOME 2 PACMANPRESS G TO START");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_putsLCD
;	lcdCommands.c:208: do{
00101$:
;	lcdCommands.c:210: abcd = getchar();
	lcall	_getchar
	mov	r6,dpl
;	lcdCommands.c:211: putchar(abcd);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
	pop	ar6
;	lcdCommands.c:212: }while(abcd != 'g');
	cjne	r6,#0x67,00101$
;	lcdCommands.c:214: int i = 1;
	mov	dptr,#_gamePacman_i_65538_115
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:215: uint8_t count = 0;
	mov	dptr,#_gamePacman_count_65538_115
	movx	@dptr,a
;	lcdCommands.c:216: lcdClear();
	lcall	_lcdClear
;	lcdCommands.c:217: makePacmanRight();
	lcall	_makePacmanRight
;	lcdCommands.c:218: makePacmanLeft();
	lcall	_makePacmanLeft
;	lcdCommands.c:219: goToAddr(lookUpTable[0][4]);
	mov	dptr,#(_lookUpTable + 0x0004)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:220: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:221: goToAddr(lookUpTable[0][5]);
	mov	dptr,#(_lookUpTable + 0x0005)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:222: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:223: goToAddr(lookUpTable[0][8]);
	mov	dptr,#(_lookUpTable + 0x0008)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:224: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:225: goToAddr(lookUpTable[0][12]);
	mov	dptr,#(_lookUpTable + 0x000c)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:226: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:227: goToAddr(lookUpTable[0][13]);
	mov	dptr,#(_lookUpTable + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:228: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:229: goToAddr(lookUpTable[0][14]);
	mov	dptr,#(_lookUpTable + 0x000e)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:230: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:231: goToAddr(lookUpTable[1][2]);
	mov	dptr,#(_lookUpTable + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:232: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:233: goToAddr(lookUpTable[1][3]);
	mov	dptr,#(_lookUpTable + 0x0013)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:234: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:235: goToAddr(lookUpTable[1][12]);
	mov	dptr,#(_lookUpTable + 0x001c)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:236: lcdPutCh('*');
	mov	dpl,#0x2a
	lcall	_lcdPutCh
;	lcdCommands.c:237: printf_tiny("\n\rEnter w to go up, s to go down, a to go left and d to go right and q to quit\n\r");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	lcdCommands.c:238: do{
00118$:
;	lcdCommands.c:239: goToAddr(lookUpTable[3][0]);
	mov	dptr,#(_lookUpTable + 0x0030)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_goToAddr
;	lcdCommands.c:240: lcdPutCh(count + '0');
	mov	dptr,#_gamePacman_count_65538_115
	movx	a,@dptr
	mov	r7,a
	add	a,#0x30
	mov	dpl,a
	push	ar7
	lcall	_lcdPutCh
	pop	ar7
;	lcdCommands.c:241: if(count == 9)
	cjne	r7,#0x09,00105$
;	lcdCommands.c:243: lcdClear();
	lcall	_lcdClear
;	lcdCommands.c:244: putsLCD("GAME OVER! PRESS p to restart");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_putsLCD
;	lcdCommands.c:245: printMenu();
;	lcdCommands.c:246: break;
	ljmp	_printMenu
00105$:
;	lcdCommands.c:249: ch = getchar();
	push	ar7
	lcall	_getchar
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
;	lcdCommands.c:250: if(ch == 'd')
	cjne	r5,#0x64,00167$
	sjmp	00168$
00167$:
	ljmp	00111$
00168$:
;	lcdCommands.c:252: goToAddr(lookUpTable[0][i-1]);
	mov	dptr,#_gamePacman_i_65538_115
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar3,r4
	mov	a,r3
	dec	a
	mov	dptr,#_lookUpTable
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_goToAddr
;	lcdCommands.c:253: busyWait();
	lcall	_busyWait
;	lcdCommands.c:254: lcdPutCh(' ');
	mov	dpl,#0x20
	lcall	_lcdPutCh
;	lcdCommands.c:255: busyWait();
	lcall	_busyWait
	pop	ar4
	pop	ar5
	pop	ar6
;	lcdCommands.c:256: goToAddr(lookUpTable[0][i]);
	mov	a,r4
	add	a,#_lookUpTable
	mov	dpl,a
	mov	a,r6
	addc	a,#(_lookUpTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar5
	lcall	_goToAddr
;	lcdCommands.c:257: busyWait();
	lcall	_busyWait
;	lcdCommands.c:258: char checkEnter = readLCD();
	lcall	_readLCD
	mov	r6,dpl
	pop	ar5
	pop	ar7
;	lcdCommands.c:259: if(checkEnter == '*')
	cjne	r6,#0x2a,00107$
;	lcdCommands.c:261: count++;
	mov	dptr,#_gamePacman_count_65538_115
	mov	a,r7
	inc	a
	movx	@dptr,a
;	lcdCommands.c:262: putchar(7);
	mov	dptr,#0x0007
	push	ar5
	lcall	_putchar
	pop	ar5
00107$:
;	lcdCommands.c:264: busyWait();
	push	ar5
	lcall	_busyWait
	pop	ar5
;	lcdCommands.c:265: lcdGeneral = 0x80 | (lookUpTable[0][i]);
	mov	dptr,#_gamePacman_i_65538_115
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
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_lcdGeneral
	mov	a,#0x80
	orl	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:266: busyWait();
	push	ar7
	push	ar6
	push	ar5
	lcall	_busyWait
;	lcdCommands.c:267: writeCharacter = 0x00;
	mov	dptr,#_writeCharacter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:268: busyWait();
	lcall	_busyWait
	pop	ar5
	pop	ar6
	pop	ar7
;	lcdCommands.c:269: if(i >= 47)
	clr	c
	mov	a,r6
	subb	a,#0x2f
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00109$
;	lcdCommands.c:271: goToAddr(lookUpTable[2][15]);
	mov	dptr,#(_lookUpTable + 0x002f)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar5
	lcall	_goToAddr
;	lcdCommands.c:272: busyWait();
	lcall	_busyWait
;	lcdCommands.c:273: lcdPutCh(' ');
	mov	dpl,#0x20
	lcall	_lcdPutCh
;	lcdCommands.c:274: busyWait();
	lcall	_busyWait
	pop	ar5
;	lcdCommands.c:275: i = 0;
	mov	dptr,#_gamePacman_i_65538_115
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00109$:
;	lcdCommands.c:277: i++;
	mov	dptr,#_gamePacman_i_65538_115
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00111$:
;	lcdCommands.c:279: i--;
	mov	dptr,#_gamePacman_i_65538_115
	movx	a,@dptr
	add	a,#0xff
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_gamePacman_i_65538_115
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:281: if(ch == 'a')
	cjne	r5,#0x61,00172$
	sjmp	00173$
00172$:
	ljmp	00117$
00173$:
;	lcdCommands.c:283: goToAddr(lookUpTable[0][i+1]);
	mov	dptr,#_gamePacman_i_65538_115
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	a,r4
	inc	a
	mov	dptr,#_lookUpTable
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_goToAddr
;	lcdCommands.c:284: busyWait();
	lcall	_busyWait
;	lcdCommands.c:285: lcdPutCh(' ');
	mov	dpl,#0x20
	lcall	_lcdPutCh
;	lcdCommands.c:286: busyWait();
	lcall	_busyWait
	pop	ar5
	pop	ar6
	pop	ar7
;	lcdCommands.c:287: goToAddr(lookUpTable[0][i]);
	mov	a,r6
	add	a,#_lookUpTable
	mov	dpl,a
	mov	a,r7
	addc	a,#(_lookUpTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar5
	lcall	_goToAddr
;	lcdCommands.c:288: busyWait();
	lcall	_busyWait
;	lcdCommands.c:289: char checkEnter1 = readLCD();
	lcall	_readLCD
	mov	r7,dpl
	pop	ar5
;	lcdCommands.c:290: if(checkEnter1 == '*')
	cjne	r7,#0x2a,00113$
;	lcdCommands.c:292: count++;
	mov	dptr,#_gamePacman_count_65538_115
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	lcdCommands.c:293: putchar(7);
	mov	dptr,#0x0007
	push	ar5
	lcall	_putchar
	pop	ar5
00113$:
;	lcdCommands.c:295: busyWait();
	push	ar5
	lcall	_busyWait
	pop	ar5
;	lcdCommands.c:296: lcdGeneral = 0x80 | (lookUpTable[0][i]);
	mov	dptr,#_gamePacman_i_65538_115
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
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_lcdGeneral
	mov	a,#0x80
	orl	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:297: busyWait();
	push	ar7
	push	ar6
	push	ar5
	lcall	_busyWait
;	lcdCommands.c:298: writeCharacter = 0x03;
	mov	dptr,#_writeCharacter
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:299: busyWait();
	lcall	_busyWait
	pop	ar5
	pop	ar6
	pop	ar7
;	lcdCommands.c:300: if( i <= 0)
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00115$
;	lcdCommands.c:302: goToAddr(lookUpTable[0][0]);
	mov	dptr,#_lookUpTable
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar5
	lcall	_goToAddr
;	lcdCommands.c:303: busyWait();
	lcall	_busyWait
;	lcdCommands.c:304: lcdPutCh(' ');
	mov	dpl,#0x20
	lcall	_lcdPutCh
;	lcdCommands.c:305: busyWait();
	lcall	_busyWait
	pop	ar5
;	lcdCommands.c:306: i = 47;
	mov	dptr,#_gamePacman_i_65538_115
	mov	a,#0x2f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00115$:
;	lcdCommands.c:308: i--;
	mov	dptr,#_gamePacman_i_65538_115
	movx	a,@dptr
	add	a,#0xff
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_gamePacman_i_65538_115
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00117$:
;	lcdCommands.c:310: i++;
	mov	dptr,#_gamePacman_i_65538_115
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	lcdCommands.c:311: }while(ch != 'q');
	cjne	r5,#0x71,00177$
	ret
00177$:
	ljmp	00118$
;	lcdCommands.c:312: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makePacmanRight'
;------------------------------------------------------------
;	lcdCommands.c:314: void makePacmanRight()
;	-----------------------------------------
;	 function makePacmanRight
;	-----------------------------------------
_makePacmanRight:
;	lcdCommands.c:316: busyWait();
	lcall	_busyWait
;	lcdCommands.c:317: lcdGeneral = 0x40 | 0x00;
	mov	dptr,#_lcdGeneral
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:318: busyWait();
	lcall	_busyWait
;	lcdCommands.c:319: writeCharacter = 0x06;
	mov	dptr,#_writeCharacter
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:320: busyWait();
	lcall	_busyWait
;	lcdCommands.c:321: lcdGeneral = 0x40 | 0x01;
	mov	dptr,#_lcdGeneral
	mov	a,#0x41
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:322: busyWait();
	lcall	_busyWait
;	lcdCommands.c:323: writeCharacter = 0x09;
	mov	dptr,#_writeCharacter
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:324: busyWait();
	lcall	_busyWait
;	lcdCommands.c:325: lcdGeneral = 0x40 | 0x02;
	mov	dptr,#_lcdGeneral
	mov	a,#0x42
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:326: busyWait();
	lcall	_busyWait
;	lcdCommands.c:327: writeCharacter = 0x12;
	mov	dptr,#_writeCharacter
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:328: busyWait();
	lcall	_busyWait
;	lcdCommands.c:329: lcdGeneral = 0x40 | 0x03;
	mov	dptr,#_lcdGeneral
	mov	a,#0x43
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:330: busyWait();
	lcall	_busyWait
;	lcdCommands.c:331: writeCharacter = 0x14;
	mov	dptr,#_writeCharacter
	mov	a,#0x14
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:332: busyWait();
	lcall	_busyWait
;	lcdCommands.c:333: lcdGeneral = 0x40 | 0x04;
	mov	dptr,#_lcdGeneral
	mov	a,#0x44
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:334: busyWait();
	lcall	_busyWait
;	lcdCommands.c:335: writeCharacter = 0x14;
	mov	dptr,#_writeCharacter
	mov	a,#0x14
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:336: busyWait();
	lcall	_busyWait
;	lcdCommands.c:337: lcdGeneral = 0x40 | 0x05;
	mov	dptr,#_lcdGeneral
	mov	a,#0x45
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:338: busyWait();
	lcall	_busyWait
;	lcdCommands.c:339: writeCharacter = 0x12;
	mov	dptr,#_writeCharacter
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:340: busyWait();
	lcall	_busyWait
;	lcdCommands.c:341: lcdGeneral = 0x40 | 0x06;
	mov	dptr,#_lcdGeneral
	mov	a,#0x46
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:342: busyWait();
	lcall	_busyWait
;	lcdCommands.c:343: writeCharacter = 0x09;
	mov	dptr,#_writeCharacter
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:344: busyWait();
	lcall	_busyWait
;	lcdCommands.c:345: lcdGeneral = 0x40 | 0x07;
	mov	dptr,#_lcdGeneral
	mov	a,#0x47
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:346: busyWait();
	lcall	_busyWait
;	lcdCommands.c:347: writeCharacter = 0x06;
	mov	dptr,#_writeCharacter
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:348: busyWait();
	lcall	_busyWait
;	lcdCommands.c:349: goToXY(3,1);
	mov	dptr,#_goToXY_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_goToXY
;	lcdCommands.c:350: busyWait();
	lcall	_busyWait
;	lcdCommands.c:351: lcdGeneral = 0x80 | 0x00;
	mov	dptr,#_lcdGeneral
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:352: busyWait();
	lcall	_busyWait
;	lcdCommands.c:353: writeCharacter = 0x00;
	mov	dptr,#_writeCharacter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:354: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makePacmanLeft'
;------------------------------------------------------------
;	lcdCommands.c:355: void makePacmanLeft()
;	-----------------------------------------
;	 function makePacmanLeft
;	-----------------------------------------
_makePacmanLeft:
;	lcdCommands.c:357: busyWait();
	lcall	_busyWait
;	lcdCommands.c:358: lcdGeneral = 0x40 | 0x18;
	mov	dptr,#_lcdGeneral
	mov	a,#0x58
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:359: busyWait();
	lcall	_busyWait
;	lcdCommands.c:360: writeCharacter = 0x0C;
	mov	dptr,#_writeCharacter
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:361: busyWait();
	lcall	_busyWait
;	lcdCommands.c:362: lcdGeneral = 0x40 | 0x19;
	mov	dptr,#_lcdGeneral
	mov	a,#0x59
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:363: busyWait();
	lcall	_busyWait
;	lcdCommands.c:364: writeCharacter = 0x12;
	mov	dptr,#_writeCharacter
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:365: busyWait();
	lcall	_busyWait
;	lcdCommands.c:366: lcdGeneral = 0x40 | 0x1A;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:367: busyWait();
	lcall	_busyWait
;	lcdCommands.c:368: writeCharacter = 0x09;
	mov	dptr,#_writeCharacter
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:369: busyWait();
	lcall	_busyWait
;	lcdCommands.c:370: lcdGeneral = 0x40 | 0x1B;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:371: busyWait();
	lcall	_busyWait
;	lcdCommands.c:372: writeCharacter = 0x05;
	mov	dptr,#_writeCharacter
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:373: busyWait();
	lcall	_busyWait
;	lcdCommands.c:374: lcdGeneral = 0x40 | 0x1C;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:375: busyWait();
	lcall	_busyWait
;	lcdCommands.c:376: writeCharacter = 0x05;
	mov	dptr,#_writeCharacter
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:377: busyWait();
	lcall	_busyWait
;	lcdCommands.c:378: lcdGeneral = 0x40 | 0x1D;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5d
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:379: busyWait();
	lcall	_busyWait
;	lcdCommands.c:380: writeCharacter = 0x09;
	mov	dptr,#_writeCharacter
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:381: busyWait();
	lcall	_busyWait
;	lcdCommands.c:382: lcdGeneral = 0x40 | 0x1E;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5e
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:383: busyWait();
	lcall	_busyWait
;	lcdCommands.c:384: writeCharacter = 0x12;
	mov	dptr,#_writeCharacter
	mov	a,#0x12
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:385: busyWait();
	lcall	_busyWait
;	lcdCommands.c:386: lcdGeneral = 0x40 | 0x1F;
	mov	dptr,#_lcdGeneral
	mov	a,#0x5f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:387: busyWait();
	lcall	_busyWait
;	lcdCommands.c:388: writeCharacter = 0x0C;
	mov	dptr,#_writeCharacter
	mov	a,#0x0c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:389: busyWait();
;	lcdCommands.c:393: }
	ljmp	_busyWait
;------------------------------------------------------------
;Allocation info for local variables in function 'printBinary'
;------------------------------------------------------------
;x                         Allocated with name '_printBinary_x_65536_128'
;temp2                     Allocated with name '_printBinary_temp2_65536_129'
;------------------------------------------------------------
;	lcdCommands.c:395: void printBinary(int x)
;	-----------------------------------------
;	 function printBinary
;	-----------------------------------------
_printBinary:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_printBinary_x_65536_128
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:398: while(x != 0)
00101$:
	mov	dptr,#_printBinary_x_65536_128
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00104$
;	lcdCommands.c:400: temp2 = x % 2;
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:401: putchar(temp2);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	lcall	_putchar
	pop	ar6
	pop	ar7
;	lcdCommands.c:402: x = x / 2;
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
	mov	dptr,#_printBinary_x_65536_128
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00104$:
;	lcdCommands.c:404: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atoh'
;------------------------------------------------------------
;ap                        Allocated with name '_atoh_ap_65536_131'
;p                         Allocated with name '_atoh_p_65536_132'
;digit                     Allocated with name '_atoh_digit_65536_132'
;lcase                     Allocated with name '_atoh_lcase_65536_132'
;n                         Allocated with name '_atoh_n_65537_133'
;------------------------------------------------------------
;	lcdCommands.c:406: unsigned char atoh(char *ap)
;	-----------------------------------------
;	 function atoh
;	-----------------------------------------
_atoh:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_atoh_ap_65536_131
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:411: p = ap;
	mov	dptr,#_atoh_ap_65536_131
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	lcdCommands.c:412: unsigned char n = 0;
	mov	dptr,#_atoh_n_65537_133
	clr	a
	movx	@dptr,a
;	lcdCommands.c:413: while(*p == ' ' || *p == '	')
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
;	lcdCommands.c:414: p++;
	inc	r5
	cjne	r5,#0x00,00102$
	inc	r6
	sjmp	00102$
00141$:
	mov	dptr,#_atoh_p_65536_132
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	lcdCommands.c:416: if(*p == '0' && ((*(p+1) == 'x') || (*(p+1) == 'X')))
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
;	lcdCommands.c:417: p+=2;
	mov	dptr,#_atoh_p_65536_132
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
;	lcdCommands.c:419: while ((digit = (*p >= '0' && *p <= '9')) ||
00118$:
	mov	dptr,#_atoh_p_65536_132
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
;	lcdCommands.c:420: (lcase = (*p >= 'a' && *p <= 'f')) ||
	mov	dptr,#_atoh_p_65536_132
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
	mov	dptr,#_atoh_lcase_65536_132
	mov	a,r4
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r7
	jnz	00119$
;	lcdCommands.c:421: (*p >= 'A' && *p <= 'F')) {
	mov	dptr,#_atoh_p_65536_132
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
;	lcdCommands.c:422: n *= 16;
	mov	dptr,#_atoh_n_65537_133
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	movx	@dptr,a
;	lcdCommands.c:423: if (digit)	n += *p++ - '0';
	mov	a,r5
	orl	a,r6
	jz	00113$
	mov	dptr,#_atoh_p_65536_132
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
	mov	dptr,#_atoh_p_65536_132
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
	mov	dptr,#_atoh_n_65537_133
	movx	a,@dptr
	mov	r7,a
	add	a,r4
	movx	@dptr,a
	ljmp	00118$
00113$:
;	lcdCommands.c:424: else if (lcase)	n += 10 + (*p++ - 'a');
	mov	dptr,#_atoh_lcase_65536_132
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00110$
	mov	dptr,#_atoh_p_65536_132
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
	mov	dptr,#_atoh_p_65536_132
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
	mov	dptr,#_atoh_n_65537_133
	movx	a,@dptr
	mov	r7,a
	add	a,r4
	movx	@dptr,a
	ljmp	00118$
00110$:
;	lcdCommands.c:425: else		n += 10 + (*p++ - 'A');
	mov	dptr,#_atoh_p_65536_132
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
	mov	dptr,#_atoh_p_65536_132
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
	mov	dptr,#_atoh_n_65537_133
	movx	a,@dptr
	mov	r7,a
	add	a,r4
	movx	@dptr,a
	ljmp	00118$
00120$:
;	lcdCommands.c:427: return(n);
	mov	dptr,#_atoh_n_65537_133
	movx	a,@dptr
;	lcdCommands.c:428: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printMenu'
;------------------------------------------------------------
;i                         Allocated with name '_printMenu_i_65536_135'
;------------------------------------------------------------
;	lcdCommands.c:430: void printMenu()
;	-----------------------------------------
;	 function printMenu
;	-----------------------------------------
_printMenu:
;	lcdCommands.c:433: printf("%s",uiLines);
	mov	a,#_uiLines
	push	acc
	mov	a,#(_uiLines >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	lcdCommands.c:434: printf("\n\r");
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
;	lcdCommands.c:435: for ( i = 0; i < 10; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	lcdCommands.c:437: printf("%s",messages[i]);
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
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,r3
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	lcdCommands.c:438: printf_tiny("\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	lcdCommands.c:435: for ( i = 0; i < 10; i++)
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
;	lcdCommands.c:440: printf("%s",uiLines);
	mov	a,#_uiLines
	push	acc
	mov	a,#(_uiLines >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	lcdCommands.c:441: printf("\n\r");
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
;	lcdCommands.c:443: }
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
	.ascii " Enter c to clear screen"
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
	.ascii "Character %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Row %2x: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "WELCOME 2 PACMANPRESS G TO START"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0d
	.ascii "Enter w to go up, s to go down, a to go left and d to go rig"
	.ascii "ht and q to quit"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "GAME OVER! PRESS p to restart"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "%s"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
