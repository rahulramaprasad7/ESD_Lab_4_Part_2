                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcdCommands
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf
                                     12 	.globl _P5_7
                                     13 	.globl _P5_6
                                     14 	.globl _P5_5
                                     15 	.globl _P5_4
                                     16 	.globl _P5_3
                                     17 	.globl _P5_2
                                     18 	.globl _P5_1
                                     19 	.globl _P5_0
                                     20 	.globl _P4_7
                                     21 	.globl _P4_6
                                     22 	.globl _P4_5
                                     23 	.globl _P4_4
                                     24 	.globl _P4_3
                                     25 	.globl _P4_2
                                     26 	.globl _P4_1
                                     27 	.globl _P4_0
                                     28 	.globl _PX0L
                                     29 	.globl _PT0L
                                     30 	.globl _PX1L
                                     31 	.globl _PT1L
                                     32 	.globl _PSL
                                     33 	.globl _PT2L
                                     34 	.globl _PPCL
                                     35 	.globl _EC
                                     36 	.globl _CCF0
                                     37 	.globl _CCF1
                                     38 	.globl _CCF2
                                     39 	.globl _CCF3
                                     40 	.globl _CCF4
                                     41 	.globl _CR
                                     42 	.globl _CF
                                     43 	.globl _TF2
                                     44 	.globl _EXF2
                                     45 	.globl _RCLK
                                     46 	.globl _TCLK
                                     47 	.globl _EXEN2
                                     48 	.globl _TR2
                                     49 	.globl _C_T2
                                     50 	.globl _CP_RL2
                                     51 	.globl _T2CON_7
                                     52 	.globl _T2CON_6
                                     53 	.globl _T2CON_5
                                     54 	.globl _T2CON_4
                                     55 	.globl _T2CON_3
                                     56 	.globl _T2CON_2
                                     57 	.globl _T2CON_1
                                     58 	.globl _T2CON_0
                                     59 	.globl _PT2
                                     60 	.globl _ET2
                                     61 	.globl _CY
                                     62 	.globl _AC
                                     63 	.globl _F0
                                     64 	.globl _RS1
                                     65 	.globl _RS0
                                     66 	.globl _OV
                                     67 	.globl _F1
                                     68 	.globl _P
                                     69 	.globl _PS
                                     70 	.globl _PT1
                                     71 	.globl _PX1
                                     72 	.globl _PT0
                                     73 	.globl _PX0
                                     74 	.globl _RD
                                     75 	.globl _WR
                                     76 	.globl _T1
                                     77 	.globl _T0
                                     78 	.globl _INT1
                                     79 	.globl _INT0
                                     80 	.globl _TXD
                                     81 	.globl _RXD
                                     82 	.globl _P3_7
                                     83 	.globl _P3_6
                                     84 	.globl _P3_5
                                     85 	.globl _P3_4
                                     86 	.globl _P3_3
                                     87 	.globl _P3_2
                                     88 	.globl _P3_1
                                     89 	.globl _P3_0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _P2_7
                                     97 	.globl _P2_6
                                     98 	.globl _P2_5
                                     99 	.globl _P2_4
                                    100 	.globl _P2_3
                                    101 	.globl _P2_2
                                    102 	.globl _P2_1
                                    103 	.globl _P2_0
                                    104 	.globl _SM0
                                    105 	.globl _SM1
                                    106 	.globl _SM2
                                    107 	.globl _REN
                                    108 	.globl _TB8
                                    109 	.globl _RB8
                                    110 	.globl _TI
                                    111 	.globl _RI
                                    112 	.globl _P1_7
                                    113 	.globl _P1_6
                                    114 	.globl _P1_5
                                    115 	.globl _P1_4
                                    116 	.globl _P1_3
                                    117 	.globl _P1_2
                                    118 	.globl _P1_1
                                    119 	.globl _P1_0
                                    120 	.globl _TF1
                                    121 	.globl _TR1
                                    122 	.globl _TF0
                                    123 	.globl _TR0
                                    124 	.globl _IE1
                                    125 	.globl _IT1
                                    126 	.globl _IE0
                                    127 	.globl _IT0
                                    128 	.globl _P0_7
                                    129 	.globl _P0_6
                                    130 	.globl _P0_5
                                    131 	.globl _P0_4
                                    132 	.globl _P0_3
                                    133 	.globl _P0_2
                                    134 	.globl _P0_1
                                    135 	.globl _P0_0
                                    136 	.globl _EECON
                                    137 	.globl _KBF
                                    138 	.globl _KBE
                                    139 	.globl _KBLS
                                    140 	.globl _BRL
                                    141 	.globl _BDRCON
                                    142 	.globl _T2MOD
                                    143 	.globl _SPDAT
                                    144 	.globl _SPSTA
                                    145 	.globl _SPCON
                                    146 	.globl _SADEN
                                    147 	.globl _SADDR
                                    148 	.globl _WDTPRG
                                    149 	.globl _WDTRST
                                    150 	.globl _P5
                                    151 	.globl _P4
                                    152 	.globl _IPH1
                                    153 	.globl _IPL1
                                    154 	.globl _IPH0
                                    155 	.globl _IPL0
                                    156 	.globl _IEN1
                                    157 	.globl _IEN0
                                    158 	.globl _CMOD
                                    159 	.globl _CL
                                    160 	.globl _CH
                                    161 	.globl _CCON
                                    162 	.globl _CCAPM4
                                    163 	.globl _CCAPM3
                                    164 	.globl _CCAPM2
                                    165 	.globl _CCAPM1
                                    166 	.globl _CCAPM0
                                    167 	.globl _CCAP4L
                                    168 	.globl _CCAP3L
                                    169 	.globl _CCAP2L
                                    170 	.globl _CCAP1L
                                    171 	.globl _CCAP0L
                                    172 	.globl _CCAP4H
                                    173 	.globl _CCAP3H
                                    174 	.globl _CCAP2H
                                    175 	.globl _CCAP1H
                                    176 	.globl _CCAP0H
                                    177 	.globl _CKCON1
                                    178 	.globl _CKCON0
                                    179 	.globl _CKRL
                                    180 	.globl _AUXR1
                                    181 	.globl _AUXR
                                    182 	.globl _TH2
                                    183 	.globl _TL2
                                    184 	.globl _RCAP2H
                                    185 	.globl _RCAP2L
                                    186 	.globl _T2CON
                                    187 	.globl _B
                                    188 	.globl _ACC
                                    189 	.globl _PSW
                                    190 	.globl _IP
                                    191 	.globl _P3
                                    192 	.globl _IE
                                    193 	.globl _P2
                                    194 	.globl _SBUF
                                    195 	.globl _SCON
                                    196 	.globl _P1
                                    197 	.globl _TH1
                                    198 	.globl _TH0
                                    199 	.globl _TL1
                                    200 	.globl _TL0
                                    201 	.globl _TMOD
                                    202 	.globl _TCON
                                    203 	.globl _PCON
                                    204 	.globl _DPH
                                    205 	.globl _DPL
                                    206 	.globl _SP
                                    207 	.globl _P0
                                    208 	.globl _lookUpTable
                                    209 	.globl _goToXY_PARM_2
                                    210 	.globl _writeCharacter
                                    211 	.globl _busyPoll
                                    212 	.globl _lcdGeneral
                                    213 	.globl _delay
                                    214 	.globl _timerInit
                                    215 	.globl _busyWait
                                    216 	.globl _lcdInit
                                    217 	.globl _lcdPutCh
                                    218 	.globl _lcdClear
                                    219 	.globl _goToAddr
                                    220 	.globl _goToXY
                                    221 	.globl _putsLCD
                                    222 	.globl _getchar
                                    223 	.globl _putchar
                                    224 	.globl _gets
                                    225 ;--------------------------------------------------------
                                    226 ; special function registers
                                    227 ;--------------------------------------------------------
                                    228 	.area RSEG    (ABS,DATA)
      000000                        229 	.org 0x0000
                           000080   230 _P0	=	0x0080
                           000081   231 _SP	=	0x0081
                           000082   232 _DPL	=	0x0082
                           000083   233 _DPH	=	0x0083
                           000087   234 _PCON	=	0x0087
                           000088   235 _TCON	=	0x0088
                           000089   236 _TMOD	=	0x0089
                           00008A   237 _TL0	=	0x008a
                           00008B   238 _TL1	=	0x008b
                           00008C   239 _TH0	=	0x008c
                           00008D   240 _TH1	=	0x008d
                           000090   241 _P1	=	0x0090
                           000098   242 _SCON	=	0x0098
                           000099   243 _SBUF	=	0x0099
                           0000A0   244 _P2	=	0x00a0
                           0000A8   245 _IE	=	0x00a8
                           0000B0   246 _P3	=	0x00b0
                           0000B8   247 _IP	=	0x00b8
                           0000D0   248 _PSW	=	0x00d0
                           0000E0   249 _ACC	=	0x00e0
                           0000F0   250 _B	=	0x00f0
                           0000C8   251 _T2CON	=	0x00c8
                           0000CA   252 _RCAP2L	=	0x00ca
                           0000CB   253 _RCAP2H	=	0x00cb
                           0000CC   254 _TL2	=	0x00cc
                           0000CD   255 _TH2	=	0x00cd
                           00008E   256 _AUXR	=	0x008e
                           0000A2   257 _AUXR1	=	0x00a2
                           000097   258 _CKRL	=	0x0097
                           00008F   259 _CKCON0	=	0x008f
                           0000AF   260 _CKCON1	=	0x00af
                           0000FA   261 _CCAP0H	=	0x00fa
                           0000FB   262 _CCAP1H	=	0x00fb
                           0000FC   263 _CCAP2H	=	0x00fc
                           0000FD   264 _CCAP3H	=	0x00fd
                           0000FE   265 _CCAP4H	=	0x00fe
                           0000EA   266 _CCAP0L	=	0x00ea
                           0000EB   267 _CCAP1L	=	0x00eb
                           0000EC   268 _CCAP2L	=	0x00ec
                           0000ED   269 _CCAP3L	=	0x00ed
                           0000EE   270 _CCAP4L	=	0x00ee
                           0000DA   271 _CCAPM0	=	0x00da
                           0000DB   272 _CCAPM1	=	0x00db
                           0000DC   273 _CCAPM2	=	0x00dc
                           0000DD   274 _CCAPM3	=	0x00dd
                           0000DE   275 _CCAPM4	=	0x00de
                           0000D8   276 _CCON	=	0x00d8
                           0000F9   277 _CH	=	0x00f9
                           0000E9   278 _CL	=	0x00e9
                           0000D9   279 _CMOD	=	0x00d9
                           0000A8   280 _IEN0	=	0x00a8
                           0000B1   281 _IEN1	=	0x00b1
                           0000B8   282 _IPL0	=	0x00b8
                           0000B7   283 _IPH0	=	0x00b7
                           0000B2   284 _IPL1	=	0x00b2
                           0000B3   285 _IPH1	=	0x00b3
                           0000C0   286 _P4	=	0x00c0
                           0000E8   287 _P5	=	0x00e8
                           0000A6   288 _WDTRST	=	0x00a6
                           0000A7   289 _WDTPRG	=	0x00a7
                           0000A9   290 _SADDR	=	0x00a9
                           0000B9   291 _SADEN	=	0x00b9
                           0000C3   292 _SPCON	=	0x00c3
                           0000C4   293 _SPSTA	=	0x00c4
                           0000C5   294 _SPDAT	=	0x00c5
                           0000C9   295 _T2MOD	=	0x00c9
                           00009B   296 _BDRCON	=	0x009b
                           00009A   297 _BRL	=	0x009a
                           00009C   298 _KBLS	=	0x009c
                           00009D   299 _KBE	=	0x009d
                           00009E   300 _KBF	=	0x009e
                           0000D2   301 _EECON	=	0x00d2
                                    302 ;--------------------------------------------------------
                                    303 ; special function bits
                                    304 ;--------------------------------------------------------
                                    305 	.area RSEG    (ABS,DATA)
      000000                        306 	.org 0x0000
                           000080   307 _P0_0	=	0x0080
                           000081   308 _P0_1	=	0x0081
                           000082   309 _P0_2	=	0x0082
                           000083   310 _P0_3	=	0x0083
                           000084   311 _P0_4	=	0x0084
                           000085   312 _P0_5	=	0x0085
                           000086   313 _P0_6	=	0x0086
                           000087   314 _P0_7	=	0x0087
                           000088   315 _IT0	=	0x0088
                           000089   316 _IE0	=	0x0089
                           00008A   317 _IT1	=	0x008a
                           00008B   318 _IE1	=	0x008b
                           00008C   319 _TR0	=	0x008c
                           00008D   320 _TF0	=	0x008d
                           00008E   321 _TR1	=	0x008e
                           00008F   322 _TF1	=	0x008f
                           000090   323 _P1_0	=	0x0090
                           000091   324 _P1_1	=	0x0091
                           000092   325 _P1_2	=	0x0092
                           000093   326 _P1_3	=	0x0093
                           000094   327 _P1_4	=	0x0094
                           000095   328 _P1_5	=	0x0095
                           000096   329 _P1_6	=	0x0096
                           000097   330 _P1_7	=	0x0097
                           000098   331 _RI	=	0x0098
                           000099   332 _TI	=	0x0099
                           00009A   333 _RB8	=	0x009a
                           00009B   334 _TB8	=	0x009b
                           00009C   335 _REN	=	0x009c
                           00009D   336 _SM2	=	0x009d
                           00009E   337 _SM1	=	0x009e
                           00009F   338 _SM0	=	0x009f
                           0000A0   339 _P2_0	=	0x00a0
                           0000A1   340 _P2_1	=	0x00a1
                           0000A2   341 _P2_2	=	0x00a2
                           0000A3   342 _P2_3	=	0x00a3
                           0000A4   343 _P2_4	=	0x00a4
                           0000A5   344 _P2_5	=	0x00a5
                           0000A6   345 _P2_6	=	0x00a6
                           0000A7   346 _P2_7	=	0x00a7
                           0000A8   347 _EX0	=	0x00a8
                           0000A9   348 _ET0	=	0x00a9
                           0000AA   349 _EX1	=	0x00aa
                           0000AB   350 _ET1	=	0x00ab
                           0000AC   351 _ES	=	0x00ac
                           0000AF   352 _EA	=	0x00af
                           0000B0   353 _P3_0	=	0x00b0
                           0000B1   354 _P3_1	=	0x00b1
                           0000B2   355 _P3_2	=	0x00b2
                           0000B3   356 _P3_3	=	0x00b3
                           0000B4   357 _P3_4	=	0x00b4
                           0000B5   358 _P3_5	=	0x00b5
                           0000B6   359 _P3_6	=	0x00b6
                           0000B7   360 _P3_7	=	0x00b7
                           0000B0   361 _RXD	=	0x00b0
                           0000B1   362 _TXD	=	0x00b1
                           0000B2   363 _INT0	=	0x00b2
                           0000B3   364 _INT1	=	0x00b3
                           0000B4   365 _T0	=	0x00b4
                           0000B5   366 _T1	=	0x00b5
                           0000B6   367 _WR	=	0x00b6
                           0000B7   368 _RD	=	0x00b7
                           0000B8   369 _PX0	=	0x00b8
                           0000B9   370 _PT0	=	0x00b9
                           0000BA   371 _PX1	=	0x00ba
                           0000BB   372 _PT1	=	0x00bb
                           0000BC   373 _PS	=	0x00bc
                           0000D0   374 _P	=	0x00d0
                           0000D1   375 _F1	=	0x00d1
                           0000D2   376 _OV	=	0x00d2
                           0000D3   377 _RS0	=	0x00d3
                           0000D4   378 _RS1	=	0x00d4
                           0000D5   379 _F0	=	0x00d5
                           0000D6   380 _AC	=	0x00d6
                           0000D7   381 _CY	=	0x00d7
                           0000AD   382 _ET2	=	0x00ad
                           0000BD   383 _PT2	=	0x00bd
                           0000C8   384 _T2CON_0	=	0x00c8
                           0000C9   385 _T2CON_1	=	0x00c9
                           0000CA   386 _T2CON_2	=	0x00ca
                           0000CB   387 _T2CON_3	=	0x00cb
                           0000CC   388 _T2CON_4	=	0x00cc
                           0000CD   389 _T2CON_5	=	0x00cd
                           0000CE   390 _T2CON_6	=	0x00ce
                           0000CF   391 _T2CON_7	=	0x00cf
                           0000C8   392 _CP_RL2	=	0x00c8
                           0000C9   393 _C_T2	=	0x00c9
                           0000CA   394 _TR2	=	0x00ca
                           0000CB   395 _EXEN2	=	0x00cb
                           0000CC   396 _TCLK	=	0x00cc
                           0000CD   397 _RCLK	=	0x00cd
                           0000CE   398 _EXF2	=	0x00ce
                           0000CF   399 _TF2	=	0x00cf
                           0000DF   400 _CF	=	0x00df
                           0000DE   401 _CR	=	0x00de
                           0000DC   402 _CCF4	=	0x00dc
                           0000DB   403 _CCF3	=	0x00db
                           0000DA   404 _CCF2	=	0x00da
                           0000D9   405 _CCF1	=	0x00d9
                           0000D8   406 _CCF0	=	0x00d8
                           0000AE   407 _EC	=	0x00ae
                           0000BE   408 _PPCL	=	0x00be
                           0000BD   409 _PT2L	=	0x00bd
                           0000BC   410 _PSL	=	0x00bc
                           0000BB   411 _PT1L	=	0x00bb
                           0000BA   412 _PX1L	=	0x00ba
                           0000B9   413 _PT0L	=	0x00b9
                           0000B8   414 _PX0L	=	0x00b8
                           0000C0   415 _P4_0	=	0x00c0
                           0000C1   416 _P4_1	=	0x00c1
                           0000C2   417 _P4_2	=	0x00c2
                           0000C3   418 _P4_3	=	0x00c3
                           0000C4   419 _P4_4	=	0x00c4
                           0000C5   420 _P4_5	=	0x00c5
                           0000C6   421 _P4_6	=	0x00c6
                           0000C7   422 _P4_7	=	0x00c7
                           0000E8   423 _P5_0	=	0x00e8
                           0000E9   424 _P5_1	=	0x00e9
                           0000EA   425 _P5_2	=	0x00ea
                           0000EB   426 _P5_3	=	0x00eb
                           0000EC   427 _P5_4	=	0x00ec
                           0000ED   428 _P5_5	=	0x00ed
                           0000EE   429 _P5_6	=	0x00ee
                           0000EF   430 _P5_7	=	0x00ef
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable register banks
                                    433 ;--------------------------------------------------------
                                    434 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        435 	.ds 8
                                    436 ;--------------------------------------------------------
                                    437 ; internal ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area DSEG    (DATA)
      000008                        440 _putsLCD_sloc0_1_0:
      000008                        441 	.ds 2
      00000A                        442 _putsLCD_sloc1_1_0:
      00000A                        443 	.ds 3
                                    444 ;--------------------------------------------------------
                                    445 ; overlayable items in internal ram 
                                    446 ;--------------------------------------------------------
                                    447 ;--------------------------------------------------------
                                    448 ; indirectly addressable internal ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area ISEG    (DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; absolute internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area IABS    (ABS,DATA)
                                    455 	.area IABS    (ABS,DATA)
                                    456 ;--------------------------------------------------------
                                    457 ; bit data
                                    458 ;--------------------------------------------------------
                                    459 	.area BSEG    (BIT)
                                    460 ;--------------------------------------------------------
                                    461 ; paged external ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area PSEG    (PAG,XDATA)
                                    464 ;--------------------------------------------------------
                                    465 ; external ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area XSEG    (XDATA)
                           00F000   468 _lcdGeneral	=	0xf000
                           00F200   469 _busyPoll	=	0xf200
                           00F100   470 _writeCharacter	=	0xf100
      000001                        471 _lcdPutCh_x_65536_45:
      000001                        472 	.ds 1
      000002                        473 _goToAddr_x_65536_48:
      000002                        474 	.ds 1
      000003                        475 _goToXY_PARM_2:
      000003                        476 	.ds 1
      000004                        477 _goToXY_x_65536_50:
      000004                        478 	.ds 1
      000005                        479 _putsLCD_y_65536_52:
      000005                        480 	.ds 3
      000008                        481 _putsLCD_i_65536_53:
      000008                        482 	.ds 2
      00000A                        483 _putchar_c_65536_57:
      00000A                        484 	.ds 2
      00000C                        485 _gets_s_65536_59:
      00000C                        486 	.ds 3
      00000F                        487 _gets_count_65536_60:
      00000F                        488 	.ds 2
                                    489 ;--------------------------------------------------------
                                    490 ; absolute external ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XABS    (ABS,XDATA)
                                    493 ;--------------------------------------------------------
                                    494 ; external initialized ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area XISEG   (XDATA)
      0000A4                        497 _lookUpTable::
      0000A4                        498 	.ds 64
                                    499 	.area HOME    (CODE)
                                    500 	.area GSINIT0 (CODE)
                                    501 	.area GSINIT1 (CODE)
                                    502 	.area GSINIT2 (CODE)
                                    503 	.area GSINIT3 (CODE)
                                    504 	.area GSINIT4 (CODE)
                                    505 	.area GSINIT5 (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 	.area GSFINAL (CODE)
                                    508 	.area CSEG    (CODE)
                                    509 ;--------------------------------------------------------
                                    510 ; global & static initialisations
                                    511 ;--------------------------------------------------------
                                    512 	.area HOME    (CODE)
                                    513 	.area GSINIT  (CODE)
                                    514 	.area GSFINAL (CODE)
                                    515 	.area GSINIT  (CODE)
                                    516 ;--------------------------------------------------------
                                    517 ; Home
                                    518 ;--------------------------------------------------------
                                    519 	.area HOME    (CODE)
                                    520 	.area HOME    (CODE)
                                    521 ;--------------------------------------------------------
                                    522 ; code
                                    523 ;--------------------------------------------------------
                                    524 	.area CSEG    (CODE)
                                    525 ;------------------------------------------------------------
                                    526 ;Allocation info for local variables in function 'delay'
                                    527 ;------------------------------------------------------------
                                    528 ;i                         Allocated with name '_delay_i_65536_40'
                                    529 ;------------------------------------------------------------
                                    530 ;	lcdCommands.c:6: void delay()
                                    531 ;	-----------------------------------------
                                    532 ;	 function delay
                                    533 ;	-----------------------------------------
      00206D                        534 _delay:
                           000007   535 	ar7 = 0x07
                           000006   536 	ar6 = 0x06
                           000005   537 	ar5 = 0x05
                           000004   538 	ar4 = 0x04
                           000003   539 	ar3 = 0x03
                           000002   540 	ar2 = 0x02
                           000001   541 	ar1 = 0x01
                           000000   542 	ar0 = 0x00
                                    543 ;	lcdCommands.c:9: for ( i = 0 ; i < 1000; i++);
      00206D 7E E8            [12]  544 	mov	r6,#0xe8
      00206F 7F 03            [12]  545 	mov	r7,#0x03
      002071                        546 00104$:
      002071 1E               [12]  547 	dec	r6
      002072 BE FF 01         [24]  548 	cjne	r6,#0xff,00113$
      002075 1F               [12]  549 	dec	r7
      002076                        550 00113$:
      002076 EE               [12]  551 	mov	a,r6
      002077 4F               [12]  552 	orl	a,r7
      002078 70 F7            [24]  553 	jnz	00104$
                                    554 ;	lcdCommands.c:10: }
      00207A 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'timerInit'
                                    558 ;------------------------------------------------------------
                                    559 ;	lcdCommands.c:12: void timerInit()
                                    560 ;	-----------------------------------------
                                    561 ;	 function timerInit
                                    562 ;	-----------------------------------------
      00207B                        563 _timerInit:
                                    564 ;	lcdCommands.c:14: TMOD |= 0x01;
      00207B 43 89 01         [24]  565 	orl	_TMOD,#0x01
                                    566 ;	lcdCommands.c:15: TH0 = 0x4B;
      00207E 75 8C 4B         [24]  567 	mov	_TH0,#0x4b
                                    568 ;	lcdCommands.c:16: TL0 = 0xFC;
      002081 75 8A FC         [24]  569 	mov	_TL0,#0xfc
                                    570 ;	lcdCommands.c:17: TR0 = 1;           //turn ON Timer zero
                                    571 ;	assignBit
      002084 D2 8C            [12]  572 	setb	_TR0
                                    573 ;	lcdCommands.c:18: EA = 1;            //Enable Global Interrupt bit
                                    574 ;	assignBit
      002086 D2 AF            [12]  575 	setb	_EA
                                    576 ;	lcdCommands.c:19: ET0 = 1;           //Enable TImer0 Interrupt
                                    577 ;	assignBit
      002088 D2 A9            [12]  578 	setb	_ET0
                                    579 ;	lcdCommands.c:20: }
      00208A 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'busyWait'
                                    583 ;------------------------------------------------------------
                                    584 ;	lcdCommands.c:22: void busyWait()
                                    585 ;	-----------------------------------------
                                    586 ;	 function busyWait
                                    587 ;	-----------------------------------------
      00208B                        588 _busyWait:
                                    589 ;	lcdCommands.c:24: while (busyPoll & 0x80);
      00208B                        590 00101$:
      00208B 90 F2 00         [24]  591 	mov	dptr,#_busyPoll
      00208E E0               [24]  592 	movx	a,@dptr
      00208F FE               [12]  593 	mov	r6,a
      002090 A3               [24]  594 	inc	dptr
      002091 E0               [24]  595 	movx	a,@dptr
      002092 EE               [12]  596 	mov	a,r6
      002093 20 E7 F5         [24]  597 	jb	acc.7,00101$
                                    598 ;	lcdCommands.c:25: }
      002096 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'lcdInit'
                                    602 ;------------------------------------------------------------
                                    603 ;	lcdCommands.c:27: void lcdInit()
                                    604 ;	-----------------------------------------
                                    605 ;	 function lcdInit
                                    606 ;	-----------------------------------------
      002097                        607 _lcdInit:
                                    608 ;	lcdCommands.c:29: delay();
      002097 12 20 6D         [24]  609 	lcall	_delay
                                    610 ;	lcdCommands.c:30: lcdGeneral = 0x30;
      00209A 90 F0 00         [24]  611 	mov	dptr,#_lcdGeneral
      00209D 74 30            [12]  612 	mov	a,#0x30
      00209F F0               [24]  613 	movx	@dptr,a
      0020A0 E4               [12]  614 	clr	a
      0020A1 A3               [24]  615 	inc	dptr
      0020A2 F0               [24]  616 	movx	@dptr,a
                                    617 ;	lcdCommands.c:31: delay();
      0020A3 12 20 6D         [24]  618 	lcall	_delay
                                    619 ;	lcdCommands.c:32: lcdGeneral = 0x30;
      0020A6 90 F0 00         [24]  620 	mov	dptr,#_lcdGeneral
      0020A9 74 30            [12]  621 	mov	a,#0x30
      0020AB F0               [24]  622 	movx	@dptr,a
      0020AC E4               [12]  623 	clr	a
      0020AD A3               [24]  624 	inc	dptr
      0020AE F0               [24]  625 	movx	@dptr,a
                                    626 ;	lcdCommands.c:33: delay();
      0020AF 12 20 6D         [24]  627 	lcall	_delay
                                    628 ;	lcdCommands.c:34: lcdGeneral = 0x30;
      0020B2 90 F0 00         [24]  629 	mov	dptr,#_lcdGeneral
      0020B5 74 30            [12]  630 	mov	a,#0x30
      0020B7 F0               [24]  631 	movx	@dptr,a
      0020B8 E4               [12]  632 	clr	a
      0020B9 A3               [24]  633 	inc	dptr
      0020BA F0               [24]  634 	movx	@dptr,a
                                    635 ;	lcdCommands.c:35: busyWait();
      0020BB 12 20 8B         [24]  636 	lcall	_busyWait
                                    637 ;	lcdCommands.c:36: lcdGeneral = 0x38;
      0020BE 90 F0 00         [24]  638 	mov	dptr,#_lcdGeneral
      0020C1 74 38            [12]  639 	mov	a,#0x38
      0020C3 F0               [24]  640 	movx	@dptr,a
      0020C4 E4               [12]  641 	clr	a
      0020C5 A3               [24]  642 	inc	dptr
      0020C6 F0               [24]  643 	movx	@dptr,a
                                    644 ;	lcdCommands.c:37: busyWait();
      0020C7 12 20 8B         [24]  645 	lcall	_busyWait
                                    646 ;	lcdCommands.c:38: lcdGeneral = 0x08;
      0020CA 90 F0 00         [24]  647 	mov	dptr,#_lcdGeneral
      0020CD 74 08            [12]  648 	mov	a,#0x08
      0020CF F0               [24]  649 	movx	@dptr,a
      0020D0 E4               [12]  650 	clr	a
      0020D1 A3               [24]  651 	inc	dptr
      0020D2 F0               [24]  652 	movx	@dptr,a
                                    653 ;	lcdCommands.c:39: busyWait();
      0020D3 12 20 8B         [24]  654 	lcall	_busyWait
                                    655 ;	lcdCommands.c:40: lcdGeneral = 0x0C;
      0020D6 90 F0 00         [24]  656 	mov	dptr,#_lcdGeneral
      0020D9 74 0C            [12]  657 	mov	a,#0x0c
      0020DB F0               [24]  658 	movx	@dptr,a
      0020DC E4               [12]  659 	clr	a
      0020DD A3               [24]  660 	inc	dptr
      0020DE F0               [24]  661 	movx	@dptr,a
                                    662 ;	lcdCommands.c:41: busyWait();
      0020DF 12 20 8B         [24]  663 	lcall	_busyWait
                                    664 ;	lcdCommands.c:42: lcdGeneral = 0x06;
      0020E2 90 F0 00         [24]  665 	mov	dptr,#_lcdGeneral
      0020E5 74 06            [12]  666 	mov	a,#0x06
      0020E7 F0               [24]  667 	movx	@dptr,a
      0020E8 E4               [12]  668 	clr	a
      0020E9 A3               [24]  669 	inc	dptr
      0020EA F0               [24]  670 	movx	@dptr,a
                                    671 ;	lcdCommands.c:43: busyWait();
      0020EB 12 20 8B         [24]  672 	lcall	_busyWait
                                    673 ;	lcdCommands.c:44: lcdGeneral = 0x01;
      0020EE 90 F0 00         [24]  674 	mov	dptr,#_lcdGeneral
      0020F1 74 01            [12]  675 	mov	a,#0x01
      0020F3 F0               [24]  676 	movx	@dptr,a
      0020F4 E4               [12]  677 	clr	a
      0020F5 A3               [24]  678 	inc	dptr
      0020F6 F0               [24]  679 	movx	@dptr,a
                                    680 ;	lcdCommands.c:45: }
      0020F7 22               [24]  681 	ret
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'lcdPutCh'
                                    684 ;------------------------------------------------------------
                                    685 ;x                         Allocated with name '_lcdPutCh_x_65536_45'
                                    686 ;------------------------------------------------------------
                                    687 ;	lcdCommands.c:47: void lcdPutCh(uint8_t x)
                                    688 ;	-----------------------------------------
                                    689 ;	 function lcdPutCh
                                    690 ;	-----------------------------------------
      0020F8                        691 _lcdPutCh:
      0020F8 E5 82            [12]  692 	mov	a,dpl
      0020FA 90 00 01         [24]  693 	mov	dptr,#_lcdPutCh_x_65536_45
      0020FD F0               [24]  694 	movx	@dptr,a
                                    695 ;	lcdCommands.c:49: busyWait();
      0020FE 12 20 8B         [24]  696 	lcall	_busyWait
                                    697 ;	lcdCommands.c:50: writeCharacter = x;
      002101 90 00 01         [24]  698 	mov	dptr,#_lcdPutCh_x_65536_45
      002104 E0               [24]  699 	movx	a,@dptr
      002105 90 F1 00         [24]  700 	mov	dptr,#_writeCharacter
      002108 F0               [24]  701 	movx	@dptr,a
      002109 E4               [12]  702 	clr	a
      00210A A3               [24]  703 	inc	dptr
      00210B F0               [24]  704 	movx	@dptr,a
                                    705 ;	lcdCommands.c:51: }
      00210C 22               [24]  706 	ret
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'lcdClear'
                                    709 ;------------------------------------------------------------
                                    710 ;	lcdCommands.c:53: void lcdClear()
                                    711 ;	-----------------------------------------
                                    712 ;	 function lcdClear
                                    713 ;	-----------------------------------------
      00210D                        714 _lcdClear:
                                    715 ;	lcdCommands.c:55: busyWait();
      00210D 12 20 8B         [24]  716 	lcall	_busyWait
                                    717 ;	lcdCommands.c:56: lcdGeneral = 0x01;
      002110 90 F0 00         [24]  718 	mov	dptr,#_lcdGeneral
      002113 74 01            [12]  719 	mov	a,#0x01
      002115 F0               [24]  720 	movx	@dptr,a
      002116 E4               [12]  721 	clr	a
      002117 A3               [24]  722 	inc	dptr
      002118 F0               [24]  723 	movx	@dptr,a
                                    724 ;	lcdCommands.c:57: }
      002119 22               [24]  725 	ret
                                    726 ;------------------------------------------------------------
                                    727 ;Allocation info for local variables in function 'goToAddr'
                                    728 ;------------------------------------------------------------
                                    729 ;x                         Allocated with name '_goToAddr_x_65536_48'
                                    730 ;------------------------------------------------------------
                                    731 ;	lcdCommands.c:59: void goToAddr(uint8_t x)
                                    732 ;	-----------------------------------------
                                    733 ;	 function goToAddr
                                    734 ;	-----------------------------------------
      00211A                        735 _goToAddr:
      00211A E5 82            [12]  736 	mov	a,dpl
      00211C 90 00 02         [24]  737 	mov	dptr,#_goToAddr_x_65536_48
      00211F F0               [24]  738 	movx	@dptr,a
                                    739 ;	lcdCommands.c:61: busyWait();
      002120 12 20 8B         [24]  740 	lcall	_busyWait
                                    741 ;	lcdCommands.c:62: lcdGeneral = 0x80 | x;
      002123 90 00 02         [24]  742 	mov	dptr,#_goToAddr_x_65536_48
      002126 E0               [24]  743 	movx	a,@dptr
      002127 FF               [12]  744 	mov	r7,a
      002128 7E 00            [12]  745 	mov	r6,#0x00
      00212A 90 F0 00         [24]  746 	mov	dptr,#_lcdGeneral
      00212D 74 80            [12]  747 	mov	a,#0x80
      00212F 4F               [12]  748 	orl	a,r7
      002130 F0               [24]  749 	movx	@dptr,a
      002131 EE               [12]  750 	mov	a,r6
      002132 A3               [24]  751 	inc	dptr
      002133 F0               [24]  752 	movx	@dptr,a
                                    753 ;	lcdCommands.c:63: }
      002134 22               [24]  754 	ret
                                    755 ;------------------------------------------------------------
                                    756 ;Allocation info for local variables in function 'goToXY'
                                    757 ;------------------------------------------------------------
                                    758 ;y                         Allocated with name '_goToXY_PARM_2'
                                    759 ;x                         Allocated with name '_goToXY_x_65536_50'
                                    760 ;------------------------------------------------------------
                                    761 ;	lcdCommands.c:65: void goToXY(uint8_t x, uint8_t y)
                                    762 ;	-----------------------------------------
                                    763 ;	 function goToXY
                                    764 ;	-----------------------------------------
      002135                        765 _goToXY:
      002135 E5 82            [12]  766 	mov	a,dpl
      002137 90 00 04         [24]  767 	mov	dptr,#_goToXY_x_65536_50
      00213A F0               [24]  768 	movx	@dptr,a
                                    769 ;	lcdCommands.c:67: busyWait();
      00213B 12 20 8B         [24]  770 	lcall	_busyWait
                                    771 ;	lcdCommands.c:68: goToAddr(lookUpTable[x][y]);
      00213E 90 00 04         [24]  772 	mov	dptr,#_goToXY_x_65536_50
      002141 E0               [24]  773 	movx	a,@dptr
      002142 75 F0 10         [24]  774 	mov	b,#0x10
      002145 A4               [48]  775 	mul	ab
      002146 24 A4            [12]  776 	add	a,#_lookUpTable
      002148 FE               [12]  777 	mov	r6,a
      002149 74 00            [12]  778 	mov	a,#(_lookUpTable >> 8)
      00214B 35 F0            [12]  779 	addc	a,b
      00214D FF               [12]  780 	mov	r7,a
      00214E 90 00 03         [24]  781 	mov	dptr,#_goToXY_PARM_2
      002151 E0               [24]  782 	movx	a,@dptr
      002152 2E               [12]  783 	add	a,r6
      002153 F5 82            [12]  784 	mov	dpl,a
      002155 E4               [12]  785 	clr	a
      002156 3F               [12]  786 	addc	a,r7
      002157 F5 83            [12]  787 	mov	dph,a
      002159 E0               [24]  788 	movx	a,@dptr
      00215A F5 82            [12]  789 	mov	dpl,a
                                    790 ;	lcdCommands.c:69: }
      00215C 02 21 1A         [24]  791 	ljmp	_goToAddr
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'putsLCD'
                                    794 ;------------------------------------------------------------
                                    795 ;sloc0                     Allocated with name '_putsLCD_sloc0_1_0'
                                    796 ;sloc1                     Allocated with name '_putsLCD_sloc1_1_0'
                                    797 ;y                         Allocated with name '_putsLCD_y_65536_52'
                                    798 ;i                         Allocated with name '_putsLCD_i_65536_53'
                                    799 ;j                         Allocated with name '_putsLCD_j_65536_53'
                                    800 ;k                         Allocated with name '_putsLCD_k_65536_53'
                                    801 ;------------------------------------------------------------
                                    802 ;	lcdCommands.c:71: void putsLCD(char* y)
                                    803 ;	-----------------------------------------
                                    804 ;	 function putsLCD
                                    805 ;	-----------------------------------------
      00215F                        806 _putsLCD:
      00215F AF F0            [24]  807 	mov	r7,b
      002161 AE 83            [24]  808 	mov	r6,dph
      002163 E5 82            [12]  809 	mov	a,dpl
      002165 90 00 05         [24]  810 	mov	dptr,#_putsLCD_y_65536_52
      002168 F0               [24]  811 	movx	@dptr,a
      002169 EE               [12]  812 	mov	a,r6
      00216A A3               [24]  813 	inc	dptr
      00216B F0               [24]  814 	movx	@dptr,a
      00216C EF               [12]  815 	mov	a,r7
      00216D A3               [24]  816 	inc	dptr
      00216E F0               [24]  817 	movx	@dptr,a
                                    818 ;	lcdCommands.c:73: int i = 0,j = 0, k =0;
      00216F 90 00 08         [24]  819 	mov	dptr,#_putsLCD_i_65536_53
      002172 E4               [12]  820 	clr	a
      002173 F0               [24]  821 	movx	@dptr,a
      002174 A3               [24]  822 	inc	dptr
      002175 F0               [24]  823 	movx	@dptr,a
                                    824 ;	lcdCommands.c:74: while(y[i + (j * 16)] != '\0')
      002176 90 00 05         [24]  825 	mov	dptr,#_putsLCD_y_65536_52
      002179 E0               [24]  826 	movx	a,@dptr
      00217A F5 0A            [12]  827 	mov	_putsLCD_sloc1_1_0,a
      00217C A3               [24]  828 	inc	dptr
      00217D E0               [24]  829 	movx	a,@dptr
      00217E F5 0B            [12]  830 	mov	(_putsLCD_sloc1_1_0 + 1),a
      002180 A3               [24]  831 	inc	dptr
      002181 E0               [24]  832 	movx	a,@dptr
      002182 F5 0C            [12]  833 	mov	(_putsLCD_sloc1_1_0 + 2),a
      002184 AA 0A            [24]  834 	mov	r2,_putsLCD_sloc1_1_0
      002186 AB 0B            [24]  835 	mov	r3,(_putsLCD_sloc1_1_0 + 1)
      002188 AC 0C            [24]  836 	mov	r4,(_putsLCD_sloc1_1_0 + 2)
      00218A 78 00            [12]  837 	mov	r0,#0x00
      00218C 79 00            [12]  838 	mov	r1,#0x00
      00218E                        839 00103$:
      00218E 88 06            [24]  840 	mov	ar6,r0
      002190 E9               [12]  841 	mov	a,r1
      002191 C4               [12]  842 	swap	a
      002192 54 F0            [12]  843 	anl	a,#0xf0
      002194 CE               [12]  844 	xch	a,r6
      002195 C4               [12]  845 	swap	a
      002196 CE               [12]  846 	xch	a,r6
      002197 6E               [12]  847 	xrl	a,r6
      002198 CE               [12]  848 	xch	a,r6
      002199 54 F0            [12]  849 	anl	a,#0xf0
      00219B CE               [12]  850 	xch	a,r6
      00219C 6E               [12]  851 	xrl	a,r6
      00219D FF               [12]  852 	mov	r7,a
      00219E 90 00 08         [24]  853 	mov	dptr,#_putsLCD_i_65536_53
      0021A1 E0               [24]  854 	movx	a,@dptr
      0021A2 F5 08            [12]  855 	mov	_putsLCD_sloc0_1_0,a
      0021A4 A3               [24]  856 	inc	dptr
      0021A5 E0               [24]  857 	movx	a,@dptr
      0021A6 F5 09            [12]  858 	mov	(_putsLCD_sloc0_1_0 + 1),a
      0021A8 EE               [12]  859 	mov	a,r6
      0021A9 25 08            [12]  860 	add	a,_putsLCD_sloc0_1_0
      0021AB FE               [12]  861 	mov	r6,a
      0021AC EF               [12]  862 	mov	a,r7
      0021AD 35 09            [12]  863 	addc	a,(_putsLCD_sloc0_1_0 + 1)
      0021AF FF               [12]  864 	mov	r7,a
      0021B0 EE               [12]  865 	mov	a,r6
      0021B1 2A               [12]  866 	add	a,r2
      0021B2 FE               [12]  867 	mov	r6,a
      0021B3 EF               [12]  868 	mov	a,r7
      0021B4 3B               [12]  869 	addc	a,r3
      0021B5 FF               [12]  870 	mov	r7,a
      0021B6 8C 05            [24]  871 	mov	ar5,r4
      0021B8 8E 82            [24]  872 	mov	dpl,r6
      0021BA 8F 83            [24]  873 	mov	dph,r7
      0021BC 8D F0            [24]  874 	mov	b,r5
      0021BE 12 33 1A         [24]  875 	lcall	__gptrget
      0021C1 70 01            [24]  876 	jnz	00121$
      0021C3 22               [24]  877 	ret
      0021C4                        878 00121$:
                                    879 ;	lcdCommands.c:76: busyWait();
      0021C4 C0 04            [24]  880 	push	ar4
      0021C6 C0 03            [24]  881 	push	ar3
      0021C8 C0 02            [24]  882 	push	ar2
      0021CA C0 01            [24]  883 	push	ar1
      0021CC C0 00            [24]  884 	push	ar0
      0021CE 12 20 8B         [24]  885 	lcall	_busyWait
      0021D1 D0 00            [24]  886 	pop	ar0
      0021D3 D0 01            [24]  887 	pop	ar1
      0021D5 D0 02            [24]  888 	pop	ar2
      0021D7 D0 03            [24]  889 	pop	ar3
      0021D9 D0 04            [24]  890 	pop	ar4
                                    891 ;	lcdCommands.c:77: if( i > 15)
      0021DB C3               [12]  892 	clr	c
      0021DC 74 0F            [12]  893 	mov	a,#0x0f
      0021DE 95 08            [12]  894 	subb	a,_putsLCD_sloc0_1_0
      0021E0 74 80            [12]  895 	mov	a,#(0x00 ^ 0x80)
      0021E2 85 09 F0         [24]  896 	mov	b,(_putsLCD_sloc0_1_0 + 1)
      0021E5 63 F0 80         [24]  897 	xrl	b,#0x80
      0021E8 95 F0            [12]  898 	subb	a,b
      0021EA 50 0C            [24]  899 	jnc	00102$
                                    900 ;	lcdCommands.c:79: j++;
      0021EC 08               [12]  901 	inc	r0
      0021ED B8 00 01         [24]  902 	cjne	r0,#0x00,00123$
      0021F0 09               [12]  903 	inc	r1
      0021F1                        904 00123$:
                                    905 ;	lcdCommands.c:80: i = 0;
      0021F1 90 00 08         [24]  906 	mov	dptr,#_putsLCD_i_65536_53
      0021F4 E4               [12]  907 	clr	a
      0021F5 F0               [24]  908 	movx	@dptr,a
      0021F6 A3               [24]  909 	inc	dptr
      0021F7 F0               [24]  910 	movx	@dptr,a
      0021F8                        911 00102$:
                                    912 ;	lcdCommands.c:83: goToAddr(lookUpTable[j][i]);
      0021F8 C0 02            [24]  913 	push	ar2
      0021FA C0 03            [24]  914 	push	ar3
      0021FC C0 04            [24]  915 	push	ar4
      0021FE 88 03            [24]  916 	mov	ar3,r0
      002200 E9               [12]  917 	mov	a,r1
      002201 C4               [12]  918 	swap	a
      002202 54 F0            [12]  919 	anl	a,#0xf0
      002204 CB               [12]  920 	xch	a,r3
      002205 C4               [12]  921 	swap	a
      002206 CB               [12]  922 	xch	a,r3
      002207 6B               [12]  923 	xrl	a,r3
      002208 CB               [12]  924 	xch	a,r3
      002209 54 F0            [12]  925 	anl	a,#0xf0
      00220B CB               [12]  926 	xch	a,r3
      00220C 6B               [12]  927 	xrl	a,r3
      00220D FC               [12]  928 	mov	r4,a
      00220E EB               [12]  929 	mov	a,r3
      00220F 24 A4            [12]  930 	add	a,#_lookUpTable
      002211 FA               [12]  931 	mov	r2,a
      002212 EC               [12]  932 	mov	a,r4
      002213 34 00            [12]  933 	addc	a,#(_lookUpTable >> 8)
      002215 FF               [12]  934 	mov	r7,a
      002216 90 00 08         [24]  935 	mov	dptr,#_putsLCD_i_65536_53
      002219 E0               [24]  936 	movx	a,@dptr
      00221A FD               [12]  937 	mov	r5,a
      00221B A3               [24]  938 	inc	dptr
      00221C E0               [24]  939 	movx	a,@dptr
      00221D FE               [12]  940 	mov	r6,a
      00221E ED               [12]  941 	mov	a,r5
      00221F 2A               [12]  942 	add	a,r2
      002220 F5 82            [12]  943 	mov	dpl,a
      002222 EE               [12]  944 	mov	a,r6
      002223 3F               [12]  945 	addc	a,r7
      002224 F5 83            [12]  946 	mov	dph,a
      002226 E0               [24]  947 	movx	a,@dptr
      002227 F5 82            [12]  948 	mov	dpl,a
      002229 C0 06            [24]  949 	push	ar6
      00222B C0 05            [24]  950 	push	ar5
      00222D C0 04            [24]  951 	push	ar4
      00222F C0 03            [24]  952 	push	ar3
      002231 C0 02            [24]  953 	push	ar2
      002233 C0 01            [24]  954 	push	ar1
      002235 C0 00            [24]  955 	push	ar0
      002237 12 21 1A         [24]  956 	lcall	_goToAddr
      00223A D0 00            [24]  957 	pop	ar0
      00223C D0 01            [24]  958 	pop	ar1
      00223E D0 02            [24]  959 	pop	ar2
      002240 D0 03            [24]  960 	pop	ar3
      002242 D0 04            [24]  961 	pop	ar4
      002244 D0 05            [24]  962 	pop	ar5
      002246 D0 06            [24]  963 	pop	ar6
                                    964 ;	lcdCommands.c:84: lcdPutCh(y[i + (j * 16)]);
      002248 EB               [12]  965 	mov	a,r3
      002249 2D               [12]  966 	add	a,r5
      00224A FB               [12]  967 	mov	r3,a
      00224B EC               [12]  968 	mov	a,r4
      00224C 3E               [12]  969 	addc	a,r6
      00224D FC               [12]  970 	mov	r4,a
      00224E EB               [12]  971 	mov	a,r3
      00224F 25 0A            [12]  972 	add	a,_putsLCD_sloc1_1_0
      002251 FB               [12]  973 	mov	r3,a
      002252 EC               [12]  974 	mov	a,r4
      002253 35 0B            [12]  975 	addc	a,(_putsLCD_sloc1_1_0 + 1)
      002255 FC               [12]  976 	mov	r4,a
      002256 AF 0C            [24]  977 	mov	r7,(_putsLCD_sloc1_1_0 + 2)
      002258 8B 82            [24]  978 	mov	dpl,r3
      00225A 8C 83            [24]  979 	mov	dph,r4
      00225C 8F F0            [24]  980 	mov	b,r7
      00225E 12 33 1A         [24]  981 	lcall	__gptrget
      002261 FB               [12]  982 	mov	r3,a
      002262 F5 82            [12]  983 	mov	dpl,a
      002264 C0 06            [24]  984 	push	ar6
      002266 C0 05            [24]  985 	push	ar5
      002268 C0 04            [24]  986 	push	ar4
      00226A C0 03            [24]  987 	push	ar3
      00226C C0 02            [24]  988 	push	ar2
      00226E C0 01            [24]  989 	push	ar1
      002270 C0 00            [24]  990 	push	ar0
      002272 12 20 F8         [24]  991 	lcall	_lcdPutCh
      002275 D0 00            [24]  992 	pop	ar0
      002277 D0 01            [24]  993 	pop	ar1
      002279 D0 02            [24]  994 	pop	ar2
      00227B D0 03            [24]  995 	pop	ar3
      00227D D0 04            [24]  996 	pop	ar4
      00227F D0 05            [24]  997 	pop	ar5
      002281 D0 06            [24]  998 	pop	ar6
                                    999 ;	lcdCommands.c:85: i++;
      002283 90 00 08         [24] 1000 	mov	dptr,#_putsLCD_i_65536_53
      002286 74 01            [12] 1001 	mov	a,#0x01
      002288 2D               [12] 1002 	add	a,r5
      002289 F0               [24] 1003 	movx	@dptr,a
      00228A E4               [12] 1004 	clr	a
      00228B 3E               [12] 1005 	addc	a,r6
      00228C A3               [24] 1006 	inc	dptr
      00228D F0               [24] 1007 	movx	@dptr,a
      00228E D0 04            [24] 1008 	pop	ar4
      002290 D0 03            [24] 1009 	pop	ar3
      002292 D0 02            [24] 1010 	pop	ar2
                                   1011 ;	lcdCommands.c:88: }
      002294 02 21 8E         [24] 1012 	ljmp	00103$
                                   1013 ;------------------------------------------------------------
                                   1014 ;Allocation info for local variables in function 'getchar'
                                   1015 ;------------------------------------------------------------
                                   1016 ;	lcdCommands.c:90: int getchar ()
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function getchar
                                   1019 ;	-----------------------------------------
      002297                       1020 _getchar:
                                   1021 ;	lcdCommands.c:92: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
      002297                       1022 00101$:
      002297 E5 98            [12] 1023 	mov	a,_SCON
      002299 30 E0 FB         [24] 1024 	jnb	acc.0,00101$
                                   1025 ;	lcdCommands.c:93: RI = 0;			// clear RI flag
                                   1026 ;	assignBit
      00229C C2 98            [12] 1027 	clr	_RI
                                   1028 ;	lcdCommands.c:94: return SBUF;  	// return character from SBUF
      00229E AE 99            [24] 1029 	mov	r6,_SBUF
      0022A0 7F 00            [12] 1030 	mov	r7,#0x00
      0022A2 8E 82            [24] 1031 	mov	dpl,r6
      0022A4 8F 83            [24] 1032 	mov	dph,r7
                                   1033 ;	lcdCommands.c:95: }
      0022A6 22               [24] 1034 	ret
                                   1035 ;------------------------------------------------------------
                                   1036 ;Allocation info for local variables in function 'putchar'
                                   1037 ;------------------------------------------------------------
                                   1038 ;c                         Allocated with name '_putchar_c_65536_57'
                                   1039 ;------------------------------------------------------------
                                   1040 ;	lcdCommands.c:97: int putchar (int c)
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function putchar
                                   1043 ;	-----------------------------------------
      0022A7                       1044 _putchar:
      0022A7 AF 83            [24] 1045 	mov	r7,dph
      0022A9 E5 82            [12] 1046 	mov	a,dpl
      0022AB 90 00 0A         [24] 1047 	mov	dptr,#_putchar_c_65536_57
      0022AE F0               [24] 1048 	movx	@dptr,a
      0022AF EF               [12] 1049 	mov	a,r7
      0022B0 A3               [24] 1050 	inc	dptr
      0022B1 F0               [24] 1051 	movx	@dptr,a
                                   1052 ;	lcdCommands.c:99: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
      0022B2                       1053 00101$:
      0022B2 E5 98            [12] 1054 	mov	a,_SCON
      0022B4 30 E1 FB         [24] 1055 	jnb	acc.1,00101$
                                   1056 ;	lcdCommands.c:100: SBUF = c;  	// load serial port with transmit value
      0022B7 90 00 0A         [24] 1057 	mov	dptr,#_putchar_c_65536_57
      0022BA E0               [24] 1058 	movx	a,@dptr
      0022BB FE               [12] 1059 	mov	r6,a
      0022BC A3               [24] 1060 	inc	dptr
      0022BD E0               [24] 1061 	movx	a,@dptr
      0022BE 8E 99            [24] 1062 	mov	_SBUF,r6
                                   1063 ;	lcdCommands.c:101: TI = 0;  	// clear TI flag
                                   1064 ;	assignBit
      0022C0 C2 99            [12] 1065 	clr	_TI
                                   1066 ;	lcdCommands.c:102: return 0;
      0022C2 90 00 00         [24] 1067 	mov	dptr,#0x0000
                                   1068 ;	lcdCommands.c:103: }
      0022C5 22               [24] 1069 	ret
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'gets'
                                   1072 ;------------------------------------------------------------
                                   1073 ;s                         Allocated with name '_gets_s_65536_59'
                                   1074 ;c                         Allocated with name '_gets_c_65536_60'
                                   1075 ;count                     Allocated with name '_gets_count_65536_60'
                                   1076 ;------------------------------------------------------------
                                   1077 ;	lcdCommands.c:105: char *gets (char *s)
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function gets
                                   1080 ;	-----------------------------------------
      0022C6                       1081 _gets:
      0022C6 AF F0            [24] 1082 	mov	r7,b
      0022C8 AE 83            [24] 1083 	mov	r6,dph
      0022CA E5 82            [12] 1084 	mov	a,dpl
      0022CC 90 00 0C         [24] 1085 	mov	dptr,#_gets_s_65536_59
      0022CF F0               [24] 1086 	movx	@dptr,a
      0022D0 EE               [12] 1087 	mov	a,r6
      0022D1 A3               [24] 1088 	inc	dptr
      0022D2 F0               [24] 1089 	movx	@dptr,a
      0022D3 EF               [12] 1090 	mov	a,r7
      0022D4 A3               [24] 1091 	inc	dptr
      0022D5 F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	lcdCommands.c:108: unsigned int count = 0;
      0022D6 90 00 0F         [24] 1094 	mov	dptr,#_gets_count_65536_60
      0022D9 E4               [12] 1095 	clr	a
      0022DA F0               [24] 1096 	movx	@dptr,a
      0022DB A3               [24] 1097 	inc	dptr
      0022DC F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	lcdCommands.c:110: while (1)
      0022DD                       1100 00111$:
                                   1101 ;	lcdCommands.c:112: c = getchar ();
      0022DD 12 22 97         [24] 1102 	lcall	_getchar
      0022E0 AE 82            [24] 1103 	mov	r6,dpl
      0022E2 AF 83            [24] 1104 	mov	r7,dph
                                   1105 ;	lcdCommands.c:113: switch(c)
      0022E4 BE 08 02         [24] 1106 	cjne	r6,#0x08,00139$
      0022E7 80 0D            [24] 1107 	sjmp	00101$
      0022E9                       1108 00139$:
      0022E9 BE 0A 02         [24] 1109 	cjne	r6,#0x0a,00140$
      0022EC 80 62            [24] 1110 	sjmp	00105$
      0022EE                       1111 00140$:
      0022EE BE 0D 02         [24] 1112 	cjne	r6,#0x0d,00141$
      0022F1 80 5D            [24] 1113 	sjmp	00105$
      0022F3                       1114 00141$:
      0022F3 02 23 78         [24] 1115 	ljmp	00106$
                                   1116 ;	lcdCommands.c:115: case '\b': /* backspace */
      0022F6                       1117 00101$:
                                   1118 ;	lcdCommands.c:116: if (count)
      0022F6 90 00 0F         [24] 1119 	mov	dptr,#_gets_count_65536_60
      0022F9 E0               [24] 1120 	movx	a,@dptr
      0022FA FD               [12] 1121 	mov	r5,a
      0022FB A3               [24] 1122 	inc	dptr
      0022FC E0               [24] 1123 	movx	a,@dptr
      0022FD FF               [12] 1124 	mov	r7,a
      0022FE 90 00 0F         [24] 1125 	mov	dptr,#_gets_count_65536_60
      002301 E0               [24] 1126 	movx	a,@dptr
      002302 F5 F0            [12] 1127 	mov	b,a
      002304 A3               [24] 1128 	inc	dptr
      002305 E0               [24] 1129 	movx	a,@dptr
      002306 45 F0            [12] 1130 	orl	a,b
      002308 70 03            [24] 1131 	jnz	00142$
      00230A 02 23 B0         [24] 1132 	ljmp	00107$
      00230D                       1133 00142$:
                                   1134 ;	lcdCommands.c:118: putchar ('\b');
      00230D 90 00 08         [24] 1135 	mov	dptr,#0x0008
      002310 C0 07            [24] 1136 	push	ar7
      002312 C0 05            [24] 1137 	push	ar5
      002314 12 22 A7         [24] 1138 	lcall	_putchar
                                   1139 ;	lcdCommands.c:119: putchar (' ');
      002317 90 00 20         [24] 1140 	mov	dptr,#0x0020
      00231A 12 22 A7         [24] 1141 	lcall	_putchar
                                   1142 ;	lcdCommands.c:120: putchar ('\b');
      00231D 90 00 08         [24] 1143 	mov	dptr,#0x0008
      002320 12 22 A7         [24] 1144 	lcall	_putchar
      002323 D0 05            [24] 1145 	pop	ar5
      002325 D0 07            [24] 1146 	pop	ar7
                                   1147 ;	lcdCommands.c:121: --s;
      002327 90 00 0C         [24] 1148 	mov	dptr,#_gets_s_65536_59
      00232A E0               [24] 1149 	movx	a,@dptr
      00232B 24 FF            [12] 1150 	add	a,#0xff
      00232D FA               [12] 1151 	mov	r2,a
      00232E A3               [24] 1152 	inc	dptr
      00232F E0               [24] 1153 	movx	a,@dptr
      002330 34 FF            [12] 1154 	addc	a,#0xff
      002332 FB               [12] 1155 	mov	r3,a
      002333 A3               [24] 1156 	inc	dptr
      002334 E0               [24] 1157 	movx	a,@dptr
      002335 FC               [12] 1158 	mov	r4,a
      002336 90 00 0C         [24] 1159 	mov	dptr,#_gets_s_65536_59
      002339 EA               [12] 1160 	mov	a,r2
      00233A F0               [24] 1161 	movx	@dptr,a
      00233B EB               [12] 1162 	mov	a,r3
      00233C A3               [24] 1163 	inc	dptr
      00233D F0               [24] 1164 	movx	@dptr,a
      00233E EC               [12] 1165 	mov	a,r4
      00233F A3               [24] 1166 	inc	dptr
      002340 F0               [24] 1167 	movx	@dptr,a
                                   1168 ;	lcdCommands.c:122: --count;
      002341 1D               [12] 1169 	dec	r5
      002342 BD FF 01         [24] 1170 	cjne	r5,#0xff,00143$
      002345 1F               [12] 1171 	dec	r7
      002346                       1172 00143$:
      002346 90 00 0F         [24] 1173 	mov	dptr,#_gets_count_65536_60
      002349 ED               [12] 1174 	mov	a,r5
      00234A F0               [24] 1175 	movx	@dptr,a
      00234B EF               [12] 1176 	mov	a,r7
      00234C A3               [24] 1177 	inc	dptr
      00234D F0               [24] 1178 	movx	@dptr,a
                                   1179 ;	lcdCommands.c:124: break;
                                   1180 ;	lcdCommands.c:127: case '\r': /* CR or LF */
      00234E 80 60            [24] 1181 	sjmp	00107$
      002350                       1182 00105$:
                                   1183 ;	lcdCommands.c:128: putchar ('\r');
      002350 90 00 0D         [24] 1184 	mov	dptr,#0x000d
      002353 12 22 A7         [24] 1185 	lcall	_putchar
                                   1186 ;	lcdCommands.c:129: putchar ('\n');
      002356 90 00 0A         [24] 1187 	mov	dptr,#0x000a
      002359 12 22 A7         [24] 1188 	lcall	_putchar
                                   1189 ;	lcdCommands.c:130: *s = 0;
      00235C 90 00 0C         [24] 1190 	mov	dptr,#_gets_s_65536_59
      00235F E0               [24] 1191 	movx	a,@dptr
      002360 FC               [12] 1192 	mov	r4,a
      002361 A3               [24] 1193 	inc	dptr
      002362 E0               [24] 1194 	movx	a,@dptr
      002363 FD               [12] 1195 	mov	r5,a
      002364 A3               [24] 1196 	inc	dptr
      002365 E0               [24] 1197 	movx	a,@dptr
      002366 FF               [12] 1198 	mov	r7,a
      002367 8C 82            [24] 1199 	mov	dpl,r4
      002369 8D 83            [24] 1200 	mov	dph,r5
      00236B 8F F0            [24] 1201 	mov	b,r7
      00236D E4               [12] 1202 	clr	a
      00236E 12 26 5C         [24] 1203 	lcall	__gptrput
                                   1204 ;	lcdCommands.c:131: return s;
      002371 8C 82            [24] 1205 	mov	dpl,r4
      002373 8D 83            [24] 1206 	mov	dph,r5
      002375 8F F0            [24] 1207 	mov	b,r7
                                   1208 ;	lcdCommands.c:133: default:
      002377 22               [24] 1209 	ret
      002378                       1210 00106$:
                                   1211 ;	lcdCommands.c:134: *s++ = c;
      002378 90 00 0C         [24] 1212 	mov	dptr,#_gets_s_65536_59
      00237B E0               [24] 1213 	movx	a,@dptr
      00237C FC               [12] 1214 	mov	r4,a
      00237D A3               [24] 1215 	inc	dptr
      00237E E0               [24] 1216 	movx	a,@dptr
      00237F FD               [12] 1217 	mov	r5,a
      002380 A3               [24] 1218 	inc	dptr
      002381 E0               [24] 1219 	movx	a,@dptr
      002382 FF               [12] 1220 	mov	r7,a
      002383 8C 82            [24] 1221 	mov	dpl,r4
      002385 8D 83            [24] 1222 	mov	dph,r5
      002387 8F F0            [24] 1223 	mov	b,r7
      002389 EE               [12] 1224 	mov	a,r6
      00238A 12 26 5C         [24] 1225 	lcall	__gptrput
      00238D 90 00 0C         [24] 1226 	mov	dptr,#_gets_s_65536_59
      002390 74 01            [12] 1227 	mov	a,#0x01
      002392 2C               [12] 1228 	add	a,r4
      002393 F0               [24] 1229 	movx	@dptr,a
      002394 E4               [12] 1230 	clr	a
      002395 3D               [12] 1231 	addc	a,r5
      002396 A3               [24] 1232 	inc	dptr
      002397 F0               [24] 1233 	movx	@dptr,a
      002398 EF               [12] 1234 	mov	a,r7
      002399 A3               [24] 1235 	inc	dptr
      00239A F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	lcdCommands.c:135: ++count;
      00239B 90 00 0F         [24] 1238 	mov	dptr,#_gets_count_65536_60
      00239E E0               [24] 1239 	movx	a,@dptr
      00239F 24 01            [12] 1240 	add	a,#0x01
      0023A1 F0               [24] 1241 	movx	@dptr,a
      0023A2 A3               [24] 1242 	inc	dptr
      0023A3 E0               [24] 1243 	movx	a,@dptr
      0023A4 34 00            [12] 1244 	addc	a,#0x00
      0023A6 F0               [24] 1245 	movx	@dptr,a
                                   1246 ;	lcdCommands.c:136: putchar (c);
      0023A7 7F 00            [12] 1247 	mov	r7,#0x00
      0023A9 8E 82            [24] 1248 	mov	dpl,r6
      0023AB 8F 83            [24] 1249 	mov	dph,r7
      0023AD 12 22 A7         [24] 1250 	lcall	_putchar
                                   1251 ;	lcdCommands.c:138: }
      0023B0                       1252 00107$:
                                   1253 ;	lcdCommands.c:139: if (count == 48)
      0023B0 90 00 0F         [24] 1254 	mov	dptr,#_gets_count_65536_60
      0023B3 E0               [24] 1255 	movx	a,@dptr
      0023B4 FE               [12] 1256 	mov	r6,a
      0023B5 A3               [24] 1257 	inc	dptr
      0023B6 E0               [24] 1258 	movx	a,@dptr
      0023B7 FF               [12] 1259 	mov	r7,a
      0023B8 BE 30 05         [24] 1260 	cjne	r6,#0x30,00144$
      0023BB BF 00 02         [24] 1261 	cjne	r7,#0x00,00144$
      0023BE 80 03            [24] 1262 	sjmp	00145$
      0023C0                       1263 00144$:
      0023C0 02 22 DD         [24] 1264 	ljmp	00111$
      0023C3                       1265 00145$:
                                   1266 ;	lcdCommands.c:141: printf("\n\rPlease Input a maximum of 64 digits\n\r");
      0023C3 74 3A            [12] 1267 	mov	a,#___str_0
      0023C5 C0 E0            [24] 1268 	push	acc
      0023C7 74 33            [12] 1269 	mov	a,#(___str_0 >> 8)
      0023C9 C0 E0            [24] 1270 	push	acc
      0023CB 74 80            [12] 1271 	mov	a,#0x80
      0023CD C0 E0            [24] 1272 	push	acc
      0023CF 12 28 D8         [24] 1273 	lcall	_printf
      0023D2 15 81            [12] 1274 	dec	sp
      0023D4 15 81            [12] 1275 	dec	sp
      0023D6 15 81            [12] 1276 	dec	sp
                                   1277 ;	lcdCommands.c:142: break;
                                   1278 ;	lcdCommands.c:145: }
      0023D8 22               [24] 1279 	ret
                                   1280 	.area CSEG    (CODE)
                                   1281 	.area CONST   (CODE)
                                   1282 	.area CONST   (CODE)
      00333A                       1283 ___str_0:
      00333A 0A                    1284 	.db 0x0a
      00333B 0D                    1285 	.db 0x0d
      00333C 50 6C 65 61 73 65 20  1286 	.ascii "Please Input a maximum of 64 digits"
             49 6E 70 75 74 20 61
             20 6D 61 78 69 6D 75
             6D 20 6F 66 20 36 34
             20 64 69 67 69 74 73
      00335F 0A                    1287 	.db 0x0a
      003360 0D                    1288 	.db 0x0d
      003361 00                    1289 	.db 0x00
                                   1290 	.area CSEG    (CODE)
                                   1291 	.area XINIT   (CODE)
      00336D                       1292 __xinit__lookUpTable:
      00336D 00                    1293 	.db #0x00	; 0
      00336E 01                    1294 	.db #0x01	; 1
      00336F 02                    1295 	.db #0x02	; 2
      003370 03                    1296 	.db #0x03	; 3
      003371 04                    1297 	.db #0x04	; 4
      003372 05                    1298 	.db #0x05	; 5
      003373 06                    1299 	.db #0x06	; 6
      003374 07                    1300 	.db #0x07	; 7
      003375 08                    1301 	.db #0x08	; 8
      003376 09                    1302 	.db #0x09	; 9
      003377 0A                    1303 	.db #0x0a	; 10
      003378 0B                    1304 	.db #0x0b	; 11
      003379 0C                    1305 	.db #0x0c	; 12
      00337A 0D                    1306 	.db #0x0d	; 13
      00337B 0E                    1307 	.db #0x0e	; 14
      00337C 0F                    1308 	.db #0x0f	; 15
      00337D 40                    1309 	.db #0x40	; 64
      00337E 41                    1310 	.db #0x41	; 65	'A'
      00337F 42                    1311 	.db #0x42	; 66	'B'
      003380 43                    1312 	.db #0x43	; 67	'C'
      003381 44                    1313 	.db #0x44	; 68	'D'
      003382 45                    1314 	.db #0x45	; 69	'E'
      003383 46                    1315 	.db #0x46	; 70	'F'
      003384 47                    1316 	.db #0x47	; 71	'G'
      003385 48                    1317 	.db #0x48	; 72	'H'
      003386 49                    1318 	.db #0x49	; 73	'I'
      003387 4A                    1319 	.db #0x4a	; 74	'J'
      003388 4B                    1320 	.db #0x4b	; 75	'K'
      003389 4C                    1321 	.db #0x4c	; 76	'L'
      00338A 4D                    1322 	.db #0x4d	; 77	'M'
      00338B 4E                    1323 	.db #0x4e	; 78	'N'
      00338C 4F                    1324 	.db #0x4f	; 79	'O'
      00338D 10                    1325 	.db #0x10	; 16
      00338E 11                    1326 	.db #0x11	; 17
      00338F 12                    1327 	.db #0x12	; 18
      003390 13                    1328 	.db #0x13	; 19
      003391 14                    1329 	.db #0x14	; 20
      003392 15                    1330 	.db #0x15	; 21
      003393 16                    1331 	.db #0x16	; 22
      003394 17                    1332 	.db #0x17	; 23
      003395 18                    1333 	.db #0x18	; 24
      003396 19                    1334 	.db #0x19	; 25
      003397 1A                    1335 	.db #0x1a	; 26
      003398 1B                    1336 	.db #0x1b	; 27
      003399 1C                    1337 	.db #0x1c	; 28
      00339A 1D                    1338 	.db #0x1d	; 29
      00339B 1E                    1339 	.db #0x1e	; 30
      00339C 1F                    1340 	.db #0x1f	; 31
      00339D 50                    1341 	.db #0x50	; 80	'P'
      00339E 51                    1342 	.db #0x51	; 81	'Q'
      00339F 52                    1343 	.db #0x52	; 82	'R'
      0033A0 53                    1344 	.db #0x53	; 83	'S'
      0033A1 54                    1345 	.db #0x54	; 84	'T'
      0033A2 55                    1346 	.db #0x55	; 85	'U'
      0033A3 56                    1347 	.db #0x56	; 86	'V'
      0033A4 57                    1348 	.db #0x57	; 87	'W'
      0033A5 58                    1349 	.db #0x58	; 88	'X'
      0033A6 59                    1350 	.db #0x59	; 89	'Y'
      0033A7 5A                    1351 	.db #0x5a	; 90	'Z'
      0033A8 5B                    1352 	.db #0x5b	; 91
      0033A9 5C                    1353 	.db #0x5c	; 92
      0033AA 5D                    1354 	.db #0x5d	; 93
      0033AB 5E                    1355 	.db #0x5e	; 94
      0033AC 5F                    1356 	.db #0x5f	; 95
                                   1357 	.area CABS    (ABS,CODE)
