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
                                     11 	.globl _lookUpTable
                                     12 	.globl _messages
                                     13 	.globl _uiLines
                                     14 	.globl _memset
                                     15 	.globl _printf_tiny
                                     16 	.globl _putchar
                                     17 	.globl _getchar
                                     18 	.globl _printf
                                     19 	.globl _P5_7
                                     20 	.globl _P5_6
                                     21 	.globl _P5_5
                                     22 	.globl _P5_4
                                     23 	.globl _P5_3
                                     24 	.globl _P5_2
                                     25 	.globl _P5_1
                                     26 	.globl _P5_0
                                     27 	.globl _P4_7
                                     28 	.globl _P4_6
                                     29 	.globl _P4_5
                                     30 	.globl _P4_4
                                     31 	.globl _P4_3
                                     32 	.globl _P4_2
                                     33 	.globl _P4_1
                                     34 	.globl _P4_0
                                     35 	.globl _PX0L
                                     36 	.globl _PT0L
                                     37 	.globl _PX1L
                                     38 	.globl _PT1L
                                     39 	.globl _PSL
                                     40 	.globl _PT2L
                                     41 	.globl _PPCL
                                     42 	.globl _EC
                                     43 	.globl _CCF0
                                     44 	.globl _CCF1
                                     45 	.globl _CCF2
                                     46 	.globl _CCF3
                                     47 	.globl _CCF4
                                     48 	.globl _CR
                                     49 	.globl _CF
                                     50 	.globl _TF2
                                     51 	.globl _EXF2
                                     52 	.globl _RCLK
                                     53 	.globl _TCLK
                                     54 	.globl _EXEN2
                                     55 	.globl _TR2
                                     56 	.globl _C_T2
                                     57 	.globl _CP_RL2
                                     58 	.globl _T2CON_7
                                     59 	.globl _T2CON_6
                                     60 	.globl _T2CON_5
                                     61 	.globl _T2CON_4
                                     62 	.globl _T2CON_3
                                     63 	.globl _T2CON_2
                                     64 	.globl _T2CON_1
                                     65 	.globl _T2CON_0
                                     66 	.globl _PT2
                                     67 	.globl _ET2
                                     68 	.globl _CY
                                     69 	.globl _AC
                                     70 	.globl _F0
                                     71 	.globl _RS1
                                     72 	.globl _RS0
                                     73 	.globl _OV
                                     74 	.globl _F1
                                     75 	.globl _P
                                     76 	.globl _PS
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _RD
                                     82 	.globl _WR
                                     83 	.globl _T1
                                     84 	.globl _T0
                                     85 	.globl _INT1
                                     86 	.globl _INT0
                                     87 	.globl _TXD
                                     88 	.globl _RXD
                                     89 	.globl _P3_7
                                     90 	.globl _P3_6
                                     91 	.globl _P3_5
                                     92 	.globl _P3_4
                                     93 	.globl _P3_3
                                     94 	.globl _P3_2
                                     95 	.globl _P3_1
                                     96 	.globl _P3_0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _SM0
                                    112 	.globl _SM1
                                    113 	.globl _SM2
                                    114 	.globl _REN
                                    115 	.globl _TB8
                                    116 	.globl _RB8
                                    117 	.globl _TI
                                    118 	.globl _RI
                                    119 	.globl _P1_7
                                    120 	.globl _P1_6
                                    121 	.globl _P1_5
                                    122 	.globl _P1_4
                                    123 	.globl _P1_3
                                    124 	.globl _P1_2
                                    125 	.globl _P1_1
                                    126 	.globl _P1_0
                                    127 	.globl _TF1
                                    128 	.globl _TR1
                                    129 	.globl _TF0
                                    130 	.globl _TR0
                                    131 	.globl _IE1
                                    132 	.globl _IT1
                                    133 	.globl _IE0
                                    134 	.globl _IT0
                                    135 	.globl _P0_7
                                    136 	.globl _P0_6
                                    137 	.globl _P0_5
                                    138 	.globl _P0_4
                                    139 	.globl _P0_3
                                    140 	.globl _P0_2
                                    141 	.globl _P0_1
                                    142 	.globl _P0_0
                                    143 	.globl _EECON
                                    144 	.globl _KBF
                                    145 	.globl _KBE
                                    146 	.globl _KBLS
                                    147 	.globl _BRL
                                    148 	.globl _BDRCON
                                    149 	.globl _T2MOD
                                    150 	.globl _SPDAT
                                    151 	.globl _SPSTA
                                    152 	.globl _SPCON
                                    153 	.globl _SADEN
                                    154 	.globl _SADDR
                                    155 	.globl _WDTPRG
                                    156 	.globl _WDTRST
                                    157 	.globl _P5
                                    158 	.globl _P4
                                    159 	.globl _IPH1
                                    160 	.globl _IPL1
                                    161 	.globl _IPH0
                                    162 	.globl _IPL0
                                    163 	.globl _IEN1
                                    164 	.globl _IEN0
                                    165 	.globl _CMOD
                                    166 	.globl _CL
                                    167 	.globl _CH
                                    168 	.globl _CCON
                                    169 	.globl _CCAPM4
                                    170 	.globl _CCAPM3
                                    171 	.globl _CCAPM2
                                    172 	.globl _CCAPM1
                                    173 	.globl _CCAPM0
                                    174 	.globl _CCAP4L
                                    175 	.globl _CCAP3L
                                    176 	.globl _CCAP2L
                                    177 	.globl _CCAP1L
                                    178 	.globl _CCAP0L
                                    179 	.globl _CCAP4H
                                    180 	.globl _CCAP3H
                                    181 	.globl _CCAP2H
                                    182 	.globl _CCAP1H
                                    183 	.globl _CCAP0H
                                    184 	.globl _CKCON1
                                    185 	.globl _CKCON0
                                    186 	.globl _CKRL
                                    187 	.globl _AUXR1
                                    188 	.globl _AUXR
                                    189 	.globl _TH2
                                    190 	.globl _TL2
                                    191 	.globl _RCAP2H
                                    192 	.globl _RCAP2L
                                    193 	.globl _T2CON
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _PSW
                                    197 	.globl _IP
                                    198 	.globl _P3
                                    199 	.globl _IE
                                    200 	.globl _P2
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _P1
                                    204 	.globl _TH1
                                    205 	.globl _TH0
                                    206 	.globl _TL1
                                    207 	.globl _TL0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
                                    215 	.globl _goToXY_PARM_2
                                    216 	.globl _readCharacter
                                    217 	.globl _writeCharacter
                                    218 	.globl _busyPoll
                                    219 	.globl _lcdGeneral
                                    220 	.globl _delay
                                    221 	.globl _timerInit
                                    222 	.globl _busyWait
                                    223 	.globl _lcdInit
                                    224 	.globl _lcdPutCh
                                    225 	.globl _lcdClear
                                    226 	.globl _goToAddr
                                    227 	.globl _goToXY
                                    228 	.globl _customCharacter
                                    229 	.globl _readLCD
                                    230 	.globl _putsLCD
                                    231 	.globl _gets
                                    232 	.globl _ramDump
                                    233 	.globl _gamePacman
                                    234 	.globl _makePacmanRight
                                    235 	.globl _makePacmanLeft
                                    236 	.globl _printBinary
                                    237 	.globl _atoh
                                    238 	.globl _printMenu
                                    239 ;--------------------------------------------------------
                                    240 ; special function registers
                                    241 ;--------------------------------------------------------
                                    242 	.area RSEG    (ABS,DATA)
      000000                        243 	.org 0x0000
                           000080   244 _P0	=	0x0080
                           000081   245 _SP	=	0x0081
                           000082   246 _DPL	=	0x0082
                           000083   247 _DPH	=	0x0083
                           000087   248 _PCON	=	0x0087
                           000088   249 _TCON	=	0x0088
                           000089   250 _TMOD	=	0x0089
                           00008A   251 _TL0	=	0x008a
                           00008B   252 _TL1	=	0x008b
                           00008C   253 _TH0	=	0x008c
                           00008D   254 _TH1	=	0x008d
                           000090   255 _P1	=	0x0090
                           000098   256 _SCON	=	0x0098
                           000099   257 _SBUF	=	0x0099
                           0000A0   258 _P2	=	0x00a0
                           0000A8   259 _IE	=	0x00a8
                           0000B0   260 _P3	=	0x00b0
                           0000B8   261 _IP	=	0x00b8
                           0000D0   262 _PSW	=	0x00d0
                           0000E0   263 _ACC	=	0x00e0
                           0000F0   264 _B	=	0x00f0
                           0000C8   265 _T2CON	=	0x00c8
                           0000CA   266 _RCAP2L	=	0x00ca
                           0000CB   267 _RCAP2H	=	0x00cb
                           0000CC   268 _TL2	=	0x00cc
                           0000CD   269 _TH2	=	0x00cd
                           00008E   270 _AUXR	=	0x008e
                           0000A2   271 _AUXR1	=	0x00a2
                           000097   272 _CKRL	=	0x0097
                           00008F   273 _CKCON0	=	0x008f
                           0000AF   274 _CKCON1	=	0x00af
                           0000FA   275 _CCAP0H	=	0x00fa
                           0000FB   276 _CCAP1H	=	0x00fb
                           0000FC   277 _CCAP2H	=	0x00fc
                           0000FD   278 _CCAP3H	=	0x00fd
                           0000FE   279 _CCAP4H	=	0x00fe
                           0000EA   280 _CCAP0L	=	0x00ea
                           0000EB   281 _CCAP1L	=	0x00eb
                           0000EC   282 _CCAP2L	=	0x00ec
                           0000ED   283 _CCAP3L	=	0x00ed
                           0000EE   284 _CCAP4L	=	0x00ee
                           0000DA   285 _CCAPM0	=	0x00da
                           0000DB   286 _CCAPM1	=	0x00db
                           0000DC   287 _CCAPM2	=	0x00dc
                           0000DD   288 _CCAPM3	=	0x00dd
                           0000DE   289 _CCAPM4	=	0x00de
                           0000D8   290 _CCON	=	0x00d8
                           0000F9   291 _CH	=	0x00f9
                           0000E9   292 _CL	=	0x00e9
                           0000D9   293 _CMOD	=	0x00d9
                           0000A8   294 _IEN0	=	0x00a8
                           0000B1   295 _IEN1	=	0x00b1
                           0000B8   296 _IPL0	=	0x00b8
                           0000B7   297 _IPH0	=	0x00b7
                           0000B2   298 _IPL1	=	0x00b2
                           0000B3   299 _IPH1	=	0x00b3
                           0000C0   300 _P4	=	0x00c0
                           0000E8   301 _P5	=	0x00e8
                           0000A6   302 _WDTRST	=	0x00a6
                           0000A7   303 _WDTPRG	=	0x00a7
                           0000A9   304 _SADDR	=	0x00a9
                           0000B9   305 _SADEN	=	0x00b9
                           0000C3   306 _SPCON	=	0x00c3
                           0000C4   307 _SPSTA	=	0x00c4
                           0000C5   308 _SPDAT	=	0x00c5
                           0000C9   309 _T2MOD	=	0x00c9
                           00009B   310 _BDRCON	=	0x009b
                           00009A   311 _BRL	=	0x009a
                           00009C   312 _KBLS	=	0x009c
                           00009D   313 _KBE	=	0x009d
                           00009E   314 _KBF	=	0x009e
                           0000D2   315 _EECON	=	0x00d2
                                    316 ;--------------------------------------------------------
                                    317 ; special function bits
                                    318 ;--------------------------------------------------------
                                    319 	.area RSEG    (ABS,DATA)
      000000                        320 	.org 0x0000
                           000080   321 _P0_0	=	0x0080
                           000081   322 _P0_1	=	0x0081
                           000082   323 _P0_2	=	0x0082
                           000083   324 _P0_3	=	0x0083
                           000084   325 _P0_4	=	0x0084
                           000085   326 _P0_5	=	0x0085
                           000086   327 _P0_6	=	0x0086
                           000087   328 _P0_7	=	0x0087
                           000088   329 _IT0	=	0x0088
                           000089   330 _IE0	=	0x0089
                           00008A   331 _IT1	=	0x008a
                           00008B   332 _IE1	=	0x008b
                           00008C   333 _TR0	=	0x008c
                           00008D   334 _TF0	=	0x008d
                           00008E   335 _TR1	=	0x008e
                           00008F   336 _TF1	=	0x008f
                           000090   337 _P1_0	=	0x0090
                           000091   338 _P1_1	=	0x0091
                           000092   339 _P1_2	=	0x0092
                           000093   340 _P1_3	=	0x0093
                           000094   341 _P1_4	=	0x0094
                           000095   342 _P1_5	=	0x0095
                           000096   343 _P1_6	=	0x0096
                           000097   344 _P1_7	=	0x0097
                           000098   345 _RI	=	0x0098
                           000099   346 _TI	=	0x0099
                           00009A   347 _RB8	=	0x009a
                           00009B   348 _TB8	=	0x009b
                           00009C   349 _REN	=	0x009c
                           00009D   350 _SM2	=	0x009d
                           00009E   351 _SM1	=	0x009e
                           00009F   352 _SM0	=	0x009f
                           0000A0   353 _P2_0	=	0x00a0
                           0000A1   354 _P2_1	=	0x00a1
                           0000A2   355 _P2_2	=	0x00a2
                           0000A3   356 _P2_3	=	0x00a3
                           0000A4   357 _P2_4	=	0x00a4
                           0000A5   358 _P2_5	=	0x00a5
                           0000A6   359 _P2_6	=	0x00a6
                           0000A7   360 _P2_7	=	0x00a7
                           0000A8   361 _EX0	=	0x00a8
                           0000A9   362 _ET0	=	0x00a9
                           0000AA   363 _EX1	=	0x00aa
                           0000AB   364 _ET1	=	0x00ab
                           0000AC   365 _ES	=	0x00ac
                           0000AF   366 _EA	=	0x00af
                           0000B0   367 _P3_0	=	0x00b0
                           0000B1   368 _P3_1	=	0x00b1
                           0000B2   369 _P3_2	=	0x00b2
                           0000B3   370 _P3_3	=	0x00b3
                           0000B4   371 _P3_4	=	0x00b4
                           0000B5   372 _P3_5	=	0x00b5
                           0000B6   373 _P3_6	=	0x00b6
                           0000B7   374 _P3_7	=	0x00b7
                           0000B0   375 _RXD	=	0x00b0
                           0000B1   376 _TXD	=	0x00b1
                           0000B2   377 _INT0	=	0x00b2
                           0000B3   378 _INT1	=	0x00b3
                           0000B4   379 _T0	=	0x00b4
                           0000B5   380 _T1	=	0x00b5
                           0000B6   381 _WR	=	0x00b6
                           0000B7   382 _RD	=	0x00b7
                           0000B8   383 _PX0	=	0x00b8
                           0000B9   384 _PT0	=	0x00b9
                           0000BA   385 _PX1	=	0x00ba
                           0000BB   386 _PT1	=	0x00bb
                           0000BC   387 _PS	=	0x00bc
                           0000D0   388 _P	=	0x00d0
                           0000D1   389 _F1	=	0x00d1
                           0000D2   390 _OV	=	0x00d2
                           0000D3   391 _RS0	=	0x00d3
                           0000D4   392 _RS1	=	0x00d4
                           0000D5   393 _F0	=	0x00d5
                           0000D6   394 _AC	=	0x00d6
                           0000D7   395 _CY	=	0x00d7
                           0000AD   396 _ET2	=	0x00ad
                           0000BD   397 _PT2	=	0x00bd
                           0000C8   398 _T2CON_0	=	0x00c8
                           0000C9   399 _T2CON_1	=	0x00c9
                           0000CA   400 _T2CON_2	=	0x00ca
                           0000CB   401 _T2CON_3	=	0x00cb
                           0000CC   402 _T2CON_4	=	0x00cc
                           0000CD   403 _T2CON_5	=	0x00cd
                           0000CE   404 _T2CON_6	=	0x00ce
                           0000CF   405 _T2CON_7	=	0x00cf
                           0000C8   406 _CP_RL2	=	0x00c8
                           0000C9   407 _C_T2	=	0x00c9
                           0000CA   408 _TR2	=	0x00ca
                           0000CB   409 _EXEN2	=	0x00cb
                           0000CC   410 _TCLK	=	0x00cc
                           0000CD   411 _RCLK	=	0x00cd
                           0000CE   412 _EXF2	=	0x00ce
                           0000CF   413 _TF2	=	0x00cf
                           0000DF   414 _CF	=	0x00df
                           0000DE   415 _CR	=	0x00de
                           0000DC   416 _CCF4	=	0x00dc
                           0000DB   417 _CCF3	=	0x00db
                           0000DA   418 _CCF2	=	0x00da
                           0000D9   419 _CCF1	=	0x00d9
                           0000D8   420 _CCF0	=	0x00d8
                           0000AE   421 _EC	=	0x00ae
                           0000BE   422 _PPCL	=	0x00be
                           0000BD   423 _PT2L	=	0x00bd
                           0000BC   424 _PSL	=	0x00bc
                           0000BB   425 _PT1L	=	0x00bb
                           0000BA   426 _PX1L	=	0x00ba
                           0000B9   427 _PT0L	=	0x00b9
                           0000B8   428 _PX0L	=	0x00b8
                           0000C0   429 _P4_0	=	0x00c0
                           0000C1   430 _P4_1	=	0x00c1
                           0000C2   431 _P4_2	=	0x00c2
                           0000C3   432 _P4_3	=	0x00c3
                           0000C4   433 _P4_4	=	0x00c4
                           0000C5   434 _P4_5	=	0x00c5
                           0000C6   435 _P4_6	=	0x00c6
                           0000C7   436 _P4_7	=	0x00c7
                           0000E8   437 _P5_0	=	0x00e8
                           0000E9   438 _P5_1	=	0x00e9
                           0000EA   439 _P5_2	=	0x00ea
                           0000EB   440 _P5_3	=	0x00eb
                           0000EC   441 _P5_4	=	0x00ec
                           0000ED   442 _P5_5	=	0x00ed
                           0000EE   443 _P5_6	=	0x00ee
                           0000EF   444 _P5_7	=	0x00ef
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable register banks
                                    447 ;--------------------------------------------------------
                                    448 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        449 	.ds 8
                                    450 ;--------------------------------------------------------
                                    451 ; internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area DSEG    (DATA)
      000008                        454 _putsLCD_sloc0_1_0:
      000008                        455 	.ds 2
      00000A                        456 _putsLCD_sloc1_1_0:
      00000A                        457 	.ds 3
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable items in internal ram 
                                    460 ;--------------------------------------------------------
                                    461 ;--------------------------------------------------------
                                    462 ; indirectly addressable internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area ISEG    (DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; absolute internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area IABS    (ABS,DATA)
                                    469 	.area IABS    (ABS,DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; bit data
                                    472 ;--------------------------------------------------------
                                    473 	.area BSEG    (BIT)
                                    474 ;--------------------------------------------------------
                                    475 ; paged external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area PSEG    (PAG,XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XSEG    (XDATA)
                           00F000   482 _lcdGeneral	=	0xf000
                           00F200   483 _busyPoll	=	0xf200
                           00F100   484 _writeCharacter	=	0xf100
                           00F300   485 _readCharacter	=	0xf300
      000001                        486 _lcdPutCh_x_65536_76:
      000001                        487 	.ds 1
      000002                        488 _goToAddr_x_65536_79:
      000002                        489 	.ds 1
      000003                        490 _goToXY_PARM_2:
      000003                        491 	.ds 1
      000004                        492 _goToXY_x_65536_81:
      000004                        493 	.ds 1
      000005                        494 _customCharacter_x_65536_83:
      000005                        495 	.ds 8
                           00F000   496 _customCharacter_temp8_196609_86	=	0xf000
      00000D                        497 _putsLCD_y_65536_90:
      00000D                        498 	.ds 3
      000010                        499 _putsLCD_i_65536_91:
      000010                        500 	.ds 2
      000012                        501 _gets_s_65536_94:
      000012                        502 	.ds 3
      000015                        503 _gets_count_65536_95:
      000015                        504 	.ds 2
      000017                        505 _ramDump_i_65536_100:
      000017                        506 	.ds 1
      000018                        507 _gamePacman_i_65537_112:
      000018                        508 	.ds 2
      00001A                        509 _gamePacman_count_65537_112:
      00001A                        510 	.ds 2
      00001C                        511 _printBinary_x_65536_125:
      00001C                        512 	.ds 2
      00001E                        513 _atoh_ap_65536_128:
      00001E                        514 	.ds 3
      000021                        515 _atoh_p_65536_129:
      000021                        516 	.ds 3
      000024                        517 _atoh_lcase_65536_129:
      000024                        518 	.ds 2
      000026                        519 _atoh_n_65537_130:
      000026                        520 	.ds 1
                                    521 ;--------------------------------------------------------
                                    522 ; absolute external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area XABS    (ABS,XDATA)
                                    525 ;--------------------------------------------------------
                                    526 ; external initialized ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XISEG   (XDATA)
                                    529 	.area HOME    (CODE)
                                    530 	.area GSINIT0 (CODE)
                                    531 	.area GSINIT1 (CODE)
                                    532 	.area GSINIT2 (CODE)
                                    533 	.area GSINIT3 (CODE)
                                    534 	.area GSINIT4 (CODE)
                                    535 	.area GSINIT5 (CODE)
                                    536 	.area GSINIT  (CODE)
                                    537 	.area GSFINAL (CODE)
                                    538 	.area CSEG    (CODE)
                                    539 ;--------------------------------------------------------
                                    540 ; global & static initialisations
                                    541 ;--------------------------------------------------------
                                    542 	.area HOME    (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 	.area GSFINAL (CODE)
                                    545 	.area GSINIT  (CODE)
                                    546 ;--------------------------------------------------------
                                    547 ; Home
                                    548 ;--------------------------------------------------------
                                    549 	.area HOME    (CODE)
                                    550 	.area HOME    (CODE)
                                    551 ;--------------------------------------------------------
                                    552 ; code
                                    553 ;--------------------------------------------------------
                                    554 	.area CSEG    (CODE)
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function 'delay'
                                    557 ;------------------------------------------------------------
                                    558 ;i                         Allocated with name '_delay_i_65536_71'
                                    559 ;------------------------------------------------------------
                                    560 ;	lcdCommands.c:9: void delay()
                                    561 ;	-----------------------------------------
                                    562 ;	 function delay
                                    563 ;	-----------------------------------------
      00206D                        564 _delay:
                           000007   565 	ar7 = 0x07
                           000006   566 	ar6 = 0x06
                           000005   567 	ar5 = 0x05
                           000004   568 	ar4 = 0x04
                           000003   569 	ar3 = 0x03
                           000002   570 	ar2 = 0x02
                           000001   571 	ar1 = 0x01
                           000000   572 	ar0 = 0x00
                                    573 ;	lcdCommands.c:12: for ( i = 0 ; i < 1000; i++);
      00206D 7E E8            [12]  574 	mov	r6,#0xe8
      00206F 7F 03            [12]  575 	mov	r7,#0x03
      002071                        576 00104$:
      002071 1E               [12]  577 	dec	r6
      002072 BE FF 01         [24]  578 	cjne	r6,#0xff,00113$
      002075 1F               [12]  579 	dec	r7
      002076                        580 00113$:
      002076 EE               [12]  581 	mov	a,r6
      002077 4F               [12]  582 	orl	a,r7
      002078 70 F7            [24]  583 	jnz	00104$
                                    584 ;	lcdCommands.c:13: }
      00207A 22               [24]  585 	ret
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'timerInit'
                                    588 ;------------------------------------------------------------
                                    589 ;	lcdCommands.c:15: void timerInit()
                                    590 ;	-----------------------------------------
                                    591 ;	 function timerInit
                                    592 ;	-----------------------------------------
      00207B                        593 _timerInit:
                                    594 ;	lcdCommands.c:17: TMOD |= 0x01;
      00207B 43 89 01         [24]  595 	orl	_TMOD,#0x01
                                    596 ;	lcdCommands.c:18: TH0 = 0x4B;
      00207E 75 8C 4B         [24]  597 	mov	_TH0,#0x4b
                                    598 ;	lcdCommands.c:19: TL0 = 0xFC;
      002081 75 8A FC         [24]  599 	mov	_TL0,#0xfc
                                    600 ;	lcdCommands.c:20: TR0 = 1;           //turn ON Timer zero
                                    601 ;	assignBit
      002084 D2 8C            [12]  602 	setb	_TR0
                                    603 ;	lcdCommands.c:21: EA = 1;            //Enable Global Interrupt bit
                                    604 ;	assignBit
      002086 D2 AF            [12]  605 	setb	_EA
                                    606 ;	lcdCommands.c:22: ET0 = 1;           //Enable TImer0 Interrupt
                                    607 ;	assignBit
      002088 D2 A9            [12]  608 	setb	_ET0
                                    609 ;	lcdCommands.c:23: }
      00208A 22               [24]  610 	ret
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'busyWait'
                                    613 ;------------------------------------------------------------
                                    614 ;	lcdCommands.c:25: void busyWait()
                                    615 ;	-----------------------------------------
                                    616 ;	 function busyWait
                                    617 ;	-----------------------------------------
      00208B                        618 _busyWait:
                                    619 ;	lcdCommands.c:27: while (busyPoll & 0x80);
      00208B                        620 00101$:
      00208B 90 F2 00         [24]  621 	mov	dptr,#_busyPoll
      00208E E0               [24]  622 	movx	a,@dptr
      00208F FE               [12]  623 	mov	r6,a
      002090 A3               [24]  624 	inc	dptr
      002091 E0               [24]  625 	movx	a,@dptr
      002092 EE               [12]  626 	mov	a,r6
      002093 20 E7 F5         [24]  627 	jb	acc.7,00101$
                                    628 ;	lcdCommands.c:28: }
      002096 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'lcdInit'
                                    632 ;------------------------------------------------------------
                                    633 ;	lcdCommands.c:30: void lcdInit()
                                    634 ;	-----------------------------------------
                                    635 ;	 function lcdInit
                                    636 ;	-----------------------------------------
      002097                        637 _lcdInit:
                                    638 ;	lcdCommands.c:32: delay();
      002097 12 20 6D         [24]  639 	lcall	_delay
                                    640 ;	lcdCommands.c:33: lcdGeneral = 0x30;
      00209A 90 F0 00         [24]  641 	mov	dptr,#_lcdGeneral
      00209D 74 30            [12]  642 	mov	a,#0x30
      00209F F0               [24]  643 	movx	@dptr,a
      0020A0 E4               [12]  644 	clr	a
      0020A1 A3               [24]  645 	inc	dptr
      0020A2 F0               [24]  646 	movx	@dptr,a
                                    647 ;	lcdCommands.c:34: delay();
      0020A3 12 20 6D         [24]  648 	lcall	_delay
                                    649 ;	lcdCommands.c:35: lcdGeneral = 0x30;
      0020A6 90 F0 00         [24]  650 	mov	dptr,#_lcdGeneral
      0020A9 74 30            [12]  651 	mov	a,#0x30
      0020AB F0               [24]  652 	movx	@dptr,a
      0020AC E4               [12]  653 	clr	a
      0020AD A3               [24]  654 	inc	dptr
      0020AE F0               [24]  655 	movx	@dptr,a
                                    656 ;	lcdCommands.c:36: delay();
      0020AF 12 20 6D         [24]  657 	lcall	_delay
                                    658 ;	lcdCommands.c:37: lcdGeneral = 0x30;
      0020B2 90 F0 00         [24]  659 	mov	dptr,#_lcdGeneral
      0020B5 74 30            [12]  660 	mov	a,#0x30
      0020B7 F0               [24]  661 	movx	@dptr,a
      0020B8 E4               [12]  662 	clr	a
      0020B9 A3               [24]  663 	inc	dptr
      0020BA F0               [24]  664 	movx	@dptr,a
                                    665 ;	lcdCommands.c:38: busyWait();
      0020BB 12 20 8B         [24]  666 	lcall	_busyWait
                                    667 ;	lcdCommands.c:39: lcdGeneral = 0x38;
      0020BE 90 F0 00         [24]  668 	mov	dptr,#_lcdGeneral
      0020C1 74 38            [12]  669 	mov	a,#0x38
      0020C3 F0               [24]  670 	movx	@dptr,a
      0020C4 E4               [12]  671 	clr	a
      0020C5 A3               [24]  672 	inc	dptr
      0020C6 F0               [24]  673 	movx	@dptr,a
                                    674 ;	lcdCommands.c:40: busyWait();
      0020C7 12 20 8B         [24]  675 	lcall	_busyWait
                                    676 ;	lcdCommands.c:41: lcdGeneral = 0x08;
      0020CA 90 F0 00         [24]  677 	mov	dptr,#_lcdGeneral
      0020CD 74 08            [12]  678 	mov	a,#0x08
      0020CF F0               [24]  679 	movx	@dptr,a
      0020D0 E4               [12]  680 	clr	a
      0020D1 A3               [24]  681 	inc	dptr
      0020D2 F0               [24]  682 	movx	@dptr,a
                                    683 ;	lcdCommands.c:42: busyWait();
      0020D3 12 20 8B         [24]  684 	lcall	_busyWait
                                    685 ;	lcdCommands.c:43: lcdGeneral = 0x0C;
      0020D6 90 F0 00         [24]  686 	mov	dptr,#_lcdGeneral
      0020D9 74 0C            [12]  687 	mov	a,#0x0c
      0020DB F0               [24]  688 	movx	@dptr,a
      0020DC E4               [12]  689 	clr	a
      0020DD A3               [24]  690 	inc	dptr
      0020DE F0               [24]  691 	movx	@dptr,a
                                    692 ;	lcdCommands.c:44: busyWait();
      0020DF 12 20 8B         [24]  693 	lcall	_busyWait
                                    694 ;	lcdCommands.c:45: lcdGeneral = 0x06;
      0020E2 90 F0 00         [24]  695 	mov	dptr,#_lcdGeneral
      0020E5 74 06            [12]  696 	mov	a,#0x06
      0020E7 F0               [24]  697 	movx	@dptr,a
      0020E8 E4               [12]  698 	clr	a
      0020E9 A3               [24]  699 	inc	dptr
      0020EA F0               [24]  700 	movx	@dptr,a
                                    701 ;	lcdCommands.c:46: busyWait();
      0020EB 12 20 8B         [24]  702 	lcall	_busyWait
                                    703 ;	lcdCommands.c:47: lcdGeneral = 0x01;
      0020EE 90 F0 00         [24]  704 	mov	dptr,#_lcdGeneral
      0020F1 74 01            [12]  705 	mov	a,#0x01
      0020F3 F0               [24]  706 	movx	@dptr,a
      0020F4 E4               [12]  707 	clr	a
      0020F5 A3               [24]  708 	inc	dptr
      0020F6 F0               [24]  709 	movx	@dptr,a
                                    710 ;	lcdCommands.c:48: }
      0020F7 22               [24]  711 	ret
                                    712 ;------------------------------------------------------------
                                    713 ;Allocation info for local variables in function 'lcdPutCh'
                                    714 ;------------------------------------------------------------
                                    715 ;x                         Allocated with name '_lcdPutCh_x_65536_76'
                                    716 ;------------------------------------------------------------
                                    717 ;	lcdCommands.c:50: void lcdPutCh(uint8_t x)
                                    718 ;	-----------------------------------------
                                    719 ;	 function lcdPutCh
                                    720 ;	-----------------------------------------
      0020F8                        721 _lcdPutCh:
      0020F8 E5 82            [12]  722 	mov	a,dpl
      0020FA 90 00 01         [24]  723 	mov	dptr,#_lcdPutCh_x_65536_76
      0020FD F0               [24]  724 	movx	@dptr,a
                                    725 ;	lcdCommands.c:52: busyWait();
      0020FE 12 20 8B         [24]  726 	lcall	_busyWait
                                    727 ;	lcdCommands.c:53: writeCharacter = x;
      002101 90 00 01         [24]  728 	mov	dptr,#_lcdPutCh_x_65536_76
      002104 E0               [24]  729 	movx	a,@dptr
      002105 90 F1 00         [24]  730 	mov	dptr,#_writeCharacter
      002108 F0               [24]  731 	movx	@dptr,a
      002109 E4               [12]  732 	clr	a
      00210A A3               [24]  733 	inc	dptr
      00210B F0               [24]  734 	movx	@dptr,a
                                    735 ;	lcdCommands.c:54: }
      00210C 22               [24]  736 	ret
                                    737 ;------------------------------------------------------------
                                    738 ;Allocation info for local variables in function 'lcdClear'
                                    739 ;------------------------------------------------------------
                                    740 ;	lcdCommands.c:56: void lcdClear()
                                    741 ;	-----------------------------------------
                                    742 ;	 function lcdClear
                                    743 ;	-----------------------------------------
      00210D                        744 _lcdClear:
                                    745 ;	lcdCommands.c:58: busyWait();
      00210D 12 20 8B         [24]  746 	lcall	_busyWait
                                    747 ;	lcdCommands.c:59: lcdGeneral = 0x01;
      002110 90 F0 00         [24]  748 	mov	dptr,#_lcdGeneral
      002113 74 01            [12]  749 	mov	a,#0x01
      002115 F0               [24]  750 	movx	@dptr,a
      002116 E4               [12]  751 	clr	a
      002117 A3               [24]  752 	inc	dptr
      002118 F0               [24]  753 	movx	@dptr,a
                                    754 ;	lcdCommands.c:60: }
      002119 22               [24]  755 	ret
                                    756 ;------------------------------------------------------------
                                    757 ;Allocation info for local variables in function 'goToAddr'
                                    758 ;------------------------------------------------------------
                                    759 ;x                         Allocated with name '_goToAddr_x_65536_79'
                                    760 ;------------------------------------------------------------
                                    761 ;	lcdCommands.c:62: void goToAddr(uint8_t x)
                                    762 ;	-----------------------------------------
                                    763 ;	 function goToAddr
                                    764 ;	-----------------------------------------
      00211A                        765 _goToAddr:
      00211A E5 82            [12]  766 	mov	a,dpl
      00211C 90 00 02         [24]  767 	mov	dptr,#_goToAddr_x_65536_79
      00211F F0               [24]  768 	movx	@dptr,a
                                    769 ;	lcdCommands.c:64: busyWait();
      002120 12 20 8B         [24]  770 	lcall	_busyWait
                                    771 ;	lcdCommands.c:65: lcdGeneral = 0x80 | x;
      002123 90 00 02         [24]  772 	mov	dptr,#_goToAddr_x_65536_79
      002126 E0               [24]  773 	movx	a,@dptr
      002127 FF               [12]  774 	mov	r7,a
      002128 7E 00            [12]  775 	mov	r6,#0x00
      00212A 90 F0 00         [24]  776 	mov	dptr,#_lcdGeneral
      00212D 74 80            [12]  777 	mov	a,#0x80
      00212F 4F               [12]  778 	orl	a,r7
      002130 F0               [24]  779 	movx	@dptr,a
      002131 EE               [12]  780 	mov	a,r6
      002132 A3               [24]  781 	inc	dptr
      002133 F0               [24]  782 	movx	@dptr,a
                                    783 ;	lcdCommands.c:66: }
      002134 22               [24]  784 	ret
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'goToXY'
                                    787 ;------------------------------------------------------------
                                    788 ;y                         Allocated with name '_goToXY_PARM_2'
                                    789 ;x                         Allocated with name '_goToXY_x_65536_81'
                                    790 ;------------------------------------------------------------
                                    791 ;	lcdCommands.c:68: void goToXY(uint8_t x, uint8_t y)
                                    792 ;	-----------------------------------------
                                    793 ;	 function goToXY
                                    794 ;	-----------------------------------------
      002135                        795 _goToXY:
      002135 E5 82            [12]  796 	mov	a,dpl
      002137 90 00 04         [24]  797 	mov	dptr,#_goToXY_x_65536_81
      00213A F0               [24]  798 	movx	@dptr,a
                                    799 ;	lcdCommands.c:70: busyWait();
      00213B 12 20 8B         [24]  800 	lcall	_busyWait
                                    801 ;	lcdCommands.c:71: goToAddr(lookUpTable[x][y]);
      00213E 90 00 04         [24]  802 	mov	dptr,#_goToXY_x_65536_81
      002141 E0               [24]  803 	movx	a,@dptr
      002142 75 F0 10         [24]  804 	mov	b,#0x10
      002145 A4               [48]  805 	mul	ab
      002146 24 7F            [12]  806 	add	a,#_lookUpTable
      002148 FE               [12]  807 	mov	r6,a
      002149 74 42            [12]  808 	mov	a,#(_lookUpTable >> 8)
      00214B 35 F0            [12]  809 	addc	a,b
      00214D FF               [12]  810 	mov	r7,a
      00214E 90 00 03         [24]  811 	mov	dptr,#_goToXY_PARM_2
      002151 E0               [24]  812 	movx	a,@dptr
      002152 2E               [12]  813 	add	a,r6
      002153 F5 82            [12]  814 	mov	dpl,a
      002155 E4               [12]  815 	clr	a
      002156 3F               [12]  816 	addc	a,r7
      002157 F5 83            [12]  817 	mov	dph,a
      002159 E4               [12]  818 	clr	a
      00215A 93               [24]  819 	movc	a,@a+dptr
      00215B F5 82            [12]  820 	mov	dpl,a
                                    821 ;	lcdCommands.c:72: }
      00215D 02 21 1A         [24]  822 	ljmp	_goToAddr
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'customCharacter'
                                    825 ;------------------------------------------------------------
                                    826 ;temp                      Allocated with name '_customCharacter_temp_65536_83'
                                    827 ;i                         Allocated with name '_customCharacter_i_65536_83'
                                    828 ;x                         Allocated with name '_customCharacter_x_65536_83'
                                    829 ;temp8                     Allocated with name '_customCharacter_temp8_196609_86'
                                    830 ;------------------------------------------------------------
                                    831 ;	lcdCommands.c:74: void customCharacter()
                                    832 ;	-----------------------------------------
                                    833 ;	 function customCharacter
                                    834 ;	-----------------------------------------
      002160                        835 _customCharacter:
                                    836 ;	lcdCommands.c:79: for(i = 0; i < 8; i++)
      002160 7F 00            [12]  837 	mov	r7,#0x00
      002162                        838 00106$:
                                    839 ;	lcdCommands.c:81: busyWait();
      002162 C0 07            [24]  840 	push	ar7
      002164 12 20 8B         [24]  841 	lcall	_busyWait
      002167 D0 07            [24]  842 	pop	ar7
                                    843 ;	lcdCommands.c:83: temp8 = 0x40 | (0x28 + i);
      002169 8F 05            [24]  844 	mov	ar5,r7
      00216B 7E 00            [12]  845 	mov	r6,#0x00
      00216D 74 28            [12]  846 	mov	a,#0x28
      00216F 2D               [12]  847 	add	a,r5
      002170 FD               [12]  848 	mov	r5,a
      002171 E4               [12]  849 	clr	a
      002172 3E               [12]  850 	addc	a,r6
      002173 FE               [12]  851 	mov	r6,a
      002174 43 05 40         [24]  852 	orl	ar5,#0x40
      002177 90 F0 00         [24]  853 	mov	dptr,#_customCharacter_temp8_196609_86
      00217A ED               [12]  854 	mov	a,r5
      00217B F0               [24]  855 	movx	@dptr,a
      00217C EE               [12]  856 	mov	a,r6
      00217D A3               [24]  857 	inc	dptr
      00217E F0               [24]  858 	movx	@dptr,a
                                    859 ;	lcdCommands.c:84: printf("%x %x\n\r",temp8, (0x40 | (0x28 + i)));
      00217F 90 F0 00         [24]  860 	mov	dptr,#_customCharacter_temp8_196609_86
      002182 E0               [24]  861 	movx	a,@dptr
      002183 FB               [12]  862 	mov	r3,a
      002184 A3               [24]  863 	inc	dptr
      002185 E0               [24]  864 	movx	a,@dptr
      002186 FC               [12]  865 	mov	r4,a
      002187 C0 07            [24]  866 	push	ar7
      002189 C0 05            [24]  867 	push	ar5
      00218B C0 06            [24]  868 	push	ar6
      00218D C0 03            [24]  869 	push	ar3
      00218F C0 04            [24]  870 	push	ar4
      002191 74 BF            [12]  871 	mov	a,#___str_0
      002193 C0 E0            [24]  872 	push	acc
      002195 74 42            [12]  873 	mov	a,#(___str_0 >> 8)
      002197 C0 E0            [24]  874 	push	acc
      002199 74 80            [12]  875 	mov	a,#0x80
      00219B C0 E0            [24]  876 	push	acc
      00219D 12 36 49         [24]  877 	lcall	_printf
      0021A0 E5 81            [12]  878 	mov	a,sp
      0021A2 24 F9            [12]  879 	add	a,#0xf9
      0021A4 F5 81            [12]  880 	mov	sp,a
                                    881 ;	lcdCommands.c:85: busyWait();
      0021A6 12 20 8B         [24]  882 	lcall	_busyWait
      0021A9 D0 07            [24]  883 	pop	ar7
                                    884 ;	lcdCommands.c:86: do{
      0021AB 8F 06            [24]  885 	mov	ar6,r7
      0021AD                        886 00102$:
                                    887 ;	lcdCommands.c:87: printf_tiny("\n\rEnter value for Row %d\n\r", (i+1));
      0021AD 8E 04            [24]  888 	mov	ar4,r6
      0021AF 7D 00            [12]  889 	mov	r5,#0x00
      0021B1 0C               [12]  890 	inc	r4
      0021B2 BC 00 01         [24]  891 	cjne	r4,#0x00,00127$
      0021B5 0D               [12]  892 	inc	r5
      0021B6                        893 00127$:
      0021B6 C0 06            [24]  894 	push	ar6
      0021B8 C0 04            [24]  895 	push	ar4
      0021BA C0 05            [24]  896 	push	ar5
      0021BC 74 C7            [12]  897 	mov	a,#___str_1
      0021BE C0 E0            [24]  898 	push	acc
      0021C0 74 42            [12]  899 	mov	a,#(___str_1 >> 8)
      0021C2 C0 E0            [24]  900 	push	acc
      0021C4 12 32 BF         [24]  901 	lcall	_printf_tiny
      0021C7 E5 81            [12]  902 	mov	a,sp
      0021C9 24 FC            [12]  903 	add	a,#0xfc
      0021CB F5 81            [12]  904 	mov	sp,a
                                    905 ;	lcdCommands.c:88: gets(x);
      0021CD 90 00 05         [24]  906 	mov	dptr,#_customCharacter_x_65536_83
      0021D0 75 F0 00         [24]  907 	mov	b,#0x00
      0021D3 12 23 75         [24]  908 	lcall	_gets
                                    909 ;	lcdCommands.c:90: temp = atoh(x);
      0021D6 90 00 05         [24]  910 	mov	dptr,#_customCharacter_x_65536_83
      0021D9 75 F0 00         [24]  911 	mov	b,#0x00
      0021DC 12 2B 46         [24]  912 	lcall	_atoh
      0021DF AD 82            [24]  913 	mov	r5,dpl
      0021E1 D0 06            [24]  914 	pop	ar6
                                    915 ;	lcdCommands.c:91: }while(temp < 0 || temp > 0x1F);
      0021E3 ED               [12]  916 	mov	a,r5
      0021E4 24 E0            [12]  917 	add	a,#0xff - 0x1f
      0021E6 40 C5            [24]  918 	jc	00102$
                                    919 ;	lcdCommands.c:93: writeCharacter = temp;
      0021E8 90 F1 00         [24]  920 	mov	dptr,#_writeCharacter
      0021EB ED               [12]  921 	mov	a,r5
      0021EC F0               [24]  922 	movx	@dptr,a
      0021ED E4               [12]  923 	clr	a
      0021EE A3               [24]  924 	inc	dptr
      0021EF F0               [24]  925 	movx	@dptr,a
                                    926 ;	lcdCommands.c:94: busyWait();
      0021F0 C0 06            [24]  927 	push	ar6
      0021F2 12 20 8B         [24]  928 	lcall	_busyWait
                                    929 ;	lcdCommands.c:95: memset(x,'\0',8 * sizeof(char));
      0021F5 90 00 A6         [24]  930 	mov	dptr,#_memset_PARM_2
      0021F8 E4               [12]  931 	clr	a
      0021F9 F0               [24]  932 	movx	@dptr,a
      0021FA 90 00 A7         [24]  933 	mov	dptr,#_memset_PARM_3
      0021FD 74 08            [12]  934 	mov	a,#0x08
      0021FF F0               [24]  935 	movx	@dptr,a
      002200 E4               [12]  936 	clr	a
      002201 A3               [24]  937 	inc	dptr
      002202 F0               [24]  938 	movx	@dptr,a
      002203 90 00 05         [24]  939 	mov	dptr,#_customCharacter_x_65536_83
      002206 75 F0 00         [24]  940 	mov	b,#0x00
      002209 12 31 5C         [24]  941 	lcall	_memset
      00220C D0 06            [24]  942 	pop	ar6
                                    943 ;	lcdCommands.c:79: for(i = 0; i < 8; i++)
      00220E EE               [12]  944 	mov	a,r6
      00220F 04               [12]  945 	inc	a
      002210 FF               [12]  946 	mov	r7,a
      002211 BF 08 00         [24]  947 	cjne	r7,#0x08,00129$
      002214                        948 00129$:
      002214 50 03            [24]  949 	jnc	00130$
      002216 02 21 62         [24]  950 	ljmp	00106$
      002219                        951 00130$:
                                    952 ;	lcdCommands.c:97: lcdGeneral = 0x80 | 0x11;
      002219 90 F0 00         [24]  953 	mov	dptr,#_lcdGeneral
      00221C 74 91            [12]  954 	mov	a,#0x91
      00221E F0               [24]  955 	movx	@dptr,a
      00221F E4               [12]  956 	clr	a
      002220 A3               [24]  957 	inc	dptr
      002221 F0               [24]  958 	movx	@dptr,a
                                    959 ;	lcdCommands.c:98: busyWait();
      002222 12 20 8B         [24]  960 	lcall	_busyWait
                                    961 ;	lcdCommands.c:99: writeCharacter = 0x05;
      002225 90 F1 00         [24]  962 	mov	dptr,#_writeCharacter
      002228 74 05            [12]  963 	mov	a,#0x05
      00222A F0               [24]  964 	movx	@dptr,a
      00222B E4               [12]  965 	clr	a
      00222C A3               [24]  966 	inc	dptr
      00222D F0               [24]  967 	movx	@dptr,a
                                    968 ;	lcdCommands.c:100: }
      00222E 22               [24]  969 	ret
                                    970 ;------------------------------------------------------------
                                    971 ;Allocation info for local variables in function 'readLCD'
                                    972 ;------------------------------------------------------------
                                    973 ;temp1                     Allocated with name '_readLCD_temp1_65537_89'
                                    974 ;------------------------------------------------------------
                                    975 ;	lcdCommands.c:102: uint8_t readLCD()
                                    976 ;	-----------------------------------------
                                    977 ;	 function readLCD
                                    978 ;	-----------------------------------------
      00222F                        979 _readLCD:
                                    980 ;	lcdCommands.c:104: busyWait();
      00222F 12 20 8B         [24]  981 	lcall	_busyWait
                                    982 ;	lcdCommands.c:105: uint8_t temp1 = readCharacter;
      002232 90 F3 00         [24]  983 	mov	dptr,#_readCharacter
      002235 E0               [24]  984 	movx	a,@dptr
      002236 FE               [12]  985 	mov	r6,a
      002237 A3               [24]  986 	inc	dptr
      002238 E0               [24]  987 	movx	a,@dptr
                                    988 ;	lcdCommands.c:106: return temp1;
      002239 8E 82            [24]  989 	mov	dpl,r6
                                    990 ;	lcdCommands.c:107: }
      00223B 22               [24]  991 	ret
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'putsLCD'
                                    994 ;------------------------------------------------------------
                                    995 ;sloc0                     Allocated with name '_putsLCD_sloc0_1_0'
                                    996 ;sloc1                     Allocated with name '_putsLCD_sloc1_1_0'
                                    997 ;y                         Allocated with name '_putsLCD_y_65536_90'
                                    998 ;i                         Allocated with name '_putsLCD_i_65536_91'
                                    999 ;j                         Allocated with name '_putsLCD_j_65536_91'
                                   1000 ;k                         Allocated with name '_putsLCD_k_65536_91'
                                   1001 ;------------------------------------------------------------
                                   1002 ;	lcdCommands.c:109: void putsLCD(char* y)
                                   1003 ;	-----------------------------------------
                                   1004 ;	 function putsLCD
                                   1005 ;	-----------------------------------------
      00223C                       1006 _putsLCD:
      00223C AF F0            [24] 1007 	mov	r7,b
      00223E AE 83            [24] 1008 	mov	r6,dph
      002240 E5 82            [12] 1009 	mov	a,dpl
      002242 90 00 0D         [24] 1010 	mov	dptr,#_putsLCD_y_65536_90
      002245 F0               [24] 1011 	movx	@dptr,a
      002246 EE               [12] 1012 	mov	a,r6
      002247 A3               [24] 1013 	inc	dptr
      002248 F0               [24] 1014 	movx	@dptr,a
      002249 EF               [12] 1015 	mov	a,r7
      00224A A3               [24] 1016 	inc	dptr
      00224B F0               [24] 1017 	movx	@dptr,a
                                   1018 ;	lcdCommands.c:111: int i = 0,j = 0, k =0;
      00224C 90 00 10         [24] 1019 	mov	dptr,#_putsLCD_i_65536_91
      00224F E4               [12] 1020 	clr	a
      002250 F0               [24] 1021 	movx	@dptr,a
      002251 A3               [24] 1022 	inc	dptr
      002252 F0               [24] 1023 	movx	@dptr,a
                                   1024 ;	lcdCommands.c:112: while(y[i + (j * 16)] != '\0')
      002253 90 00 0D         [24] 1025 	mov	dptr,#_putsLCD_y_65536_90
      002256 E0               [24] 1026 	movx	a,@dptr
      002257 F5 0A            [12] 1027 	mov	_putsLCD_sloc1_1_0,a
      002259 A3               [24] 1028 	inc	dptr
      00225A E0               [24] 1029 	movx	a,@dptr
      00225B F5 0B            [12] 1030 	mov	(_putsLCD_sloc1_1_0 + 1),a
      00225D A3               [24] 1031 	inc	dptr
      00225E E0               [24] 1032 	movx	a,@dptr
      00225F F5 0C            [12] 1033 	mov	(_putsLCD_sloc1_1_0 + 2),a
      002261 AA 0A            [24] 1034 	mov	r2,_putsLCD_sloc1_1_0
      002263 AB 0B            [24] 1035 	mov	r3,(_putsLCD_sloc1_1_0 + 1)
      002265 AC 0C            [24] 1036 	mov	r4,(_putsLCD_sloc1_1_0 + 2)
      002267 78 00            [12] 1037 	mov	r0,#0x00
      002269 79 00            [12] 1038 	mov	r1,#0x00
      00226B                       1039 00103$:
      00226B 88 06            [24] 1040 	mov	ar6,r0
      00226D E9               [12] 1041 	mov	a,r1
      00226E C4               [12] 1042 	swap	a
      00226F 54 F0            [12] 1043 	anl	a,#0xf0
      002271 CE               [12] 1044 	xch	a,r6
      002272 C4               [12] 1045 	swap	a
      002273 CE               [12] 1046 	xch	a,r6
      002274 6E               [12] 1047 	xrl	a,r6
      002275 CE               [12] 1048 	xch	a,r6
      002276 54 F0            [12] 1049 	anl	a,#0xf0
      002278 CE               [12] 1050 	xch	a,r6
      002279 6E               [12] 1051 	xrl	a,r6
      00227A FF               [12] 1052 	mov	r7,a
      00227B 90 00 10         [24] 1053 	mov	dptr,#_putsLCD_i_65536_91
      00227E E0               [24] 1054 	movx	a,@dptr
      00227F F5 08            [12] 1055 	mov	_putsLCD_sloc0_1_0,a
      002281 A3               [24] 1056 	inc	dptr
      002282 E0               [24] 1057 	movx	a,@dptr
      002283 F5 09            [12] 1058 	mov	(_putsLCD_sloc0_1_0 + 1),a
      002285 EE               [12] 1059 	mov	a,r6
      002286 25 08            [12] 1060 	add	a,_putsLCD_sloc0_1_0
      002288 FE               [12] 1061 	mov	r6,a
      002289 EF               [12] 1062 	mov	a,r7
      00228A 35 09            [12] 1063 	addc	a,(_putsLCD_sloc0_1_0 + 1)
      00228C FF               [12] 1064 	mov	r7,a
      00228D EE               [12] 1065 	mov	a,r6
      00228E 2A               [12] 1066 	add	a,r2
      00228F FE               [12] 1067 	mov	r6,a
      002290 EF               [12] 1068 	mov	a,r7
      002291 3B               [12] 1069 	addc	a,r3
      002292 FF               [12] 1070 	mov	r7,a
      002293 8C 05            [24] 1071 	mov	ar5,r4
      002295 8E 82            [24] 1072 	mov	dpl,r6
      002297 8F 83            [24] 1073 	mov	dph,r7
      002299 8D F0            [24] 1074 	mov	b,r5
      00229B 12 40 6B         [24] 1075 	lcall	__gptrget
      00229E 70 01            [24] 1076 	jnz	00121$
      0022A0 22               [24] 1077 	ret
      0022A1                       1078 00121$:
                                   1079 ;	lcdCommands.c:114: busyWait();
      0022A1 C0 04            [24] 1080 	push	ar4
      0022A3 C0 03            [24] 1081 	push	ar3
      0022A5 C0 02            [24] 1082 	push	ar2
      0022A7 C0 01            [24] 1083 	push	ar1
      0022A9 C0 00            [24] 1084 	push	ar0
      0022AB 12 20 8B         [24] 1085 	lcall	_busyWait
      0022AE D0 00            [24] 1086 	pop	ar0
      0022B0 D0 01            [24] 1087 	pop	ar1
      0022B2 D0 02            [24] 1088 	pop	ar2
      0022B4 D0 03            [24] 1089 	pop	ar3
      0022B6 D0 04            [24] 1090 	pop	ar4
                                   1091 ;	lcdCommands.c:115: if( i > 15)
      0022B8 C3               [12] 1092 	clr	c
      0022B9 74 0F            [12] 1093 	mov	a,#0x0f
      0022BB 95 08            [12] 1094 	subb	a,_putsLCD_sloc0_1_0
      0022BD 74 80            [12] 1095 	mov	a,#(0x00 ^ 0x80)
      0022BF 85 09 F0         [24] 1096 	mov	b,(_putsLCD_sloc0_1_0 + 1)
      0022C2 63 F0 80         [24] 1097 	xrl	b,#0x80
      0022C5 95 F0            [12] 1098 	subb	a,b
      0022C7 50 0C            [24] 1099 	jnc	00102$
                                   1100 ;	lcdCommands.c:117: j++;
      0022C9 08               [12] 1101 	inc	r0
      0022CA B8 00 01         [24] 1102 	cjne	r0,#0x00,00123$
      0022CD 09               [12] 1103 	inc	r1
      0022CE                       1104 00123$:
                                   1105 ;	lcdCommands.c:118: i = 0;
      0022CE 90 00 10         [24] 1106 	mov	dptr,#_putsLCD_i_65536_91
      0022D1 E4               [12] 1107 	clr	a
      0022D2 F0               [24] 1108 	movx	@dptr,a
      0022D3 A3               [24] 1109 	inc	dptr
      0022D4 F0               [24] 1110 	movx	@dptr,a
      0022D5                       1111 00102$:
                                   1112 ;	lcdCommands.c:121: goToAddr(lookUpTable[j][i]);
      0022D5 C0 02            [24] 1113 	push	ar2
      0022D7 C0 03            [24] 1114 	push	ar3
      0022D9 C0 04            [24] 1115 	push	ar4
      0022DB 88 03            [24] 1116 	mov	ar3,r0
      0022DD E9               [12] 1117 	mov	a,r1
      0022DE C4               [12] 1118 	swap	a
      0022DF 54 F0            [12] 1119 	anl	a,#0xf0
      0022E1 CB               [12] 1120 	xch	a,r3
      0022E2 C4               [12] 1121 	swap	a
      0022E3 CB               [12] 1122 	xch	a,r3
      0022E4 6B               [12] 1123 	xrl	a,r3
      0022E5 CB               [12] 1124 	xch	a,r3
      0022E6 54 F0            [12] 1125 	anl	a,#0xf0
      0022E8 CB               [12] 1126 	xch	a,r3
      0022E9 6B               [12] 1127 	xrl	a,r3
      0022EA FC               [12] 1128 	mov	r4,a
      0022EB EB               [12] 1129 	mov	a,r3
      0022EC 24 7F            [12] 1130 	add	a,#_lookUpTable
      0022EE FA               [12] 1131 	mov	r2,a
      0022EF EC               [12] 1132 	mov	a,r4
      0022F0 34 42            [12] 1133 	addc	a,#(_lookUpTable >> 8)
      0022F2 FF               [12] 1134 	mov	r7,a
      0022F3 90 00 10         [24] 1135 	mov	dptr,#_putsLCD_i_65536_91
      0022F6 E0               [24] 1136 	movx	a,@dptr
      0022F7 FD               [12] 1137 	mov	r5,a
      0022F8 A3               [24] 1138 	inc	dptr
      0022F9 E0               [24] 1139 	movx	a,@dptr
      0022FA FE               [12] 1140 	mov	r6,a
      0022FB ED               [12] 1141 	mov	a,r5
      0022FC 2A               [12] 1142 	add	a,r2
      0022FD F5 82            [12] 1143 	mov	dpl,a
      0022FF EE               [12] 1144 	mov	a,r6
      002300 3F               [12] 1145 	addc	a,r7
      002301 F5 83            [12] 1146 	mov	dph,a
      002303 E4               [12] 1147 	clr	a
      002304 93               [24] 1148 	movc	a,@a+dptr
      002305 F5 82            [12] 1149 	mov	dpl,a
      002307 C0 06            [24] 1150 	push	ar6
      002309 C0 05            [24] 1151 	push	ar5
      00230B C0 04            [24] 1152 	push	ar4
      00230D C0 03            [24] 1153 	push	ar3
      00230F C0 02            [24] 1154 	push	ar2
      002311 C0 01            [24] 1155 	push	ar1
      002313 C0 00            [24] 1156 	push	ar0
      002315 12 21 1A         [24] 1157 	lcall	_goToAddr
      002318 D0 00            [24] 1158 	pop	ar0
      00231A D0 01            [24] 1159 	pop	ar1
      00231C D0 02            [24] 1160 	pop	ar2
      00231E D0 03            [24] 1161 	pop	ar3
      002320 D0 04            [24] 1162 	pop	ar4
      002322 D0 05            [24] 1163 	pop	ar5
      002324 D0 06            [24] 1164 	pop	ar6
                                   1165 ;	lcdCommands.c:122: lcdPutCh(y[i + (j * 16)]);
      002326 EB               [12] 1166 	mov	a,r3
      002327 2D               [12] 1167 	add	a,r5
      002328 FB               [12] 1168 	mov	r3,a
      002329 EC               [12] 1169 	mov	a,r4
      00232A 3E               [12] 1170 	addc	a,r6
      00232B FC               [12] 1171 	mov	r4,a
      00232C EB               [12] 1172 	mov	a,r3
      00232D 25 0A            [12] 1173 	add	a,_putsLCD_sloc1_1_0
      00232F FB               [12] 1174 	mov	r3,a
      002330 EC               [12] 1175 	mov	a,r4
      002331 35 0B            [12] 1176 	addc	a,(_putsLCD_sloc1_1_0 + 1)
      002333 FC               [12] 1177 	mov	r4,a
      002334 AF 0C            [24] 1178 	mov	r7,(_putsLCD_sloc1_1_0 + 2)
      002336 8B 82            [24] 1179 	mov	dpl,r3
      002338 8C 83            [24] 1180 	mov	dph,r4
      00233A 8F F0            [24] 1181 	mov	b,r7
      00233C 12 40 6B         [24] 1182 	lcall	__gptrget
      00233F FB               [12] 1183 	mov	r3,a
      002340 F5 82            [12] 1184 	mov	dpl,a
      002342 C0 06            [24] 1185 	push	ar6
      002344 C0 05            [24] 1186 	push	ar5
      002346 C0 04            [24] 1187 	push	ar4
      002348 C0 03            [24] 1188 	push	ar3
      00234A C0 02            [24] 1189 	push	ar2
      00234C C0 01            [24] 1190 	push	ar1
      00234E C0 00            [24] 1191 	push	ar0
      002350 12 20 F8         [24] 1192 	lcall	_lcdPutCh
      002353 D0 00            [24] 1193 	pop	ar0
      002355 D0 01            [24] 1194 	pop	ar1
      002357 D0 02            [24] 1195 	pop	ar2
      002359 D0 03            [24] 1196 	pop	ar3
      00235B D0 04            [24] 1197 	pop	ar4
      00235D D0 05            [24] 1198 	pop	ar5
      00235F D0 06            [24] 1199 	pop	ar6
                                   1200 ;	lcdCommands.c:123: i++;
      002361 90 00 10         [24] 1201 	mov	dptr,#_putsLCD_i_65536_91
      002364 74 01            [12] 1202 	mov	a,#0x01
      002366 2D               [12] 1203 	add	a,r5
      002367 F0               [24] 1204 	movx	@dptr,a
      002368 E4               [12] 1205 	clr	a
      002369 3E               [12] 1206 	addc	a,r6
      00236A A3               [24] 1207 	inc	dptr
      00236B F0               [24] 1208 	movx	@dptr,a
      00236C D0 04            [24] 1209 	pop	ar4
      00236E D0 03            [24] 1210 	pop	ar3
      002370 D0 02            [24] 1211 	pop	ar2
                                   1212 ;	lcdCommands.c:125: }
      002372 02 22 6B         [24] 1213 	ljmp	00103$
                                   1214 ;------------------------------------------------------------
                                   1215 ;Allocation info for local variables in function 'gets'
                                   1216 ;------------------------------------------------------------
                                   1217 ;s                         Allocated with name '_gets_s_65536_94'
                                   1218 ;c                         Allocated with name '_gets_c_65536_95'
                                   1219 ;count                     Allocated with name '_gets_count_65536_95'
                                   1220 ;------------------------------------------------------------
                                   1221 ;	lcdCommands.c:127: char *gets (char *s)
                                   1222 ;	-----------------------------------------
                                   1223 ;	 function gets
                                   1224 ;	-----------------------------------------
      002375                       1225 _gets:
      002375 AF F0            [24] 1226 	mov	r7,b
      002377 AE 83            [24] 1227 	mov	r6,dph
      002379 E5 82            [12] 1228 	mov	a,dpl
      00237B 90 00 12         [24] 1229 	mov	dptr,#_gets_s_65536_94
      00237E F0               [24] 1230 	movx	@dptr,a
      00237F EE               [12] 1231 	mov	a,r6
      002380 A3               [24] 1232 	inc	dptr
      002381 F0               [24] 1233 	movx	@dptr,a
      002382 EF               [12] 1234 	mov	a,r7
      002383 A3               [24] 1235 	inc	dptr
      002384 F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	lcdCommands.c:130: unsigned int count = 0;
      002385 90 00 15         [24] 1238 	mov	dptr,#_gets_count_65536_95
      002388 E4               [12] 1239 	clr	a
      002389 F0               [24] 1240 	movx	@dptr,a
      00238A A3               [24] 1241 	inc	dptr
      00238B F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	lcdCommands.c:132: while (1)
      00238C                       1244 00111$:
                                   1245 ;	lcdCommands.c:134: c = getchar ();
      00238C 12 30 88         [24] 1246 	lcall	_getchar
      00238F AE 82            [24] 1247 	mov	r6,dpl
      002391 AF 83            [24] 1248 	mov	r7,dph
                                   1249 ;	lcdCommands.c:135: switch(c)
      002393 BE 08 02         [24] 1250 	cjne	r6,#0x08,00139$
      002396 80 0D            [24] 1251 	sjmp	00101$
      002398                       1252 00139$:
      002398 BE 0A 02         [24] 1253 	cjne	r6,#0x0a,00140$
      00239B 80 62            [24] 1254 	sjmp	00105$
      00239D                       1255 00140$:
      00239D BE 0D 02         [24] 1256 	cjne	r6,#0x0d,00141$
      0023A0 80 5D            [24] 1257 	sjmp	00105$
      0023A2                       1258 00141$:
      0023A2 02 24 27         [24] 1259 	ljmp	00106$
                                   1260 ;	lcdCommands.c:137: case '\b': /* backspace */
      0023A5                       1261 00101$:
                                   1262 ;	lcdCommands.c:138: if (count)
      0023A5 90 00 15         [24] 1263 	mov	dptr,#_gets_count_65536_95
      0023A8 E0               [24] 1264 	movx	a,@dptr
      0023A9 FD               [12] 1265 	mov	r5,a
      0023AA A3               [24] 1266 	inc	dptr
      0023AB E0               [24] 1267 	movx	a,@dptr
      0023AC FF               [12] 1268 	mov	r7,a
      0023AD 90 00 15         [24] 1269 	mov	dptr,#_gets_count_65536_95
      0023B0 E0               [24] 1270 	movx	a,@dptr
      0023B1 F5 F0            [12] 1271 	mov	b,a
      0023B3 A3               [24] 1272 	inc	dptr
      0023B4 E0               [24] 1273 	movx	a,@dptr
      0023B5 45 F0            [12] 1274 	orl	a,b
      0023B7 70 03            [24] 1275 	jnz	00142$
      0023B9 02 24 5F         [24] 1276 	ljmp	00107$
      0023BC                       1277 00142$:
                                   1278 ;	lcdCommands.c:140: putchar ('\b');
      0023BC 90 00 08         [24] 1279 	mov	dptr,#0x0008
      0023BF C0 07            [24] 1280 	push	ar7
      0023C1 C0 05            [24] 1281 	push	ar5
      0023C3 12 30 57         [24] 1282 	lcall	_putchar
                                   1283 ;	lcdCommands.c:141: putchar (' ');
      0023C6 90 00 20         [24] 1284 	mov	dptr,#0x0020
      0023C9 12 30 57         [24] 1285 	lcall	_putchar
                                   1286 ;	lcdCommands.c:142: putchar ('\b');
      0023CC 90 00 08         [24] 1287 	mov	dptr,#0x0008
      0023CF 12 30 57         [24] 1288 	lcall	_putchar
      0023D2 D0 05            [24] 1289 	pop	ar5
      0023D4 D0 07            [24] 1290 	pop	ar7
                                   1291 ;	lcdCommands.c:143: --s;
      0023D6 90 00 12         [24] 1292 	mov	dptr,#_gets_s_65536_94
      0023D9 E0               [24] 1293 	movx	a,@dptr
      0023DA 24 FF            [12] 1294 	add	a,#0xff
      0023DC FA               [12] 1295 	mov	r2,a
      0023DD A3               [24] 1296 	inc	dptr
      0023DE E0               [24] 1297 	movx	a,@dptr
      0023DF 34 FF            [12] 1298 	addc	a,#0xff
      0023E1 FB               [12] 1299 	mov	r3,a
      0023E2 A3               [24] 1300 	inc	dptr
      0023E3 E0               [24] 1301 	movx	a,@dptr
      0023E4 FC               [12] 1302 	mov	r4,a
      0023E5 90 00 12         [24] 1303 	mov	dptr,#_gets_s_65536_94
      0023E8 EA               [12] 1304 	mov	a,r2
      0023E9 F0               [24] 1305 	movx	@dptr,a
      0023EA EB               [12] 1306 	mov	a,r3
      0023EB A3               [24] 1307 	inc	dptr
      0023EC F0               [24] 1308 	movx	@dptr,a
      0023ED EC               [12] 1309 	mov	a,r4
      0023EE A3               [24] 1310 	inc	dptr
      0023EF F0               [24] 1311 	movx	@dptr,a
                                   1312 ;	lcdCommands.c:144: --count;
      0023F0 1D               [12] 1313 	dec	r5
      0023F1 BD FF 01         [24] 1314 	cjne	r5,#0xff,00143$
      0023F4 1F               [12] 1315 	dec	r7
      0023F5                       1316 00143$:
      0023F5 90 00 15         [24] 1317 	mov	dptr,#_gets_count_65536_95
      0023F8 ED               [12] 1318 	mov	a,r5
      0023F9 F0               [24] 1319 	movx	@dptr,a
      0023FA EF               [12] 1320 	mov	a,r7
      0023FB A3               [24] 1321 	inc	dptr
      0023FC F0               [24] 1322 	movx	@dptr,a
                                   1323 ;	lcdCommands.c:146: break;
                                   1324 ;	lcdCommands.c:149: case '\r': /* CR or LF */
      0023FD 80 60            [24] 1325 	sjmp	00107$
      0023FF                       1326 00105$:
                                   1327 ;	lcdCommands.c:150: putchar ('\r');
      0023FF 90 00 0D         [24] 1328 	mov	dptr,#0x000d
      002402 12 30 57         [24] 1329 	lcall	_putchar
                                   1330 ;	lcdCommands.c:151: putchar ('\n');
      002405 90 00 0A         [24] 1331 	mov	dptr,#0x000a
      002408 12 30 57         [24] 1332 	lcall	_putchar
                                   1333 ;	lcdCommands.c:152: *s = 0;
      00240B 90 00 12         [24] 1334 	mov	dptr,#_gets_s_65536_94
      00240E E0               [24] 1335 	movx	a,@dptr
      00240F FC               [12] 1336 	mov	r4,a
      002410 A3               [24] 1337 	inc	dptr
      002411 E0               [24] 1338 	movx	a,@dptr
      002412 FD               [12] 1339 	mov	r5,a
      002413 A3               [24] 1340 	inc	dptr
      002414 E0               [24] 1341 	movx	a,@dptr
      002415 FF               [12] 1342 	mov	r7,a
      002416 8C 82            [24] 1343 	mov	dpl,r4
      002418 8D 83            [24] 1344 	mov	dph,r5
      00241A 8F F0            [24] 1345 	mov	b,r7
      00241C E4               [12] 1346 	clr	a
      00241D 12 32 A4         [24] 1347 	lcall	__gptrput
                                   1348 ;	lcdCommands.c:153: return s;
      002420 8C 82            [24] 1349 	mov	dpl,r4
      002422 8D 83            [24] 1350 	mov	dph,r5
      002424 8F F0            [24] 1351 	mov	b,r7
                                   1352 ;	lcdCommands.c:155: default:
      002426 22               [24] 1353 	ret
      002427                       1354 00106$:
                                   1355 ;	lcdCommands.c:156: *s++ = c;
      002427 90 00 12         [24] 1356 	mov	dptr,#_gets_s_65536_94
      00242A E0               [24] 1357 	movx	a,@dptr
      00242B FC               [12] 1358 	mov	r4,a
      00242C A3               [24] 1359 	inc	dptr
      00242D E0               [24] 1360 	movx	a,@dptr
      00242E FD               [12] 1361 	mov	r5,a
      00242F A3               [24] 1362 	inc	dptr
      002430 E0               [24] 1363 	movx	a,@dptr
      002431 FF               [12] 1364 	mov	r7,a
      002432 8C 82            [24] 1365 	mov	dpl,r4
      002434 8D 83            [24] 1366 	mov	dph,r5
      002436 8F F0            [24] 1367 	mov	b,r7
      002438 EE               [12] 1368 	mov	a,r6
      002439 12 32 A4         [24] 1369 	lcall	__gptrput
      00243C 90 00 12         [24] 1370 	mov	dptr,#_gets_s_65536_94
      00243F 74 01            [12] 1371 	mov	a,#0x01
      002441 2C               [12] 1372 	add	a,r4
      002442 F0               [24] 1373 	movx	@dptr,a
      002443 E4               [12] 1374 	clr	a
      002444 3D               [12] 1375 	addc	a,r5
      002445 A3               [24] 1376 	inc	dptr
      002446 F0               [24] 1377 	movx	@dptr,a
      002447 EF               [12] 1378 	mov	a,r7
      002448 A3               [24] 1379 	inc	dptr
      002449 F0               [24] 1380 	movx	@dptr,a
                                   1381 ;	lcdCommands.c:157: ++count;
      00244A 90 00 15         [24] 1382 	mov	dptr,#_gets_count_65536_95
      00244D E0               [24] 1383 	movx	a,@dptr
      00244E 24 01            [12] 1384 	add	a,#0x01
      002450 F0               [24] 1385 	movx	@dptr,a
      002451 A3               [24] 1386 	inc	dptr
      002452 E0               [24] 1387 	movx	a,@dptr
      002453 34 00            [12] 1388 	addc	a,#0x00
      002455 F0               [24] 1389 	movx	@dptr,a
                                   1390 ;	lcdCommands.c:158: putchar (c);
      002456 7F 00            [12] 1391 	mov	r7,#0x00
      002458 8E 82            [24] 1392 	mov	dpl,r6
      00245A 8F 83            [24] 1393 	mov	dph,r7
      00245C 12 30 57         [24] 1394 	lcall	_putchar
                                   1395 ;	lcdCommands.c:160: }
      00245F                       1396 00107$:
                                   1397 ;	lcdCommands.c:161: if (count == 48)
      00245F 90 00 15         [24] 1398 	mov	dptr,#_gets_count_65536_95
      002462 E0               [24] 1399 	movx	a,@dptr
      002463 FE               [12] 1400 	mov	r6,a
      002464 A3               [24] 1401 	inc	dptr
      002465 E0               [24] 1402 	movx	a,@dptr
      002466 FF               [12] 1403 	mov	r7,a
      002467 BE 30 05         [24] 1404 	cjne	r6,#0x30,00144$
      00246A BF 00 02         [24] 1405 	cjne	r7,#0x00,00144$
      00246D 80 03            [24] 1406 	sjmp	00145$
      00246F                       1407 00144$:
      00246F 02 23 8C         [24] 1408 	ljmp	00111$
      002472                       1409 00145$:
                                   1410 ;	lcdCommands.c:163: printf("\n\rPlease Input a maximum of 48 characters\n\r");
      002472 74 E2            [12] 1411 	mov	a,#___str_2
      002474 C0 E0            [24] 1412 	push	acc
      002476 74 42            [12] 1413 	mov	a,#(___str_2 >> 8)
      002478 C0 E0            [24] 1414 	push	acc
      00247A 74 80            [12] 1415 	mov	a,#0x80
      00247C C0 E0            [24] 1416 	push	acc
      00247E 12 36 49         [24] 1417 	lcall	_printf
      002481 15 81            [12] 1418 	dec	sp
      002483 15 81            [12] 1419 	dec	sp
      002485 15 81            [12] 1420 	dec	sp
                                   1421 ;	lcdCommands.c:164: break;
                                   1422 ;	lcdCommands.c:167: }
      002487 22               [24] 1423 	ret
                                   1424 ;------------------------------------------------------------
                                   1425 ;Allocation info for local variables in function 'ramDump'
                                   1426 ;------------------------------------------------------------
                                   1427 ;i                         Allocated with name '_ramDump_i_65536_100'
                                   1428 ;j                         Allocated with name '_ramDump_j_65536_100'
                                   1429 ;x                         Allocated with name '_ramDump_x_196609_103'
                                   1430 ;x                         Allocated with name '_ramDump_x_196609_108'
                                   1431 ;------------------------------------------------------------
                                   1432 ;	lcdCommands.c:169: void ramDump()
                                   1433 ;	-----------------------------------------
                                   1434 ;	 function ramDump
                                   1435 ;	-----------------------------------------
      002488                       1436 _ramDump:
                                   1437 ;	lcdCommands.c:173: printf_tiny("\n\rDDRAM Contents\n\r");
      002488 74 0E            [12] 1438 	mov	a,#___str_3
      00248A C0 E0            [24] 1439 	push	acc
      00248C 74 43            [12] 1440 	mov	a,#(___str_3 >> 8)
      00248E C0 E0            [24] 1441 	push	acc
      002490 12 32 BF         [24] 1442 	lcall	_printf_tiny
      002493 15 81            [12] 1443 	dec	sp
      002495 15 81            [12] 1444 	dec	sp
                                   1445 ;	lcdCommands.c:174: for (i = 0; i < 128; i += 16)      //Print 64 ASCII characters in each line
      002497 90 00 17         [24] 1446 	mov	dptr,#_ramDump_i_65536_100
      00249A E4               [12] 1447 	clr	a
      00249B F0               [24] 1448 	movx	@dptr,a
      00249C                       1449 00109$:
                                   1450 ;	lcdCommands.c:176: lcdGeneral = 0x80 | i;
      00249C 90 00 17         [24] 1451 	mov	dptr,#_ramDump_i_65536_100
      00249F E0               [24] 1452 	movx	a,@dptr
      0024A0 FF               [12] 1453 	mov	r7,a
      0024A1 FD               [12] 1454 	mov	r5,a
      0024A2 7E 00            [12] 1455 	mov	r6,#0x00
      0024A4 90 F0 00         [24] 1456 	mov	dptr,#_lcdGeneral
      0024A7 74 80            [12] 1457 	mov	a,#0x80
      0024A9 4D               [12] 1458 	orl	a,r5
      0024AA F0               [24] 1459 	movx	@dptr,a
      0024AB EE               [12] 1460 	mov	a,r6
      0024AC A3               [24] 1461 	inc	dptr
      0024AD F0               [24] 1462 	movx	@dptr,a
                                   1463 ;	lcdCommands.c:177: uint8_t x = readLCD();
      0024AE C0 07            [24] 1464 	push	ar7
      0024B0 C0 06            [24] 1465 	push	ar6
      0024B2 C0 05            [24] 1466 	push	ar5
      0024B4 12 22 2F         [24] 1467 	lcall	_readLCD
      0024B7 AC 82            [24] 1468 	mov	r4,dpl
      0024B9 D0 05            [24] 1469 	pop	ar5
      0024BB D0 06            [24] 1470 	pop	ar6
                                   1471 ;	lcdCommands.c:178: printf("%2x: ",i);
      0024BD C0 06            [24] 1472 	push	ar6
      0024BF C0 05            [24] 1473 	push	ar5
      0024C1 C0 04            [24] 1474 	push	ar4
      0024C3 C0 05            [24] 1475 	push	ar5
      0024C5 C0 06            [24] 1476 	push	ar6
      0024C7 74 21            [12] 1477 	mov	a,#___str_4
      0024C9 C0 E0            [24] 1478 	push	acc
      0024CB 74 43            [12] 1479 	mov	a,#(___str_4 >> 8)
      0024CD C0 E0            [24] 1480 	push	acc
      0024CF 74 80            [12] 1481 	mov	a,#0x80
      0024D1 C0 E0            [24] 1482 	push	acc
      0024D3 12 36 49         [24] 1483 	lcall	_printf
      0024D6 E5 81            [12] 1484 	mov	a,sp
      0024D8 24 FB            [12] 1485 	add	a,#0xfb
      0024DA F5 81            [12] 1486 	mov	sp,a
      0024DC D0 04            [24] 1487 	pop	ar4
      0024DE D0 05            [24] 1488 	pop	ar5
      0024E0 D0 06            [24] 1489 	pop	ar6
      0024E2 D0 07            [24] 1490 	pop	ar7
                                   1491 ;	lcdCommands.c:179: for (j = i; j < (i+16) && j < 128; j++)    //Print the contents of buffer in ASCII
      0024E4                       1492 00107$:
      0024E4 8F 02            [24] 1493 	mov	ar2,r7
      0024E6 7B 00            [12] 1494 	mov	r3,#0x00
      0024E8 74 10            [12] 1495 	mov	a,#0x10
      0024EA 2A               [12] 1496 	add	a,r2
      0024EB FA               [12] 1497 	mov	r2,a
      0024EC E4               [12] 1498 	clr	a
      0024ED 3B               [12] 1499 	addc	a,r3
      0024EE FB               [12] 1500 	mov	r3,a
      0024EF C3               [12] 1501 	clr	c
      0024F0 ED               [12] 1502 	mov	a,r5
      0024F1 9A               [12] 1503 	subb	a,r2
      0024F2 EE               [12] 1504 	mov	a,r6
      0024F3 64 80            [12] 1505 	xrl	a,#0x80
      0024F5 8B F0            [24] 1506 	mov	b,r3
      0024F7 63 F0 80         [24] 1507 	xrl	b,#0x80
      0024FA 95 F0            [12] 1508 	subb	a,b
      0024FC 50 3F            [24] 1509 	jnc	00101$
      0024FE C3               [12] 1510 	clr	c
      0024FF ED               [12] 1511 	mov	a,r5
      002500 94 80            [12] 1512 	subb	a,#0x80
      002502 EE               [12] 1513 	mov	a,r6
      002503 64 80            [12] 1514 	xrl	a,#0x80
      002505 94 80            [12] 1515 	subb	a,#0x80
      002507 50 34            [24] 1516 	jnc	00101$
                                   1517 ;	lcdCommands.c:181: printf("%2x ", x);
      002509 8C 02            [24] 1518 	mov	ar2,r4
      00250B 7B 00            [12] 1519 	mov	r3,#0x00
      00250D C0 07            [24] 1520 	push	ar7
      00250F C0 06            [24] 1521 	push	ar6
      002511 C0 05            [24] 1522 	push	ar5
      002513 C0 04            [24] 1523 	push	ar4
      002515 C0 02            [24] 1524 	push	ar2
      002517 C0 03            [24] 1525 	push	ar3
      002519 74 27            [12] 1526 	mov	a,#___str_5
      00251B C0 E0            [24] 1527 	push	acc
      00251D 74 43            [12] 1528 	mov	a,#(___str_5 >> 8)
      00251F C0 E0            [24] 1529 	push	acc
      002521 74 80            [12] 1530 	mov	a,#0x80
      002523 C0 E0            [24] 1531 	push	acc
      002525 12 36 49         [24] 1532 	lcall	_printf
      002528 E5 81            [12] 1533 	mov	a,sp
      00252A 24 FB            [12] 1534 	add	a,#0xfb
      00252C F5 81            [12] 1535 	mov	sp,a
      00252E D0 04            [24] 1536 	pop	ar4
      002530 D0 05            [24] 1537 	pop	ar5
      002532 D0 06            [24] 1538 	pop	ar6
      002534 D0 07            [24] 1539 	pop	ar7
                                   1540 ;	lcdCommands.c:179: for (j = i; j < (i+16) && j < 128; j++)    //Print the contents of buffer in ASCII
      002536 0D               [12] 1541 	inc	r5
      002537 BD 00 AA         [24] 1542 	cjne	r5,#0x00,00107$
      00253A 0E               [12] 1543 	inc	r6
      00253B 80 A7            [24] 1544 	sjmp	00107$
      00253D                       1545 00101$:
                                   1546 ;	lcdCommands.c:183: printf_tiny("\n\r");
      00253D 74 2C            [12] 1547 	mov	a,#___str_6
      00253F C0 E0            [24] 1548 	push	acc
      002541 74 43            [12] 1549 	mov	a,#(___str_6 >> 8)
      002543 C0 E0            [24] 1550 	push	acc
      002545 12 32 BF         [24] 1551 	lcall	_printf_tiny
      002548 15 81            [12] 1552 	dec	sp
      00254A 15 81            [12] 1553 	dec	sp
                                   1554 ;	lcdCommands.c:174: for (i = 0; i < 128; i += 16)      //Print 64 ASCII characters in each line
      00254C 90 00 17         [24] 1555 	mov	dptr,#_ramDump_i_65536_100
      00254F E0               [24] 1556 	movx	a,@dptr
      002550 24 10            [12] 1557 	add	a,#0x10
      002552 F0               [24] 1558 	movx	@dptr,a
      002553 E0               [24] 1559 	movx	a,@dptr
      002554 FF               [12] 1560 	mov	r7,a
      002555 BF 80 00         [24] 1561 	cjne	r7,#0x80,00160$
      002558                       1562 00160$:
      002558 50 03            [24] 1563 	jnc	00161$
      00255A 02 24 9C         [24] 1564 	ljmp	00109$
      00255D                       1565 00161$:
                                   1566 ;	lcdCommands.c:185: printf_tiny("\n\rCGRAM Contents\n\r");
      00255D 74 2F            [12] 1567 	mov	a,#___str_7
      00255F C0 E0            [24] 1568 	push	acc
      002561 74 43            [12] 1569 	mov	a,#(___str_7 >> 8)
      002563 C0 E0            [24] 1570 	push	acc
      002565 12 32 BF         [24] 1571 	lcall	_printf_tiny
      002568 15 81            [12] 1572 	dec	sp
      00256A 15 81            [12] 1573 	dec	sp
                                   1574 ;	lcdCommands.c:186: for (i = 0; i < 64; i += 16)      //Print 64 ASCII characters in each line
      00256C 90 00 17         [24] 1575 	mov	dptr,#_ramDump_i_65536_100
      00256F E4               [12] 1576 	clr	a
      002570 F0               [24] 1577 	movx	@dptr,a
      002571                       1578 00115$:
                                   1579 ;	lcdCommands.c:188: lcdGeneral = 0x40 | i;
      002571 90 00 17         [24] 1580 	mov	dptr,#_ramDump_i_65536_100
      002574 E0               [24] 1581 	movx	a,@dptr
      002575 FF               [12] 1582 	mov	r7,a
      002576 FD               [12] 1583 	mov	r5,a
      002577 7E 00            [12] 1584 	mov	r6,#0x00
      002579 90 F0 00         [24] 1585 	mov	dptr,#_lcdGeneral
      00257C 74 40            [12] 1586 	mov	a,#0x40
      00257E 4D               [12] 1587 	orl	a,r5
      00257F F0               [24] 1588 	movx	@dptr,a
      002580 EE               [12] 1589 	mov	a,r6
      002581 A3               [24] 1590 	inc	dptr
      002582 F0               [24] 1591 	movx	@dptr,a
                                   1592 ;	lcdCommands.c:189: uint8_t x = readLCD();
      002583 C0 07            [24] 1593 	push	ar7
      002585 C0 06            [24] 1594 	push	ar6
      002587 C0 05            [24] 1595 	push	ar5
      002589 12 22 2F         [24] 1596 	lcall	_readLCD
      00258C AC 82            [24] 1597 	mov	r4,dpl
      00258E D0 05            [24] 1598 	pop	ar5
      002590 D0 06            [24] 1599 	pop	ar6
                                   1600 ;	lcdCommands.c:190: printf("%2x: ",i);
      002592 C0 06            [24] 1601 	push	ar6
      002594 C0 05            [24] 1602 	push	ar5
      002596 C0 04            [24] 1603 	push	ar4
      002598 C0 05            [24] 1604 	push	ar5
      00259A C0 06            [24] 1605 	push	ar6
      00259C 74 21            [12] 1606 	mov	a,#___str_4
      00259E C0 E0            [24] 1607 	push	acc
      0025A0 74 43            [12] 1608 	mov	a,#(___str_4 >> 8)
      0025A2 C0 E0            [24] 1609 	push	acc
      0025A4 74 80            [12] 1610 	mov	a,#0x80
      0025A6 C0 E0            [24] 1611 	push	acc
      0025A8 12 36 49         [24] 1612 	lcall	_printf
      0025AB E5 81            [12] 1613 	mov	a,sp
      0025AD 24 FB            [12] 1614 	add	a,#0xfb
      0025AF F5 81            [12] 1615 	mov	sp,a
      0025B1 D0 04            [24] 1616 	pop	ar4
      0025B3 D0 05            [24] 1617 	pop	ar5
      0025B5 D0 06            [24] 1618 	pop	ar6
      0025B7 D0 07            [24] 1619 	pop	ar7
                                   1620 ;	lcdCommands.c:191: for (j = i; j < (i+16) && j < 64; j++)    //Print the contents of buffer in ASCII
      0025B9                       1621 00113$:
      0025B9 8F 02            [24] 1622 	mov	ar2,r7
      0025BB 7B 00            [12] 1623 	mov	r3,#0x00
      0025BD 74 10            [12] 1624 	mov	a,#0x10
      0025BF 2A               [12] 1625 	add	a,r2
      0025C0 FA               [12] 1626 	mov	r2,a
      0025C1 E4               [12] 1627 	clr	a
      0025C2 3B               [12] 1628 	addc	a,r3
      0025C3 FB               [12] 1629 	mov	r3,a
      0025C4 C3               [12] 1630 	clr	c
      0025C5 ED               [12] 1631 	mov	a,r5
      0025C6 9A               [12] 1632 	subb	a,r2
      0025C7 EE               [12] 1633 	mov	a,r6
      0025C8 64 80            [12] 1634 	xrl	a,#0x80
      0025CA 8B F0            [24] 1635 	mov	b,r3
      0025CC 63 F0 80         [24] 1636 	xrl	b,#0x80
      0025CF 95 F0            [12] 1637 	subb	a,b
      0025D1 50 3F            [24] 1638 	jnc	00103$
      0025D3 C3               [12] 1639 	clr	c
      0025D4 ED               [12] 1640 	mov	a,r5
      0025D5 94 40            [12] 1641 	subb	a,#0x40
      0025D7 EE               [12] 1642 	mov	a,r6
      0025D8 64 80            [12] 1643 	xrl	a,#0x80
      0025DA 94 80            [12] 1644 	subb	a,#0x80
      0025DC 50 34            [24] 1645 	jnc	00103$
                                   1646 ;	lcdCommands.c:193: printf("%2x ", x);
      0025DE 8C 02            [24] 1647 	mov	ar2,r4
      0025E0 7B 00            [12] 1648 	mov	r3,#0x00
      0025E2 C0 07            [24] 1649 	push	ar7
      0025E4 C0 06            [24] 1650 	push	ar6
      0025E6 C0 05            [24] 1651 	push	ar5
      0025E8 C0 04            [24] 1652 	push	ar4
      0025EA C0 02            [24] 1653 	push	ar2
      0025EC C0 03            [24] 1654 	push	ar3
      0025EE 74 27            [12] 1655 	mov	a,#___str_5
      0025F0 C0 E0            [24] 1656 	push	acc
      0025F2 74 43            [12] 1657 	mov	a,#(___str_5 >> 8)
      0025F4 C0 E0            [24] 1658 	push	acc
      0025F6 74 80            [12] 1659 	mov	a,#0x80
      0025F8 C0 E0            [24] 1660 	push	acc
      0025FA 12 36 49         [24] 1661 	lcall	_printf
      0025FD E5 81            [12] 1662 	mov	a,sp
      0025FF 24 FB            [12] 1663 	add	a,#0xfb
      002601 F5 81            [12] 1664 	mov	sp,a
      002603 D0 04            [24] 1665 	pop	ar4
      002605 D0 05            [24] 1666 	pop	ar5
      002607 D0 06            [24] 1667 	pop	ar6
      002609 D0 07            [24] 1668 	pop	ar7
                                   1669 ;	lcdCommands.c:191: for (j = i; j < (i+16) && j < 64; j++)    //Print the contents of buffer in ASCII
      00260B 0D               [12] 1670 	inc	r5
      00260C BD 00 AA         [24] 1671 	cjne	r5,#0x00,00113$
      00260F 0E               [12] 1672 	inc	r6
      002610 80 A7            [24] 1673 	sjmp	00113$
      002612                       1674 00103$:
                                   1675 ;	lcdCommands.c:195: printf_tiny("\n\r");
      002612 74 2C            [12] 1676 	mov	a,#___str_6
      002614 C0 E0            [24] 1677 	push	acc
      002616 74 43            [12] 1678 	mov	a,#(___str_6 >> 8)
      002618 C0 E0            [24] 1679 	push	acc
      00261A 12 32 BF         [24] 1680 	lcall	_printf_tiny
      00261D 15 81            [12] 1681 	dec	sp
      00261F 15 81            [12] 1682 	dec	sp
                                   1683 ;	lcdCommands.c:186: for (i = 0; i < 64; i += 16)      //Print 64 ASCII characters in each line
      002621 90 00 17         [24] 1684 	mov	dptr,#_ramDump_i_65536_100
      002624 E0               [24] 1685 	movx	a,@dptr
      002625 24 10            [12] 1686 	add	a,#0x10
      002627 F0               [24] 1687 	movx	@dptr,a
      002628 E0               [24] 1688 	movx	a,@dptr
      002629 FF               [12] 1689 	mov	r7,a
      00262A BF 40 00         [24] 1690 	cjne	r7,#0x40,00165$
      00262D                       1691 00165$:
      00262D 50 03            [24] 1692 	jnc	00166$
      00262F 02 25 71         [24] 1693 	ljmp	00115$
      002632                       1694 00166$:
                                   1695 ;	lcdCommands.c:197: }
      002632 22               [24] 1696 	ret
                                   1697 ;------------------------------------------------------------
                                   1698 ;Allocation info for local variables in function 'gamePacman'
                                   1699 ;------------------------------------------------------------
                                   1700 ;ch                        Allocated with name '_gamePacman_ch_65537_112'
                                   1701 ;i                         Allocated with name '_gamePacman_i_65537_112'
                                   1702 ;count                     Allocated with name '_gamePacman_count_65537_112'
                                   1703 ;checkEnter                Allocated with name '_gamePacman_checkEnter_196610_116'
                                   1704 ;checkEnter1               Allocated with name '_gamePacman_checkEnter1_196610_120'
                                   1705 ;------------------------------------------------------------
                                   1706 ;	lcdCommands.c:199: void gamePacman()
                                   1707 ;	-----------------------------------------
                                   1708 ;	 function gamePacman
                                   1709 ;	-----------------------------------------
      002633                       1710 _gamePacman:
                                   1711 ;	lcdCommands.c:201: lcdClear();
      002633 12 21 0D         [24] 1712 	lcall	_lcdClear
                                   1713 ;	lcdCommands.c:203: int i = 1;
      002636 90 00 18         [24] 1714 	mov	dptr,#_gamePacman_i_65537_112
      002639 74 01            [12] 1715 	mov	a,#0x01
      00263B F0               [24] 1716 	movx	@dptr,a
      00263C E4               [12] 1717 	clr	a
      00263D A3               [24] 1718 	inc	dptr
      00263E F0               [24] 1719 	movx	@dptr,a
                                   1720 ;	lcdCommands.c:204: int count = 0;
      00263F 90 00 1A         [24] 1721 	mov	dptr,#_gamePacman_count_65537_112
      002642 F0               [24] 1722 	movx	@dptr,a
      002643 A3               [24] 1723 	inc	dptr
      002644 F0               [24] 1724 	movx	@dptr,a
                                   1725 ;	lcdCommands.c:205: makePacmanRight();
      002645 12 29 4C         [24] 1726 	lcall	_makePacmanRight
                                   1727 ;	lcdCommands.c:206: makePacmanLeft();
      002648 12 2A 32         [24] 1728 	lcall	_makePacmanLeft
                                   1729 ;	lcdCommands.c:207: goToAddr(lookUpTable[0][4]);
      00264B 90 42 83         [24] 1730 	mov	dptr,#(_lookUpTable + 0x0004)
      00264E E4               [12] 1731 	clr	a
      00264F 93               [24] 1732 	movc	a,@a+dptr
      002650 F5 82            [12] 1733 	mov	dpl,a
      002652 12 21 1A         [24] 1734 	lcall	_goToAddr
                                   1735 ;	lcdCommands.c:208: lcdPutCh('*');
      002655 75 82 2A         [24] 1736 	mov	dpl,#0x2a
      002658 12 20 F8         [24] 1737 	lcall	_lcdPutCh
                                   1738 ;	lcdCommands.c:209: goToAddr(lookUpTable[0][5]);
      00265B 90 42 84         [24] 1739 	mov	dptr,#(_lookUpTable + 0x0005)
      00265E E4               [12] 1740 	clr	a
      00265F 93               [24] 1741 	movc	a,@a+dptr
      002660 F5 82            [12] 1742 	mov	dpl,a
      002662 12 21 1A         [24] 1743 	lcall	_goToAddr
                                   1744 ;	lcdCommands.c:210: lcdPutCh('*');
      002665 75 82 2A         [24] 1745 	mov	dpl,#0x2a
      002668 12 20 F8         [24] 1746 	lcall	_lcdPutCh
                                   1747 ;	lcdCommands.c:211: goToAddr(lookUpTable[0][8]);
      00266B 90 42 87         [24] 1748 	mov	dptr,#(_lookUpTable + 0x0008)
      00266E E4               [12] 1749 	clr	a
      00266F 93               [24] 1750 	movc	a,@a+dptr
      002670 F5 82            [12] 1751 	mov	dpl,a
      002672 12 21 1A         [24] 1752 	lcall	_goToAddr
                                   1753 ;	lcdCommands.c:212: lcdPutCh('*');
      002675 75 82 2A         [24] 1754 	mov	dpl,#0x2a
      002678 12 20 F8         [24] 1755 	lcall	_lcdPutCh
                                   1756 ;	lcdCommands.c:213: goToAddr(lookUpTable[0][9]);
      00267B 90 42 88         [24] 1757 	mov	dptr,#(_lookUpTable + 0x0009)
      00267E E4               [12] 1758 	clr	a
      00267F 93               [24] 1759 	movc	a,@a+dptr
      002680 F5 82            [12] 1760 	mov	dpl,a
      002682 12 21 1A         [24] 1761 	lcall	_goToAddr
                                   1762 ;	lcdCommands.c:214: lcdPutCh('*');
      002685 75 82 2A         [24] 1763 	mov	dpl,#0x2a
      002688 12 20 F8         [24] 1764 	lcall	_lcdPutCh
                                   1765 ;	lcdCommands.c:215: goToAddr(lookUpTable[0][12]);
      00268B 90 42 8B         [24] 1766 	mov	dptr,#(_lookUpTable + 0x000c)
      00268E E4               [12] 1767 	clr	a
      00268F 93               [24] 1768 	movc	a,@a+dptr
      002690 F5 82            [12] 1769 	mov	dpl,a
      002692 12 21 1A         [24] 1770 	lcall	_goToAddr
                                   1771 ;	lcdCommands.c:216: lcdPutCh('*');
      002695 75 82 2A         [24] 1772 	mov	dpl,#0x2a
      002698 12 20 F8         [24] 1773 	lcall	_lcdPutCh
                                   1774 ;	lcdCommands.c:217: goToAddr(lookUpTable[0][13]);
      00269B 90 42 8C         [24] 1775 	mov	dptr,#(_lookUpTable + 0x000d)
      00269E E4               [12] 1776 	clr	a
      00269F 93               [24] 1777 	movc	a,@a+dptr
      0026A0 F5 82            [12] 1778 	mov	dpl,a
      0026A2 12 21 1A         [24] 1779 	lcall	_goToAddr
                                   1780 ;	lcdCommands.c:218: lcdPutCh('*');
      0026A5 75 82 2A         [24] 1781 	mov	dpl,#0x2a
      0026A8 12 20 F8         [24] 1782 	lcall	_lcdPutCh
                                   1783 ;	lcdCommands.c:219: goToAddr(lookUpTable[0][14]);
      0026AB 90 42 8D         [24] 1784 	mov	dptr,#(_lookUpTable + 0x000e)
      0026AE E4               [12] 1785 	clr	a
      0026AF 93               [24] 1786 	movc	a,@a+dptr
      0026B0 F5 82            [12] 1787 	mov	dpl,a
      0026B2 12 21 1A         [24] 1788 	lcall	_goToAddr
                                   1789 ;	lcdCommands.c:220: lcdPutCh('*');
      0026B5 75 82 2A         [24] 1790 	mov	dpl,#0x2a
      0026B8 12 20 F8         [24] 1791 	lcall	_lcdPutCh
                                   1792 ;	lcdCommands.c:221: goToAddr(lookUpTable[1][1]);
      0026BB 90 42 90         [24] 1793 	mov	dptr,#(_lookUpTable + 0x0011)
      0026BE E4               [12] 1794 	clr	a
      0026BF 93               [24] 1795 	movc	a,@a+dptr
      0026C0 F5 82            [12] 1796 	mov	dpl,a
      0026C2 12 21 1A         [24] 1797 	lcall	_goToAddr
                                   1798 ;	lcdCommands.c:222: lcdPutCh('*');
      0026C5 75 82 2A         [24] 1799 	mov	dpl,#0x2a
      0026C8 12 20 F8         [24] 1800 	lcall	_lcdPutCh
                                   1801 ;	lcdCommands.c:223: goToAddr(lookUpTable[1][2]);
      0026CB 90 42 91         [24] 1802 	mov	dptr,#(_lookUpTable + 0x0012)
      0026CE E4               [12] 1803 	clr	a
      0026CF 93               [24] 1804 	movc	a,@a+dptr
      0026D0 F5 82            [12] 1805 	mov	dpl,a
      0026D2 12 21 1A         [24] 1806 	lcall	_goToAddr
                                   1807 ;	lcdCommands.c:224: lcdPutCh('*');
      0026D5 75 82 2A         [24] 1808 	mov	dpl,#0x2a
      0026D8 12 20 F8         [24] 1809 	lcall	_lcdPutCh
                                   1810 ;	lcdCommands.c:225: goToAddr(lookUpTable[1][3]);
      0026DB 90 42 92         [24] 1811 	mov	dptr,#(_lookUpTable + 0x0013)
      0026DE E4               [12] 1812 	clr	a
      0026DF 93               [24] 1813 	movc	a,@a+dptr
      0026E0 F5 82            [12] 1814 	mov	dpl,a
      0026E2 12 21 1A         [24] 1815 	lcall	_goToAddr
                                   1816 ;	lcdCommands.c:226: lcdPutCh('*');
      0026E5 75 82 2A         [24] 1817 	mov	dpl,#0x2a
      0026E8 12 20 F8         [24] 1818 	lcall	_lcdPutCh
                                   1819 ;	lcdCommands.c:227: goToAddr(lookUpTable[1][12]);
      0026EB 90 42 9B         [24] 1820 	mov	dptr,#(_lookUpTable + 0x001c)
      0026EE E4               [12] 1821 	clr	a
      0026EF 93               [24] 1822 	movc	a,@a+dptr
      0026F0 F5 82            [12] 1823 	mov	dpl,a
      0026F2 12 21 1A         [24] 1824 	lcall	_goToAddr
                                   1825 ;	lcdCommands.c:228: lcdPutCh('*');
      0026F5 75 82 2A         [24] 1826 	mov	dpl,#0x2a
      0026F8 12 20 F8         [24] 1827 	lcall	_lcdPutCh
                                   1828 ;	lcdCommands.c:229: goToAddr(lookUpTable[1][13]);
      0026FB 90 42 9C         [24] 1829 	mov	dptr,#(_lookUpTable + 0x001d)
      0026FE E4               [12] 1830 	clr	a
      0026FF 93               [24] 1831 	movc	a,@a+dptr
      002700 F5 82            [12] 1832 	mov	dpl,a
      002702 12 21 1A         [24] 1833 	lcall	_goToAddr
                                   1834 ;	lcdCommands.c:230: lcdPutCh('*');
      002705 75 82 2A         [24] 1835 	mov	dpl,#0x2a
      002708 12 20 F8         [24] 1836 	lcall	_lcdPutCh
                                   1837 ;	lcdCommands.c:231: printf_tiny("\n\rEnter w to go up, s to go down, a to go left and d to go right and q to quit\n\r");
      00270B 74 42            [12] 1838 	mov	a,#___str_8
      00270D C0 E0            [24] 1839 	push	acc
      00270F 74 43            [12] 1840 	mov	a,#(___str_8 >> 8)
      002711 C0 E0            [24] 1841 	push	acc
      002713 12 32 BF         [24] 1842 	lcall	_printf_tiny
      002716 15 81            [12] 1843 	dec	sp
      002718 15 81            [12] 1844 	dec	sp
                                   1845 ;	lcdCommands.c:232: do{
      00271A                       1846 00115$:
                                   1847 ;	lcdCommands.c:233: if(count == 12)
      00271A 90 00 1A         [24] 1848 	mov	dptr,#_gamePacman_count_65537_112
      00271D E0               [24] 1849 	movx	a,@dptr
      00271E FE               [12] 1850 	mov	r6,a
      00271F A3               [24] 1851 	inc	dptr
      002720 E0               [24] 1852 	movx	a,@dptr
      002721 FF               [12] 1853 	mov	r7,a
      002722 BE 0C 12         [24] 1854 	cjne	r6,#0x0c,00102$
      002725 BF 00 0F         [24] 1855 	cjne	r7,#0x00,00102$
                                   1856 ;	lcdCommands.c:235: lcdClear();
      002728 12 21 0D         [24] 1857 	lcall	_lcdClear
                                   1858 ;	lcdCommands.c:236: putsLCD("GAME OVER! PRESS p to restart");
      00272B 90 43 93         [24] 1859 	mov	dptr,#___str_9
      00272E 75 F0 80         [24] 1860 	mov	b,#0x80
      002731 12 22 3C         [24] 1861 	lcall	_putsLCD
                                   1862 ;	lcdCommands.c:237: printMenu();
                                   1863 ;	lcdCommands.c:238: break;
      002734 02 2C F2         [24] 1864 	ljmp	_printMenu
      002737                       1865 00102$:
                                   1866 ;	lcdCommands.c:240: ch = getchar();
      002737 C0 07            [24] 1867 	push	ar7
      002739 C0 06            [24] 1868 	push	ar6
      00273B 12 30 88         [24] 1869 	lcall	_getchar
      00273E AC 82            [24] 1870 	mov	r4,dpl
      002740 AD 83            [24] 1871 	mov	r5,dph
      002742 D0 06            [24] 1872 	pop	ar6
      002744 D0 07            [24] 1873 	pop	ar7
                                   1874 ;	lcdCommands.c:241: if(ch == 'd')
      002746 BC 64 02         [24] 1875 	cjne	r4,#0x64,00154$
      002749 80 03            [24] 1876 	sjmp	00155$
      00274B                       1877 00154$:
      00274B 02 28 31         [24] 1878 	ljmp	00108$
      00274E                       1879 00155$:
                                   1880 ;	lcdCommands.c:243: goToAddr(lookUpTable[0][i-1]);
      00274E 90 00 18         [24] 1881 	mov	dptr,#_gamePacman_i_65537_112
      002751 E0               [24] 1882 	movx	a,@dptr
      002752 FB               [12] 1883 	mov	r3,a
      002753 A3               [24] 1884 	inc	dptr
      002754 E0               [24] 1885 	movx	a,@dptr
      002755 FD               [12] 1886 	mov	r5,a
      002756 8B 02            [24] 1887 	mov	ar2,r3
      002758 EA               [12] 1888 	mov	a,r2
      002759 14               [12] 1889 	dec	a
      00275A 90 42 7F         [24] 1890 	mov	dptr,#_lookUpTable
      00275D 93               [24] 1891 	movc	a,@a+dptr
      00275E F5 82            [12] 1892 	mov	dpl,a
      002760 C0 07            [24] 1893 	push	ar7
      002762 C0 06            [24] 1894 	push	ar6
      002764 C0 05            [24] 1895 	push	ar5
      002766 C0 04            [24] 1896 	push	ar4
      002768 C0 03            [24] 1897 	push	ar3
      00276A 12 21 1A         [24] 1898 	lcall	_goToAddr
                                   1899 ;	lcdCommands.c:244: busyWait();
      00276D 12 20 8B         [24] 1900 	lcall	_busyWait
                                   1901 ;	lcdCommands.c:245: lcdPutCh(' ');
      002770 75 82 20         [24] 1902 	mov	dpl,#0x20
      002773 12 20 F8         [24] 1903 	lcall	_lcdPutCh
                                   1904 ;	lcdCommands.c:246: busyWait();
      002776 12 20 8B         [24] 1905 	lcall	_busyWait
      002779 D0 03            [24] 1906 	pop	ar3
      00277B D0 04            [24] 1907 	pop	ar4
      00277D D0 05            [24] 1908 	pop	ar5
                                   1909 ;	lcdCommands.c:247: goToAddr(lookUpTable[0][i]);
      00277F EB               [12] 1910 	mov	a,r3
      002780 24 7F            [12] 1911 	add	a,#_lookUpTable
      002782 F5 82            [12] 1912 	mov	dpl,a
      002784 ED               [12] 1913 	mov	a,r5
      002785 34 42            [12] 1914 	addc	a,#(_lookUpTable >> 8)
      002787 F5 83            [12] 1915 	mov	dph,a
      002789 E4               [12] 1916 	clr	a
      00278A 93               [24] 1917 	movc	a,@a+dptr
      00278B F5 82            [12] 1918 	mov	dpl,a
      00278D C0 04            [24] 1919 	push	ar4
      00278F 12 21 1A         [24] 1920 	lcall	_goToAddr
                                   1921 ;	lcdCommands.c:248: busyWait();
      002792 12 20 8B         [24] 1922 	lcall	_busyWait
                                   1923 ;	lcdCommands.c:249: char checkEnter = readLCD();
      002795 12 22 2F         [24] 1924 	lcall	_readLCD
      002798 AD 82            [24] 1925 	mov	r5,dpl
      00279A D0 04            [24] 1926 	pop	ar4
      00279C D0 06            [24] 1927 	pop	ar6
      00279E D0 07            [24] 1928 	pop	ar7
                                   1929 ;	lcdCommands.c:250: if(checkEnter == '*')
      0027A0 BD 2A 15         [24] 1930 	cjne	r5,#0x2a,00104$
                                   1931 ;	lcdCommands.c:252: count++;
      0027A3 90 00 1A         [24] 1932 	mov	dptr,#_gamePacman_count_65537_112
      0027A6 74 01            [12] 1933 	mov	a,#0x01
      0027A8 2E               [12] 1934 	add	a,r6
      0027A9 F0               [24] 1935 	movx	@dptr,a
      0027AA E4               [12] 1936 	clr	a
      0027AB 3F               [12] 1937 	addc	a,r7
      0027AC A3               [24] 1938 	inc	dptr
      0027AD F0               [24] 1939 	movx	@dptr,a
                                   1940 ;	lcdCommands.c:253: putchar(7);
      0027AE 90 00 07         [24] 1941 	mov	dptr,#0x0007
      0027B1 C0 04            [24] 1942 	push	ar4
      0027B3 12 30 57         [24] 1943 	lcall	_putchar
      0027B6 D0 04            [24] 1944 	pop	ar4
      0027B8                       1945 00104$:
                                   1946 ;	lcdCommands.c:255: busyWait();
      0027B8 C0 04            [24] 1947 	push	ar4
      0027BA 12 20 8B         [24] 1948 	lcall	_busyWait
      0027BD D0 04            [24] 1949 	pop	ar4
                                   1950 ;	lcdCommands.c:256: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      0027BF 90 00 18         [24] 1951 	mov	dptr,#_gamePacman_i_65537_112
      0027C2 E0               [24] 1952 	movx	a,@dptr
      0027C3 FE               [12] 1953 	mov	r6,a
      0027C4 A3               [24] 1954 	inc	dptr
      0027C5 E0               [24] 1955 	movx	a,@dptr
      0027C6 FF               [12] 1956 	mov	r7,a
      0027C7 EE               [12] 1957 	mov	a,r6
      0027C8 24 7F            [12] 1958 	add	a,#_lookUpTable
      0027CA F5 82            [12] 1959 	mov	dpl,a
      0027CC EF               [12] 1960 	mov	a,r7
      0027CD 34 42            [12] 1961 	addc	a,#(_lookUpTable >> 8)
      0027CF F5 83            [12] 1962 	mov	dph,a
      0027D1 E4               [12] 1963 	clr	a
      0027D2 93               [24] 1964 	movc	a,@a+dptr
      0027D3 FD               [12] 1965 	mov	r5,a
      0027D4 7B 00            [12] 1966 	mov	r3,#0x00
      0027D6 90 F0 00         [24] 1967 	mov	dptr,#_lcdGeneral
      0027D9 74 80            [12] 1968 	mov	a,#0x80
      0027DB 4D               [12] 1969 	orl	a,r5
      0027DC F0               [24] 1970 	movx	@dptr,a
      0027DD EB               [12] 1971 	mov	a,r3
      0027DE A3               [24] 1972 	inc	dptr
      0027DF F0               [24] 1973 	movx	@dptr,a
                                   1974 ;	lcdCommands.c:257: busyWait();
      0027E0 C0 07            [24] 1975 	push	ar7
      0027E2 C0 06            [24] 1976 	push	ar6
      0027E4 C0 04            [24] 1977 	push	ar4
      0027E6 12 20 8B         [24] 1978 	lcall	_busyWait
                                   1979 ;	lcdCommands.c:258: writeCharacter = 0x00;
      0027E9 90 F1 00         [24] 1980 	mov	dptr,#_writeCharacter
      0027EC E4               [12] 1981 	clr	a
      0027ED F0               [24] 1982 	movx	@dptr,a
      0027EE A3               [24] 1983 	inc	dptr
      0027EF F0               [24] 1984 	movx	@dptr,a
                                   1985 ;	lcdCommands.c:259: busyWait();
      0027F0 12 20 8B         [24] 1986 	lcall	_busyWait
      0027F3 D0 04            [24] 1987 	pop	ar4
      0027F5 D0 06            [24] 1988 	pop	ar6
      0027F7 D0 07            [24] 1989 	pop	ar7
                                   1990 ;	lcdCommands.c:260: if(i >= 47)
      0027F9 C3               [12] 1991 	clr	c
      0027FA EE               [12] 1992 	mov	a,r6
      0027FB 94 2F            [12] 1993 	subb	a,#0x2f
      0027FD EF               [12] 1994 	mov	a,r7
      0027FE 64 80            [12] 1995 	xrl	a,#0x80
      002800 94 80            [12] 1996 	subb	a,#0x80
      002802 40 21            [24] 1997 	jc	00106$
                                   1998 ;	lcdCommands.c:262: goToAddr(lookUpTable[2][15]);
      002804 90 42 AE         [24] 1999 	mov	dptr,#(_lookUpTable + 0x002f)
      002807 E4               [12] 2000 	clr	a
      002808 93               [24] 2001 	movc	a,@a+dptr
      002809 F5 82            [12] 2002 	mov	dpl,a
      00280B C0 04            [24] 2003 	push	ar4
      00280D 12 21 1A         [24] 2004 	lcall	_goToAddr
                                   2005 ;	lcdCommands.c:263: busyWait();
      002810 12 20 8B         [24] 2006 	lcall	_busyWait
                                   2007 ;	lcdCommands.c:264: lcdPutCh(' ');
      002813 75 82 20         [24] 2008 	mov	dpl,#0x20
      002816 12 20 F8         [24] 2009 	lcall	_lcdPutCh
                                   2010 ;	lcdCommands.c:265: busyWait();
      002819 12 20 8B         [24] 2011 	lcall	_busyWait
      00281C D0 04            [24] 2012 	pop	ar4
                                   2013 ;	lcdCommands.c:266: i = 0;
      00281E 90 00 18         [24] 2014 	mov	dptr,#_gamePacman_i_65537_112
      002821 E4               [12] 2015 	clr	a
      002822 F0               [24] 2016 	movx	@dptr,a
      002823 A3               [24] 2017 	inc	dptr
      002824 F0               [24] 2018 	movx	@dptr,a
      002825                       2019 00106$:
                                   2020 ;	lcdCommands.c:268: i++;
      002825 90 00 18         [24] 2021 	mov	dptr,#_gamePacman_i_65537_112
      002828 E0               [24] 2022 	movx	a,@dptr
      002829 24 01            [12] 2023 	add	a,#0x01
      00282B F0               [24] 2024 	movx	@dptr,a
      00282C A3               [24] 2025 	inc	dptr
      00282D E0               [24] 2026 	movx	a,@dptr
      00282E 34 00            [12] 2027 	addc	a,#0x00
      002830 F0               [24] 2028 	movx	@dptr,a
      002831                       2029 00108$:
                                   2030 ;	lcdCommands.c:270: i--;
      002831 90 00 18         [24] 2031 	mov	dptr,#_gamePacman_i_65537_112
      002834 E0               [24] 2032 	movx	a,@dptr
      002835 24 FF            [12] 2033 	add	a,#0xff
      002837 FE               [12] 2034 	mov	r6,a
      002838 A3               [24] 2035 	inc	dptr
      002839 E0               [24] 2036 	movx	a,@dptr
      00283A 34 FF            [12] 2037 	addc	a,#0xff
      00283C FF               [12] 2038 	mov	r7,a
      00283D 90 00 18         [24] 2039 	mov	dptr,#_gamePacman_i_65537_112
      002840 EE               [12] 2040 	mov	a,r6
      002841 F0               [24] 2041 	movx	@dptr,a
      002842 EF               [12] 2042 	mov	a,r7
      002843 A3               [24] 2043 	inc	dptr
      002844 F0               [24] 2044 	movx	@dptr,a
                                   2045 ;	lcdCommands.c:272: if(ch == 'a')
      002845 BC 61 02         [24] 2046 	cjne	r4,#0x61,00159$
      002848 80 03            [24] 2047 	sjmp	00160$
      00284A                       2048 00159$:
      00284A 02 29 38         [24] 2049 	ljmp	00114$
      00284D                       2050 00160$:
                                   2051 ;	lcdCommands.c:274: goToAddr(lookUpTable[0][i+1]);
      00284D 90 00 18         [24] 2052 	mov	dptr,#_gamePacman_i_65537_112
      002850 E0               [24] 2053 	movx	a,@dptr
      002851 FE               [12] 2054 	mov	r6,a
      002852 A3               [24] 2055 	inc	dptr
      002853 E0               [24] 2056 	movx	a,@dptr
      002854 FF               [12] 2057 	mov	r7,a
      002855 8E 05            [24] 2058 	mov	ar5,r6
      002857 ED               [12] 2059 	mov	a,r5
      002858 04               [12] 2060 	inc	a
      002859 90 42 7F         [24] 2061 	mov	dptr,#_lookUpTable
      00285C 93               [24] 2062 	movc	a,@a+dptr
      00285D F5 82            [12] 2063 	mov	dpl,a
      00285F C0 07            [24] 2064 	push	ar7
      002861 C0 06            [24] 2065 	push	ar6
      002863 C0 04            [24] 2066 	push	ar4
      002865 12 21 1A         [24] 2067 	lcall	_goToAddr
                                   2068 ;	lcdCommands.c:275: busyWait();
      002868 12 20 8B         [24] 2069 	lcall	_busyWait
                                   2070 ;	lcdCommands.c:276: lcdPutCh(' ');
      00286B 75 82 20         [24] 2071 	mov	dpl,#0x20
      00286E 12 20 F8         [24] 2072 	lcall	_lcdPutCh
                                   2073 ;	lcdCommands.c:277: busyWait();
      002871 12 20 8B         [24] 2074 	lcall	_busyWait
      002874 D0 04            [24] 2075 	pop	ar4
      002876 D0 06            [24] 2076 	pop	ar6
      002878 D0 07            [24] 2077 	pop	ar7
                                   2078 ;	lcdCommands.c:278: goToAddr(lookUpTable[0][i]);
      00287A EE               [12] 2079 	mov	a,r6
      00287B 24 7F            [12] 2080 	add	a,#_lookUpTable
      00287D F5 82            [12] 2081 	mov	dpl,a
      00287F EF               [12] 2082 	mov	a,r7
      002880 34 42            [12] 2083 	addc	a,#(_lookUpTable >> 8)
      002882 F5 83            [12] 2084 	mov	dph,a
      002884 E4               [12] 2085 	clr	a
      002885 93               [24] 2086 	movc	a,@a+dptr
      002886 F5 82            [12] 2087 	mov	dpl,a
      002888 C0 04            [24] 2088 	push	ar4
      00288A 12 21 1A         [24] 2089 	lcall	_goToAddr
                                   2090 ;	lcdCommands.c:279: busyWait();
      00288D 12 20 8B         [24] 2091 	lcall	_busyWait
                                   2092 ;	lcdCommands.c:280: char checkEnter1 = readLCD();
      002890 12 22 2F         [24] 2093 	lcall	_readLCD
      002893 AF 82            [24] 2094 	mov	r7,dpl
      002895 D0 04            [24] 2095 	pop	ar4
                                   2096 ;	lcdCommands.c:281: if(checkEnter1 == '*')
      002897 BF 2A 16         [24] 2097 	cjne	r7,#0x2a,00110$
                                   2098 ;	lcdCommands.c:283: count++;
      00289A 90 00 1A         [24] 2099 	mov	dptr,#_gamePacman_count_65537_112
      00289D E0               [24] 2100 	movx	a,@dptr
      00289E 24 01            [12] 2101 	add	a,#0x01
      0028A0 F0               [24] 2102 	movx	@dptr,a
      0028A1 A3               [24] 2103 	inc	dptr
      0028A2 E0               [24] 2104 	movx	a,@dptr
      0028A3 34 00            [12] 2105 	addc	a,#0x00
      0028A5 F0               [24] 2106 	movx	@dptr,a
                                   2107 ;	lcdCommands.c:284: putchar(7);
      0028A6 90 00 07         [24] 2108 	mov	dptr,#0x0007
      0028A9 C0 04            [24] 2109 	push	ar4
      0028AB 12 30 57         [24] 2110 	lcall	_putchar
      0028AE D0 04            [24] 2111 	pop	ar4
      0028B0                       2112 00110$:
                                   2113 ;	lcdCommands.c:286: busyWait();
      0028B0 C0 04            [24] 2114 	push	ar4
      0028B2 12 20 8B         [24] 2115 	lcall	_busyWait
      0028B5 D0 04            [24] 2116 	pop	ar4
                                   2117 ;	lcdCommands.c:287: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      0028B7 90 00 18         [24] 2118 	mov	dptr,#_gamePacman_i_65537_112
      0028BA E0               [24] 2119 	movx	a,@dptr
      0028BB FE               [12] 2120 	mov	r6,a
      0028BC A3               [24] 2121 	inc	dptr
      0028BD E0               [24] 2122 	movx	a,@dptr
      0028BE FF               [12] 2123 	mov	r7,a
      0028BF EE               [12] 2124 	mov	a,r6
      0028C0 24 7F            [12] 2125 	add	a,#_lookUpTable
      0028C2 F5 82            [12] 2126 	mov	dpl,a
      0028C4 EF               [12] 2127 	mov	a,r7
      0028C5 34 42            [12] 2128 	addc	a,#(_lookUpTable >> 8)
      0028C7 F5 83            [12] 2129 	mov	dph,a
      0028C9 E4               [12] 2130 	clr	a
      0028CA 93               [24] 2131 	movc	a,@a+dptr
      0028CB FD               [12] 2132 	mov	r5,a
      0028CC 7B 00            [12] 2133 	mov	r3,#0x00
      0028CE 90 F0 00         [24] 2134 	mov	dptr,#_lcdGeneral
      0028D1 74 80            [12] 2135 	mov	a,#0x80
      0028D3 4D               [12] 2136 	orl	a,r5
      0028D4 F0               [24] 2137 	movx	@dptr,a
      0028D5 EB               [12] 2138 	mov	a,r3
      0028D6 A3               [24] 2139 	inc	dptr
      0028D7 F0               [24] 2140 	movx	@dptr,a
                                   2141 ;	lcdCommands.c:288: busyWait();
      0028D8 C0 07            [24] 2142 	push	ar7
      0028DA C0 06            [24] 2143 	push	ar6
      0028DC C0 04            [24] 2144 	push	ar4
      0028DE 12 20 8B         [24] 2145 	lcall	_busyWait
                                   2146 ;	lcdCommands.c:289: writeCharacter = 0x03;
      0028E1 90 F1 00         [24] 2147 	mov	dptr,#_writeCharacter
      0028E4 74 03            [12] 2148 	mov	a,#0x03
      0028E6 F0               [24] 2149 	movx	@dptr,a
      0028E7 E4               [12] 2150 	clr	a
      0028E8 A3               [24] 2151 	inc	dptr
      0028E9 F0               [24] 2152 	movx	@dptr,a
                                   2153 ;	lcdCommands.c:290: busyWait();
      0028EA 12 20 8B         [24] 2154 	lcall	_busyWait
      0028ED D0 04            [24] 2155 	pop	ar4
      0028EF D0 06            [24] 2156 	pop	ar6
      0028F1 D0 07            [24] 2157 	pop	ar7
                                   2158 ;	lcdCommands.c:291: if( i <= 0)
      0028F3 C3               [12] 2159 	clr	c
      0028F4 E4               [12] 2160 	clr	a
      0028F5 9E               [12] 2161 	subb	a,r6
      0028F6 74 80            [12] 2162 	mov	a,#(0x00 ^ 0x80)
      0028F8 8F F0            [24] 2163 	mov	b,r7
      0028FA 63 F0 80         [24] 2164 	xrl	b,#0x80
      0028FD 95 F0            [12] 2165 	subb	a,b
      0028FF 40 23            [24] 2166 	jc	00112$
                                   2167 ;	lcdCommands.c:293: goToAddr(lookUpTable[0][0]);
      002901 90 42 7F         [24] 2168 	mov	dptr,#_lookUpTable
      002904 E4               [12] 2169 	clr	a
      002905 93               [24] 2170 	movc	a,@a+dptr
      002906 F5 82            [12] 2171 	mov	dpl,a
      002908 C0 04            [24] 2172 	push	ar4
      00290A 12 21 1A         [24] 2173 	lcall	_goToAddr
                                   2174 ;	lcdCommands.c:294: busyWait();
      00290D 12 20 8B         [24] 2175 	lcall	_busyWait
                                   2176 ;	lcdCommands.c:295: lcdPutCh(' ');
      002910 75 82 20         [24] 2177 	mov	dpl,#0x20
      002913 12 20 F8         [24] 2178 	lcall	_lcdPutCh
                                   2179 ;	lcdCommands.c:296: busyWait();
      002916 12 20 8B         [24] 2180 	lcall	_busyWait
      002919 D0 04            [24] 2181 	pop	ar4
                                   2182 ;	lcdCommands.c:297: i = 47;
      00291B 90 00 18         [24] 2183 	mov	dptr,#_gamePacman_i_65537_112
      00291E 74 2F            [12] 2184 	mov	a,#0x2f
      002920 F0               [24] 2185 	movx	@dptr,a
      002921 E4               [12] 2186 	clr	a
      002922 A3               [24] 2187 	inc	dptr
      002923 F0               [24] 2188 	movx	@dptr,a
      002924                       2189 00112$:
                                   2190 ;	lcdCommands.c:299: i--;
      002924 90 00 18         [24] 2191 	mov	dptr,#_gamePacman_i_65537_112
      002927 E0               [24] 2192 	movx	a,@dptr
      002928 24 FF            [12] 2193 	add	a,#0xff
      00292A FE               [12] 2194 	mov	r6,a
      00292B A3               [24] 2195 	inc	dptr
      00292C E0               [24] 2196 	movx	a,@dptr
      00292D 34 FF            [12] 2197 	addc	a,#0xff
      00292F FF               [12] 2198 	mov	r7,a
      002930 90 00 18         [24] 2199 	mov	dptr,#_gamePacman_i_65537_112
      002933 EE               [12] 2200 	mov	a,r6
      002934 F0               [24] 2201 	movx	@dptr,a
      002935 EF               [12] 2202 	mov	a,r7
      002936 A3               [24] 2203 	inc	dptr
      002937 F0               [24] 2204 	movx	@dptr,a
      002938                       2205 00114$:
                                   2206 ;	lcdCommands.c:301: i++;
      002938 90 00 18         [24] 2207 	mov	dptr,#_gamePacman_i_65537_112
      00293B E0               [24] 2208 	movx	a,@dptr
      00293C 24 01            [12] 2209 	add	a,#0x01
      00293E F0               [24] 2210 	movx	@dptr,a
      00293F A3               [24] 2211 	inc	dptr
      002940 E0               [24] 2212 	movx	a,@dptr
      002941 34 00            [12] 2213 	addc	a,#0x00
      002943 F0               [24] 2214 	movx	@dptr,a
                                   2215 ;	lcdCommands.c:302: }while(ch != 'q');
      002944 BC 71 01         [24] 2216 	cjne	r4,#0x71,00164$
      002947 22               [24] 2217 	ret
      002948                       2218 00164$:
      002948 02 27 1A         [24] 2219 	ljmp	00115$
                                   2220 ;	lcdCommands.c:303: }
      00294B 22               [24] 2221 	ret
                                   2222 ;------------------------------------------------------------
                                   2223 ;Allocation info for local variables in function 'makePacmanRight'
                                   2224 ;------------------------------------------------------------
                                   2225 ;	lcdCommands.c:305: void makePacmanRight()
                                   2226 ;	-----------------------------------------
                                   2227 ;	 function makePacmanRight
                                   2228 ;	-----------------------------------------
      00294C                       2229 _makePacmanRight:
                                   2230 ;	lcdCommands.c:307: busyWait();
      00294C 12 20 8B         [24] 2231 	lcall	_busyWait
                                   2232 ;	lcdCommands.c:308: lcdGeneral = 0x40 | 0x00;
      00294F 90 F0 00         [24] 2233 	mov	dptr,#_lcdGeneral
      002952 74 40            [12] 2234 	mov	a,#0x40
      002954 F0               [24] 2235 	movx	@dptr,a
      002955 E4               [12] 2236 	clr	a
      002956 A3               [24] 2237 	inc	dptr
      002957 F0               [24] 2238 	movx	@dptr,a
                                   2239 ;	lcdCommands.c:309: busyWait();
      002958 12 20 8B         [24] 2240 	lcall	_busyWait
                                   2241 ;	lcdCommands.c:310: writeCharacter = 0x06;
      00295B 90 F1 00         [24] 2242 	mov	dptr,#_writeCharacter
      00295E 74 06            [12] 2243 	mov	a,#0x06
      002960 F0               [24] 2244 	movx	@dptr,a
      002961 E4               [12] 2245 	clr	a
      002962 A3               [24] 2246 	inc	dptr
      002963 F0               [24] 2247 	movx	@dptr,a
                                   2248 ;	lcdCommands.c:311: busyWait();
      002964 12 20 8B         [24] 2249 	lcall	_busyWait
                                   2250 ;	lcdCommands.c:312: lcdGeneral = 0x40 | 0x01;
      002967 90 F0 00         [24] 2251 	mov	dptr,#_lcdGeneral
      00296A 74 41            [12] 2252 	mov	a,#0x41
      00296C F0               [24] 2253 	movx	@dptr,a
      00296D E4               [12] 2254 	clr	a
      00296E A3               [24] 2255 	inc	dptr
      00296F F0               [24] 2256 	movx	@dptr,a
                                   2257 ;	lcdCommands.c:313: busyWait();
      002970 12 20 8B         [24] 2258 	lcall	_busyWait
                                   2259 ;	lcdCommands.c:314: writeCharacter = 0x09;
      002973 90 F1 00         [24] 2260 	mov	dptr,#_writeCharacter
      002976 74 09            [12] 2261 	mov	a,#0x09
      002978 F0               [24] 2262 	movx	@dptr,a
      002979 E4               [12] 2263 	clr	a
      00297A A3               [24] 2264 	inc	dptr
      00297B F0               [24] 2265 	movx	@dptr,a
                                   2266 ;	lcdCommands.c:315: busyWait();
      00297C 12 20 8B         [24] 2267 	lcall	_busyWait
                                   2268 ;	lcdCommands.c:316: lcdGeneral = 0x40 | 0x02;
      00297F 90 F0 00         [24] 2269 	mov	dptr,#_lcdGeneral
      002982 74 42            [12] 2270 	mov	a,#0x42
      002984 F0               [24] 2271 	movx	@dptr,a
      002985 E4               [12] 2272 	clr	a
      002986 A3               [24] 2273 	inc	dptr
      002987 F0               [24] 2274 	movx	@dptr,a
                                   2275 ;	lcdCommands.c:317: busyWait();
      002988 12 20 8B         [24] 2276 	lcall	_busyWait
                                   2277 ;	lcdCommands.c:318: writeCharacter = 0x12;
      00298B 90 F1 00         [24] 2278 	mov	dptr,#_writeCharacter
      00298E 74 12            [12] 2279 	mov	a,#0x12
      002990 F0               [24] 2280 	movx	@dptr,a
      002991 E4               [12] 2281 	clr	a
      002992 A3               [24] 2282 	inc	dptr
      002993 F0               [24] 2283 	movx	@dptr,a
                                   2284 ;	lcdCommands.c:319: busyWait();
      002994 12 20 8B         [24] 2285 	lcall	_busyWait
                                   2286 ;	lcdCommands.c:320: lcdGeneral = 0x40 | 0x03;
      002997 90 F0 00         [24] 2287 	mov	dptr,#_lcdGeneral
      00299A 74 43            [12] 2288 	mov	a,#0x43
      00299C F0               [24] 2289 	movx	@dptr,a
      00299D E4               [12] 2290 	clr	a
      00299E A3               [24] 2291 	inc	dptr
      00299F F0               [24] 2292 	movx	@dptr,a
                                   2293 ;	lcdCommands.c:321: busyWait();
      0029A0 12 20 8B         [24] 2294 	lcall	_busyWait
                                   2295 ;	lcdCommands.c:322: writeCharacter = 0x14;
      0029A3 90 F1 00         [24] 2296 	mov	dptr,#_writeCharacter
      0029A6 74 14            [12] 2297 	mov	a,#0x14
      0029A8 F0               [24] 2298 	movx	@dptr,a
      0029A9 E4               [12] 2299 	clr	a
      0029AA A3               [24] 2300 	inc	dptr
      0029AB F0               [24] 2301 	movx	@dptr,a
                                   2302 ;	lcdCommands.c:323: busyWait();
      0029AC 12 20 8B         [24] 2303 	lcall	_busyWait
                                   2304 ;	lcdCommands.c:324: lcdGeneral = 0x40 | 0x04;
      0029AF 90 F0 00         [24] 2305 	mov	dptr,#_lcdGeneral
      0029B2 74 44            [12] 2306 	mov	a,#0x44
      0029B4 F0               [24] 2307 	movx	@dptr,a
      0029B5 E4               [12] 2308 	clr	a
      0029B6 A3               [24] 2309 	inc	dptr
      0029B7 F0               [24] 2310 	movx	@dptr,a
                                   2311 ;	lcdCommands.c:325: busyWait();
      0029B8 12 20 8B         [24] 2312 	lcall	_busyWait
                                   2313 ;	lcdCommands.c:326: writeCharacter = 0x14;
      0029BB 90 F1 00         [24] 2314 	mov	dptr,#_writeCharacter
      0029BE 74 14            [12] 2315 	mov	a,#0x14
      0029C0 F0               [24] 2316 	movx	@dptr,a
      0029C1 E4               [12] 2317 	clr	a
      0029C2 A3               [24] 2318 	inc	dptr
      0029C3 F0               [24] 2319 	movx	@dptr,a
                                   2320 ;	lcdCommands.c:327: busyWait();
      0029C4 12 20 8B         [24] 2321 	lcall	_busyWait
                                   2322 ;	lcdCommands.c:328: lcdGeneral = 0x40 | 0x05;
      0029C7 90 F0 00         [24] 2323 	mov	dptr,#_lcdGeneral
      0029CA 74 45            [12] 2324 	mov	a,#0x45
      0029CC F0               [24] 2325 	movx	@dptr,a
      0029CD E4               [12] 2326 	clr	a
      0029CE A3               [24] 2327 	inc	dptr
      0029CF F0               [24] 2328 	movx	@dptr,a
                                   2329 ;	lcdCommands.c:329: busyWait();
      0029D0 12 20 8B         [24] 2330 	lcall	_busyWait
                                   2331 ;	lcdCommands.c:330: writeCharacter = 0x12;
      0029D3 90 F1 00         [24] 2332 	mov	dptr,#_writeCharacter
      0029D6 74 12            [12] 2333 	mov	a,#0x12
      0029D8 F0               [24] 2334 	movx	@dptr,a
      0029D9 E4               [12] 2335 	clr	a
      0029DA A3               [24] 2336 	inc	dptr
      0029DB F0               [24] 2337 	movx	@dptr,a
                                   2338 ;	lcdCommands.c:331: busyWait();
      0029DC 12 20 8B         [24] 2339 	lcall	_busyWait
                                   2340 ;	lcdCommands.c:332: lcdGeneral = 0x40 | 0x06;
      0029DF 90 F0 00         [24] 2341 	mov	dptr,#_lcdGeneral
      0029E2 74 46            [12] 2342 	mov	a,#0x46
      0029E4 F0               [24] 2343 	movx	@dptr,a
      0029E5 E4               [12] 2344 	clr	a
      0029E6 A3               [24] 2345 	inc	dptr
      0029E7 F0               [24] 2346 	movx	@dptr,a
                                   2347 ;	lcdCommands.c:333: busyWait();
      0029E8 12 20 8B         [24] 2348 	lcall	_busyWait
                                   2349 ;	lcdCommands.c:334: writeCharacter = 0x09;
      0029EB 90 F1 00         [24] 2350 	mov	dptr,#_writeCharacter
      0029EE 74 09            [12] 2351 	mov	a,#0x09
      0029F0 F0               [24] 2352 	movx	@dptr,a
      0029F1 E4               [12] 2353 	clr	a
      0029F2 A3               [24] 2354 	inc	dptr
      0029F3 F0               [24] 2355 	movx	@dptr,a
                                   2356 ;	lcdCommands.c:335: busyWait();
      0029F4 12 20 8B         [24] 2357 	lcall	_busyWait
                                   2358 ;	lcdCommands.c:336: lcdGeneral = 0x40 | 0x07;
      0029F7 90 F0 00         [24] 2359 	mov	dptr,#_lcdGeneral
      0029FA 74 47            [12] 2360 	mov	a,#0x47
      0029FC F0               [24] 2361 	movx	@dptr,a
      0029FD E4               [12] 2362 	clr	a
      0029FE A3               [24] 2363 	inc	dptr
      0029FF F0               [24] 2364 	movx	@dptr,a
                                   2365 ;	lcdCommands.c:337: busyWait();
      002A00 12 20 8B         [24] 2366 	lcall	_busyWait
                                   2367 ;	lcdCommands.c:338: writeCharacter = 0x06;
      002A03 90 F1 00         [24] 2368 	mov	dptr,#_writeCharacter
      002A06 74 06            [12] 2369 	mov	a,#0x06
      002A08 F0               [24] 2370 	movx	@dptr,a
      002A09 E4               [12] 2371 	clr	a
      002A0A A3               [24] 2372 	inc	dptr
      002A0B F0               [24] 2373 	movx	@dptr,a
                                   2374 ;	lcdCommands.c:339: busyWait();
      002A0C 12 20 8B         [24] 2375 	lcall	_busyWait
                                   2376 ;	lcdCommands.c:340: goToXY(3,1);
      002A0F 90 00 03         [24] 2377 	mov	dptr,#_goToXY_PARM_2
      002A12 74 01            [12] 2378 	mov	a,#0x01
      002A14 F0               [24] 2379 	movx	@dptr,a
      002A15 75 82 03         [24] 2380 	mov	dpl,#0x03
      002A18 12 21 35         [24] 2381 	lcall	_goToXY
                                   2382 ;	lcdCommands.c:341: busyWait();
      002A1B 12 20 8B         [24] 2383 	lcall	_busyWait
                                   2384 ;	lcdCommands.c:342: lcdGeneral = 0x80 | 0x00;
      002A1E 90 F0 00         [24] 2385 	mov	dptr,#_lcdGeneral
      002A21 74 80            [12] 2386 	mov	a,#0x80
      002A23 F0               [24] 2387 	movx	@dptr,a
      002A24 E4               [12] 2388 	clr	a
      002A25 A3               [24] 2389 	inc	dptr
      002A26 F0               [24] 2390 	movx	@dptr,a
                                   2391 ;	lcdCommands.c:343: busyWait();
      002A27 12 20 8B         [24] 2392 	lcall	_busyWait
                                   2393 ;	lcdCommands.c:344: writeCharacter = 0x00;
      002A2A 90 F1 00         [24] 2394 	mov	dptr,#_writeCharacter
      002A2D E4               [12] 2395 	clr	a
      002A2E F0               [24] 2396 	movx	@dptr,a
      002A2F A3               [24] 2397 	inc	dptr
      002A30 F0               [24] 2398 	movx	@dptr,a
                                   2399 ;	lcdCommands.c:345: }
      002A31 22               [24] 2400 	ret
                                   2401 ;------------------------------------------------------------
                                   2402 ;Allocation info for local variables in function 'makePacmanLeft'
                                   2403 ;------------------------------------------------------------
                                   2404 ;	lcdCommands.c:346: void makePacmanLeft()
                                   2405 ;	-----------------------------------------
                                   2406 ;	 function makePacmanLeft
                                   2407 ;	-----------------------------------------
      002A32                       2408 _makePacmanLeft:
                                   2409 ;	lcdCommands.c:348: busyWait();
      002A32 12 20 8B         [24] 2410 	lcall	_busyWait
                                   2411 ;	lcdCommands.c:349: lcdGeneral = 0x40 | 0x18;
      002A35 90 F0 00         [24] 2412 	mov	dptr,#_lcdGeneral
      002A38 74 58            [12] 2413 	mov	a,#0x58
      002A3A F0               [24] 2414 	movx	@dptr,a
      002A3B E4               [12] 2415 	clr	a
      002A3C A3               [24] 2416 	inc	dptr
      002A3D F0               [24] 2417 	movx	@dptr,a
                                   2418 ;	lcdCommands.c:350: busyWait();
      002A3E 12 20 8B         [24] 2419 	lcall	_busyWait
                                   2420 ;	lcdCommands.c:351: writeCharacter = 0x0C;
      002A41 90 F1 00         [24] 2421 	mov	dptr,#_writeCharacter
      002A44 74 0C            [12] 2422 	mov	a,#0x0c
      002A46 F0               [24] 2423 	movx	@dptr,a
      002A47 E4               [12] 2424 	clr	a
      002A48 A3               [24] 2425 	inc	dptr
      002A49 F0               [24] 2426 	movx	@dptr,a
                                   2427 ;	lcdCommands.c:352: busyWait();
      002A4A 12 20 8B         [24] 2428 	lcall	_busyWait
                                   2429 ;	lcdCommands.c:353: lcdGeneral = 0x40 | 0x19;
      002A4D 90 F0 00         [24] 2430 	mov	dptr,#_lcdGeneral
      002A50 74 59            [12] 2431 	mov	a,#0x59
      002A52 F0               [24] 2432 	movx	@dptr,a
      002A53 E4               [12] 2433 	clr	a
      002A54 A3               [24] 2434 	inc	dptr
      002A55 F0               [24] 2435 	movx	@dptr,a
                                   2436 ;	lcdCommands.c:354: busyWait();
      002A56 12 20 8B         [24] 2437 	lcall	_busyWait
                                   2438 ;	lcdCommands.c:355: writeCharacter = 0x12;
      002A59 90 F1 00         [24] 2439 	mov	dptr,#_writeCharacter
      002A5C 74 12            [12] 2440 	mov	a,#0x12
      002A5E F0               [24] 2441 	movx	@dptr,a
      002A5F E4               [12] 2442 	clr	a
      002A60 A3               [24] 2443 	inc	dptr
      002A61 F0               [24] 2444 	movx	@dptr,a
                                   2445 ;	lcdCommands.c:356: busyWait();
      002A62 12 20 8B         [24] 2446 	lcall	_busyWait
                                   2447 ;	lcdCommands.c:357: lcdGeneral = 0x40 | 0x1A;
      002A65 90 F0 00         [24] 2448 	mov	dptr,#_lcdGeneral
      002A68 74 5A            [12] 2449 	mov	a,#0x5a
      002A6A F0               [24] 2450 	movx	@dptr,a
      002A6B E4               [12] 2451 	clr	a
      002A6C A3               [24] 2452 	inc	dptr
      002A6D F0               [24] 2453 	movx	@dptr,a
                                   2454 ;	lcdCommands.c:358: busyWait();
      002A6E 12 20 8B         [24] 2455 	lcall	_busyWait
                                   2456 ;	lcdCommands.c:359: writeCharacter = 0x09;
      002A71 90 F1 00         [24] 2457 	mov	dptr,#_writeCharacter
      002A74 74 09            [12] 2458 	mov	a,#0x09
      002A76 F0               [24] 2459 	movx	@dptr,a
      002A77 E4               [12] 2460 	clr	a
      002A78 A3               [24] 2461 	inc	dptr
      002A79 F0               [24] 2462 	movx	@dptr,a
                                   2463 ;	lcdCommands.c:360: busyWait();
      002A7A 12 20 8B         [24] 2464 	lcall	_busyWait
                                   2465 ;	lcdCommands.c:361: lcdGeneral = 0x40 | 0x1B;
      002A7D 90 F0 00         [24] 2466 	mov	dptr,#_lcdGeneral
      002A80 74 5B            [12] 2467 	mov	a,#0x5b
      002A82 F0               [24] 2468 	movx	@dptr,a
      002A83 E4               [12] 2469 	clr	a
      002A84 A3               [24] 2470 	inc	dptr
      002A85 F0               [24] 2471 	movx	@dptr,a
                                   2472 ;	lcdCommands.c:362: busyWait();
      002A86 12 20 8B         [24] 2473 	lcall	_busyWait
                                   2474 ;	lcdCommands.c:363: writeCharacter = 0x05;
      002A89 90 F1 00         [24] 2475 	mov	dptr,#_writeCharacter
      002A8C 74 05            [12] 2476 	mov	a,#0x05
      002A8E F0               [24] 2477 	movx	@dptr,a
      002A8F E4               [12] 2478 	clr	a
      002A90 A3               [24] 2479 	inc	dptr
      002A91 F0               [24] 2480 	movx	@dptr,a
                                   2481 ;	lcdCommands.c:364: busyWait();
      002A92 12 20 8B         [24] 2482 	lcall	_busyWait
                                   2483 ;	lcdCommands.c:365: lcdGeneral = 0x40 | 0x1C;
      002A95 90 F0 00         [24] 2484 	mov	dptr,#_lcdGeneral
      002A98 74 5C            [12] 2485 	mov	a,#0x5c
      002A9A F0               [24] 2486 	movx	@dptr,a
      002A9B E4               [12] 2487 	clr	a
      002A9C A3               [24] 2488 	inc	dptr
      002A9D F0               [24] 2489 	movx	@dptr,a
                                   2490 ;	lcdCommands.c:366: busyWait();
      002A9E 12 20 8B         [24] 2491 	lcall	_busyWait
                                   2492 ;	lcdCommands.c:367: writeCharacter = 0x05;
      002AA1 90 F1 00         [24] 2493 	mov	dptr,#_writeCharacter
      002AA4 74 05            [12] 2494 	mov	a,#0x05
      002AA6 F0               [24] 2495 	movx	@dptr,a
      002AA7 E4               [12] 2496 	clr	a
      002AA8 A3               [24] 2497 	inc	dptr
      002AA9 F0               [24] 2498 	movx	@dptr,a
                                   2499 ;	lcdCommands.c:368: busyWait();
      002AAA 12 20 8B         [24] 2500 	lcall	_busyWait
                                   2501 ;	lcdCommands.c:369: lcdGeneral = 0x40 | 0x1D;
      002AAD 90 F0 00         [24] 2502 	mov	dptr,#_lcdGeneral
      002AB0 74 5D            [12] 2503 	mov	a,#0x5d
      002AB2 F0               [24] 2504 	movx	@dptr,a
      002AB3 E4               [12] 2505 	clr	a
      002AB4 A3               [24] 2506 	inc	dptr
      002AB5 F0               [24] 2507 	movx	@dptr,a
                                   2508 ;	lcdCommands.c:370: busyWait();
      002AB6 12 20 8B         [24] 2509 	lcall	_busyWait
                                   2510 ;	lcdCommands.c:371: writeCharacter = 0x09;
      002AB9 90 F1 00         [24] 2511 	mov	dptr,#_writeCharacter
      002ABC 74 09            [12] 2512 	mov	a,#0x09
      002ABE F0               [24] 2513 	movx	@dptr,a
      002ABF E4               [12] 2514 	clr	a
      002AC0 A3               [24] 2515 	inc	dptr
      002AC1 F0               [24] 2516 	movx	@dptr,a
                                   2517 ;	lcdCommands.c:372: busyWait();
      002AC2 12 20 8B         [24] 2518 	lcall	_busyWait
                                   2519 ;	lcdCommands.c:373: lcdGeneral = 0x40 | 0x1E;
      002AC5 90 F0 00         [24] 2520 	mov	dptr,#_lcdGeneral
      002AC8 74 5E            [12] 2521 	mov	a,#0x5e
      002ACA F0               [24] 2522 	movx	@dptr,a
      002ACB E4               [12] 2523 	clr	a
      002ACC A3               [24] 2524 	inc	dptr
      002ACD F0               [24] 2525 	movx	@dptr,a
                                   2526 ;	lcdCommands.c:374: busyWait();
      002ACE 12 20 8B         [24] 2527 	lcall	_busyWait
                                   2528 ;	lcdCommands.c:375: writeCharacter = 0x12;
      002AD1 90 F1 00         [24] 2529 	mov	dptr,#_writeCharacter
      002AD4 74 12            [12] 2530 	mov	a,#0x12
      002AD6 F0               [24] 2531 	movx	@dptr,a
      002AD7 E4               [12] 2532 	clr	a
      002AD8 A3               [24] 2533 	inc	dptr
      002AD9 F0               [24] 2534 	movx	@dptr,a
                                   2535 ;	lcdCommands.c:376: busyWait();
      002ADA 12 20 8B         [24] 2536 	lcall	_busyWait
                                   2537 ;	lcdCommands.c:377: lcdGeneral = 0x40 | 0x1F;
      002ADD 90 F0 00         [24] 2538 	mov	dptr,#_lcdGeneral
      002AE0 74 5F            [12] 2539 	mov	a,#0x5f
      002AE2 F0               [24] 2540 	movx	@dptr,a
      002AE3 E4               [12] 2541 	clr	a
      002AE4 A3               [24] 2542 	inc	dptr
      002AE5 F0               [24] 2543 	movx	@dptr,a
                                   2544 ;	lcdCommands.c:378: busyWait();
      002AE6 12 20 8B         [24] 2545 	lcall	_busyWait
                                   2546 ;	lcdCommands.c:379: writeCharacter = 0x0C;
      002AE9 90 F1 00         [24] 2547 	mov	dptr,#_writeCharacter
      002AEC 74 0C            [12] 2548 	mov	a,#0x0c
      002AEE F0               [24] 2549 	movx	@dptr,a
      002AEF E4               [12] 2550 	clr	a
      002AF0 A3               [24] 2551 	inc	dptr
      002AF1 F0               [24] 2552 	movx	@dptr,a
                                   2553 ;	lcdCommands.c:380: busyWait();
                                   2554 ;	lcdCommands.c:384: }
      002AF2 02 20 8B         [24] 2555 	ljmp	_busyWait
                                   2556 ;------------------------------------------------------------
                                   2557 ;Allocation info for local variables in function 'printBinary'
                                   2558 ;------------------------------------------------------------
                                   2559 ;x                         Allocated with name '_printBinary_x_65536_125'
                                   2560 ;temp2                     Allocated with name '_printBinary_temp2_65536_126'
                                   2561 ;------------------------------------------------------------
                                   2562 ;	lcdCommands.c:386: void printBinary(int x)
                                   2563 ;	-----------------------------------------
                                   2564 ;	 function printBinary
                                   2565 ;	-----------------------------------------
      002AF5                       2566 _printBinary:
      002AF5 AF 83            [24] 2567 	mov	r7,dph
      002AF7 E5 82            [12] 2568 	mov	a,dpl
      002AF9 90 00 1C         [24] 2569 	mov	dptr,#_printBinary_x_65536_125
      002AFC F0               [24] 2570 	movx	@dptr,a
      002AFD EF               [12] 2571 	mov	a,r7
      002AFE A3               [24] 2572 	inc	dptr
      002AFF F0               [24] 2573 	movx	@dptr,a
                                   2574 ;	lcdCommands.c:389: while(x != 0)
      002B00                       2575 00101$:
      002B00 90 00 1C         [24] 2576 	mov	dptr,#_printBinary_x_65536_125
      002B03 E0               [24] 2577 	movx	a,@dptr
      002B04 FE               [12] 2578 	mov	r6,a
      002B05 A3               [24] 2579 	inc	dptr
      002B06 E0               [24] 2580 	movx	a,@dptr
      002B07 FF               [12] 2581 	mov	r7,a
      002B08 4E               [12] 2582 	orl	a,r6
      002B09 60 3A            [24] 2583 	jz	00104$
                                   2584 ;	lcdCommands.c:391: temp2 = x % 2;
      002B0B 90 00 B2         [24] 2585 	mov	dptr,#__modsint_PARM_2
      002B0E 74 02            [12] 2586 	mov	a,#0x02
      002B10 F0               [24] 2587 	movx	@dptr,a
      002B11 E4               [12] 2588 	clr	a
      002B12 A3               [24] 2589 	inc	dptr
      002B13 F0               [24] 2590 	movx	@dptr,a
                                   2591 ;	lcdCommands.c:392: putchar(temp2);
      002B14 8E 82            [24] 2592 	mov	dpl,r6
      002B16 8F 83            [24] 2593 	mov	dph,r7
      002B18 C0 07            [24] 2594 	push	ar7
      002B1A C0 06            [24] 2595 	push	ar6
      002B1C 12 33 E8         [24] 2596 	lcall	__modsint
      002B1F 12 30 57         [24] 2597 	lcall	_putchar
      002B22 D0 06            [24] 2598 	pop	ar6
      002B24 D0 07            [24] 2599 	pop	ar7
                                   2600 ;	lcdCommands.c:393: x = x / 2;
      002B26 90 00 BB         [24] 2601 	mov	dptr,#__divsint_PARM_2
      002B29 74 02            [12] 2602 	mov	a,#0x02
      002B2B F0               [24] 2603 	movx	@dptr,a
      002B2C E4               [12] 2604 	clr	a
      002B2D A3               [24] 2605 	inc	dptr
      002B2E F0               [24] 2606 	movx	@dptr,a
      002B2F 8E 82            [24] 2607 	mov	dpl,r6
      002B31 8F 83            [24] 2608 	mov	dph,r7
      002B33 12 34 FC         [24] 2609 	lcall	__divsint
      002B36 E5 82            [12] 2610 	mov	a,dpl
      002B38 85 83 F0         [24] 2611 	mov	b,dph
      002B3B 90 00 1C         [24] 2612 	mov	dptr,#_printBinary_x_65536_125
      002B3E F0               [24] 2613 	movx	@dptr,a
      002B3F E5 F0            [12] 2614 	mov	a,b
      002B41 A3               [24] 2615 	inc	dptr
      002B42 F0               [24] 2616 	movx	@dptr,a
      002B43 80 BB            [24] 2617 	sjmp	00101$
      002B45                       2618 00104$:
                                   2619 ;	lcdCommands.c:395: }
      002B45 22               [24] 2620 	ret
                                   2621 ;------------------------------------------------------------
                                   2622 ;Allocation info for local variables in function 'atoh'
                                   2623 ;------------------------------------------------------------
                                   2624 ;ap                        Allocated with name '_atoh_ap_65536_128'
                                   2625 ;p                         Allocated with name '_atoh_p_65536_129'
                                   2626 ;digit                     Allocated with name '_atoh_digit_65536_129'
                                   2627 ;lcase                     Allocated with name '_atoh_lcase_65536_129'
                                   2628 ;n                         Allocated with name '_atoh_n_65537_130'
                                   2629 ;------------------------------------------------------------
                                   2630 ;	lcdCommands.c:397: unsigned char atoh(char *ap)
                                   2631 ;	-----------------------------------------
                                   2632 ;	 function atoh
                                   2633 ;	-----------------------------------------
      002B46                       2634 _atoh:
      002B46 AF F0            [24] 2635 	mov	r7,b
      002B48 AE 83            [24] 2636 	mov	r6,dph
      002B4A E5 82            [12] 2637 	mov	a,dpl
      002B4C 90 00 1E         [24] 2638 	mov	dptr,#_atoh_ap_65536_128
      002B4F F0               [24] 2639 	movx	@dptr,a
      002B50 EE               [12] 2640 	mov	a,r6
      002B51 A3               [24] 2641 	inc	dptr
      002B52 F0               [24] 2642 	movx	@dptr,a
      002B53 EF               [12] 2643 	mov	a,r7
      002B54 A3               [24] 2644 	inc	dptr
      002B55 F0               [24] 2645 	movx	@dptr,a
                                   2646 ;	lcdCommands.c:402: p = ap;
      002B56 90 00 1E         [24] 2647 	mov	dptr,#_atoh_ap_65536_128
      002B59 E0               [24] 2648 	movx	a,@dptr
      002B5A FD               [12] 2649 	mov	r5,a
      002B5B A3               [24] 2650 	inc	dptr
      002B5C E0               [24] 2651 	movx	a,@dptr
      002B5D FE               [12] 2652 	mov	r6,a
      002B5E A3               [24] 2653 	inc	dptr
      002B5F E0               [24] 2654 	movx	a,@dptr
      002B60 FF               [12] 2655 	mov	r7,a
                                   2656 ;	lcdCommands.c:403: unsigned char n = 0;
      002B61 90 00 26         [24] 2657 	mov	dptr,#_atoh_n_65537_130
      002B64 E4               [12] 2658 	clr	a
      002B65 F0               [24] 2659 	movx	@dptr,a
                                   2660 ;	lcdCommands.c:404: while(*p == ' ' || *p == '	')
      002B66                       2661 00102$:
      002B66 8D 82            [24] 2662 	mov	dpl,r5
      002B68 8E 83            [24] 2663 	mov	dph,r6
      002B6A 8F F0            [24] 2664 	mov	b,r7
      002B6C 12 40 6B         [24] 2665 	lcall	__gptrget
      002B6F FC               [12] 2666 	mov	r4,a
      002B70 BC 20 02         [24] 2667 	cjne	r4,#0x20,00178$
      002B73 80 03            [24] 2668 	sjmp	00103$
      002B75                       2669 00178$:
      002B75 BC 09 07         [24] 2670 	cjne	r4,#0x09,00141$
      002B78                       2671 00103$:
                                   2672 ;	lcdCommands.c:405: p++;
      002B78 0D               [12] 2673 	inc	r5
      002B79 BD 00 EA         [24] 2674 	cjne	r5,#0x00,00102$
      002B7C 0E               [12] 2675 	inc	r6
      002B7D 80 E7            [24] 2676 	sjmp	00102$
      002B7F                       2677 00141$:
      002B7F 90 00 21         [24] 2678 	mov	dptr,#_atoh_p_65536_129
      002B82 ED               [12] 2679 	mov	a,r5
      002B83 F0               [24] 2680 	movx	@dptr,a
      002B84 EE               [12] 2681 	mov	a,r6
      002B85 A3               [24] 2682 	inc	dptr
      002B86 F0               [24] 2683 	movx	@dptr,a
      002B87 EF               [12] 2684 	mov	a,r7
      002B88 A3               [24] 2685 	inc	dptr
      002B89 F0               [24] 2686 	movx	@dptr,a
                                   2687 ;	lcdCommands.c:407: if(*p == '0' && ((*(p+1) == 'x') || (*(p+1) == 'X')))
      002B8A BC 30 29         [24] 2688 	cjne	r4,#0x30,00118$
      002B8D 74 01            [12] 2689 	mov	a,#0x01
      002B8F 2D               [12] 2690 	add	a,r5
      002B90 FA               [12] 2691 	mov	r2,a
      002B91 E4               [12] 2692 	clr	a
      002B92 3E               [12] 2693 	addc	a,r6
      002B93 FB               [12] 2694 	mov	r3,a
      002B94 8F 04            [24] 2695 	mov	ar4,r7
      002B96 8A 82            [24] 2696 	mov	dpl,r2
      002B98 8B 83            [24] 2697 	mov	dph,r3
      002B9A 8C F0            [24] 2698 	mov	b,r4
      002B9C 12 40 6B         [24] 2699 	lcall	__gptrget
      002B9F FC               [12] 2700 	mov	r4,a
      002BA0 BC 78 02         [24] 2701 	cjne	r4,#0x78,00184$
      002BA3 80 03            [24] 2702 	sjmp	00105$
      002BA5                       2703 00184$:
      002BA5 BC 58 0E         [24] 2704 	cjne	r4,#0x58,00118$
      002BA8                       2705 00105$:
                                   2706 ;	lcdCommands.c:408: p+=2;
      002BA8 90 00 21         [24] 2707 	mov	dptr,#_atoh_p_65536_129
      002BAB 74 02            [12] 2708 	mov	a,#0x02
      002BAD 2D               [12] 2709 	add	a,r5
      002BAE F0               [24] 2710 	movx	@dptr,a
      002BAF E4               [12] 2711 	clr	a
      002BB0 3E               [12] 2712 	addc	a,r6
      002BB1 A3               [24] 2713 	inc	dptr
      002BB2 F0               [24] 2714 	movx	@dptr,a
      002BB3 EF               [12] 2715 	mov	a,r7
      002BB4 A3               [24] 2716 	inc	dptr
      002BB5 F0               [24] 2717 	movx	@dptr,a
                                   2718 ;	lcdCommands.c:410: while ((digit = (*p >= '0' && *p <= '9')) ||
      002BB6                       2719 00118$:
      002BB6 90 00 21         [24] 2720 	mov	dptr,#_atoh_p_65536_129
      002BB9 E0               [24] 2721 	movx	a,@dptr
      002BBA FD               [12] 2722 	mov	r5,a
      002BBB A3               [24] 2723 	inc	dptr
      002BBC E0               [24] 2724 	movx	a,@dptr
      002BBD FE               [12] 2725 	mov	r6,a
      002BBE A3               [24] 2726 	inc	dptr
      002BBF E0               [24] 2727 	movx	a,@dptr
      002BC0 FF               [12] 2728 	mov	r7,a
      002BC1 8D 82            [24] 2729 	mov	dpl,r5
      002BC3 8E 83            [24] 2730 	mov	dph,r6
      002BC5 8F F0            [24] 2731 	mov	b,r7
      002BC7 12 40 6B         [24] 2732 	lcall	__gptrget
      002BCA FF               [12] 2733 	mov	r7,a
      002BCB BF 30 00         [24] 2734 	cjne	r7,#0x30,00187$
      002BCE                       2735 00187$:
      002BCE 40 05            [24] 2736 	jc	00123$
      002BD0 EF               [12] 2737 	mov	a,r7
      002BD1 24 C6            [12] 2738 	add	a,#0xff - 0x39
      002BD3 50 04            [24] 2739 	jnc	00124$
      002BD5                       2740 00123$:
      002BD5 7F 00            [12] 2741 	mov	r7,#0x00
      002BD7 80 02            [24] 2742 	sjmp	00125$
      002BD9                       2743 00124$:
      002BD9 7F 01            [12] 2744 	mov	r7,#0x01
      002BDB                       2745 00125$:
      002BDB EF               [12] 2746 	mov	a,r7
      002BDC FD               [12] 2747 	mov	r5,a
      002BDD 33               [12] 2748 	rlc	a
      002BDE 95 E0            [12] 2749 	subb	a,acc
      002BE0 FE               [12] 2750 	mov	r6,a
      002BE1 EF               [12] 2751 	mov	a,r7
      002BE2 70 5C            [24] 2752 	jnz	00119$
                                   2753 ;	lcdCommands.c:411: (lcase = (*p >= 'a' && *p <= 'f')) ||
      002BE4 90 00 21         [24] 2754 	mov	dptr,#_atoh_p_65536_129
      002BE7 E0               [24] 2755 	movx	a,@dptr
      002BE8 FB               [12] 2756 	mov	r3,a
      002BE9 A3               [24] 2757 	inc	dptr
      002BEA E0               [24] 2758 	movx	a,@dptr
      002BEB FC               [12] 2759 	mov	r4,a
      002BEC A3               [24] 2760 	inc	dptr
      002BED E0               [24] 2761 	movx	a,@dptr
      002BEE FF               [12] 2762 	mov	r7,a
      002BEF 8B 82            [24] 2763 	mov	dpl,r3
      002BF1 8C 83            [24] 2764 	mov	dph,r4
      002BF3 8F F0            [24] 2765 	mov	b,r7
      002BF5 12 40 6B         [24] 2766 	lcall	__gptrget
      002BF8 FF               [12] 2767 	mov	r7,a
      002BF9 BF 61 00         [24] 2768 	cjne	r7,#0x61,00191$
      002BFC                       2769 00191$:
      002BFC 40 05            [24] 2770 	jc	00126$
      002BFE EF               [12] 2771 	mov	a,r7
      002BFF 24 99            [12] 2772 	add	a,#0xff - 0x66
      002C01 50 04            [24] 2773 	jnc	00127$
      002C03                       2774 00126$:
      002C03 7F 00            [12] 2775 	mov	r7,#0x00
      002C05 80 02            [24] 2776 	sjmp	00128$
      002C07                       2777 00127$:
      002C07 7F 01            [12] 2778 	mov	r7,#0x01
      002C09                       2779 00128$:
      002C09 EF               [12] 2780 	mov	a,r7
      002C0A FC               [12] 2781 	mov	r4,a
      002C0B 33               [12] 2782 	rlc	a
      002C0C 95 E0            [12] 2783 	subb	a,acc
      002C0E FF               [12] 2784 	mov	r7,a
      002C0F 90 00 24         [24] 2785 	mov	dptr,#_atoh_lcase_65536_129
      002C12 EC               [12] 2786 	mov	a,r4
      002C13 F0               [24] 2787 	movx	@dptr,a
      002C14 EF               [12] 2788 	mov	a,r7
      002C15 A3               [24] 2789 	inc	dptr
      002C16 F0               [24] 2790 	movx	@dptr,a
      002C17 EC               [12] 2791 	mov	a,r4
      002C18 4F               [12] 2792 	orl	a,r7
      002C19 70 25            [24] 2793 	jnz	00119$
                                   2794 ;	lcdCommands.c:412: (*p >= 'A' && *p <= 'F')) {
      002C1B 90 00 21         [24] 2795 	mov	dptr,#_atoh_p_65536_129
      002C1E E0               [24] 2796 	movx	a,@dptr
      002C1F FB               [12] 2797 	mov	r3,a
      002C20 A3               [24] 2798 	inc	dptr
      002C21 E0               [24] 2799 	movx	a,@dptr
      002C22 FC               [12] 2800 	mov	r4,a
      002C23 A3               [24] 2801 	inc	dptr
      002C24 E0               [24] 2802 	movx	a,@dptr
      002C25 FF               [12] 2803 	mov	r7,a
      002C26 8B 82            [24] 2804 	mov	dpl,r3
      002C28 8C 83            [24] 2805 	mov	dph,r4
      002C2A 8F F0            [24] 2806 	mov	b,r7
      002C2C 12 40 6B         [24] 2807 	lcall	__gptrget
      002C2F FF               [12] 2808 	mov	r7,a
      002C30 BF 41 00         [24] 2809 	cjne	r7,#0x41,00195$
      002C33                       2810 00195$:
      002C33 50 03            [24] 2811 	jnc	00196$
      002C35 02 2C EB         [24] 2812 	ljmp	00120$
      002C38                       2813 00196$:
      002C38 EF               [12] 2814 	mov	a,r7
      002C39 24 B9            [12] 2815 	add	a,#0xff - 0x46
      002C3B 50 03            [24] 2816 	jnc	00197$
      002C3D 02 2C EB         [24] 2817 	ljmp	00120$
      002C40                       2818 00197$:
      002C40                       2819 00119$:
                                   2820 ;	lcdCommands.c:413: n *= 16;
      002C40 90 00 26         [24] 2821 	mov	dptr,#_atoh_n_65537_130
      002C43 E0               [24] 2822 	movx	a,@dptr
      002C44 C4               [12] 2823 	swap	a
      002C45 54 F0            [12] 2824 	anl	a,#0xf0
      002C47 F0               [24] 2825 	movx	@dptr,a
                                   2826 ;	lcdCommands.c:414: if (digit)	n += *p++ - '0';
      002C48 ED               [12] 2827 	mov	a,r5
      002C49 4E               [12] 2828 	orl	a,r6
      002C4A 60 31            [24] 2829 	jz	00113$
      002C4C 90 00 21         [24] 2830 	mov	dptr,#_atoh_p_65536_129
      002C4F E0               [24] 2831 	movx	a,@dptr
      002C50 FD               [12] 2832 	mov	r5,a
      002C51 A3               [24] 2833 	inc	dptr
      002C52 E0               [24] 2834 	movx	a,@dptr
      002C53 FE               [12] 2835 	mov	r6,a
      002C54 A3               [24] 2836 	inc	dptr
      002C55 E0               [24] 2837 	movx	a,@dptr
      002C56 FF               [12] 2838 	mov	r7,a
      002C57 8D 82            [24] 2839 	mov	dpl,r5
      002C59 8E 83            [24] 2840 	mov	dph,r6
      002C5B 8F F0            [24] 2841 	mov	b,r7
      002C5D 12 40 6B         [24] 2842 	lcall	__gptrget
      002C60 FC               [12] 2843 	mov	r4,a
      002C61 90 00 21         [24] 2844 	mov	dptr,#_atoh_p_65536_129
      002C64 74 01            [12] 2845 	mov	a,#0x01
      002C66 2D               [12] 2846 	add	a,r5
      002C67 F0               [24] 2847 	movx	@dptr,a
      002C68 E4               [12] 2848 	clr	a
      002C69 3E               [12] 2849 	addc	a,r6
      002C6A A3               [24] 2850 	inc	dptr
      002C6B F0               [24] 2851 	movx	@dptr,a
      002C6C EF               [12] 2852 	mov	a,r7
      002C6D A3               [24] 2853 	inc	dptr
      002C6E F0               [24] 2854 	movx	@dptr,a
      002C6F EC               [12] 2855 	mov	a,r4
      002C70 24 D0            [12] 2856 	add	a,#0xd0
      002C72 FC               [12] 2857 	mov	r4,a
      002C73 90 00 26         [24] 2858 	mov	dptr,#_atoh_n_65537_130
      002C76 E0               [24] 2859 	movx	a,@dptr
      002C77 FF               [12] 2860 	mov	r7,a
      002C78 2C               [12] 2861 	add	a,r4
      002C79 F0               [24] 2862 	movx	@dptr,a
      002C7A 02 2B B6         [24] 2863 	ljmp	00118$
      002C7D                       2864 00113$:
                                   2865 ;	lcdCommands.c:415: else if (lcase)	n += 10 + (*p++ - 'a');
      002C7D 90 00 24         [24] 2866 	mov	dptr,#_atoh_lcase_65536_129
      002C80 E0               [24] 2867 	movx	a,@dptr
      002C81 F5 F0            [12] 2868 	mov	b,a
      002C83 A3               [24] 2869 	inc	dptr
      002C84 E0               [24] 2870 	movx	a,@dptr
      002C85 45 F0            [12] 2871 	orl	a,b
      002C87 60 31            [24] 2872 	jz	00110$
      002C89 90 00 21         [24] 2873 	mov	dptr,#_atoh_p_65536_129
      002C8C E0               [24] 2874 	movx	a,@dptr
      002C8D FD               [12] 2875 	mov	r5,a
      002C8E A3               [24] 2876 	inc	dptr
      002C8F E0               [24] 2877 	movx	a,@dptr
      002C90 FE               [12] 2878 	mov	r6,a
      002C91 A3               [24] 2879 	inc	dptr
      002C92 E0               [24] 2880 	movx	a,@dptr
      002C93 FF               [12] 2881 	mov	r7,a
      002C94 8D 82            [24] 2882 	mov	dpl,r5
      002C96 8E 83            [24] 2883 	mov	dph,r6
      002C98 8F F0            [24] 2884 	mov	b,r7
      002C9A 12 40 6B         [24] 2885 	lcall	__gptrget
      002C9D FC               [12] 2886 	mov	r4,a
      002C9E 90 00 21         [24] 2887 	mov	dptr,#_atoh_p_65536_129
      002CA1 74 01            [12] 2888 	mov	a,#0x01
      002CA3 2D               [12] 2889 	add	a,r5
      002CA4 F0               [24] 2890 	movx	@dptr,a
      002CA5 E4               [12] 2891 	clr	a
      002CA6 3E               [12] 2892 	addc	a,r6
      002CA7 A3               [24] 2893 	inc	dptr
      002CA8 F0               [24] 2894 	movx	@dptr,a
      002CA9 EF               [12] 2895 	mov	a,r7
      002CAA A3               [24] 2896 	inc	dptr
      002CAB F0               [24] 2897 	movx	@dptr,a
      002CAC 74 A9            [12] 2898 	mov	a,#0xa9
      002CAE 2C               [12] 2899 	add	a,r4
      002CAF FC               [12] 2900 	mov	r4,a
      002CB0 90 00 26         [24] 2901 	mov	dptr,#_atoh_n_65537_130
      002CB3 E0               [24] 2902 	movx	a,@dptr
      002CB4 FF               [12] 2903 	mov	r7,a
      002CB5 2C               [12] 2904 	add	a,r4
      002CB6 F0               [24] 2905 	movx	@dptr,a
      002CB7 02 2B B6         [24] 2906 	ljmp	00118$
      002CBA                       2907 00110$:
                                   2908 ;	lcdCommands.c:416: else		n += 10 + (*p++ - 'A');
      002CBA 90 00 21         [24] 2909 	mov	dptr,#_atoh_p_65536_129
      002CBD E0               [24] 2910 	movx	a,@dptr
      002CBE FD               [12] 2911 	mov	r5,a
      002CBF A3               [24] 2912 	inc	dptr
      002CC0 E0               [24] 2913 	movx	a,@dptr
      002CC1 FE               [12] 2914 	mov	r6,a
      002CC2 A3               [24] 2915 	inc	dptr
      002CC3 E0               [24] 2916 	movx	a,@dptr
      002CC4 FF               [12] 2917 	mov	r7,a
      002CC5 8D 82            [24] 2918 	mov	dpl,r5
      002CC7 8E 83            [24] 2919 	mov	dph,r6
      002CC9 8F F0            [24] 2920 	mov	b,r7
      002CCB 12 40 6B         [24] 2921 	lcall	__gptrget
      002CCE FC               [12] 2922 	mov	r4,a
      002CCF 90 00 21         [24] 2923 	mov	dptr,#_atoh_p_65536_129
      002CD2 74 01            [12] 2924 	mov	a,#0x01
      002CD4 2D               [12] 2925 	add	a,r5
      002CD5 F0               [24] 2926 	movx	@dptr,a
      002CD6 E4               [12] 2927 	clr	a
      002CD7 3E               [12] 2928 	addc	a,r6
      002CD8 A3               [24] 2929 	inc	dptr
      002CD9 F0               [24] 2930 	movx	@dptr,a
      002CDA EF               [12] 2931 	mov	a,r7
      002CDB A3               [24] 2932 	inc	dptr
      002CDC F0               [24] 2933 	movx	@dptr,a
      002CDD 74 C9            [12] 2934 	mov	a,#0xc9
      002CDF 2C               [12] 2935 	add	a,r4
      002CE0 FC               [12] 2936 	mov	r4,a
      002CE1 90 00 26         [24] 2937 	mov	dptr,#_atoh_n_65537_130
      002CE4 E0               [24] 2938 	movx	a,@dptr
      002CE5 FF               [12] 2939 	mov	r7,a
      002CE6 2C               [12] 2940 	add	a,r4
      002CE7 F0               [24] 2941 	movx	@dptr,a
      002CE8 02 2B B6         [24] 2942 	ljmp	00118$
      002CEB                       2943 00120$:
                                   2944 ;	lcdCommands.c:418: return(n);
      002CEB 90 00 26         [24] 2945 	mov	dptr,#_atoh_n_65537_130
      002CEE E0               [24] 2946 	movx	a,@dptr
                                   2947 ;	lcdCommands.c:419: }
      002CEF F5 82            [12] 2948 	mov	dpl,a
      002CF1 22               [24] 2949 	ret
                                   2950 ;------------------------------------------------------------
                                   2951 ;Allocation info for local variables in function 'printMenu'
                                   2952 ;------------------------------------------------------------
                                   2953 ;i                         Allocated with name '_printMenu_i_65536_132'
                                   2954 ;------------------------------------------------------------
                                   2955 ;	lcdCommands.c:421: void printMenu()
                                   2956 ;	-----------------------------------------
                                   2957 ;	 function printMenu
                                   2958 ;	-----------------------------------------
      002CF2                       2959 _printMenu:
                                   2960 ;	lcdCommands.c:424: printf("%s",uiLines);
      002CF2 74 8B            [12] 2961 	mov	a,#_uiLines
      002CF4 C0 E0            [24] 2962 	push	acc
      002CF6 74 40            [12] 2963 	mov	a,#(_uiLines >> 8)
      002CF8 C0 E0            [24] 2964 	push	acc
      002CFA 74 80            [12] 2965 	mov	a,#0x80
      002CFC C0 E0            [24] 2966 	push	acc
      002CFE 74 B1            [12] 2967 	mov	a,#___str_10
      002D00 C0 E0            [24] 2968 	push	acc
      002D02 74 43            [12] 2969 	mov	a,#(___str_10 >> 8)
      002D04 C0 E0            [24] 2970 	push	acc
      002D06 74 80            [12] 2971 	mov	a,#0x80
      002D08 C0 E0            [24] 2972 	push	acc
      002D0A 12 36 49         [24] 2973 	lcall	_printf
      002D0D E5 81            [12] 2974 	mov	a,sp
      002D0F 24 FA            [12] 2975 	add	a,#0xfa
      002D11 F5 81            [12] 2976 	mov	sp,a
                                   2977 ;	lcdCommands.c:425: printf("\n\r");
      002D13 74 2C            [12] 2978 	mov	a,#___str_6
      002D15 C0 E0            [24] 2979 	push	acc
      002D17 74 43            [12] 2980 	mov	a,#(___str_6 >> 8)
      002D19 C0 E0            [24] 2981 	push	acc
      002D1B 74 80            [12] 2982 	mov	a,#0x80
      002D1D C0 E0            [24] 2983 	push	acc
      002D1F 12 36 49         [24] 2984 	lcall	_printf
      002D22 15 81            [12] 2985 	dec	sp
      002D24 15 81            [12] 2986 	dec	sp
      002D26 15 81            [12] 2987 	dec	sp
                                   2988 ;	lcdCommands.c:426: for ( i = 0; i < 10; i++)
      002D28 7E 00            [12] 2989 	mov	r6,#0x00
      002D2A 7F 00            [12] 2990 	mov	r7,#0x00
      002D2C                       2991 00102$:
                                   2992 ;	lcdCommands.c:428: printf("%s",messages[i]);
      002D2C 90 00 B0         [24] 2993 	mov	dptr,#__mulint_PARM_2
      002D2F EE               [12] 2994 	mov	a,r6
      002D30 F0               [24] 2995 	movx	@dptr,a
      002D31 EF               [12] 2996 	mov	a,r7
      002D32 A3               [24] 2997 	inc	dptr
      002D33 F0               [24] 2998 	movx	@dptr,a
      002D34 90 00 28         [24] 2999 	mov	dptr,#0x0028
      002D37 C0 07            [24] 3000 	push	ar7
      002D39 C0 06            [24] 3001 	push	ar6
      002D3B 12 33 C8         [24] 3002 	lcall	__mulint
      002D3E AC 82            [24] 3003 	mov	r4,dpl
      002D40 AD 83            [24] 3004 	mov	r5,dph
      002D42 EC               [12] 3005 	mov	a,r4
      002D43 24 C7            [12] 3006 	add	a,#_messages
      002D45 FC               [12] 3007 	mov	r4,a
      002D46 ED               [12] 3008 	mov	a,r5
      002D47 34 40            [12] 3009 	addc	a,#(_messages >> 8)
      002D49 FD               [12] 3010 	mov	r5,a
      002D4A 7B 80            [12] 3011 	mov	r3,#0x80
      002D4C C0 04            [24] 3012 	push	ar4
      002D4E C0 05            [24] 3013 	push	ar5
      002D50 C0 03            [24] 3014 	push	ar3
      002D52 74 B1            [12] 3015 	mov	a,#___str_10
      002D54 C0 E0            [24] 3016 	push	acc
      002D56 74 43            [12] 3017 	mov	a,#(___str_10 >> 8)
      002D58 C0 E0            [24] 3018 	push	acc
      002D5A EB               [12] 3019 	mov	a,r3
      002D5B C0 E0            [24] 3020 	push	acc
      002D5D 12 36 49         [24] 3021 	lcall	_printf
      002D60 E5 81            [12] 3022 	mov	a,sp
      002D62 24 FA            [12] 3023 	add	a,#0xfa
      002D64 F5 81            [12] 3024 	mov	sp,a
                                   3025 ;	lcdCommands.c:429: printf_tiny("\n\r");
      002D66 74 2C            [12] 3026 	mov	a,#___str_6
      002D68 C0 E0            [24] 3027 	push	acc
      002D6A 74 43            [12] 3028 	mov	a,#(___str_6 >> 8)
      002D6C C0 E0            [24] 3029 	push	acc
      002D6E 12 32 BF         [24] 3030 	lcall	_printf_tiny
      002D71 15 81            [12] 3031 	dec	sp
      002D73 15 81            [12] 3032 	dec	sp
      002D75 D0 06            [24] 3033 	pop	ar6
      002D77 D0 07            [24] 3034 	pop	ar7
                                   3035 ;	lcdCommands.c:426: for ( i = 0; i < 10; i++)
      002D79 0E               [12] 3036 	inc	r6
      002D7A BE 00 01         [24] 3037 	cjne	r6,#0x00,00115$
      002D7D 0F               [12] 3038 	inc	r7
      002D7E                       3039 00115$:
      002D7E C3               [12] 3040 	clr	c
      002D7F EE               [12] 3041 	mov	a,r6
      002D80 94 0A            [12] 3042 	subb	a,#0x0a
      002D82 EF               [12] 3043 	mov	a,r7
      002D83 64 80            [12] 3044 	xrl	a,#0x80
      002D85 94 80            [12] 3045 	subb	a,#0x80
      002D87 40 A3            [24] 3046 	jc	00102$
                                   3047 ;	lcdCommands.c:431: printf("%s",uiLines);
      002D89 74 8B            [12] 3048 	mov	a,#_uiLines
      002D8B C0 E0            [24] 3049 	push	acc
      002D8D 74 40            [12] 3050 	mov	a,#(_uiLines >> 8)
      002D8F C0 E0            [24] 3051 	push	acc
      002D91 74 80            [12] 3052 	mov	a,#0x80
      002D93 C0 E0            [24] 3053 	push	acc
      002D95 74 B1            [12] 3054 	mov	a,#___str_10
      002D97 C0 E0            [24] 3055 	push	acc
      002D99 74 43            [12] 3056 	mov	a,#(___str_10 >> 8)
      002D9B C0 E0            [24] 3057 	push	acc
      002D9D 74 80            [12] 3058 	mov	a,#0x80
      002D9F C0 E0            [24] 3059 	push	acc
      002DA1 12 36 49         [24] 3060 	lcall	_printf
      002DA4 E5 81            [12] 3061 	mov	a,sp
      002DA6 24 FA            [12] 3062 	add	a,#0xfa
      002DA8 F5 81            [12] 3063 	mov	sp,a
                                   3064 ;	lcdCommands.c:432: printf("\n\r");
      002DAA 74 2C            [12] 3065 	mov	a,#___str_6
      002DAC C0 E0            [24] 3066 	push	acc
      002DAE 74 43            [12] 3067 	mov	a,#(___str_6 >> 8)
      002DB0 C0 E0            [24] 3068 	push	acc
      002DB2 74 80            [12] 3069 	mov	a,#0x80
      002DB4 C0 E0            [24] 3070 	push	acc
      002DB6 12 36 49         [24] 3071 	lcall	_printf
      002DB9 15 81            [12] 3072 	dec	sp
      002DBB 15 81            [12] 3073 	dec	sp
      002DBD 15 81            [12] 3074 	dec	sp
                                   3075 ;	lcdCommands.c:434: }
      002DBF 22               [24] 3076 	ret
                                   3077 	.area CSEG    (CODE)
                                   3078 	.area CONST   (CODE)
      00408B                       3079 _uiLines:
      00408B 0A                    3080 	.db 0x0a
      00408C 0D                    3081 	.db 0x0d
      00408D 2D 2D 2D 2D 2D 2D 2D  3082 	.ascii "-------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
      0040BE 0A                    3083 	.db 0x0a
      0040BF 0D                    3084 	.db 0x0d
      0040C0 00                    3085 	.db 0x00
      0040C1 00                    3086 	.db 0x00
      0040C2 00                    3087 	.db 0x00
      0040C3 00                    3088 	.db 0x00
      0040C4 00                    3089 	.db 0x00
      0040C5 00                    3090 	.db 0x00
      0040C6 00                    3091 	.db 0x00
      0040C7                       3092 _messages:
      0040C7 20 45 6E 74 65 72 20  3093 	.ascii " Enter w to write a character "
             77 20 74 6F 20 77 72
             69 74 65 20 61 20 63
             68 61 72 61 63 74 65
             72 20
      0040E5 00                    3094 	.db 0x00
      0040E6 00                    3095 	.db 0x00
      0040E7 00                    3096 	.db 0x00
      0040E8 00                    3097 	.db 0x00
      0040E9 00                    3098 	.db 0x00
      0040EA 00                    3099 	.db 0x00
      0040EB 00                    3100 	.db 0x00
      0040EC 00                    3101 	.db 0x00
      0040ED 00                    3102 	.db 0x00
      0040EE 00                    3103 	.db 0x00
      0040EF 20 45 6E 74 65 72 20  3104 	.ascii " Enter s to write a string"
             73 20 74 6F 20 77 72
             69 74 65 20 61 20 73
             74 72 69 6E 67
      004109 00                    3105 	.db 0x00
      00410A 00                    3106 	.db 0x00
      00410B 00                    3107 	.db 0x00
      00410C 00                    3108 	.db 0x00
      00410D 00                    3109 	.db 0x00
      00410E 00                    3110 	.db 0x00
      00410F 00                    3111 	.db 0x00
      004110 00                    3112 	.db 0x00
      004111 00                    3113 	.db 0x00
      004112 00                    3114 	.db 0x00
      004113 00                    3115 	.db 0x00
      004114 00                    3116 	.db 0x00
      004115 00                    3117 	.db 0x00
      004116 00                    3118 	.db 0x00
      004117 20 45 6E 74 65 72 20  3119 	.ascii " Enter p to play pacman "
             70 20 74 6F 20 70 6C
             61 79 20 70 61 63 6D
             61 6E 20
      00412F 00                    3120 	.db 0x00
      004130 00                    3121 	.db 0x00
      004131 00                    3122 	.db 0x00
      004132 00                    3123 	.db 0x00
      004133 00                    3124 	.db 0x00
      004134 00                    3125 	.db 0x00
      004135 00                    3126 	.db 0x00
      004136 00                    3127 	.db 0x00
      004137 00                    3128 	.db 0x00
      004138 00                    3129 	.db 0x00
      004139 00                    3130 	.db 0x00
      00413A 00                    3131 	.db 0x00
      00413B 00                    3132 	.db 0x00
      00413C 00                    3133 	.db 0x00
      00413D 00                    3134 	.db 0x00
      00413E 00                    3135 	.db 0x00
      00413F 20 45 6E 74 65 72 20  3136 	.ascii " Enter d to perform RAM dump "
             64 20 74 6F 20 70 65
             72 66 6F 72 6D 20 52
             41 4D 20 64 75 6D 70
             20
      00415C 00                    3137 	.db 0x00
      00415D 00                    3138 	.db 0x00
      00415E 00                    3139 	.db 0x00
      00415F 00                    3140 	.db 0x00
      004160 00                    3141 	.db 0x00
      004161 00                    3142 	.db 0x00
      004162 00                    3143 	.db 0x00
      004163 00                    3144 	.db 0x00
      004164 00                    3145 	.db 0x00
      004165 00                    3146 	.db 0x00
      004166 00                    3147 	.db 0x00
      004167 20 45 6E 74 65 72 20  3148 	.ascii " Enter g for custom character"
             67 20 66 6F 72 20 63
             75 73 74 6F 6D 20 63
             68 61 72 61 63 74 65
             72
      004184 00                    3149 	.db 0x00
      004185 00                    3150 	.db 0x00
      004186 00                    3151 	.db 0x00
      004187 00                    3152 	.db 0x00
      004188 00                    3153 	.db 0x00
      004189 00                    3154 	.db 0x00
      00418A 00                    3155 	.db 0x00
      00418B 00                    3156 	.db 0x00
      00418C 00                    3157 	.db 0x00
      00418D 00                    3158 	.db 0x00
      00418E 00                    3159 	.db 0x00
      00418F 20 45 6E 74 65 72 20  3160 	.ascii " Enter x to reset timer"
             78 20 74 6F 20 72 65
             73 65 74 20 74 69 6D
             65 72
      0041A6 00                    3161 	.db 0x00
      0041A7 00                    3162 	.db 0x00
      0041A8 00                    3163 	.db 0x00
      0041A9 00                    3164 	.db 0x00
      0041AA 00                    3165 	.db 0x00
      0041AB 00                    3166 	.db 0x00
      0041AC 00                    3167 	.db 0x00
      0041AD 00                    3168 	.db 0x00
      0041AE 00                    3169 	.db 0x00
      0041AF 00                    3170 	.db 0x00
      0041B0 00                    3171 	.db 0x00
      0041B1 00                    3172 	.db 0x00
      0041B2 00                    3173 	.db 0x00
      0041B3 00                    3174 	.db 0x00
      0041B4 00                    3175 	.db 0x00
      0041B5 00                    3176 	.db 0x00
      0041B6 00                    3177 	.db 0x00
      0041B7 20 45 6E 74 65 72 20  3178 	.ascii " Enter y to pause timer"
             79 20 74 6F 20 70 61
             75 73 65 20 74 69 6D
             65 72
      0041CE 00                    3179 	.db 0x00
      0041CF 00                    3180 	.db 0x00
      0041D0 00                    3181 	.db 0x00
      0041D1 00                    3182 	.db 0x00
      0041D2 00                    3183 	.db 0x00
      0041D3 00                    3184 	.db 0x00
      0041D4 00                    3185 	.db 0x00
      0041D5 00                    3186 	.db 0x00
      0041D6 00                    3187 	.db 0x00
      0041D7 00                    3188 	.db 0x00
      0041D8 00                    3189 	.db 0x00
      0041D9 00                    3190 	.db 0x00
      0041DA 00                    3191 	.db 0x00
      0041DB 00                    3192 	.db 0x00
      0041DC 00                    3193 	.db 0x00
      0041DD 00                    3194 	.db 0x00
      0041DE 00                    3195 	.db 0x00
      0041DF 20 45 6E 74 65 72 20  3196 	.ascii " Enter z to resume timer"
             7A 20 74 6F 20 72 65
             73 75 6D 65 20 74 69
             6D 65 72
      0041F7 00                    3197 	.db 0x00
      0041F8 00                    3198 	.db 0x00
      0041F9 00                    3199 	.db 0x00
      0041FA 00                    3200 	.db 0x00
      0041FB 00                    3201 	.db 0x00
      0041FC 00                    3202 	.db 0x00
      0041FD 00                    3203 	.db 0x00
      0041FE 00                    3204 	.db 0x00
      0041FF 00                    3205 	.db 0x00
      004200 00                    3206 	.db 0x00
      004201 00                    3207 	.db 0x00
      004202 00                    3208 	.db 0x00
      004203 00                    3209 	.db 0x00
      004204 00                    3210 	.db 0x00
      004205 00                    3211 	.db 0x00
      004206 00                    3212 	.db 0x00
      004207 20 45 6E 74 65 72 20  3213 	.ascii " Enter s to clear screen"
             73 20 74 6F 20 63 6C
             65 61 72 20 73 63 72
             65 65 6E
      00421F 00                    3214 	.db 0x00
      004220 00                    3215 	.db 0x00
      004221 00                    3216 	.db 0x00
      004222 00                    3217 	.db 0x00
      004223 00                    3218 	.db 0x00
      004224 00                    3219 	.db 0x00
      004225 00                    3220 	.db 0x00
      004226 00                    3221 	.db 0x00
      004227 00                    3222 	.db 0x00
      004228 00                    3223 	.db 0x00
      004229 00                    3224 	.db 0x00
      00422A 00                    3225 	.db 0x00
      00422B 00                    3226 	.db 0x00
      00422C 00                    3227 	.db 0x00
      00422D 00                    3228 	.db 0x00
      00422E 00                    3229 	.db 0x00
      00422F 20 45 6E 74 65 72 20  3230 	.ascii " Enter m for main menu "
             6D 20 66 6F 72 20 6D
             61 69 6E 20 6D 65 6E
             75 20
      004246 00                    3231 	.db 0x00
      004247 00                    3232 	.db 0x00
      004248 00                    3233 	.db 0x00
      004249 00                    3234 	.db 0x00
      00424A 00                    3235 	.db 0x00
      00424B 00                    3236 	.db 0x00
      00424C 00                    3237 	.db 0x00
      00424D 00                    3238 	.db 0x00
      00424E 00                    3239 	.db 0x00
      00424F 00                    3240 	.db 0x00
      004250 00                    3241 	.db 0x00
      004251 00                    3242 	.db 0x00
      004252 00                    3243 	.db 0x00
      004253 00                    3244 	.db 0x00
      004254 00                    3245 	.db 0x00
      004255 00                    3246 	.db 0x00
      004256 00                    3247 	.db 0x00
      004257 00                    3248 	.db 0x00
      004258 00                    3249 	.db 0x00
      004259 00                    3250 	.db 0x00
      00425A 00                    3251 	.db 0x00
      00425B 00                    3252 	.db 0x00
      00425C 00                    3253 	.db 0x00
      00425D 00                    3254 	.db 0x00
      00425E 00                    3255 	.db 0x00
      00425F 00                    3256 	.db 0x00
      004260 00                    3257 	.db 0x00
      004261 00                    3258 	.db 0x00
      004262 00                    3259 	.db 0x00
      004263 00                    3260 	.db 0x00
      004264 00                    3261 	.db 0x00
      004265 00                    3262 	.db 0x00
      004266 00                    3263 	.db 0x00
      004267 00                    3264 	.db 0x00
      004268 00                    3265 	.db 0x00
      004269 00                    3266 	.db 0x00
      00426A 00                    3267 	.db 0x00
      00426B 00                    3268 	.db 0x00
      00426C 00                    3269 	.db 0x00
      00426D 00                    3270 	.db 0x00
      00426E 00                    3271 	.db 0x00
      00426F 00                    3272 	.db 0x00
      004270 00                    3273 	.db 0x00
      004271 00                    3274 	.db 0x00
      004272 00                    3275 	.db 0x00
      004273 00                    3276 	.db 0x00
      004274 00                    3277 	.db 0x00
      004275 00                    3278 	.db 0x00
      004276 00                    3279 	.db 0x00
      004277 00                    3280 	.db 0x00
      004278 00                    3281 	.db 0x00
      004279 00                    3282 	.db 0x00
      00427A 00                    3283 	.db 0x00
      00427B 00                    3284 	.db 0x00
      00427C 00                    3285 	.db 0x00
      00427D 00                    3286 	.db 0x00
      00427E 00                    3287 	.db 0x00
      00427F                       3288 _lookUpTable:
      00427F 00                    3289 	.db #0x00	; 0
      004280 01                    3290 	.db #0x01	; 1
      004281 02                    3291 	.db #0x02	; 2
      004282 03                    3292 	.db #0x03	; 3
      004283 04                    3293 	.db #0x04	; 4
      004284 05                    3294 	.db #0x05	; 5
      004285 06                    3295 	.db #0x06	; 6
      004286 07                    3296 	.db #0x07	; 7
      004287 08                    3297 	.db #0x08	; 8
      004288 09                    3298 	.db #0x09	; 9
      004289 0A                    3299 	.db #0x0a	; 10
      00428A 0B                    3300 	.db #0x0b	; 11
      00428B 0C                    3301 	.db #0x0c	; 12
      00428C 0D                    3302 	.db #0x0d	; 13
      00428D 0E                    3303 	.db #0x0e	; 14
      00428E 0F                    3304 	.db #0x0f	; 15
      00428F 40                    3305 	.db #0x40	; 64
      004290 41                    3306 	.db #0x41	; 65	'A'
      004291 42                    3307 	.db #0x42	; 66	'B'
      004292 43                    3308 	.db #0x43	; 67	'C'
      004293 44                    3309 	.db #0x44	; 68	'D'
      004294 45                    3310 	.db #0x45	; 69	'E'
      004295 46                    3311 	.db #0x46	; 70	'F'
      004296 47                    3312 	.db #0x47	; 71	'G'
      004297 48                    3313 	.db #0x48	; 72	'H'
      004298 49                    3314 	.db #0x49	; 73	'I'
      004299 4A                    3315 	.db #0x4a	; 74	'J'
      00429A 4B                    3316 	.db #0x4b	; 75	'K'
      00429B 4C                    3317 	.db #0x4c	; 76	'L'
      00429C 4D                    3318 	.db #0x4d	; 77	'M'
      00429D 4E                    3319 	.db #0x4e	; 78	'N'
      00429E 4F                    3320 	.db #0x4f	; 79	'O'
      00429F 10                    3321 	.db #0x10	; 16
      0042A0 11                    3322 	.db #0x11	; 17
      0042A1 12                    3323 	.db #0x12	; 18
      0042A2 13                    3324 	.db #0x13	; 19
      0042A3 14                    3325 	.db #0x14	; 20
      0042A4 15                    3326 	.db #0x15	; 21
      0042A5 16                    3327 	.db #0x16	; 22
      0042A6 17                    3328 	.db #0x17	; 23
      0042A7 18                    3329 	.db #0x18	; 24
      0042A8 19                    3330 	.db #0x19	; 25
      0042A9 1A                    3331 	.db #0x1a	; 26
      0042AA 1B                    3332 	.db #0x1b	; 27
      0042AB 1C                    3333 	.db #0x1c	; 28
      0042AC 1D                    3334 	.db #0x1d	; 29
      0042AD 1E                    3335 	.db #0x1e	; 30
      0042AE 1F                    3336 	.db #0x1f	; 31
      0042AF 50                    3337 	.db #0x50	; 80	'P'
      0042B0 51                    3338 	.db #0x51	; 81	'Q'
      0042B1 52                    3339 	.db #0x52	; 82	'R'
      0042B2 53                    3340 	.db #0x53	; 83	'S'
      0042B3 54                    3341 	.db #0x54	; 84	'T'
      0042B4 55                    3342 	.db #0x55	; 85	'U'
      0042B5 56                    3343 	.db #0x56	; 86	'V'
      0042B6 57                    3344 	.db #0x57	; 87	'W'
      0042B7 58                    3345 	.db #0x58	; 88	'X'
      0042B8 59                    3346 	.db #0x59	; 89	'Y'
      0042B9 5A                    3347 	.db #0x5a	; 90	'Z'
      0042BA 5B                    3348 	.db #0x5b	; 91
      0042BB 5C                    3349 	.db #0x5c	; 92
      0042BC 5D                    3350 	.db #0x5d	; 93
      0042BD 5E                    3351 	.db #0x5e	; 94
      0042BE 5F                    3352 	.db #0x5f	; 95
                                   3353 	.area CONST   (CODE)
      0042BF                       3354 ___str_0:
      0042BF 25 78 20 25 78        3355 	.ascii "%x %x"
      0042C4 0A                    3356 	.db 0x0a
      0042C5 0D                    3357 	.db 0x0d
      0042C6 00                    3358 	.db 0x00
                                   3359 	.area CSEG    (CODE)
                                   3360 	.area CONST   (CODE)
      0042C7                       3361 ___str_1:
      0042C7 0A                    3362 	.db 0x0a
      0042C8 0D                    3363 	.db 0x0d
      0042C9 45 6E 74 65 72 20 76  3364 	.ascii "Enter value for Row %d"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 25
             64
      0042DF 0A                    3365 	.db 0x0a
      0042E0 0D                    3366 	.db 0x0d
      0042E1 00                    3367 	.db 0x00
                                   3368 	.area CSEG    (CODE)
                                   3369 	.area CONST   (CODE)
      0042E2                       3370 ___str_2:
      0042E2 0A                    3371 	.db 0x0a
      0042E3 0D                    3372 	.db 0x0d
      0042E4 50 6C 65 61 73 65 20  3373 	.ascii "Please Input a maximum of 48 characters"
             49 6E 70 75 74 20 61
             20 6D 61 78 69 6D 75
             6D 20 6F 66 20 34 38
             20 63 68 61 72 61 63
             74 65 72 73
      00430B 0A                    3374 	.db 0x0a
      00430C 0D                    3375 	.db 0x0d
      00430D 00                    3376 	.db 0x00
                                   3377 	.area CSEG    (CODE)
                                   3378 	.area CONST   (CODE)
      00430E                       3379 ___str_3:
      00430E 0A                    3380 	.db 0x0a
      00430F 0D                    3381 	.db 0x0d
      004310 44 44 52 41 4D 20 43  3382 	.ascii "DDRAM Contents"
             6F 6E 74 65 6E 74 73
      00431E 0A                    3383 	.db 0x0a
      00431F 0D                    3384 	.db 0x0d
      004320 00                    3385 	.db 0x00
                                   3386 	.area CSEG    (CODE)
                                   3387 	.area CONST   (CODE)
      004321                       3388 ___str_4:
      004321 25 32 78 3A 20        3389 	.ascii "%2x: "
      004326 00                    3390 	.db 0x00
                                   3391 	.area CSEG    (CODE)
                                   3392 	.area CONST   (CODE)
      004327                       3393 ___str_5:
      004327 25 32 78 20           3394 	.ascii "%2x "
      00432B 00                    3395 	.db 0x00
                                   3396 	.area CSEG    (CODE)
                                   3397 	.area CONST   (CODE)
      00432C                       3398 ___str_6:
      00432C 0A                    3399 	.db 0x0a
      00432D 0D                    3400 	.db 0x0d
      00432E 00                    3401 	.db 0x00
                                   3402 	.area CSEG    (CODE)
                                   3403 	.area CONST   (CODE)
      00432F                       3404 ___str_7:
      00432F 0A                    3405 	.db 0x0a
      004330 0D                    3406 	.db 0x0d
      004331 43 47 52 41 4D 20 43  3407 	.ascii "CGRAM Contents"
             6F 6E 74 65 6E 74 73
      00433F 0A                    3408 	.db 0x0a
      004340 0D                    3409 	.db 0x0d
      004341 00                    3410 	.db 0x00
                                   3411 	.area CSEG    (CODE)
                                   3412 	.area CONST   (CODE)
      004342                       3413 ___str_8:
      004342 0A                    3414 	.db 0x0a
      004343 0D                    3415 	.db 0x0d
      004344 45 6E 74 65 72 20 77  3416 	.ascii "Enter w to go up, s to go down, a to go left and d to go rig"
             20 74 6F 20 67 6F 20
             75 70 2C 20 73 20 74
             6F 20 67 6F 20 64 6F
             77 6E 2C 20 61 20 74
             6F 20 67 6F 20 6C 65
             66 74 20 61 6E 64 20
             64 20 74 6F 20 67 6F
             20 72 69 67
      004380 68 74 20 61 6E 64 20  3417 	.ascii "ht and q to quit"
             71 20 74 6F 20 71 75
             69 74
      004390 0A                    3418 	.db 0x0a
      004391 0D                    3419 	.db 0x0d
      004392 00                    3420 	.db 0x00
                                   3421 	.area CSEG    (CODE)
                                   3422 	.area CONST   (CODE)
      004393                       3423 ___str_9:
      004393 47 41 4D 45 20 4F 56  3424 	.ascii "GAME OVER! PRESS p to restart"
             45 52 21 20 50 52 45
             53 53 20 70 20 74 6F
             20 72 65 73 74 61 72
             74
      0043B0 00                    3425 	.db 0x00
                                   3426 	.area CSEG    (CODE)
                                   3427 	.area CONST   (CODE)
      0043B1                       3428 ___str_10:
      0043B1 25 73                 3429 	.ascii "%s"
      0043B3 00                    3430 	.db 0x00
                                   3431 	.area CSEG    (CODE)
                                   3432 	.area XINIT   (CODE)
                                   3433 	.area CABS    (ABS,CODE)
