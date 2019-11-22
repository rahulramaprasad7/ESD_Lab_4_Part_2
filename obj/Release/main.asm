;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lookUpTable1
	.globl _timer0_isr
	.globl _main
	.globl _ramDump
	.globl _printMenu
	.globl _gamePacman
	.globl _customCharacter
	.globl _timerInit
	.globl _putsLCD
	.globl _goToAddr
	.globl _lcdClear
	.globl _lcdPutCh
	.globl _busyWait
	.globl _lcdInit
	.globl _atoi
	.globl _memset
	.globl _printf_tiny
	.globl _gets
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
	.globl _ch
	.globl _check
	.globl _x2
	.globl _hour
	.globl _min
	.globl _sec
	.globl _partSec
	.globl _readCharacter
	.globl _writeCharacter
	.globl _busyPoll
	.globl _lcdGeneral
	.globl _putchar
	.globl _getchar
	.globl _printTimeStamp
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_partSec::
	.ds 1
_sec::
	.ds 1
_min::
	.ds 1
_hour::
	.ds 1
_x2::
	.ds 1
_check::
	.ds 1
_ch::
	.ds 1
_main_input_65537_72:
	.ds 60
_main_x_196609_75:
	.ds 10
_main_stringRead_196609_87:
	.ds 48
_putchar_c_65536_96:
	.ds 2
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;input                     Allocated with name '_main_input_65537_72'
;x                         Allocated with name '_main_x_196609_75'
;row                       Allocated with name '_main_row_196610_76'
;column                    Allocated with name '_main_column_196611_78'
;ad                        Allocated with name '_main_ad_196612_80'
;inputWrite                Allocated with name '_main_inputWrite_196613_81'
;stringRead                Allocated with name '_main_stringRead_196609_87'
;------------------------------------------------------------
;	main.c:19: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:21: check = 0;
	mov	dptr,#_check
	clr	a
	movx	@dptr,a
;	main.c:22: partSec = 0;
	mov	dptr,#_partSec
	movx	@dptr,a
;	main.c:23: sec = 0;
	mov	dptr,#_sec
	movx	@dptr,a
;	main.c:24: min = 0;
	mov	dptr,#_min
	movx	@dptr,a
;	main.c:25: hour = 0;
	mov	dptr,#_hour
	movx	@dptr,a
;	main.c:26: x2 = 0;
	mov	dptr,#_x2
	movx	@dptr,a
;	main.c:28: memset(input, '\0',60 * sizeof(char));
	mov	dptr,#_memset_PARM_2
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_input_65537_72
	mov	b,#0x00
	lcall	_memset
;	main.c:29: lcdInit();
	lcall	_lcdInit
;	main.c:30: lcdClear();
	lcall	_lcdClear
;	main.c:31: printMenu();
	lcall	_printMenu
;	main.c:32: timerInit();
	lcall	_timerInit
;	main.c:33: while(1)
00128$:
;	main.c:35: ch = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_ch
	mov	a,r6
	movx	@dptr,a
;	main.c:36: if(check == 1)
	mov	dptr,#_check
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	main.c:38: check = 0;
	mov	dptr,#_check
	clr	a
	movx	@dptr,a
;	main.c:39: printTimeStamp();
	lcall	_printTimeStamp
00102$:
;	main.c:42: if(ch == 'w')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x77,00190$
	sjmp	00191$
00190$:
	ljmp	00108$
00191$:
;	main.c:46: memset(x,'\0',10 * sizeof(char));
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_x_196609_75
	mov	b,#0x00
	lcall	_memset
;	main.c:47: printf_tiny("\n\rEnter the row number from 0 to 2\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:48: uint8_t row = getchar();
	lcall	_getchar
	mov	r6,dpl
;	main.c:49: putchar(row);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
	pop	ar6
;	main.c:50: row = row - '0';
	mov	a,r6
	add	a,#0xd0
;	main.c:51: if(row > 2)
	mov	r7,a
	add	a,#0xff - 0x02
	jnc	00104$
;	main.c:53: printf_tiny("\n\rEntered Row is incorrect\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:54: printMenu();
	lcall	_printMenu
;	main.c:55: continue;
	sjmp	00128$
00104$:
;	main.c:57: printf_tiny("\n\rEnter the column number from 0 to 15\n\r");
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:58: gets(x);
	mov	dptr,#_main_x_196609_75
	mov	b,#0x00
	lcall	_gets
;	main.c:59: uint8_t column = atoi(x);
	mov	dptr,#_main_x_196609_75
	mov	b,#0x00
	lcall	_atoi
	mov	r5,dpl
	pop	ar7
;	main.c:61: if(column > 15)
	mov	a,r5
	add	a,#0xff - 0x0f
	jnc	00106$
;	main.c:63: printf_tiny("\n\rEntered Column is incorrect\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:64: printMenu();
	lcall	_printMenu
;	main.c:65: continue;
	ljmp	00128$
00106$:
;	main.c:67: uint8_t ad = lookUpTable1[row][column];
	mov	a,r7
	mov	b,#0x10
	mul	ab
	add	a,#_lookUpTable1
	mov	r4,a
	mov	a,#(_lookUpTable1 >> 8)
	addc	a,b
	mov	r6,a
	mov	a,r5
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movc	a,@a+dptr
;	main.c:68: printf("%d %d %d", row, column, ad);
	mov	r6,a
	mov	r3,a
	mov	r4,#0x00
	mov	r2,#0x00
	mov	ar1,r7
	mov	r7,#0x00
	push	ar6
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar1
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar6
;	main.c:69: goToAddr(ad);
	mov	dpl,r6
	push	ar6
	lcall	_goToAddr
;	main.c:70: busyWait();
	lcall	_busyWait
;	main.c:71: printf_tiny("\n\rEnter the character\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:72: uint8_t inputWrite = getchar();
	lcall	_getchar
	mov	r5,dpl
;	main.c:73: putchar(inputWrite);
	mov	ar4,r5
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r7
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
;	main.c:74: goToAddr(ad);
	mov	dpl,r6
	push	ar5
	lcall	_goToAddr
	pop	ar5
;	main.c:75: lcdPutCh(inputWrite);
	mov	dpl,r5
	lcall	_lcdPutCh
00108$:
;	main.c:78: if (ch == 'm')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x6d,00110$
;	main.c:80: printMenu();
	lcall	_printMenu
00110$:
;	main.c:83: if( ch == 'p')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x70,00112$
;	main.c:84: gamePacman();
	lcall	_gamePacman
00112$:
;	main.c:86: if(ch == 'x')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x78,00114$
;	main.c:88: check = 0;
	mov	dptr,#_check
	clr	a
	movx	@dptr,a
;	main.c:89: partSec = 0;
	mov	dptr,#_partSec
	movx	@dptr,a
;	main.c:90: sec = 0;
	mov	dptr,#_sec
	movx	@dptr,a
;	main.c:91: min = 0;
	mov	dptr,#_min
	movx	@dptr,a
;	main.c:92: hour = 0;
	mov	dptr,#_hour
	movx	@dptr,a
;	main.c:93: x2 = 0;
	mov	dptr,#_x2
	movx	@dptr,a
00114$:
;	main.c:96: if(ch == 'y')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x79,00116$
;	main.c:98: TR0 = 0;
;	assignBit
	clr	_TR0
00116$:
;	main.c:101: if(ch == 'z')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x7a,00118$
;	main.c:103: TR0 = 1;
;	assignBit
	setb	_TR0
00118$:
;	main.c:106: if(ch == 'c')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x63,00120$
;	main.c:108: lcdClear();
	lcall	_lcdClear
00120$:
;	main.c:111: if(ch == 's')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x73,00122$
;	main.c:114: printf_tiny("\n\rEnter the string\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:115: gets(stringRead);
	mov	dptr,#_main_stringRead_196609_87
	mov	b,#0x00
	lcall	_gets
;	main.c:117: putsLCD(stringRead);
	mov	dptr,#_main_stringRead_196609_87
	mov	b,#0x00
	lcall	_putsLCD
00122$:
;	main.c:120: if(ch == 'd')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x64,00124$
;	main.c:122: ramDump();
	lcall	_ramDump
00124$:
;	main.c:125: if(ch == 'g')
	mov	dptr,#_ch
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x67,00210$
	sjmp	00211$
00210$:
	ljmp	00128$
00211$:
;	main.c:127: customCharacter();
	lcall	_customCharacter
;	main.c:131: }
	ljmp	00128$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;	main.c:133: void timer0_isr() __interrupt (1)
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	main.c:135: TH0 = 0x4B;
	mov	_TH0,#0x4b
;	main.c:136: TL0 = 0xFC;
	mov	_TL0,#0xfc
;	main.c:137: x2++;
	mov	dptr,#_x2
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	main.c:138: if(x2 == 2)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00111$
;	main.c:140: if(partSec > 9)
	mov	dptr,#_partSec
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x09
	jnc	00108$
;	main.c:142: sec++;
	mov	dptr,#_sec
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	main.c:143: if( sec > 59)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x3b
	jnc	00106$
;	main.c:145: min++;
	mov	dptr,#_min
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	main.c:146: if( min == 59)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3b,00104$
;	main.c:148: hour++;
	mov	dptr,#_hour
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	main.c:149: if(hour > 23)
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x17
	jnc	00102$
;	main.c:151: hour = 0;
	mov	dptr,#_hour
	clr	a
	movx	@dptr,a
00102$:
;	main.c:153: min = 0;
	mov	dptr,#_min
	clr	a
	movx	@dptr,a
00104$:
;	main.c:155: sec = 0;
	mov	dptr,#_sec
	clr	a
	movx	@dptr,a
00106$:
;	main.c:157: partSec = 0;
	mov	dptr,#_partSec
	clr	a
	movx	@dptr,a
00108$:
;	main.c:159: partSec++;
	mov	dptr,#_partSec
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	main.c:160: x2 = 0;
	mov	dptr,#_x2
	clr	a
	movx	@dptr,a
;	main.c:161: check = 1;
	mov	dptr,#_check
	inc	a
	movx	@dptr,a
00111$:
;	main.c:163: }
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_96'
;------------------------------------------------------------
;	main.c:166: int putchar (int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_96
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:168: while ((SCON & 0x02) == 0)    // wait for TX ready, spin on TI
00103$:
	mov	a,_SCON
	jb	acc.1,00105$
;	main.c:170: if(check == 1)
	mov	dptr,#_check
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00103$
;	main.c:172: check = 0;
	mov	dptr,#_check
	clr	a
	movx	@dptr,a
;	main.c:173: printTimeStamp();
	lcall	_printTimeStamp
	sjmp	00103$
00105$:
;	main.c:176: SBUF = c;  	// load serial port with transmit value
	mov	dptr,#_putchar_c_65536_96
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
;	main.c:177: TI = 0;  	// clear TI flag
;	assignBit
	clr	_TI
;	main.c:178: return 0;
	mov	dptr,#0x0000
;	main.c:179: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:181: int getchar ()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:183: while ((SCON & 0x01) == 0)  // wait for character to be received, spin on RI
00103$:
	mov	a,_SCON
	jb	acc.0,00105$
;	main.c:185: if(check == 1)
	mov	dptr,#_check
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00103$
;	main.c:187: check = 0;
	mov	dptr,#_check
	clr	a
	movx	@dptr,a
;	main.c:188: printTimeStamp();
	lcall	_printTimeStamp
	sjmp	00103$
00105$:
;	main.c:191: RI = 0;			// clear RI flag
;	assignBit
	clr	_RI
;	main.c:192: return SBUF;  	// return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:193: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printTimeStamp'
;------------------------------------------------------------
;	main.c:195: void printTimeStamp()
;	-----------------------------------------
;	 function printTimeStamp
;	-----------------------------------------
_printTimeStamp:
;	main.c:197: goToAddr(0x57);
	mov	dpl,#0x57
	lcall	_goToAddr
;	main.c:198: lcdPutCh(hour + '0');
	mov	dptr,#_hour
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
	lcall	_lcdPutCh
;	main.c:199: lcdPutCh(':');
	mov	dpl,#0x3a
	lcall	_lcdPutCh
;	main.c:200: lcdPutCh(min / 10 + '0');
	mov	dptr,#_min
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_lcdPutCh
;	main.c:201: lcdPutCh(min % 10 + '0');
	mov	dptr,#_min
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_lcdPutCh
;	main.c:202: lcdPutCh(':');
	mov	dpl,#0x3a
	lcall	_lcdPutCh
;	main.c:203: lcdPutCh(sec / 10 + '0');
	mov	dptr,#_sec
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_lcdPutCh
;	main.c:204: lcdPutCh(sec % 10 + '0');
	mov	dptr,#_sec
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_lcdPutCh
;	main.c:205: lcdPutCh('.');
	mov	dpl,#0x2e
	lcall	_lcdPutCh
;	main.c:206: lcdPutCh(partSec + '0');
	mov	dptr,#_partSec
	movx	a,@dptr
	add	a,#0x30
	mov	dpl,a
;	main.c:207: }
	ljmp	_lcdPutCh
	.area CSEG    (CODE)
	.area CONST   (CODE)
_lookUpTable1:
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
	.db 0x0a
	.db 0x0d
	.ascii "Enter the row number from 0 to 2"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "Entered Row is incorrect"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the column number from 0 to 15"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Entered Column is incorrect"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "%d %d %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the character"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the string"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
