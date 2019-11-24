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
      000017                        505 _ramDump_i_65537_101:
      000017                        506 	.ds 1
      000018                        507 _gamePacman_i_65538_115:
      000018                        508 	.ds 2
      00001A                        509 _gamePacman_count_65538_115:
      00001A                        510 	.ds 1
      00001B                        511 _printBinary_x_65536_128:
      00001B                        512 	.ds 2
      00001D                        513 _atoh_ap_65536_131:
      00001D                        514 	.ds 3
      000020                        515 _atoh_p_65536_132:
      000020                        516 	.ds 3
      000023                        517 _atoh_lcase_65536_132:
      000023                        518 	.ds 2
      000025                        519 _atoh_n_65537_133:
      000025                        520 	.ds 1
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
      002146 24 6D            [12]  806 	add	a,#_lookUpTable
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
      002170 FB               [12]  848 	mov	r3,a
      002171 E4               [12]  849 	clr	a
      002172 3E               [12]  850 	addc	a,r6
      002173 FC               [12]  851 	mov	r4,a
      002174 90 F0 00         [24]  852 	mov	dptr,#_customCharacter_temp8_196609_86
      002177 74 40            [12]  853 	mov	a,#0x40
      002179 4B               [12]  854 	orl	a,r3
      00217A F0               [24]  855 	movx	@dptr,a
      00217B EC               [12]  856 	mov	a,r4
      00217C A3               [24]  857 	inc	dptr
      00217D F0               [24]  858 	movx	@dptr,a
                                    859 ;	lcdCommands.c:84: printf("%x %x\n\r",temp8, (0x40 | (0x30 + i)));
      00217E 74 30            [12]  860 	mov	a,#0x30
      002180 2D               [12]  861 	add	a,r5
      002181 FD               [12]  862 	mov	r5,a
      002182 E4               [12]  863 	clr	a
      002183 3E               [12]  864 	addc	a,r6
      002184 FE               [12]  865 	mov	r6,a
      002185 43 05 40         [24]  866 	orl	ar5,#0x40
      002188 90 F0 00         [24]  867 	mov	dptr,#_customCharacter_temp8_196609_86
      00218B E0               [24]  868 	movx	a,@dptr
      00218C FB               [12]  869 	mov	r3,a
      00218D A3               [24]  870 	inc	dptr
      00218E E0               [24]  871 	movx	a,@dptr
      00218F FC               [12]  872 	mov	r4,a
      002190 C0 07            [24]  873 	push	ar7
      002192 C0 05            [24]  874 	push	ar5
      002194 C0 06            [24]  875 	push	ar6
      002196 C0 03            [24]  876 	push	ar3
      002198 C0 04            [24]  877 	push	ar4
      00219A 74 AD            [12]  878 	mov	a,#___str_0
      00219C C0 E0            [24]  879 	push	acc
      00219E 74 42            [12]  880 	mov	a,#(___str_0 >> 8)
      0021A0 C0 E0            [24]  881 	push	acc
      0021A2 74 80            [12]  882 	mov	a,#0x80
      0021A4 C0 E0            [24]  883 	push	acc
      0021A6 12 36 37         [24]  884 	lcall	_printf
      0021A9 E5 81            [12]  885 	mov	a,sp
      0021AB 24 F9            [12]  886 	add	a,#0xf9
      0021AD F5 81            [12]  887 	mov	sp,a
                                    888 ;	lcdCommands.c:85: busyWait();
      0021AF 12 20 8B         [24]  889 	lcall	_busyWait
      0021B2 D0 07            [24]  890 	pop	ar7
                                    891 ;	lcdCommands.c:86: do{
      0021B4 8F 06            [24]  892 	mov	ar6,r7
      0021B6                        893 00102$:
                                    894 ;	lcdCommands.c:87: printf_tiny("\n\rEnter value for Row %d\n\r", (i+1));
      0021B6 8E 04            [24]  895 	mov	ar4,r6
      0021B8 7D 00            [12]  896 	mov	r5,#0x00
      0021BA 0C               [12]  897 	inc	r4
      0021BB BC 00 01         [24]  898 	cjne	r4,#0x00,00127$
      0021BE 0D               [12]  899 	inc	r5
      0021BF                        900 00127$:
      0021BF C0 06            [24]  901 	push	ar6
      0021C1 C0 04            [24]  902 	push	ar4
      0021C3 C0 05            [24]  903 	push	ar5
      0021C5 74 B5            [12]  904 	mov	a,#___str_1
      0021C7 C0 E0            [24]  905 	push	acc
      0021C9 74 42            [12]  906 	mov	a,#(___str_1 >> 8)
      0021CB C0 E0            [24]  907 	push	acc
      0021CD 12 32 AD         [24]  908 	lcall	_printf_tiny
      0021D0 E5 81            [12]  909 	mov	a,sp
      0021D2 24 FC            [12]  910 	add	a,#0xfc
      0021D4 F5 81            [12]  911 	mov	sp,a
                                    912 ;	lcdCommands.c:88: gets(x);
      0021D6 90 00 05         [24]  913 	mov	dptr,#_customCharacter_x_65536_83
      0021D9 75 F0 00         [24]  914 	mov	b,#0x00
      0021DC 12 23 85         [24]  915 	lcall	_gets
                                    916 ;	lcdCommands.c:90: temp = atoh(x);
      0021DF 90 00 05         [24]  917 	mov	dptr,#_customCharacter_x_65536_83
      0021E2 75 F0 00         [24]  918 	mov	b,#0x00
      0021E5 12 2B 2A         [24]  919 	lcall	_atoh
      0021E8 AD 82            [24]  920 	mov	r5,dpl
      0021EA D0 06            [24]  921 	pop	ar6
                                    922 ;	lcdCommands.c:91: }while(temp < 0 || temp > 0x1F);
      0021EC ED               [12]  923 	mov	a,r5
      0021ED 24 E0            [12]  924 	add	a,#0xff - 0x1f
      0021EF 40 C5            [24]  925 	jc	00102$
                                    926 ;	lcdCommands.c:93: writeCharacter = temp;
      0021F1 90 F1 00         [24]  927 	mov	dptr,#_writeCharacter
      0021F4 ED               [12]  928 	mov	a,r5
      0021F5 F0               [24]  929 	movx	@dptr,a
      0021F6 E4               [12]  930 	clr	a
      0021F7 A3               [24]  931 	inc	dptr
      0021F8 F0               [24]  932 	movx	@dptr,a
                                    933 ;	lcdCommands.c:94: busyWait();
      0021F9 C0 06            [24]  934 	push	ar6
      0021FB 12 20 8B         [24]  935 	lcall	_busyWait
                                    936 ;	lcdCommands.c:95: memset(x,'\0',8 * sizeof(char));
      0021FE 90 00 A5         [24]  937 	mov	dptr,#_memset_PARM_2
      002201 E4               [12]  938 	clr	a
      002202 F0               [24]  939 	movx	@dptr,a
      002203 90 00 A6         [24]  940 	mov	dptr,#_memset_PARM_3
      002206 74 08            [12]  941 	mov	a,#0x08
      002208 F0               [24]  942 	movx	@dptr,a
      002209 E4               [12]  943 	clr	a
      00220A A3               [24]  944 	inc	dptr
      00220B F0               [24]  945 	movx	@dptr,a
      00220C 90 00 05         [24]  946 	mov	dptr,#_customCharacter_x_65536_83
      00220F 75 F0 00         [24]  947 	mov	b,#0x00
      002212 12 31 4A         [24]  948 	lcall	_memset
      002215 D0 06            [24]  949 	pop	ar6
                                    950 ;	lcdCommands.c:79: for(i = 0; i < 8; i++)
      002217 EE               [12]  951 	mov	a,r6
      002218 04               [12]  952 	inc	a
      002219 FF               [12]  953 	mov	r7,a
      00221A BF 08 00         [24]  954 	cjne	r7,#0x08,00129$
      00221D                        955 00129$:
      00221D 50 03            [24]  956 	jnc	00130$
      00221F 02 21 62         [24]  957 	ljmp	00106$
      002222                        958 00130$:
                                    959 ;	lcdCommands.c:97: lcdGeneral = 0x80 | 0x11;
      002222 90 F0 00         [24]  960 	mov	dptr,#_lcdGeneral
      002225 74 91            [12]  961 	mov	a,#0x91
      002227 F0               [24]  962 	movx	@dptr,a
      002228 E4               [12]  963 	clr	a
      002229 A3               [24]  964 	inc	dptr
      00222A F0               [24]  965 	movx	@dptr,a
                                    966 ;	lcdCommands.c:98: busyWait();
      00222B 12 20 8B         [24]  967 	lcall	_busyWait
                                    968 ;	lcdCommands.c:99: writeCharacter = 0x06;
      00222E 90 F1 00         [24]  969 	mov	dptr,#_writeCharacter
      002231 74 06            [12]  970 	mov	a,#0x06
      002233 F0               [24]  971 	movx	@dptr,a
      002234 E4               [12]  972 	clr	a
      002235 A3               [24]  973 	inc	dptr
      002236 F0               [24]  974 	movx	@dptr,a
                                    975 ;	lcdCommands.c:100: }
      002237 22               [24]  976 	ret
                                    977 ;------------------------------------------------------------
                                    978 ;Allocation info for local variables in function 'readLCD'
                                    979 ;------------------------------------------------------------
                                    980 ;temp1                     Allocated with name '_readLCD_temp1_65537_89'
                                    981 ;------------------------------------------------------------
                                    982 ;	lcdCommands.c:102: uint8_t readLCD()
                                    983 ;	-----------------------------------------
                                    984 ;	 function readLCD
                                    985 ;	-----------------------------------------
      002238                        986 _readLCD:
                                    987 ;	lcdCommands.c:104: busyWait();
      002238 12 20 8B         [24]  988 	lcall	_busyWait
                                    989 ;	lcdCommands.c:105: uint8_t temp1 = readCharacter;
      00223B 90 F3 00         [24]  990 	mov	dptr,#_readCharacter
      00223E E0               [24]  991 	movx	a,@dptr
      00223F FE               [12]  992 	mov	r6,a
      002240 A3               [24]  993 	inc	dptr
      002241 E0               [24]  994 	movx	a,@dptr
                                    995 ;	lcdCommands.c:106: busyWait();
      002242 C0 06            [24]  996 	push	ar6
      002244 12 20 8B         [24]  997 	lcall	_busyWait
      002247 D0 06            [24]  998 	pop	ar6
                                    999 ;	lcdCommands.c:107: return temp1;
      002249 8E 82            [24] 1000 	mov	dpl,r6
                                   1001 ;	lcdCommands.c:108: }
      00224B 22               [24] 1002 	ret
                                   1003 ;------------------------------------------------------------
                                   1004 ;Allocation info for local variables in function 'putsLCD'
                                   1005 ;------------------------------------------------------------
                                   1006 ;sloc0                     Allocated with name '_putsLCD_sloc0_1_0'
                                   1007 ;sloc1                     Allocated with name '_putsLCD_sloc1_1_0'
                                   1008 ;y                         Allocated with name '_putsLCD_y_65536_90'
                                   1009 ;i                         Allocated with name '_putsLCD_i_65536_91'
                                   1010 ;j                         Allocated with name '_putsLCD_j_65536_91'
                                   1011 ;k                         Allocated with name '_putsLCD_k_65536_91'
                                   1012 ;------------------------------------------------------------
                                   1013 ;	lcdCommands.c:110: void putsLCD(char* y)
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function putsLCD
                                   1016 ;	-----------------------------------------
      00224C                       1017 _putsLCD:
      00224C AF F0            [24] 1018 	mov	r7,b
      00224E AE 83            [24] 1019 	mov	r6,dph
      002250 E5 82            [12] 1020 	mov	a,dpl
      002252 90 00 0D         [24] 1021 	mov	dptr,#_putsLCD_y_65536_90
      002255 F0               [24] 1022 	movx	@dptr,a
      002256 EE               [12] 1023 	mov	a,r6
      002257 A3               [24] 1024 	inc	dptr
      002258 F0               [24] 1025 	movx	@dptr,a
      002259 EF               [12] 1026 	mov	a,r7
      00225A A3               [24] 1027 	inc	dptr
      00225B F0               [24] 1028 	movx	@dptr,a
                                   1029 ;	lcdCommands.c:112: int i = 0,j = 0, k =0;
      00225C 90 00 10         [24] 1030 	mov	dptr,#_putsLCD_i_65536_91
      00225F E4               [12] 1031 	clr	a
      002260 F0               [24] 1032 	movx	@dptr,a
      002261 A3               [24] 1033 	inc	dptr
      002262 F0               [24] 1034 	movx	@dptr,a
                                   1035 ;	lcdCommands.c:113: while(y[i + (j * 16)] != '\0')
      002263 90 00 0D         [24] 1036 	mov	dptr,#_putsLCD_y_65536_90
      002266 E0               [24] 1037 	movx	a,@dptr
      002267 F5 0A            [12] 1038 	mov	_putsLCD_sloc1_1_0,a
      002269 A3               [24] 1039 	inc	dptr
      00226A E0               [24] 1040 	movx	a,@dptr
      00226B F5 0B            [12] 1041 	mov	(_putsLCD_sloc1_1_0 + 1),a
      00226D A3               [24] 1042 	inc	dptr
      00226E E0               [24] 1043 	movx	a,@dptr
      00226F F5 0C            [12] 1044 	mov	(_putsLCD_sloc1_1_0 + 2),a
      002271 AA 0A            [24] 1045 	mov	r2,_putsLCD_sloc1_1_0
      002273 AB 0B            [24] 1046 	mov	r3,(_putsLCD_sloc1_1_0 + 1)
      002275 AC 0C            [24] 1047 	mov	r4,(_putsLCD_sloc1_1_0 + 2)
      002277 78 00            [12] 1048 	mov	r0,#0x00
      002279 79 00            [12] 1049 	mov	r1,#0x00
      00227B                       1050 00103$:
      00227B 88 06            [24] 1051 	mov	ar6,r0
      00227D E9               [12] 1052 	mov	a,r1
      00227E C4               [12] 1053 	swap	a
      00227F 54 F0            [12] 1054 	anl	a,#0xf0
      002281 CE               [12] 1055 	xch	a,r6
      002282 C4               [12] 1056 	swap	a
      002283 CE               [12] 1057 	xch	a,r6
      002284 6E               [12] 1058 	xrl	a,r6
      002285 CE               [12] 1059 	xch	a,r6
      002286 54 F0            [12] 1060 	anl	a,#0xf0
      002288 CE               [12] 1061 	xch	a,r6
      002289 6E               [12] 1062 	xrl	a,r6
      00228A FF               [12] 1063 	mov	r7,a
      00228B 90 00 10         [24] 1064 	mov	dptr,#_putsLCD_i_65536_91
      00228E E0               [24] 1065 	movx	a,@dptr
      00228F F5 08            [12] 1066 	mov	_putsLCD_sloc0_1_0,a
      002291 A3               [24] 1067 	inc	dptr
      002292 E0               [24] 1068 	movx	a,@dptr
      002293 F5 09            [12] 1069 	mov	(_putsLCD_sloc0_1_0 + 1),a
      002295 EE               [12] 1070 	mov	a,r6
      002296 25 08            [12] 1071 	add	a,_putsLCD_sloc0_1_0
      002298 FE               [12] 1072 	mov	r6,a
      002299 EF               [12] 1073 	mov	a,r7
      00229A 35 09            [12] 1074 	addc	a,(_putsLCD_sloc0_1_0 + 1)
      00229C FF               [12] 1075 	mov	r7,a
      00229D EE               [12] 1076 	mov	a,r6
      00229E 2A               [12] 1077 	add	a,r2
      00229F FE               [12] 1078 	mov	r6,a
      0022A0 EF               [12] 1079 	mov	a,r7
      0022A1 3B               [12] 1080 	addc	a,r3
      0022A2 FF               [12] 1081 	mov	r7,a
      0022A3 8C 05            [24] 1082 	mov	ar5,r4
      0022A5 8E 82            [24] 1083 	mov	dpl,r6
      0022A7 8F 83            [24] 1084 	mov	dph,r7
      0022A9 8D F0            [24] 1085 	mov	b,r5
      0022AB 12 40 59         [24] 1086 	lcall	__gptrget
      0022AE 70 01            [24] 1087 	jnz	00121$
      0022B0 22               [24] 1088 	ret
      0022B1                       1089 00121$:
                                   1090 ;	lcdCommands.c:115: busyWait();
      0022B1 C0 04            [24] 1091 	push	ar4
      0022B3 C0 03            [24] 1092 	push	ar3
      0022B5 C0 02            [24] 1093 	push	ar2
      0022B7 C0 01            [24] 1094 	push	ar1
      0022B9 C0 00            [24] 1095 	push	ar0
      0022BB 12 20 8B         [24] 1096 	lcall	_busyWait
      0022BE D0 00            [24] 1097 	pop	ar0
      0022C0 D0 01            [24] 1098 	pop	ar1
      0022C2 D0 02            [24] 1099 	pop	ar2
      0022C4 D0 03            [24] 1100 	pop	ar3
      0022C6 D0 04            [24] 1101 	pop	ar4
                                   1102 ;	lcdCommands.c:116: if( i > 15)
      0022C8 C3               [12] 1103 	clr	c
      0022C9 74 0F            [12] 1104 	mov	a,#0x0f
      0022CB 95 08            [12] 1105 	subb	a,_putsLCD_sloc0_1_0
      0022CD 74 80            [12] 1106 	mov	a,#(0x00 ^ 0x80)
      0022CF 85 09 F0         [24] 1107 	mov	b,(_putsLCD_sloc0_1_0 + 1)
      0022D2 63 F0 80         [24] 1108 	xrl	b,#0x80
      0022D5 95 F0            [12] 1109 	subb	a,b
      0022D7 50 0C            [24] 1110 	jnc	00102$
                                   1111 ;	lcdCommands.c:118: j++;
      0022D9 08               [12] 1112 	inc	r0
      0022DA B8 00 01         [24] 1113 	cjne	r0,#0x00,00123$
      0022DD 09               [12] 1114 	inc	r1
      0022DE                       1115 00123$:
                                   1116 ;	lcdCommands.c:119: i = 0;
      0022DE 90 00 10         [24] 1117 	mov	dptr,#_putsLCD_i_65536_91
      0022E1 E4               [12] 1118 	clr	a
      0022E2 F0               [24] 1119 	movx	@dptr,a
      0022E3 A3               [24] 1120 	inc	dptr
      0022E4 F0               [24] 1121 	movx	@dptr,a
      0022E5                       1122 00102$:
                                   1123 ;	lcdCommands.c:122: goToAddr(lookUpTable[j][i]);
      0022E5 C0 02            [24] 1124 	push	ar2
      0022E7 C0 03            [24] 1125 	push	ar3
      0022E9 C0 04            [24] 1126 	push	ar4
      0022EB 88 03            [24] 1127 	mov	ar3,r0
      0022ED E9               [12] 1128 	mov	a,r1
      0022EE C4               [12] 1129 	swap	a
      0022EF 54 F0            [12] 1130 	anl	a,#0xf0
      0022F1 CB               [12] 1131 	xch	a,r3
      0022F2 C4               [12] 1132 	swap	a
      0022F3 CB               [12] 1133 	xch	a,r3
      0022F4 6B               [12] 1134 	xrl	a,r3
      0022F5 CB               [12] 1135 	xch	a,r3
      0022F6 54 F0            [12] 1136 	anl	a,#0xf0
      0022F8 CB               [12] 1137 	xch	a,r3
      0022F9 6B               [12] 1138 	xrl	a,r3
      0022FA FC               [12] 1139 	mov	r4,a
      0022FB EB               [12] 1140 	mov	a,r3
      0022FC 24 6D            [12] 1141 	add	a,#_lookUpTable
      0022FE FA               [12] 1142 	mov	r2,a
      0022FF EC               [12] 1143 	mov	a,r4
      002300 34 42            [12] 1144 	addc	a,#(_lookUpTable >> 8)
      002302 FF               [12] 1145 	mov	r7,a
      002303 90 00 10         [24] 1146 	mov	dptr,#_putsLCD_i_65536_91
      002306 E0               [24] 1147 	movx	a,@dptr
      002307 FD               [12] 1148 	mov	r5,a
      002308 A3               [24] 1149 	inc	dptr
      002309 E0               [24] 1150 	movx	a,@dptr
      00230A FE               [12] 1151 	mov	r6,a
      00230B ED               [12] 1152 	mov	a,r5
      00230C 2A               [12] 1153 	add	a,r2
      00230D F5 82            [12] 1154 	mov	dpl,a
      00230F EE               [12] 1155 	mov	a,r6
      002310 3F               [12] 1156 	addc	a,r7
      002311 F5 83            [12] 1157 	mov	dph,a
      002313 E4               [12] 1158 	clr	a
      002314 93               [24] 1159 	movc	a,@a+dptr
      002315 F5 82            [12] 1160 	mov	dpl,a
      002317 C0 06            [24] 1161 	push	ar6
      002319 C0 05            [24] 1162 	push	ar5
      00231B C0 04            [24] 1163 	push	ar4
      00231D C0 03            [24] 1164 	push	ar3
      00231F C0 02            [24] 1165 	push	ar2
      002321 C0 01            [24] 1166 	push	ar1
      002323 C0 00            [24] 1167 	push	ar0
      002325 12 21 1A         [24] 1168 	lcall	_goToAddr
      002328 D0 00            [24] 1169 	pop	ar0
      00232A D0 01            [24] 1170 	pop	ar1
      00232C D0 02            [24] 1171 	pop	ar2
      00232E D0 03            [24] 1172 	pop	ar3
      002330 D0 04            [24] 1173 	pop	ar4
      002332 D0 05            [24] 1174 	pop	ar5
      002334 D0 06            [24] 1175 	pop	ar6
                                   1176 ;	lcdCommands.c:123: lcdPutCh(y[i + (j * 16)]);
      002336 EB               [12] 1177 	mov	a,r3
      002337 2D               [12] 1178 	add	a,r5
      002338 FB               [12] 1179 	mov	r3,a
      002339 EC               [12] 1180 	mov	a,r4
      00233A 3E               [12] 1181 	addc	a,r6
      00233B FC               [12] 1182 	mov	r4,a
      00233C EB               [12] 1183 	mov	a,r3
      00233D 25 0A            [12] 1184 	add	a,_putsLCD_sloc1_1_0
      00233F FB               [12] 1185 	mov	r3,a
      002340 EC               [12] 1186 	mov	a,r4
      002341 35 0B            [12] 1187 	addc	a,(_putsLCD_sloc1_1_0 + 1)
      002343 FC               [12] 1188 	mov	r4,a
      002344 AF 0C            [24] 1189 	mov	r7,(_putsLCD_sloc1_1_0 + 2)
      002346 8B 82            [24] 1190 	mov	dpl,r3
      002348 8C 83            [24] 1191 	mov	dph,r4
      00234A 8F F0            [24] 1192 	mov	b,r7
      00234C 12 40 59         [24] 1193 	lcall	__gptrget
      00234F FB               [12] 1194 	mov	r3,a
      002350 F5 82            [12] 1195 	mov	dpl,a
      002352 C0 06            [24] 1196 	push	ar6
      002354 C0 05            [24] 1197 	push	ar5
      002356 C0 04            [24] 1198 	push	ar4
      002358 C0 03            [24] 1199 	push	ar3
      00235A C0 02            [24] 1200 	push	ar2
      00235C C0 01            [24] 1201 	push	ar1
      00235E C0 00            [24] 1202 	push	ar0
      002360 12 20 F8         [24] 1203 	lcall	_lcdPutCh
      002363 D0 00            [24] 1204 	pop	ar0
      002365 D0 01            [24] 1205 	pop	ar1
      002367 D0 02            [24] 1206 	pop	ar2
      002369 D0 03            [24] 1207 	pop	ar3
      00236B D0 04            [24] 1208 	pop	ar4
      00236D D0 05            [24] 1209 	pop	ar5
      00236F D0 06            [24] 1210 	pop	ar6
                                   1211 ;	lcdCommands.c:124: i++;
      002371 90 00 10         [24] 1212 	mov	dptr,#_putsLCD_i_65536_91
      002374 74 01            [12] 1213 	mov	a,#0x01
      002376 2D               [12] 1214 	add	a,r5
      002377 F0               [24] 1215 	movx	@dptr,a
      002378 E4               [12] 1216 	clr	a
      002379 3E               [12] 1217 	addc	a,r6
      00237A A3               [24] 1218 	inc	dptr
      00237B F0               [24] 1219 	movx	@dptr,a
      00237C D0 04            [24] 1220 	pop	ar4
      00237E D0 03            [24] 1221 	pop	ar3
      002380 D0 02            [24] 1222 	pop	ar2
                                   1223 ;	lcdCommands.c:126: }
      002382 02 22 7B         [24] 1224 	ljmp	00103$
                                   1225 ;------------------------------------------------------------
                                   1226 ;Allocation info for local variables in function 'gets'
                                   1227 ;------------------------------------------------------------
                                   1228 ;s                         Allocated with name '_gets_s_65536_94'
                                   1229 ;c                         Allocated with name '_gets_c_65536_95'
                                   1230 ;count                     Allocated with name '_gets_count_65536_95'
                                   1231 ;------------------------------------------------------------
                                   1232 ;	lcdCommands.c:128: char *gets (char *s)
                                   1233 ;	-----------------------------------------
                                   1234 ;	 function gets
                                   1235 ;	-----------------------------------------
      002385                       1236 _gets:
      002385 AF F0            [24] 1237 	mov	r7,b
      002387 AE 83            [24] 1238 	mov	r6,dph
      002389 E5 82            [12] 1239 	mov	a,dpl
      00238B 90 00 12         [24] 1240 	mov	dptr,#_gets_s_65536_94
      00238E F0               [24] 1241 	movx	@dptr,a
      00238F EE               [12] 1242 	mov	a,r6
      002390 A3               [24] 1243 	inc	dptr
      002391 F0               [24] 1244 	movx	@dptr,a
      002392 EF               [12] 1245 	mov	a,r7
      002393 A3               [24] 1246 	inc	dptr
      002394 F0               [24] 1247 	movx	@dptr,a
                                   1248 ;	lcdCommands.c:131: unsigned int count = 0;
      002395 90 00 15         [24] 1249 	mov	dptr,#_gets_count_65536_95
      002398 E4               [12] 1250 	clr	a
      002399 F0               [24] 1251 	movx	@dptr,a
      00239A A3               [24] 1252 	inc	dptr
      00239B F0               [24] 1253 	movx	@dptr,a
                                   1254 ;	lcdCommands.c:133: while (1)
      00239C                       1255 00111$:
                                   1256 ;	lcdCommands.c:135: c = getchar ();
      00239C 12 30 76         [24] 1257 	lcall	_getchar
      00239F AE 82            [24] 1258 	mov	r6,dpl
      0023A1 AF 83            [24] 1259 	mov	r7,dph
                                   1260 ;	lcdCommands.c:136: switch(c)
      0023A3 BE 08 02         [24] 1261 	cjne	r6,#0x08,00139$
      0023A6 80 0D            [24] 1262 	sjmp	00101$
      0023A8                       1263 00139$:
      0023A8 BE 0A 02         [24] 1264 	cjne	r6,#0x0a,00140$
      0023AB 80 62            [24] 1265 	sjmp	00105$
      0023AD                       1266 00140$:
      0023AD BE 0D 02         [24] 1267 	cjne	r6,#0x0d,00141$
      0023B0 80 5D            [24] 1268 	sjmp	00105$
      0023B2                       1269 00141$:
      0023B2 02 24 37         [24] 1270 	ljmp	00106$
                                   1271 ;	lcdCommands.c:138: case '\b': /* backspace */
      0023B5                       1272 00101$:
                                   1273 ;	lcdCommands.c:139: if (count)
      0023B5 90 00 15         [24] 1274 	mov	dptr,#_gets_count_65536_95
      0023B8 E0               [24] 1275 	movx	a,@dptr
      0023B9 FD               [12] 1276 	mov	r5,a
      0023BA A3               [24] 1277 	inc	dptr
      0023BB E0               [24] 1278 	movx	a,@dptr
      0023BC FF               [12] 1279 	mov	r7,a
      0023BD 90 00 15         [24] 1280 	mov	dptr,#_gets_count_65536_95
      0023C0 E0               [24] 1281 	movx	a,@dptr
      0023C1 F5 F0            [12] 1282 	mov	b,a
      0023C3 A3               [24] 1283 	inc	dptr
      0023C4 E0               [24] 1284 	movx	a,@dptr
      0023C5 45 F0            [12] 1285 	orl	a,b
      0023C7 70 03            [24] 1286 	jnz	00142$
      0023C9 02 24 6F         [24] 1287 	ljmp	00107$
      0023CC                       1288 00142$:
                                   1289 ;	lcdCommands.c:141: putchar ('\b');
      0023CC 90 00 08         [24] 1290 	mov	dptr,#0x0008
      0023CF C0 07            [24] 1291 	push	ar7
      0023D1 C0 05            [24] 1292 	push	ar5
      0023D3 12 30 45         [24] 1293 	lcall	_putchar
                                   1294 ;	lcdCommands.c:142: putchar (' ');
      0023D6 90 00 20         [24] 1295 	mov	dptr,#0x0020
      0023D9 12 30 45         [24] 1296 	lcall	_putchar
                                   1297 ;	lcdCommands.c:143: putchar ('\b');
      0023DC 90 00 08         [24] 1298 	mov	dptr,#0x0008
      0023DF 12 30 45         [24] 1299 	lcall	_putchar
      0023E2 D0 05            [24] 1300 	pop	ar5
      0023E4 D0 07            [24] 1301 	pop	ar7
                                   1302 ;	lcdCommands.c:144: --s;
      0023E6 90 00 12         [24] 1303 	mov	dptr,#_gets_s_65536_94
      0023E9 E0               [24] 1304 	movx	a,@dptr
      0023EA 24 FF            [12] 1305 	add	a,#0xff
      0023EC FA               [12] 1306 	mov	r2,a
      0023ED A3               [24] 1307 	inc	dptr
      0023EE E0               [24] 1308 	movx	a,@dptr
      0023EF 34 FF            [12] 1309 	addc	a,#0xff
      0023F1 FB               [12] 1310 	mov	r3,a
      0023F2 A3               [24] 1311 	inc	dptr
      0023F3 E0               [24] 1312 	movx	a,@dptr
      0023F4 FC               [12] 1313 	mov	r4,a
      0023F5 90 00 12         [24] 1314 	mov	dptr,#_gets_s_65536_94
      0023F8 EA               [12] 1315 	mov	a,r2
      0023F9 F0               [24] 1316 	movx	@dptr,a
      0023FA EB               [12] 1317 	mov	a,r3
      0023FB A3               [24] 1318 	inc	dptr
      0023FC F0               [24] 1319 	movx	@dptr,a
      0023FD EC               [12] 1320 	mov	a,r4
      0023FE A3               [24] 1321 	inc	dptr
      0023FF F0               [24] 1322 	movx	@dptr,a
                                   1323 ;	lcdCommands.c:145: --count;
      002400 1D               [12] 1324 	dec	r5
      002401 BD FF 01         [24] 1325 	cjne	r5,#0xff,00143$
      002404 1F               [12] 1326 	dec	r7
      002405                       1327 00143$:
      002405 90 00 15         [24] 1328 	mov	dptr,#_gets_count_65536_95
      002408 ED               [12] 1329 	mov	a,r5
      002409 F0               [24] 1330 	movx	@dptr,a
      00240A EF               [12] 1331 	mov	a,r7
      00240B A3               [24] 1332 	inc	dptr
      00240C F0               [24] 1333 	movx	@dptr,a
                                   1334 ;	lcdCommands.c:147: break;
                                   1335 ;	lcdCommands.c:150: case '\r': /* CR or LF */
      00240D 80 60            [24] 1336 	sjmp	00107$
      00240F                       1337 00105$:
                                   1338 ;	lcdCommands.c:151: putchar ('\r');
      00240F 90 00 0D         [24] 1339 	mov	dptr,#0x000d
      002412 12 30 45         [24] 1340 	lcall	_putchar
                                   1341 ;	lcdCommands.c:152: putchar ('\n');
      002415 90 00 0A         [24] 1342 	mov	dptr,#0x000a
      002418 12 30 45         [24] 1343 	lcall	_putchar
                                   1344 ;	lcdCommands.c:153: *s = 0;
      00241B 90 00 12         [24] 1345 	mov	dptr,#_gets_s_65536_94
      00241E E0               [24] 1346 	movx	a,@dptr
      00241F FC               [12] 1347 	mov	r4,a
      002420 A3               [24] 1348 	inc	dptr
      002421 E0               [24] 1349 	movx	a,@dptr
      002422 FD               [12] 1350 	mov	r5,a
      002423 A3               [24] 1351 	inc	dptr
      002424 E0               [24] 1352 	movx	a,@dptr
      002425 FF               [12] 1353 	mov	r7,a
      002426 8C 82            [24] 1354 	mov	dpl,r4
      002428 8D 83            [24] 1355 	mov	dph,r5
      00242A 8F F0            [24] 1356 	mov	b,r7
      00242C E4               [12] 1357 	clr	a
      00242D 12 32 92         [24] 1358 	lcall	__gptrput
                                   1359 ;	lcdCommands.c:154: return s;
      002430 8C 82            [24] 1360 	mov	dpl,r4
      002432 8D 83            [24] 1361 	mov	dph,r5
      002434 8F F0            [24] 1362 	mov	b,r7
                                   1363 ;	lcdCommands.c:156: default:
      002436 22               [24] 1364 	ret
      002437                       1365 00106$:
                                   1366 ;	lcdCommands.c:157: *s++ = c;
      002437 90 00 12         [24] 1367 	mov	dptr,#_gets_s_65536_94
      00243A E0               [24] 1368 	movx	a,@dptr
      00243B FC               [12] 1369 	mov	r4,a
      00243C A3               [24] 1370 	inc	dptr
      00243D E0               [24] 1371 	movx	a,@dptr
      00243E FD               [12] 1372 	mov	r5,a
      00243F A3               [24] 1373 	inc	dptr
      002440 E0               [24] 1374 	movx	a,@dptr
      002441 FF               [12] 1375 	mov	r7,a
      002442 8C 82            [24] 1376 	mov	dpl,r4
      002444 8D 83            [24] 1377 	mov	dph,r5
      002446 8F F0            [24] 1378 	mov	b,r7
      002448 EE               [12] 1379 	mov	a,r6
      002449 12 32 92         [24] 1380 	lcall	__gptrput
      00244C 90 00 12         [24] 1381 	mov	dptr,#_gets_s_65536_94
      00244F 74 01            [12] 1382 	mov	a,#0x01
      002451 2C               [12] 1383 	add	a,r4
      002452 F0               [24] 1384 	movx	@dptr,a
      002453 E4               [12] 1385 	clr	a
      002454 3D               [12] 1386 	addc	a,r5
      002455 A3               [24] 1387 	inc	dptr
      002456 F0               [24] 1388 	movx	@dptr,a
      002457 EF               [12] 1389 	mov	a,r7
      002458 A3               [24] 1390 	inc	dptr
      002459 F0               [24] 1391 	movx	@dptr,a
                                   1392 ;	lcdCommands.c:158: ++count;
      00245A 90 00 15         [24] 1393 	mov	dptr,#_gets_count_65536_95
      00245D E0               [24] 1394 	movx	a,@dptr
      00245E 24 01            [12] 1395 	add	a,#0x01
      002460 F0               [24] 1396 	movx	@dptr,a
      002461 A3               [24] 1397 	inc	dptr
      002462 E0               [24] 1398 	movx	a,@dptr
      002463 34 00            [12] 1399 	addc	a,#0x00
      002465 F0               [24] 1400 	movx	@dptr,a
                                   1401 ;	lcdCommands.c:159: putchar (c);
      002466 7F 00            [12] 1402 	mov	r7,#0x00
      002468 8E 82            [24] 1403 	mov	dpl,r6
      00246A 8F 83            [24] 1404 	mov	dph,r7
      00246C 12 30 45         [24] 1405 	lcall	_putchar
                                   1406 ;	lcdCommands.c:161: }
      00246F                       1407 00107$:
                                   1408 ;	lcdCommands.c:162: if (count == 48)
      00246F 90 00 15         [24] 1409 	mov	dptr,#_gets_count_65536_95
      002472 E0               [24] 1410 	movx	a,@dptr
      002473 FE               [12] 1411 	mov	r6,a
      002474 A3               [24] 1412 	inc	dptr
      002475 E0               [24] 1413 	movx	a,@dptr
      002476 FF               [12] 1414 	mov	r7,a
      002477 BE 30 05         [24] 1415 	cjne	r6,#0x30,00144$
      00247A BF 00 02         [24] 1416 	cjne	r7,#0x00,00144$
      00247D 80 03            [24] 1417 	sjmp	00145$
      00247F                       1418 00144$:
      00247F 02 23 9C         [24] 1419 	ljmp	00111$
      002482                       1420 00145$:
                                   1421 ;	lcdCommands.c:164: printf("\n\rPlease Input a maximum of 48 characters\n\r");
      002482 74 D0            [12] 1422 	mov	a,#___str_2
      002484 C0 E0            [24] 1423 	push	acc
      002486 74 42            [12] 1424 	mov	a,#(___str_2 >> 8)
      002488 C0 E0            [24] 1425 	push	acc
      00248A 74 80            [12] 1426 	mov	a,#0x80
      00248C C0 E0            [24] 1427 	push	acc
      00248E 12 36 37         [24] 1428 	lcall	_printf
      002491 15 81            [12] 1429 	dec	sp
      002493 15 81            [12] 1430 	dec	sp
      002495 15 81            [12] 1431 	dec	sp
                                   1432 ;	lcdCommands.c:165: break;
                                   1433 ;	lcdCommands.c:168: }
      002497 22               [24] 1434 	ret
                                   1435 ;------------------------------------------------------------
                                   1436 ;Allocation info for local variables in function 'ramDump'
                                   1437 ;------------------------------------------------------------
                                   1438 ;i                         Allocated with name '_ramDump_i_65537_101'
                                   1439 ;j                         Allocated with name '_ramDump_j_65537_101'
                                   1440 ;x                         Allocated with name '_ramDump_x_327682_106'
                                   1441 ;x                         Allocated with name '_ramDump_x_327682_111'
                                   1442 ;------------------------------------------------------------
                                   1443 ;	lcdCommands.c:170: void ramDump()
                                   1444 ;	-----------------------------------------
                                   1445 ;	 function ramDump
                                   1446 ;	-----------------------------------------
      002498                       1447 _ramDump:
                                   1448 ;	lcdCommands.c:172: lcdClear();
      002498 12 21 0D         [24] 1449 	lcall	_lcdClear
                                   1450 ;	lcdCommands.c:175: printf_tiny("\n\rDDRAM Contents\n\r");
      00249B 74 FC            [12] 1451 	mov	a,#___str_3
      00249D C0 E0            [24] 1452 	push	acc
      00249F 74 42            [12] 1453 	mov	a,#(___str_3 >> 8)
      0024A1 C0 E0            [24] 1454 	push	acc
      0024A3 12 32 AD         [24] 1455 	lcall	_printf_tiny
      0024A6 15 81            [12] 1456 	dec	sp
      0024A8 15 81            [12] 1457 	dec	sp
                                   1458 ;	lcdCommands.c:176: for (i = 0; i <= 0x5F; i += 16)      //Print 64 ASCII characters in each line
      0024AA 90 00 17         [24] 1459 	mov	dptr,#_ramDump_i_65537_101
      0024AD E4               [12] 1460 	clr	a
      0024AE F0               [24] 1461 	movx	@dptr,a
      0024AF                       1462 00109$:
                                   1463 ;	lcdCommands.c:178: printf("%2x: ",i);
      0024AF 90 00 17         [24] 1464 	mov	dptr,#_ramDump_i_65537_101
      0024B2 E0               [24] 1465 	movx	a,@dptr
      0024B3 FF               [12] 1466 	mov	r7,a
      0024B4 FD               [12] 1467 	mov	r5,a
      0024B5 7E 00            [12] 1468 	mov	r6,#0x00
      0024B7 C0 07            [24] 1469 	push	ar7
      0024B9 C0 05            [24] 1470 	push	ar5
      0024BB C0 06            [24] 1471 	push	ar6
      0024BD 74 0F            [12] 1472 	mov	a,#___str_4
      0024BF C0 E0            [24] 1473 	push	acc
      0024C1 74 43            [12] 1474 	mov	a,#(___str_4 >> 8)
      0024C3 C0 E0            [24] 1475 	push	acc
      0024C5 74 80            [12] 1476 	mov	a,#0x80
      0024C7 C0 E0            [24] 1477 	push	acc
      0024C9 12 36 37         [24] 1478 	lcall	_printf
      0024CC E5 81            [12] 1479 	mov	a,sp
      0024CE 24 FB            [12] 1480 	add	a,#0xfb
      0024D0 F5 81            [12] 1481 	mov	sp,a
      0024D2 D0 07            [24] 1482 	pop	ar7
                                   1483 ;	lcdCommands.c:179: for (j = i; j < (i+16) && j <= 0x5F; j++)    //Print the contents of buffer in ASCII
      0024D4 8F 06            [24] 1484 	mov	ar6,r7
      0024D6                       1485 00107$:
      0024D6 8E 04            [24] 1486 	mov	ar4,r6
      0024D8 7D 00            [12] 1487 	mov	r5,#0x00
      0024DA 74 10            [12] 1488 	mov	a,#0x10
      0024DC 2C               [12] 1489 	add	a,r4
      0024DD FC               [12] 1490 	mov	r4,a
      0024DE E4               [12] 1491 	clr	a
      0024DF 3D               [12] 1492 	addc	a,r5
      0024E0 FD               [12] 1493 	mov	r5,a
      0024E1 8F 02            [24] 1494 	mov	ar2,r7
      0024E3 7B 00            [12] 1495 	mov	r3,#0x00
      0024E5 C3               [12] 1496 	clr	c
      0024E6 EA               [12] 1497 	mov	a,r2
      0024E7 9C               [12] 1498 	subb	a,r4
      0024E8 EB               [12] 1499 	mov	a,r3
      0024E9 64 80            [12] 1500 	xrl	a,#0x80
      0024EB 8D F0            [24] 1501 	mov	b,r5
      0024ED 63 F0 80         [24] 1502 	xrl	b,#0x80
      0024F0 95 F0            [12] 1503 	subb	a,b
      0024F2 50 3A            [24] 1504 	jnc	00101$
      0024F4 EF               [12] 1505 	mov	a,r7
      0024F5 24 A0            [12] 1506 	add	a,#0xff - 0x5f
      0024F7 40 35            [24] 1507 	jc	00101$
                                   1508 ;	lcdCommands.c:181: lcdGeneral = 0x80 | j;
      0024F9 90 F0 00         [24] 1509 	mov	dptr,#_lcdGeneral
      0024FC 74 80            [12] 1510 	mov	a,#0x80
      0024FE 4A               [12] 1511 	orl	a,r2
      0024FF F0               [24] 1512 	movx	@dptr,a
      002500 EB               [12] 1513 	mov	a,r3
      002501 A3               [24] 1514 	inc	dptr
      002502 F0               [24] 1515 	movx	@dptr,a
                                   1516 ;	lcdCommands.c:182: uint8_t x = readLCD();
      002503 C0 07            [24] 1517 	push	ar7
      002505 C0 06            [24] 1518 	push	ar6
      002507 12 22 38         [24] 1519 	lcall	_readLCD
      00250A AD 82            [24] 1520 	mov	r5,dpl
                                   1521 ;	lcdCommands.c:183: printf("%2x ", x);
      00250C 7C 00            [12] 1522 	mov	r4,#0x00
      00250E C0 05            [24] 1523 	push	ar5
      002510 C0 04            [24] 1524 	push	ar4
      002512 74 15            [12] 1525 	mov	a,#___str_5
      002514 C0 E0            [24] 1526 	push	acc
      002516 74 43            [12] 1527 	mov	a,#(___str_5 >> 8)
      002518 C0 E0            [24] 1528 	push	acc
      00251A 74 80            [12] 1529 	mov	a,#0x80
      00251C C0 E0            [24] 1530 	push	acc
      00251E 12 36 37         [24] 1531 	lcall	_printf
      002521 E5 81            [12] 1532 	mov	a,sp
      002523 24 FB            [12] 1533 	add	a,#0xfb
      002525 F5 81            [12] 1534 	mov	sp,a
      002527 D0 06            [24] 1535 	pop	ar6
      002529 D0 07            [24] 1536 	pop	ar7
                                   1537 ;	lcdCommands.c:179: for (j = i; j < (i+16) && j <= 0x5F; j++)    //Print the contents of buffer in ASCII
      00252B 0F               [12] 1538 	inc	r7
      00252C 80 A8            [24] 1539 	sjmp	00107$
      00252E                       1540 00101$:
                                   1541 ;	lcdCommands.c:185: printf_tiny("\n\r");
      00252E 74 1A            [12] 1542 	mov	a,#___str_6
      002530 C0 E0            [24] 1543 	push	acc
      002532 74 43            [12] 1544 	mov	a,#(___str_6 >> 8)
      002534 C0 E0            [24] 1545 	push	acc
      002536 12 32 AD         [24] 1546 	lcall	_printf_tiny
      002539 15 81            [12] 1547 	dec	sp
      00253B 15 81            [12] 1548 	dec	sp
                                   1549 ;	lcdCommands.c:176: for (i = 0; i <= 0x5F; i += 16)      //Print 64 ASCII characters in each line
      00253D 90 00 17         [24] 1550 	mov	dptr,#_ramDump_i_65537_101
      002540 E0               [24] 1551 	movx	a,@dptr
      002541 FF               [12] 1552 	mov	r7,a
      002542 24 10            [12] 1553 	add	a,#0x10
      002544 F0               [24] 1554 	movx	@dptr,a
      002545 E0               [24] 1555 	movx	a,@dptr
      002546 FF               [12] 1556 	mov  r7,a
      002547 24 A0            [12] 1557 	add	a,#0xff - 0x5f
      002549 40 03            [24] 1558 	jc	00154$
      00254B 02 24 AF         [24] 1559 	ljmp	00109$
      00254E                       1560 00154$:
                                   1561 ;	lcdCommands.c:187: printf_tiny("\n\rCGRAM Contents\n\r");
      00254E 74 1D            [12] 1562 	mov	a,#___str_7
      002550 C0 E0            [24] 1563 	push	acc
      002552 74 43            [12] 1564 	mov	a,#(___str_7 >> 8)
      002554 C0 E0            [24] 1565 	push	acc
      002556 12 32 AD         [24] 1566 	lcall	_printf_tiny
      002559 15 81            [12] 1567 	dec	sp
      00255B 15 81            [12] 1568 	dec	sp
                                   1569 ;	lcdCommands.c:188: for (i = 0; i <= 7; i ++)      //Print 64 ASCII characters in each line
      00255D 7F 00            [12] 1570 	mov	r7,#0x00
      00255F                       1571 00113$:
                                   1572 ;	lcdCommands.c:190: printf_tiny("\n\rCharacter %d\n\r",i);
      00255F 8F 05            [24] 1573 	mov	ar5,r7
      002561 7E 00            [12] 1574 	mov	r6,#0x00
      002563 C0 07            [24] 1575 	push	ar7
      002565 C0 05            [24] 1576 	push	ar5
      002567 C0 06            [24] 1577 	push	ar6
      002569 74 30            [12] 1578 	mov	a,#___str_8
      00256B C0 E0            [24] 1579 	push	acc
      00256D 74 43            [12] 1580 	mov	a,#(___str_8 >> 8)
      00256F C0 E0            [24] 1581 	push	acc
      002571 12 32 AD         [24] 1582 	lcall	_printf_tiny
      002574 E5 81            [12] 1583 	mov	a,sp
      002576 24 FC            [12] 1584 	add	a,#0xfc
      002578 F5 81            [12] 1585 	mov	sp,a
      00257A D0 07            [24] 1586 	pop	ar7
                                   1587 ;	lcdCommands.c:191: for (j = 0; j <= 7; j++)    //Print the contents of buffer in ASCII
      00257C 8F 06            [24] 1588 	mov	ar6,r7
      00257E 7D 00            [12] 1589 	mov	r5,#0x00
      002580                       1590 00111$:
                                   1591 ;	lcdCommands.c:193: printf("Row %2x: ", j);
      002580 8D 03            [24] 1592 	mov	ar3,r5
      002582 7C 00            [12] 1593 	mov	r4,#0x00
      002584 C0 06            [24] 1594 	push	ar6
      002586 C0 05            [24] 1595 	push	ar5
      002588 C0 04            [24] 1596 	push	ar4
      00258A C0 03            [24] 1597 	push	ar3
      00258C C0 03            [24] 1598 	push	ar3
      00258E C0 04            [24] 1599 	push	ar4
      002590 74 41            [12] 1600 	mov	a,#___str_9
      002592 C0 E0            [24] 1601 	push	acc
      002594 74 43            [12] 1602 	mov	a,#(___str_9 >> 8)
      002596 C0 E0            [24] 1603 	push	acc
      002598 74 80            [12] 1604 	mov	a,#0x80
      00259A C0 E0            [24] 1605 	push	acc
      00259C 12 36 37         [24] 1606 	lcall	_printf
      00259F E5 81            [12] 1607 	mov	a,sp
      0025A1 24 FB            [12] 1608 	add	a,#0xfb
      0025A3 F5 81            [12] 1609 	mov	sp,a
      0025A5 D0 03            [24] 1610 	pop	ar3
      0025A7 D0 04            [24] 1611 	pop	ar4
      0025A9 D0 05            [24] 1612 	pop	ar5
      0025AB D0 06            [24] 1613 	pop	ar6
                                   1614 ;	lcdCommands.c:194: lcdGeneral = 0x40 | j | (i << 3);
      0025AD 43 03 40         [24] 1615 	orl	ar3,#0x40
      0025B0 8E 01            [24] 1616 	mov	ar1,r6
      0025B2 E4               [12] 1617 	clr	a
      0025B3 03               [12] 1618 	rr	a
      0025B4 54 F8            [12] 1619 	anl	a,#0xf8
      0025B6 C9               [12] 1620 	xch	a,r1
      0025B7 C4               [12] 1621 	swap	a
      0025B8 03               [12] 1622 	rr	a
      0025B9 C9               [12] 1623 	xch	a,r1
      0025BA 69               [12] 1624 	xrl	a,r1
      0025BB C9               [12] 1625 	xch	a,r1
      0025BC 54 F8            [12] 1626 	anl	a,#0xf8
      0025BE C9               [12] 1627 	xch	a,r1
      0025BF 69               [12] 1628 	xrl	a,r1
      0025C0 FA               [12] 1629 	mov	r2,a
      0025C1 90 F0 00         [24] 1630 	mov	dptr,#_lcdGeneral
      0025C4 E9               [12] 1631 	mov	a,r1
      0025C5 4B               [12] 1632 	orl	a,r3
      0025C6 F0               [24] 1633 	movx	@dptr,a
      0025C7 EA               [12] 1634 	mov	a,r2
      0025C8 4C               [12] 1635 	orl	a,r4
      0025C9 A3               [24] 1636 	inc	dptr
      0025CA F0               [24] 1637 	movx	@dptr,a
                                   1638 ;	lcdCommands.c:195: uint8_t x = readLCD();
      0025CB C0 06            [24] 1639 	push	ar6
      0025CD C0 05            [24] 1640 	push	ar5
      0025CF 12 22 38         [24] 1641 	lcall	_readLCD
      0025D2 AC 82            [24] 1642 	mov	r4,dpl
                                   1643 ;	lcdCommands.c:196: printf("%2x ", x);
      0025D4 7B 00            [12] 1644 	mov	r3,#0x00
      0025D6 C0 04            [24] 1645 	push	ar4
      0025D8 C0 03            [24] 1646 	push	ar3
      0025DA 74 15            [12] 1647 	mov	a,#___str_5
      0025DC C0 E0            [24] 1648 	push	acc
      0025DE 74 43            [12] 1649 	mov	a,#(___str_5 >> 8)
      0025E0 C0 E0            [24] 1650 	push	acc
      0025E2 74 80            [12] 1651 	mov	a,#0x80
      0025E4 C0 E0            [24] 1652 	push	acc
      0025E6 12 36 37         [24] 1653 	lcall	_printf
      0025E9 E5 81            [12] 1654 	mov	a,sp
      0025EB 24 FB            [12] 1655 	add	a,#0xfb
      0025ED F5 81            [12] 1656 	mov	sp,a
                                   1657 ;	lcdCommands.c:197: printf_tiny("\n\r");
      0025EF 74 1A            [12] 1658 	mov	a,#___str_6
      0025F1 C0 E0            [24] 1659 	push	acc
      0025F3 74 43            [12] 1660 	mov	a,#(___str_6 >> 8)
      0025F5 C0 E0            [24] 1661 	push	acc
      0025F7 12 32 AD         [24] 1662 	lcall	_printf_tiny
      0025FA 15 81            [12] 1663 	dec	sp
      0025FC 15 81            [12] 1664 	dec	sp
      0025FE D0 05            [24] 1665 	pop	ar5
      002600 D0 06            [24] 1666 	pop	ar6
                                   1667 ;	lcdCommands.c:191: for (j = 0; j <= 7; j++)    //Print the contents of buffer in ASCII
      002602 0D               [12] 1668 	inc	r5
      002603 ED               [12] 1669 	mov	a,r5
      002604 24 F8            [12] 1670 	add	a,#0xff - 0x07
      002606 40 03            [24] 1671 	jc	00155$
      002608 02 25 80         [24] 1672 	ljmp	00111$
      00260B                       1673 00155$:
                                   1674 ;	lcdCommands.c:199: printf_tiny("\n\r");
      00260B C0 06            [24] 1675 	push	ar6
      00260D 74 1A            [12] 1676 	mov	a,#___str_6
      00260F C0 E0            [24] 1677 	push	acc
      002611 74 43            [12] 1678 	mov	a,#(___str_6 >> 8)
      002613 C0 E0            [24] 1679 	push	acc
      002615 12 32 AD         [24] 1680 	lcall	_printf_tiny
      002618 15 81            [12] 1681 	dec	sp
      00261A 15 81            [12] 1682 	dec	sp
      00261C D0 06            [24] 1683 	pop	ar6
                                   1684 ;	lcdCommands.c:188: for (i = 0; i <= 7; i ++)      //Print 64 ASCII characters in each line
      00261E EE               [12] 1685 	mov	a,r6
      00261F 04               [12] 1686 	inc	a
      002620 FF               [12] 1687 	mov  r7,a
      002621 24 F8            [12] 1688 	add	a,#0xff - 0x07
      002623 40 03            [24] 1689 	jc	00156$
      002625 02 25 5F         [24] 1690 	ljmp	00113$
      002628                       1691 00156$:
                                   1692 ;	lcdCommands.c:201: }
      002628 22               [24] 1693 	ret
                                   1694 ;------------------------------------------------------------
                                   1695 ;Allocation info for local variables in function 'gamePacman'
                                   1696 ;------------------------------------------------------------
                                   1697 ;abcd                      Allocated with name '_gamePacman_abcd_65537_113'
                                   1698 ;ch                        Allocated with name '_gamePacman_ch_65538_115'
                                   1699 ;i                         Allocated with name '_gamePacman_i_65538_115'
                                   1700 ;count                     Allocated with name '_gamePacman_count_65538_115'
                                   1701 ;checkEnter                Allocated with name '_gamePacman_checkEnter_196611_119'
                                   1702 ;checkEnter1               Allocated with name '_gamePacman_checkEnter1_196611_123'
                                   1703 ;------------------------------------------------------------
                                   1704 ;	lcdCommands.c:203: void gamePacman()
                                   1705 ;	-----------------------------------------
                                   1706 ;	 function gamePacman
                                   1707 ;	-----------------------------------------
      002629                       1708 _gamePacman:
                                   1709 ;	lcdCommands.c:205: lcdClear();
      002629 12 21 0D         [24] 1710 	lcall	_lcdClear
                                   1711 ;	lcdCommands.c:207: putsLCD("WELCOME 2 PACMANPRESS G TO START");
      00262C 90 43 4B         [24] 1712 	mov	dptr,#___str_10
      00262F 75 F0 80         [24] 1713 	mov	b,#0x80
      002632 12 22 4C         [24] 1714 	lcall	_putsLCD
                                   1715 ;	lcdCommands.c:208: do{
      002635                       1716 00101$:
                                   1717 ;	lcdCommands.c:210: abcd = getchar();
      002635 12 30 76         [24] 1718 	lcall	_getchar
      002638 AE 82            [24] 1719 	mov	r6,dpl
                                   1720 ;	lcdCommands.c:211: putchar(abcd);
      00263A 8E 05            [24] 1721 	mov	ar5,r6
      00263C 7F 00            [12] 1722 	mov	r7,#0x00
      00263E 8D 82            [24] 1723 	mov	dpl,r5
      002640 8F 83            [24] 1724 	mov	dph,r7
      002642 C0 06            [24] 1725 	push	ar6
      002644 12 30 45         [24] 1726 	lcall	_putchar
      002647 D0 06            [24] 1727 	pop	ar6
                                   1728 ;	lcdCommands.c:212: }while(abcd != 'g');
      002649 BE 67 E9         [24] 1729 	cjne	r6,#0x67,00101$
                                   1730 ;	lcdCommands.c:214: int i = 1;
      00264C 90 00 18         [24] 1731 	mov	dptr,#_gamePacman_i_65538_115
      00264F 74 01            [12] 1732 	mov	a,#0x01
      002651 F0               [24] 1733 	movx	@dptr,a
      002652 E4               [12] 1734 	clr	a
      002653 A3               [24] 1735 	inc	dptr
      002654 F0               [24] 1736 	movx	@dptr,a
                                   1737 ;	lcdCommands.c:215: uint8_t count = 0;
      002655 90 00 1A         [24] 1738 	mov	dptr,#_gamePacman_count_65538_115
      002658 F0               [24] 1739 	movx	@dptr,a
                                   1740 ;	lcdCommands.c:216: lcdClear();
      002659 12 21 0D         [24] 1741 	lcall	_lcdClear
                                   1742 ;	lcdCommands.c:217: makePacmanRight();
      00265C 12 29 30         [24] 1743 	lcall	_makePacmanRight
                                   1744 ;	lcdCommands.c:218: makePacmanLeft();
      00265F 12 2A 16         [24] 1745 	lcall	_makePacmanLeft
                                   1746 ;	lcdCommands.c:219: goToAddr(lookUpTable[0][4]);
      002662 90 42 71         [24] 1747 	mov	dptr,#(_lookUpTable + 0x0004)
      002665 E4               [12] 1748 	clr	a
      002666 93               [24] 1749 	movc	a,@a+dptr
      002667 F5 82            [12] 1750 	mov	dpl,a
      002669 12 21 1A         [24] 1751 	lcall	_goToAddr
                                   1752 ;	lcdCommands.c:220: lcdPutCh('*');
      00266C 75 82 2A         [24] 1753 	mov	dpl,#0x2a
      00266F 12 20 F8         [24] 1754 	lcall	_lcdPutCh
                                   1755 ;	lcdCommands.c:221: goToAddr(lookUpTable[0][5]);
      002672 90 42 72         [24] 1756 	mov	dptr,#(_lookUpTable + 0x0005)
      002675 E4               [12] 1757 	clr	a
      002676 93               [24] 1758 	movc	a,@a+dptr
      002677 F5 82            [12] 1759 	mov	dpl,a
      002679 12 21 1A         [24] 1760 	lcall	_goToAddr
                                   1761 ;	lcdCommands.c:222: lcdPutCh('*');
      00267C 75 82 2A         [24] 1762 	mov	dpl,#0x2a
      00267F 12 20 F8         [24] 1763 	lcall	_lcdPutCh
                                   1764 ;	lcdCommands.c:223: goToAddr(lookUpTable[0][8]);
      002682 90 42 75         [24] 1765 	mov	dptr,#(_lookUpTable + 0x0008)
      002685 E4               [12] 1766 	clr	a
      002686 93               [24] 1767 	movc	a,@a+dptr
      002687 F5 82            [12] 1768 	mov	dpl,a
      002689 12 21 1A         [24] 1769 	lcall	_goToAddr
                                   1770 ;	lcdCommands.c:224: lcdPutCh('*');
      00268C 75 82 2A         [24] 1771 	mov	dpl,#0x2a
      00268F 12 20 F8         [24] 1772 	lcall	_lcdPutCh
                                   1773 ;	lcdCommands.c:225: goToAddr(lookUpTable[0][12]);
      002692 90 42 79         [24] 1774 	mov	dptr,#(_lookUpTable + 0x000c)
      002695 E4               [12] 1775 	clr	a
      002696 93               [24] 1776 	movc	a,@a+dptr
      002697 F5 82            [12] 1777 	mov	dpl,a
      002699 12 21 1A         [24] 1778 	lcall	_goToAddr
                                   1779 ;	lcdCommands.c:226: lcdPutCh('*');
      00269C 75 82 2A         [24] 1780 	mov	dpl,#0x2a
      00269F 12 20 F8         [24] 1781 	lcall	_lcdPutCh
                                   1782 ;	lcdCommands.c:227: goToAddr(lookUpTable[0][13]);
      0026A2 90 42 7A         [24] 1783 	mov	dptr,#(_lookUpTable + 0x000d)
      0026A5 E4               [12] 1784 	clr	a
      0026A6 93               [24] 1785 	movc	a,@a+dptr
      0026A7 F5 82            [12] 1786 	mov	dpl,a
      0026A9 12 21 1A         [24] 1787 	lcall	_goToAddr
                                   1788 ;	lcdCommands.c:228: lcdPutCh('*');
      0026AC 75 82 2A         [24] 1789 	mov	dpl,#0x2a
      0026AF 12 20 F8         [24] 1790 	lcall	_lcdPutCh
                                   1791 ;	lcdCommands.c:229: goToAddr(lookUpTable[0][14]);
      0026B2 90 42 7B         [24] 1792 	mov	dptr,#(_lookUpTable + 0x000e)
      0026B5 E4               [12] 1793 	clr	a
      0026B6 93               [24] 1794 	movc	a,@a+dptr
      0026B7 F5 82            [12] 1795 	mov	dpl,a
      0026B9 12 21 1A         [24] 1796 	lcall	_goToAddr
                                   1797 ;	lcdCommands.c:230: lcdPutCh('*');
      0026BC 75 82 2A         [24] 1798 	mov	dpl,#0x2a
      0026BF 12 20 F8         [24] 1799 	lcall	_lcdPutCh
                                   1800 ;	lcdCommands.c:231: goToAddr(lookUpTable[1][2]);
      0026C2 90 42 7F         [24] 1801 	mov	dptr,#(_lookUpTable + 0x0012)
      0026C5 E4               [12] 1802 	clr	a
      0026C6 93               [24] 1803 	movc	a,@a+dptr
      0026C7 F5 82            [12] 1804 	mov	dpl,a
      0026C9 12 21 1A         [24] 1805 	lcall	_goToAddr
                                   1806 ;	lcdCommands.c:232: lcdPutCh('*');
      0026CC 75 82 2A         [24] 1807 	mov	dpl,#0x2a
      0026CF 12 20 F8         [24] 1808 	lcall	_lcdPutCh
                                   1809 ;	lcdCommands.c:233: goToAddr(lookUpTable[1][3]);
      0026D2 90 42 80         [24] 1810 	mov	dptr,#(_lookUpTable + 0x0013)
      0026D5 E4               [12] 1811 	clr	a
      0026D6 93               [24] 1812 	movc	a,@a+dptr
      0026D7 F5 82            [12] 1813 	mov	dpl,a
      0026D9 12 21 1A         [24] 1814 	lcall	_goToAddr
                                   1815 ;	lcdCommands.c:234: lcdPutCh('*');
      0026DC 75 82 2A         [24] 1816 	mov	dpl,#0x2a
      0026DF 12 20 F8         [24] 1817 	lcall	_lcdPutCh
                                   1818 ;	lcdCommands.c:235: goToAddr(lookUpTable[1][12]);
      0026E2 90 42 89         [24] 1819 	mov	dptr,#(_lookUpTable + 0x001c)
      0026E5 E4               [12] 1820 	clr	a
      0026E6 93               [24] 1821 	movc	a,@a+dptr
      0026E7 F5 82            [12] 1822 	mov	dpl,a
      0026E9 12 21 1A         [24] 1823 	lcall	_goToAddr
                                   1824 ;	lcdCommands.c:236: lcdPutCh('*');
      0026EC 75 82 2A         [24] 1825 	mov	dpl,#0x2a
      0026EF 12 20 F8         [24] 1826 	lcall	_lcdPutCh
                                   1827 ;	lcdCommands.c:237: printf_tiny("\n\rEnter w to go up, s to go down, a to go left and d to go right and q to quit\n\r");
      0026F2 74 6C            [12] 1828 	mov	a,#___str_11
      0026F4 C0 E0            [24] 1829 	push	acc
      0026F6 74 43            [12] 1830 	mov	a,#(___str_11 >> 8)
      0026F8 C0 E0            [24] 1831 	push	acc
      0026FA 12 32 AD         [24] 1832 	lcall	_printf_tiny
      0026FD 15 81            [12] 1833 	dec	sp
      0026FF 15 81            [12] 1834 	dec	sp
                                   1835 ;	lcdCommands.c:238: do{
      002701                       1836 00118$:
                                   1837 ;	lcdCommands.c:239: goToAddr(lookUpTable[3][0]);
      002701 90 42 9D         [24] 1838 	mov	dptr,#(_lookUpTable + 0x0030)
      002704 E4               [12] 1839 	clr	a
      002705 93               [24] 1840 	movc	a,@a+dptr
      002706 F5 82            [12] 1841 	mov	dpl,a
      002708 12 21 1A         [24] 1842 	lcall	_goToAddr
                                   1843 ;	lcdCommands.c:240: lcdPutCh(count + '0');
      00270B 90 00 1A         [24] 1844 	mov	dptr,#_gamePacman_count_65538_115
      00270E E0               [24] 1845 	movx	a,@dptr
      00270F FF               [12] 1846 	mov	r7,a
      002710 24 30            [12] 1847 	add	a,#0x30
      002712 F5 82            [12] 1848 	mov	dpl,a
      002714 C0 07            [24] 1849 	push	ar7
      002716 12 20 F8         [24] 1850 	lcall	_lcdPutCh
      002719 D0 07            [24] 1851 	pop	ar7
                                   1852 ;	lcdCommands.c:241: if(count == 9)
      00271B BF 09 0F         [24] 1853 	cjne	r7,#0x09,00105$
                                   1854 ;	lcdCommands.c:243: lcdClear();
      00271E 12 21 0D         [24] 1855 	lcall	_lcdClear
                                   1856 ;	lcdCommands.c:244: putsLCD("GAME OVER! PRESS p to restart");
      002721 90 43 BD         [24] 1857 	mov	dptr,#___str_12
      002724 75 F0 80         [24] 1858 	mov	b,#0x80
      002727 12 22 4C         [24] 1859 	lcall	_putsLCD
                                   1860 ;	lcdCommands.c:245: printMenu();
                                   1861 ;	lcdCommands.c:246: break;
      00272A 02 2C D6         [24] 1862 	ljmp	_printMenu
      00272D                       1863 00105$:
                                   1864 ;	lcdCommands.c:249: ch = getchar();
      00272D C0 07            [24] 1865 	push	ar7
      00272F 12 30 76         [24] 1866 	lcall	_getchar
      002732 AD 82            [24] 1867 	mov	r5,dpl
      002734 AE 83            [24] 1868 	mov	r6,dph
      002736 D0 07            [24] 1869 	pop	ar7
                                   1870 ;	lcdCommands.c:250: if(ch == 'd')
      002738 BD 64 02         [24] 1871 	cjne	r5,#0x64,00167$
      00273B 80 03            [24] 1872 	sjmp	00168$
      00273D                       1873 00167$:
      00273D 02 28 1A         [24] 1874 	ljmp	00111$
      002740                       1875 00168$:
                                   1876 ;	lcdCommands.c:252: goToAddr(lookUpTable[0][i-1]);
      002740 90 00 18         [24] 1877 	mov	dptr,#_gamePacman_i_65538_115
      002743 E0               [24] 1878 	movx	a,@dptr
      002744 FC               [12] 1879 	mov	r4,a
      002745 A3               [24] 1880 	inc	dptr
      002746 E0               [24] 1881 	movx	a,@dptr
      002747 FE               [12] 1882 	mov	r6,a
      002748 8C 03            [24] 1883 	mov	ar3,r4
      00274A EB               [12] 1884 	mov	a,r3
      00274B 14               [12] 1885 	dec	a
      00274C 90 42 6D         [24] 1886 	mov	dptr,#_lookUpTable
      00274F 93               [24] 1887 	movc	a,@a+dptr
      002750 F5 82            [12] 1888 	mov	dpl,a
      002752 C0 07            [24] 1889 	push	ar7
      002754 C0 06            [24] 1890 	push	ar6
      002756 C0 05            [24] 1891 	push	ar5
      002758 C0 04            [24] 1892 	push	ar4
      00275A 12 21 1A         [24] 1893 	lcall	_goToAddr
                                   1894 ;	lcdCommands.c:253: busyWait();
      00275D 12 20 8B         [24] 1895 	lcall	_busyWait
                                   1896 ;	lcdCommands.c:254: lcdPutCh(' ');
      002760 75 82 20         [24] 1897 	mov	dpl,#0x20
      002763 12 20 F8         [24] 1898 	lcall	_lcdPutCh
                                   1899 ;	lcdCommands.c:255: busyWait();
      002766 12 20 8B         [24] 1900 	lcall	_busyWait
      002769 D0 04            [24] 1901 	pop	ar4
      00276B D0 05            [24] 1902 	pop	ar5
      00276D D0 06            [24] 1903 	pop	ar6
                                   1904 ;	lcdCommands.c:256: goToAddr(lookUpTable[0][i]);
      00276F EC               [12] 1905 	mov	a,r4
      002770 24 6D            [12] 1906 	add	a,#_lookUpTable
      002772 F5 82            [12] 1907 	mov	dpl,a
      002774 EE               [12] 1908 	mov	a,r6
      002775 34 42            [12] 1909 	addc	a,#(_lookUpTable >> 8)
      002777 F5 83            [12] 1910 	mov	dph,a
      002779 E4               [12] 1911 	clr	a
      00277A 93               [24] 1912 	movc	a,@a+dptr
      00277B F5 82            [12] 1913 	mov	dpl,a
      00277D C0 05            [24] 1914 	push	ar5
      00277F 12 21 1A         [24] 1915 	lcall	_goToAddr
                                   1916 ;	lcdCommands.c:257: busyWait();
      002782 12 20 8B         [24] 1917 	lcall	_busyWait
                                   1918 ;	lcdCommands.c:258: char checkEnter = readLCD();
      002785 12 22 38         [24] 1919 	lcall	_readLCD
      002788 AE 82            [24] 1920 	mov	r6,dpl
      00278A D0 05            [24] 1921 	pop	ar5
      00278C D0 07            [24] 1922 	pop	ar7
                                   1923 ;	lcdCommands.c:259: if(checkEnter == '*')
      00278E BE 2A 10         [24] 1924 	cjne	r6,#0x2a,00107$
                                   1925 ;	lcdCommands.c:261: count++;
      002791 90 00 1A         [24] 1926 	mov	dptr,#_gamePacman_count_65538_115
      002794 EF               [12] 1927 	mov	a,r7
      002795 04               [12] 1928 	inc	a
      002796 F0               [24] 1929 	movx	@dptr,a
                                   1930 ;	lcdCommands.c:262: putchar(7);
      002797 90 00 07         [24] 1931 	mov	dptr,#0x0007
      00279A C0 05            [24] 1932 	push	ar5
      00279C 12 30 45         [24] 1933 	lcall	_putchar
      00279F D0 05            [24] 1934 	pop	ar5
      0027A1                       1935 00107$:
                                   1936 ;	lcdCommands.c:264: busyWait();
      0027A1 C0 05            [24] 1937 	push	ar5
      0027A3 12 20 8B         [24] 1938 	lcall	_busyWait
      0027A6 D0 05            [24] 1939 	pop	ar5
                                   1940 ;	lcdCommands.c:265: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      0027A8 90 00 18         [24] 1941 	mov	dptr,#_gamePacman_i_65538_115
      0027AB E0               [24] 1942 	movx	a,@dptr
      0027AC FE               [12] 1943 	mov	r6,a
      0027AD A3               [24] 1944 	inc	dptr
      0027AE E0               [24] 1945 	movx	a,@dptr
      0027AF FF               [12] 1946 	mov	r7,a
      0027B0 EE               [12] 1947 	mov	a,r6
      0027B1 24 6D            [12] 1948 	add	a,#_lookUpTable
      0027B3 F5 82            [12] 1949 	mov	dpl,a
      0027B5 EF               [12] 1950 	mov	a,r7
      0027B6 34 42            [12] 1951 	addc	a,#(_lookUpTable >> 8)
      0027B8 F5 83            [12] 1952 	mov	dph,a
      0027BA E4               [12] 1953 	clr	a
      0027BB 93               [24] 1954 	movc	a,@a+dptr
      0027BC FC               [12] 1955 	mov	r4,a
      0027BD 7B 00            [12] 1956 	mov	r3,#0x00
      0027BF 90 F0 00         [24] 1957 	mov	dptr,#_lcdGeneral
      0027C2 74 80            [12] 1958 	mov	a,#0x80
      0027C4 4C               [12] 1959 	orl	a,r4
      0027C5 F0               [24] 1960 	movx	@dptr,a
      0027C6 EB               [12] 1961 	mov	a,r3
      0027C7 A3               [24] 1962 	inc	dptr
      0027C8 F0               [24] 1963 	movx	@dptr,a
                                   1964 ;	lcdCommands.c:266: busyWait();
      0027C9 C0 07            [24] 1965 	push	ar7
      0027CB C0 06            [24] 1966 	push	ar6
      0027CD C0 05            [24] 1967 	push	ar5
      0027CF 12 20 8B         [24] 1968 	lcall	_busyWait
                                   1969 ;	lcdCommands.c:267: writeCharacter = 0x00;
      0027D2 90 F1 00         [24] 1970 	mov	dptr,#_writeCharacter
      0027D5 E4               [12] 1971 	clr	a
      0027D6 F0               [24] 1972 	movx	@dptr,a
      0027D7 A3               [24] 1973 	inc	dptr
      0027D8 F0               [24] 1974 	movx	@dptr,a
                                   1975 ;	lcdCommands.c:268: busyWait();
      0027D9 12 20 8B         [24] 1976 	lcall	_busyWait
      0027DC D0 05            [24] 1977 	pop	ar5
      0027DE D0 06            [24] 1978 	pop	ar6
      0027E0 D0 07            [24] 1979 	pop	ar7
                                   1980 ;	lcdCommands.c:269: if(i >= 47)
      0027E2 C3               [12] 1981 	clr	c
      0027E3 EE               [12] 1982 	mov	a,r6
      0027E4 94 2F            [12] 1983 	subb	a,#0x2f
      0027E6 EF               [12] 1984 	mov	a,r7
      0027E7 64 80            [12] 1985 	xrl	a,#0x80
      0027E9 94 80            [12] 1986 	subb	a,#0x80
      0027EB 40 21            [24] 1987 	jc	00109$
                                   1988 ;	lcdCommands.c:271: goToAddr(lookUpTable[2][15]);
      0027ED 90 42 9C         [24] 1989 	mov	dptr,#(_lookUpTable + 0x002f)
      0027F0 E4               [12] 1990 	clr	a
      0027F1 93               [24] 1991 	movc	a,@a+dptr
      0027F2 F5 82            [12] 1992 	mov	dpl,a
      0027F4 C0 05            [24] 1993 	push	ar5
      0027F6 12 21 1A         [24] 1994 	lcall	_goToAddr
                                   1995 ;	lcdCommands.c:272: busyWait();
      0027F9 12 20 8B         [24] 1996 	lcall	_busyWait
                                   1997 ;	lcdCommands.c:273: lcdPutCh(' ');
      0027FC 75 82 20         [24] 1998 	mov	dpl,#0x20
      0027FF 12 20 F8         [24] 1999 	lcall	_lcdPutCh
                                   2000 ;	lcdCommands.c:274: busyWait();
      002802 12 20 8B         [24] 2001 	lcall	_busyWait
      002805 D0 05            [24] 2002 	pop	ar5
                                   2003 ;	lcdCommands.c:275: i = 0;
      002807 90 00 18         [24] 2004 	mov	dptr,#_gamePacman_i_65538_115
      00280A E4               [12] 2005 	clr	a
      00280B F0               [24] 2006 	movx	@dptr,a
      00280C A3               [24] 2007 	inc	dptr
      00280D F0               [24] 2008 	movx	@dptr,a
      00280E                       2009 00109$:
                                   2010 ;	lcdCommands.c:277: i++;
      00280E 90 00 18         [24] 2011 	mov	dptr,#_gamePacman_i_65538_115
      002811 E0               [24] 2012 	movx	a,@dptr
      002812 24 01            [12] 2013 	add	a,#0x01
      002814 F0               [24] 2014 	movx	@dptr,a
      002815 A3               [24] 2015 	inc	dptr
      002816 E0               [24] 2016 	movx	a,@dptr
      002817 34 00            [12] 2017 	addc	a,#0x00
      002819 F0               [24] 2018 	movx	@dptr,a
      00281A                       2019 00111$:
                                   2020 ;	lcdCommands.c:279: i--;
      00281A 90 00 18         [24] 2021 	mov	dptr,#_gamePacman_i_65538_115
      00281D E0               [24] 2022 	movx	a,@dptr
      00281E 24 FF            [12] 2023 	add	a,#0xff
      002820 FE               [12] 2024 	mov	r6,a
      002821 A3               [24] 2025 	inc	dptr
      002822 E0               [24] 2026 	movx	a,@dptr
      002823 34 FF            [12] 2027 	addc	a,#0xff
      002825 FF               [12] 2028 	mov	r7,a
      002826 90 00 18         [24] 2029 	mov	dptr,#_gamePacman_i_65538_115
      002829 EE               [12] 2030 	mov	a,r6
      00282A F0               [24] 2031 	movx	@dptr,a
      00282B EF               [12] 2032 	mov	a,r7
      00282C A3               [24] 2033 	inc	dptr
      00282D F0               [24] 2034 	movx	@dptr,a
                                   2035 ;	lcdCommands.c:281: if(ch == 'a')
      00282E BD 61 02         [24] 2036 	cjne	r5,#0x61,00172$
      002831 80 03            [24] 2037 	sjmp	00173$
      002833                       2038 00172$:
      002833 02 29 1C         [24] 2039 	ljmp	00117$
      002836                       2040 00173$:
                                   2041 ;	lcdCommands.c:283: goToAddr(lookUpTable[0][i+1]);
      002836 90 00 18         [24] 2042 	mov	dptr,#_gamePacman_i_65538_115
      002839 E0               [24] 2043 	movx	a,@dptr
      00283A FE               [12] 2044 	mov	r6,a
      00283B A3               [24] 2045 	inc	dptr
      00283C E0               [24] 2046 	movx	a,@dptr
      00283D FF               [12] 2047 	mov	r7,a
      00283E 8E 04            [24] 2048 	mov	ar4,r6
      002840 EC               [12] 2049 	mov	a,r4
      002841 04               [12] 2050 	inc	a
      002842 90 42 6D         [24] 2051 	mov	dptr,#_lookUpTable
      002845 93               [24] 2052 	movc	a,@a+dptr
      002846 F5 82            [12] 2053 	mov	dpl,a
      002848 C0 07            [24] 2054 	push	ar7
      00284A C0 06            [24] 2055 	push	ar6
      00284C C0 05            [24] 2056 	push	ar5
      00284E 12 21 1A         [24] 2057 	lcall	_goToAddr
                                   2058 ;	lcdCommands.c:284: busyWait();
      002851 12 20 8B         [24] 2059 	lcall	_busyWait
                                   2060 ;	lcdCommands.c:285: lcdPutCh(' ');
      002854 75 82 20         [24] 2061 	mov	dpl,#0x20
      002857 12 20 F8         [24] 2062 	lcall	_lcdPutCh
                                   2063 ;	lcdCommands.c:286: busyWait();
      00285A 12 20 8B         [24] 2064 	lcall	_busyWait
      00285D D0 05            [24] 2065 	pop	ar5
      00285F D0 06            [24] 2066 	pop	ar6
      002861 D0 07            [24] 2067 	pop	ar7
                                   2068 ;	lcdCommands.c:287: goToAddr(lookUpTable[0][i]);
      002863 EE               [12] 2069 	mov	a,r6
      002864 24 6D            [12] 2070 	add	a,#_lookUpTable
      002866 F5 82            [12] 2071 	mov	dpl,a
      002868 EF               [12] 2072 	mov	a,r7
      002869 34 42            [12] 2073 	addc	a,#(_lookUpTable >> 8)
      00286B F5 83            [12] 2074 	mov	dph,a
      00286D E4               [12] 2075 	clr	a
      00286E 93               [24] 2076 	movc	a,@a+dptr
      00286F F5 82            [12] 2077 	mov	dpl,a
      002871 C0 05            [24] 2078 	push	ar5
      002873 12 21 1A         [24] 2079 	lcall	_goToAddr
                                   2080 ;	lcdCommands.c:288: busyWait();
      002876 12 20 8B         [24] 2081 	lcall	_busyWait
                                   2082 ;	lcdCommands.c:289: char checkEnter1 = readLCD();
      002879 12 22 38         [24] 2083 	lcall	_readLCD
      00287C AF 82            [24] 2084 	mov	r7,dpl
      00287E D0 05            [24] 2085 	pop	ar5
                                   2086 ;	lcdCommands.c:290: if(checkEnter1 == '*')
      002880 BF 2A 11         [24] 2087 	cjne	r7,#0x2a,00113$
                                   2088 ;	lcdCommands.c:292: count++;
      002883 90 00 1A         [24] 2089 	mov	dptr,#_gamePacman_count_65538_115
      002886 E0               [24] 2090 	movx	a,@dptr
      002887 24 01            [12] 2091 	add	a,#0x01
      002889 F0               [24] 2092 	movx	@dptr,a
                                   2093 ;	lcdCommands.c:293: putchar(7);
      00288A 90 00 07         [24] 2094 	mov	dptr,#0x0007
      00288D C0 05            [24] 2095 	push	ar5
      00288F 12 30 45         [24] 2096 	lcall	_putchar
      002892 D0 05            [24] 2097 	pop	ar5
      002894                       2098 00113$:
                                   2099 ;	lcdCommands.c:295: busyWait();
      002894 C0 05            [24] 2100 	push	ar5
      002896 12 20 8B         [24] 2101 	lcall	_busyWait
      002899 D0 05            [24] 2102 	pop	ar5
                                   2103 ;	lcdCommands.c:296: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      00289B 90 00 18         [24] 2104 	mov	dptr,#_gamePacman_i_65538_115
      00289E E0               [24] 2105 	movx	a,@dptr
      00289F FE               [12] 2106 	mov	r6,a
      0028A0 A3               [24] 2107 	inc	dptr
      0028A1 E0               [24] 2108 	movx	a,@dptr
      0028A2 FF               [12] 2109 	mov	r7,a
      0028A3 EE               [12] 2110 	mov	a,r6
      0028A4 24 6D            [12] 2111 	add	a,#_lookUpTable
      0028A6 F5 82            [12] 2112 	mov	dpl,a
      0028A8 EF               [12] 2113 	mov	a,r7
      0028A9 34 42            [12] 2114 	addc	a,#(_lookUpTable >> 8)
      0028AB F5 83            [12] 2115 	mov	dph,a
      0028AD E4               [12] 2116 	clr	a
      0028AE 93               [24] 2117 	movc	a,@a+dptr
      0028AF FC               [12] 2118 	mov	r4,a
      0028B0 7B 00            [12] 2119 	mov	r3,#0x00
      0028B2 90 F0 00         [24] 2120 	mov	dptr,#_lcdGeneral
      0028B5 74 80            [12] 2121 	mov	a,#0x80
      0028B7 4C               [12] 2122 	orl	a,r4
      0028B8 F0               [24] 2123 	movx	@dptr,a
      0028B9 EB               [12] 2124 	mov	a,r3
      0028BA A3               [24] 2125 	inc	dptr
      0028BB F0               [24] 2126 	movx	@dptr,a
                                   2127 ;	lcdCommands.c:297: busyWait();
      0028BC C0 07            [24] 2128 	push	ar7
      0028BE C0 06            [24] 2129 	push	ar6
      0028C0 C0 05            [24] 2130 	push	ar5
      0028C2 12 20 8B         [24] 2131 	lcall	_busyWait
                                   2132 ;	lcdCommands.c:298: writeCharacter = 0x03;
      0028C5 90 F1 00         [24] 2133 	mov	dptr,#_writeCharacter
      0028C8 74 03            [12] 2134 	mov	a,#0x03
      0028CA F0               [24] 2135 	movx	@dptr,a
      0028CB E4               [12] 2136 	clr	a
      0028CC A3               [24] 2137 	inc	dptr
      0028CD F0               [24] 2138 	movx	@dptr,a
                                   2139 ;	lcdCommands.c:299: busyWait();
      0028CE 12 20 8B         [24] 2140 	lcall	_busyWait
      0028D1 D0 05            [24] 2141 	pop	ar5
      0028D3 D0 06            [24] 2142 	pop	ar6
      0028D5 D0 07            [24] 2143 	pop	ar7
                                   2144 ;	lcdCommands.c:300: if( i <= 0)
      0028D7 C3               [12] 2145 	clr	c
      0028D8 E4               [12] 2146 	clr	a
      0028D9 9E               [12] 2147 	subb	a,r6
      0028DA 74 80            [12] 2148 	mov	a,#(0x00 ^ 0x80)
      0028DC 8F F0            [24] 2149 	mov	b,r7
      0028DE 63 F0 80         [24] 2150 	xrl	b,#0x80
      0028E1 95 F0            [12] 2151 	subb	a,b
      0028E3 40 23            [24] 2152 	jc	00115$
                                   2153 ;	lcdCommands.c:302: goToAddr(lookUpTable[0][0]);
      0028E5 90 42 6D         [24] 2154 	mov	dptr,#_lookUpTable
      0028E8 E4               [12] 2155 	clr	a
      0028E9 93               [24] 2156 	movc	a,@a+dptr
      0028EA F5 82            [12] 2157 	mov	dpl,a
      0028EC C0 05            [24] 2158 	push	ar5
      0028EE 12 21 1A         [24] 2159 	lcall	_goToAddr
                                   2160 ;	lcdCommands.c:303: busyWait();
      0028F1 12 20 8B         [24] 2161 	lcall	_busyWait
                                   2162 ;	lcdCommands.c:304: lcdPutCh(' ');
      0028F4 75 82 20         [24] 2163 	mov	dpl,#0x20
      0028F7 12 20 F8         [24] 2164 	lcall	_lcdPutCh
                                   2165 ;	lcdCommands.c:305: busyWait();
      0028FA 12 20 8B         [24] 2166 	lcall	_busyWait
      0028FD D0 05            [24] 2167 	pop	ar5
                                   2168 ;	lcdCommands.c:306: i = 47;
      0028FF 90 00 18         [24] 2169 	mov	dptr,#_gamePacman_i_65538_115
      002902 74 2F            [12] 2170 	mov	a,#0x2f
      002904 F0               [24] 2171 	movx	@dptr,a
      002905 E4               [12] 2172 	clr	a
      002906 A3               [24] 2173 	inc	dptr
      002907 F0               [24] 2174 	movx	@dptr,a
      002908                       2175 00115$:
                                   2176 ;	lcdCommands.c:308: i--;
      002908 90 00 18         [24] 2177 	mov	dptr,#_gamePacman_i_65538_115
      00290B E0               [24] 2178 	movx	a,@dptr
      00290C 24 FF            [12] 2179 	add	a,#0xff
      00290E FE               [12] 2180 	mov	r6,a
      00290F A3               [24] 2181 	inc	dptr
      002910 E0               [24] 2182 	movx	a,@dptr
      002911 34 FF            [12] 2183 	addc	a,#0xff
      002913 FF               [12] 2184 	mov	r7,a
      002914 90 00 18         [24] 2185 	mov	dptr,#_gamePacman_i_65538_115
      002917 EE               [12] 2186 	mov	a,r6
      002918 F0               [24] 2187 	movx	@dptr,a
      002919 EF               [12] 2188 	mov	a,r7
      00291A A3               [24] 2189 	inc	dptr
      00291B F0               [24] 2190 	movx	@dptr,a
      00291C                       2191 00117$:
                                   2192 ;	lcdCommands.c:310: i++;
      00291C 90 00 18         [24] 2193 	mov	dptr,#_gamePacman_i_65538_115
      00291F E0               [24] 2194 	movx	a,@dptr
      002920 24 01            [12] 2195 	add	a,#0x01
      002922 F0               [24] 2196 	movx	@dptr,a
      002923 A3               [24] 2197 	inc	dptr
      002924 E0               [24] 2198 	movx	a,@dptr
      002925 34 00            [12] 2199 	addc	a,#0x00
      002927 F0               [24] 2200 	movx	@dptr,a
                                   2201 ;	lcdCommands.c:311: }while(ch != 'q');
      002928 BD 71 01         [24] 2202 	cjne	r5,#0x71,00177$
      00292B 22               [24] 2203 	ret
      00292C                       2204 00177$:
      00292C 02 27 01         [24] 2205 	ljmp	00118$
                                   2206 ;	lcdCommands.c:312: }
      00292F 22               [24] 2207 	ret
                                   2208 ;------------------------------------------------------------
                                   2209 ;Allocation info for local variables in function 'makePacmanRight'
                                   2210 ;------------------------------------------------------------
                                   2211 ;	lcdCommands.c:314: void makePacmanRight()
                                   2212 ;	-----------------------------------------
                                   2213 ;	 function makePacmanRight
                                   2214 ;	-----------------------------------------
      002930                       2215 _makePacmanRight:
                                   2216 ;	lcdCommands.c:316: busyWait();
      002930 12 20 8B         [24] 2217 	lcall	_busyWait
                                   2218 ;	lcdCommands.c:317: lcdGeneral = 0x40 | 0x00;
      002933 90 F0 00         [24] 2219 	mov	dptr,#_lcdGeneral
      002936 74 40            [12] 2220 	mov	a,#0x40
      002938 F0               [24] 2221 	movx	@dptr,a
      002939 E4               [12] 2222 	clr	a
      00293A A3               [24] 2223 	inc	dptr
      00293B F0               [24] 2224 	movx	@dptr,a
                                   2225 ;	lcdCommands.c:318: busyWait();
      00293C 12 20 8B         [24] 2226 	lcall	_busyWait
                                   2227 ;	lcdCommands.c:319: writeCharacter = 0x06;
      00293F 90 F1 00         [24] 2228 	mov	dptr,#_writeCharacter
      002942 74 06            [12] 2229 	mov	a,#0x06
      002944 F0               [24] 2230 	movx	@dptr,a
      002945 E4               [12] 2231 	clr	a
      002946 A3               [24] 2232 	inc	dptr
      002947 F0               [24] 2233 	movx	@dptr,a
                                   2234 ;	lcdCommands.c:320: busyWait();
      002948 12 20 8B         [24] 2235 	lcall	_busyWait
                                   2236 ;	lcdCommands.c:321: lcdGeneral = 0x40 | 0x01;
      00294B 90 F0 00         [24] 2237 	mov	dptr,#_lcdGeneral
      00294E 74 41            [12] 2238 	mov	a,#0x41
      002950 F0               [24] 2239 	movx	@dptr,a
      002951 E4               [12] 2240 	clr	a
      002952 A3               [24] 2241 	inc	dptr
      002953 F0               [24] 2242 	movx	@dptr,a
                                   2243 ;	lcdCommands.c:322: busyWait();
      002954 12 20 8B         [24] 2244 	lcall	_busyWait
                                   2245 ;	lcdCommands.c:323: writeCharacter = 0x09;
      002957 90 F1 00         [24] 2246 	mov	dptr,#_writeCharacter
      00295A 74 09            [12] 2247 	mov	a,#0x09
      00295C F0               [24] 2248 	movx	@dptr,a
      00295D E4               [12] 2249 	clr	a
      00295E A3               [24] 2250 	inc	dptr
      00295F F0               [24] 2251 	movx	@dptr,a
                                   2252 ;	lcdCommands.c:324: busyWait();
      002960 12 20 8B         [24] 2253 	lcall	_busyWait
                                   2254 ;	lcdCommands.c:325: lcdGeneral = 0x40 | 0x02;
      002963 90 F0 00         [24] 2255 	mov	dptr,#_lcdGeneral
      002966 74 42            [12] 2256 	mov	a,#0x42
      002968 F0               [24] 2257 	movx	@dptr,a
      002969 E4               [12] 2258 	clr	a
      00296A A3               [24] 2259 	inc	dptr
      00296B F0               [24] 2260 	movx	@dptr,a
                                   2261 ;	lcdCommands.c:326: busyWait();
      00296C 12 20 8B         [24] 2262 	lcall	_busyWait
                                   2263 ;	lcdCommands.c:327: writeCharacter = 0x12;
      00296F 90 F1 00         [24] 2264 	mov	dptr,#_writeCharacter
      002972 74 12            [12] 2265 	mov	a,#0x12
      002974 F0               [24] 2266 	movx	@dptr,a
      002975 E4               [12] 2267 	clr	a
      002976 A3               [24] 2268 	inc	dptr
      002977 F0               [24] 2269 	movx	@dptr,a
                                   2270 ;	lcdCommands.c:328: busyWait();
      002978 12 20 8B         [24] 2271 	lcall	_busyWait
                                   2272 ;	lcdCommands.c:329: lcdGeneral = 0x40 | 0x03;
      00297B 90 F0 00         [24] 2273 	mov	dptr,#_lcdGeneral
      00297E 74 43            [12] 2274 	mov	a,#0x43
      002980 F0               [24] 2275 	movx	@dptr,a
      002981 E4               [12] 2276 	clr	a
      002982 A3               [24] 2277 	inc	dptr
      002983 F0               [24] 2278 	movx	@dptr,a
                                   2279 ;	lcdCommands.c:330: busyWait();
      002984 12 20 8B         [24] 2280 	lcall	_busyWait
                                   2281 ;	lcdCommands.c:331: writeCharacter = 0x14;
      002987 90 F1 00         [24] 2282 	mov	dptr,#_writeCharacter
      00298A 74 14            [12] 2283 	mov	a,#0x14
      00298C F0               [24] 2284 	movx	@dptr,a
      00298D E4               [12] 2285 	clr	a
      00298E A3               [24] 2286 	inc	dptr
      00298F F0               [24] 2287 	movx	@dptr,a
                                   2288 ;	lcdCommands.c:332: busyWait();
      002990 12 20 8B         [24] 2289 	lcall	_busyWait
                                   2290 ;	lcdCommands.c:333: lcdGeneral = 0x40 | 0x04;
      002993 90 F0 00         [24] 2291 	mov	dptr,#_lcdGeneral
      002996 74 44            [12] 2292 	mov	a,#0x44
      002998 F0               [24] 2293 	movx	@dptr,a
      002999 E4               [12] 2294 	clr	a
      00299A A3               [24] 2295 	inc	dptr
      00299B F0               [24] 2296 	movx	@dptr,a
                                   2297 ;	lcdCommands.c:334: busyWait();
      00299C 12 20 8B         [24] 2298 	lcall	_busyWait
                                   2299 ;	lcdCommands.c:335: writeCharacter = 0x14;
      00299F 90 F1 00         [24] 2300 	mov	dptr,#_writeCharacter
      0029A2 74 14            [12] 2301 	mov	a,#0x14
      0029A4 F0               [24] 2302 	movx	@dptr,a
      0029A5 E4               [12] 2303 	clr	a
      0029A6 A3               [24] 2304 	inc	dptr
      0029A7 F0               [24] 2305 	movx	@dptr,a
                                   2306 ;	lcdCommands.c:336: busyWait();
      0029A8 12 20 8B         [24] 2307 	lcall	_busyWait
                                   2308 ;	lcdCommands.c:337: lcdGeneral = 0x40 | 0x05;
      0029AB 90 F0 00         [24] 2309 	mov	dptr,#_lcdGeneral
      0029AE 74 45            [12] 2310 	mov	a,#0x45
      0029B0 F0               [24] 2311 	movx	@dptr,a
      0029B1 E4               [12] 2312 	clr	a
      0029B2 A3               [24] 2313 	inc	dptr
      0029B3 F0               [24] 2314 	movx	@dptr,a
                                   2315 ;	lcdCommands.c:338: busyWait();
      0029B4 12 20 8B         [24] 2316 	lcall	_busyWait
                                   2317 ;	lcdCommands.c:339: writeCharacter = 0x12;
      0029B7 90 F1 00         [24] 2318 	mov	dptr,#_writeCharacter
      0029BA 74 12            [12] 2319 	mov	a,#0x12
      0029BC F0               [24] 2320 	movx	@dptr,a
      0029BD E4               [12] 2321 	clr	a
      0029BE A3               [24] 2322 	inc	dptr
      0029BF F0               [24] 2323 	movx	@dptr,a
                                   2324 ;	lcdCommands.c:340: busyWait();
      0029C0 12 20 8B         [24] 2325 	lcall	_busyWait
                                   2326 ;	lcdCommands.c:341: lcdGeneral = 0x40 | 0x06;
      0029C3 90 F0 00         [24] 2327 	mov	dptr,#_lcdGeneral
      0029C6 74 46            [12] 2328 	mov	a,#0x46
      0029C8 F0               [24] 2329 	movx	@dptr,a
      0029C9 E4               [12] 2330 	clr	a
      0029CA A3               [24] 2331 	inc	dptr
      0029CB F0               [24] 2332 	movx	@dptr,a
                                   2333 ;	lcdCommands.c:342: busyWait();
      0029CC 12 20 8B         [24] 2334 	lcall	_busyWait
                                   2335 ;	lcdCommands.c:343: writeCharacter = 0x09;
      0029CF 90 F1 00         [24] 2336 	mov	dptr,#_writeCharacter
      0029D2 74 09            [12] 2337 	mov	a,#0x09
      0029D4 F0               [24] 2338 	movx	@dptr,a
      0029D5 E4               [12] 2339 	clr	a
      0029D6 A3               [24] 2340 	inc	dptr
      0029D7 F0               [24] 2341 	movx	@dptr,a
                                   2342 ;	lcdCommands.c:344: busyWait();
      0029D8 12 20 8B         [24] 2343 	lcall	_busyWait
                                   2344 ;	lcdCommands.c:345: lcdGeneral = 0x40 | 0x07;
      0029DB 90 F0 00         [24] 2345 	mov	dptr,#_lcdGeneral
      0029DE 74 47            [12] 2346 	mov	a,#0x47
      0029E0 F0               [24] 2347 	movx	@dptr,a
      0029E1 E4               [12] 2348 	clr	a
      0029E2 A3               [24] 2349 	inc	dptr
      0029E3 F0               [24] 2350 	movx	@dptr,a
                                   2351 ;	lcdCommands.c:346: busyWait();
      0029E4 12 20 8B         [24] 2352 	lcall	_busyWait
                                   2353 ;	lcdCommands.c:347: writeCharacter = 0x06;
      0029E7 90 F1 00         [24] 2354 	mov	dptr,#_writeCharacter
      0029EA 74 06            [12] 2355 	mov	a,#0x06
      0029EC F0               [24] 2356 	movx	@dptr,a
      0029ED E4               [12] 2357 	clr	a
      0029EE A3               [24] 2358 	inc	dptr
      0029EF F0               [24] 2359 	movx	@dptr,a
                                   2360 ;	lcdCommands.c:348: busyWait();
      0029F0 12 20 8B         [24] 2361 	lcall	_busyWait
                                   2362 ;	lcdCommands.c:349: goToXY(3,1);
      0029F3 90 00 03         [24] 2363 	mov	dptr,#_goToXY_PARM_2
      0029F6 74 01            [12] 2364 	mov	a,#0x01
      0029F8 F0               [24] 2365 	movx	@dptr,a
      0029F9 75 82 03         [24] 2366 	mov	dpl,#0x03
      0029FC 12 21 35         [24] 2367 	lcall	_goToXY
                                   2368 ;	lcdCommands.c:350: busyWait();
      0029FF 12 20 8B         [24] 2369 	lcall	_busyWait
                                   2370 ;	lcdCommands.c:351: lcdGeneral = 0x80 | 0x00;
      002A02 90 F0 00         [24] 2371 	mov	dptr,#_lcdGeneral
      002A05 74 80            [12] 2372 	mov	a,#0x80
      002A07 F0               [24] 2373 	movx	@dptr,a
      002A08 E4               [12] 2374 	clr	a
      002A09 A3               [24] 2375 	inc	dptr
      002A0A F0               [24] 2376 	movx	@dptr,a
                                   2377 ;	lcdCommands.c:352: busyWait();
      002A0B 12 20 8B         [24] 2378 	lcall	_busyWait
                                   2379 ;	lcdCommands.c:353: writeCharacter = 0x00;
      002A0E 90 F1 00         [24] 2380 	mov	dptr,#_writeCharacter
      002A11 E4               [12] 2381 	clr	a
      002A12 F0               [24] 2382 	movx	@dptr,a
      002A13 A3               [24] 2383 	inc	dptr
      002A14 F0               [24] 2384 	movx	@dptr,a
                                   2385 ;	lcdCommands.c:354: }
      002A15 22               [24] 2386 	ret
                                   2387 ;------------------------------------------------------------
                                   2388 ;Allocation info for local variables in function 'makePacmanLeft'
                                   2389 ;------------------------------------------------------------
                                   2390 ;	lcdCommands.c:355: void makePacmanLeft()
                                   2391 ;	-----------------------------------------
                                   2392 ;	 function makePacmanLeft
                                   2393 ;	-----------------------------------------
      002A16                       2394 _makePacmanLeft:
                                   2395 ;	lcdCommands.c:357: busyWait();
      002A16 12 20 8B         [24] 2396 	lcall	_busyWait
                                   2397 ;	lcdCommands.c:358: lcdGeneral = 0x40 | 0x18;
      002A19 90 F0 00         [24] 2398 	mov	dptr,#_lcdGeneral
      002A1C 74 58            [12] 2399 	mov	a,#0x58
      002A1E F0               [24] 2400 	movx	@dptr,a
      002A1F E4               [12] 2401 	clr	a
      002A20 A3               [24] 2402 	inc	dptr
      002A21 F0               [24] 2403 	movx	@dptr,a
                                   2404 ;	lcdCommands.c:359: busyWait();
      002A22 12 20 8B         [24] 2405 	lcall	_busyWait
                                   2406 ;	lcdCommands.c:360: writeCharacter = 0x0C;
      002A25 90 F1 00         [24] 2407 	mov	dptr,#_writeCharacter
      002A28 74 0C            [12] 2408 	mov	a,#0x0c
      002A2A F0               [24] 2409 	movx	@dptr,a
      002A2B E4               [12] 2410 	clr	a
      002A2C A3               [24] 2411 	inc	dptr
      002A2D F0               [24] 2412 	movx	@dptr,a
                                   2413 ;	lcdCommands.c:361: busyWait();
      002A2E 12 20 8B         [24] 2414 	lcall	_busyWait
                                   2415 ;	lcdCommands.c:362: lcdGeneral = 0x40 | 0x19;
      002A31 90 F0 00         [24] 2416 	mov	dptr,#_lcdGeneral
      002A34 74 59            [12] 2417 	mov	a,#0x59
      002A36 F0               [24] 2418 	movx	@dptr,a
      002A37 E4               [12] 2419 	clr	a
      002A38 A3               [24] 2420 	inc	dptr
      002A39 F0               [24] 2421 	movx	@dptr,a
                                   2422 ;	lcdCommands.c:363: busyWait();
      002A3A 12 20 8B         [24] 2423 	lcall	_busyWait
                                   2424 ;	lcdCommands.c:364: writeCharacter = 0x12;
      002A3D 90 F1 00         [24] 2425 	mov	dptr,#_writeCharacter
      002A40 74 12            [12] 2426 	mov	a,#0x12
      002A42 F0               [24] 2427 	movx	@dptr,a
      002A43 E4               [12] 2428 	clr	a
      002A44 A3               [24] 2429 	inc	dptr
      002A45 F0               [24] 2430 	movx	@dptr,a
                                   2431 ;	lcdCommands.c:365: busyWait();
      002A46 12 20 8B         [24] 2432 	lcall	_busyWait
                                   2433 ;	lcdCommands.c:366: lcdGeneral = 0x40 | 0x1A;
      002A49 90 F0 00         [24] 2434 	mov	dptr,#_lcdGeneral
      002A4C 74 5A            [12] 2435 	mov	a,#0x5a
      002A4E F0               [24] 2436 	movx	@dptr,a
      002A4F E4               [12] 2437 	clr	a
      002A50 A3               [24] 2438 	inc	dptr
      002A51 F0               [24] 2439 	movx	@dptr,a
                                   2440 ;	lcdCommands.c:367: busyWait();
      002A52 12 20 8B         [24] 2441 	lcall	_busyWait
                                   2442 ;	lcdCommands.c:368: writeCharacter = 0x09;
      002A55 90 F1 00         [24] 2443 	mov	dptr,#_writeCharacter
      002A58 74 09            [12] 2444 	mov	a,#0x09
      002A5A F0               [24] 2445 	movx	@dptr,a
      002A5B E4               [12] 2446 	clr	a
      002A5C A3               [24] 2447 	inc	dptr
      002A5D F0               [24] 2448 	movx	@dptr,a
                                   2449 ;	lcdCommands.c:369: busyWait();
      002A5E 12 20 8B         [24] 2450 	lcall	_busyWait
                                   2451 ;	lcdCommands.c:370: lcdGeneral = 0x40 | 0x1B;
      002A61 90 F0 00         [24] 2452 	mov	dptr,#_lcdGeneral
      002A64 74 5B            [12] 2453 	mov	a,#0x5b
      002A66 F0               [24] 2454 	movx	@dptr,a
      002A67 E4               [12] 2455 	clr	a
      002A68 A3               [24] 2456 	inc	dptr
      002A69 F0               [24] 2457 	movx	@dptr,a
                                   2458 ;	lcdCommands.c:371: busyWait();
      002A6A 12 20 8B         [24] 2459 	lcall	_busyWait
                                   2460 ;	lcdCommands.c:372: writeCharacter = 0x05;
      002A6D 90 F1 00         [24] 2461 	mov	dptr,#_writeCharacter
      002A70 74 05            [12] 2462 	mov	a,#0x05
      002A72 F0               [24] 2463 	movx	@dptr,a
      002A73 E4               [12] 2464 	clr	a
      002A74 A3               [24] 2465 	inc	dptr
      002A75 F0               [24] 2466 	movx	@dptr,a
                                   2467 ;	lcdCommands.c:373: busyWait();
      002A76 12 20 8B         [24] 2468 	lcall	_busyWait
                                   2469 ;	lcdCommands.c:374: lcdGeneral = 0x40 | 0x1C;
      002A79 90 F0 00         [24] 2470 	mov	dptr,#_lcdGeneral
      002A7C 74 5C            [12] 2471 	mov	a,#0x5c
      002A7E F0               [24] 2472 	movx	@dptr,a
      002A7F E4               [12] 2473 	clr	a
      002A80 A3               [24] 2474 	inc	dptr
      002A81 F0               [24] 2475 	movx	@dptr,a
                                   2476 ;	lcdCommands.c:375: busyWait();
      002A82 12 20 8B         [24] 2477 	lcall	_busyWait
                                   2478 ;	lcdCommands.c:376: writeCharacter = 0x05;
      002A85 90 F1 00         [24] 2479 	mov	dptr,#_writeCharacter
      002A88 74 05            [12] 2480 	mov	a,#0x05
      002A8A F0               [24] 2481 	movx	@dptr,a
      002A8B E4               [12] 2482 	clr	a
      002A8C A3               [24] 2483 	inc	dptr
      002A8D F0               [24] 2484 	movx	@dptr,a
                                   2485 ;	lcdCommands.c:377: busyWait();
      002A8E 12 20 8B         [24] 2486 	lcall	_busyWait
                                   2487 ;	lcdCommands.c:378: lcdGeneral = 0x40 | 0x1D;
      002A91 90 F0 00         [24] 2488 	mov	dptr,#_lcdGeneral
      002A94 74 5D            [12] 2489 	mov	a,#0x5d
      002A96 F0               [24] 2490 	movx	@dptr,a
      002A97 E4               [12] 2491 	clr	a
      002A98 A3               [24] 2492 	inc	dptr
      002A99 F0               [24] 2493 	movx	@dptr,a
                                   2494 ;	lcdCommands.c:379: busyWait();
      002A9A 12 20 8B         [24] 2495 	lcall	_busyWait
                                   2496 ;	lcdCommands.c:380: writeCharacter = 0x09;
      002A9D 90 F1 00         [24] 2497 	mov	dptr,#_writeCharacter
      002AA0 74 09            [12] 2498 	mov	a,#0x09
      002AA2 F0               [24] 2499 	movx	@dptr,a
      002AA3 E4               [12] 2500 	clr	a
      002AA4 A3               [24] 2501 	inc	dptr
      002AA5 F0               [24] 2502 	movx	@dptr,a
                                   2503 ;	lcdCommands.c:381: busyWait();
      002AA6 12 20 8B         [24] 2504 	lcall	_busyWait
                                   2505 ;	lcdCommands.c:382: lcdGeneral = 0x40 | 0x1E;
      002AA9 90 F0 00         [24] 2506 	mov	dptr,#_lcdGeneral
      002AAC 74 5E            [12] 2507 	mov	a,#0x5e
      002AAE F0               [24] 2508 	movx	@dptr,a
      002AAF E4               [12] 2509 	clr	a
      002AB0 A3               [24] 2510 	inc	dptr
      002AB1 F0               [24] 2511 	movx	@dptr,a
                                   2512 ;	lcdCommands.c:383: busyWait();
      002AB2 12 20 8B         [24] 2513 	lcall	_busyWait
                                   2514 ;	lcdCommands.c:384: writeCharacter = 0x12;
      002AB5 90 F1 00         [24] 2515 	mov	dptr,#_writeCharacter
      002AB8 74 12            [12] 2516 	mov	a,#0x12
      002ABA F0               [24] 2517 	movx	@dptr,a
      002ABB E4               [12] 2518 	clr	a
      002ABC A3               [24] 2519 	inc	dptr
      002ABD F0               [24] 2520 	movx	@dptr,a
                                   2521 ;	lcdCommands.c:385: busyWait();
      002ABE 12 20 8B         [24] 2522 	lcall	_busyWait
                                   2523 ;	lcdCommands.c:386: lcdGeneral = 0x40 | 0x1F;
      002AC1 90 F0 00         [24] 2524 	mov	dptr,#_lcdGeneral
      002AC4 74 5F            [12] 2525 	mov	a,#0x5f
      002AC6 F0               [24] 2526 	movx	@dptr,a
      002AC7 E4               [12] 2527 	clr	a
      002AC8 A3               [24] 2528 	inc	dptr
      002AC9 F0               [24] 2529 	movx	@dptr,a
                                   2530 ;	lcdCommands.c:387: busyWait();
      002ACA 12 20 8B         [24] 2531 	lcall	_busyWait
                                   2532 ;	lcdCommands.c:388: writeCharacter = 0x0C;
      002ACD 90 F1 00         [24] 2533 	mov	dptr,#_writeCharacter
      002AD0 74 0C            [12] 2534 	mov	a,#0x0c
      002AD2 F0               [24] 2535 	movx	@dptr,a
      002AD3 E4               [12] 2536 	clr	a
      002AD4 A3               [24] 2537 	inc	dptr
      002AD5 F0               [24] 2538 	movx	@dptr,a
                                   2539 ;	lcdCommands.c:389: busyWait();
                                   2540 ;	lcdCommands.c:393: }
      002AD6 02 20 8B         [24] 2541 	ljmp	_busyWait
                                   2542 ;------------------------------------------------------------
                                   2543 ;Allocation info for local variables in function 'printBinary'
                                   2544 ;------------------------------------------------------------
                                   2545 ;x                         Allocated with name '_printBinary_x_65536_128'
                                   2546 ;temp2                     Allocated with name '_printBinary_temp2_65536_129'
                                   2547 ;------------------------------------------------------------
                                   2548 ;	lcdCommands.c:395: void printBinary(int x)
                                   2549 ;	-----------------------------------------
                                   2550 ;	 function printBinary
                                   2551 ;	-----------------------------------------
      002AD9                       2552 _printBinary:
      002AD9 AF 83            [24] 2553 	mov	r7,dph
      002ADB E5 82            [12] 2554 	mov	a,dpl
      002ADD 90 00 1B         [24] 2555 	mov	dptr,#_printBinary_x_65536_128
      002AE0 F0               [24] 2556 	movx	@dptr,a
      002AE1 EF               [12] 2557 	mov	a,r7
      002AE2 A3               [24] 2558 	inc	dptr
      002AE3 F0               [24] 2559 	movx	@dptr,a
                                   2560 ;	lcdCommands.c:398: while(x != 0)
      002AE4                       2561 00101$:
      002AE4 90 00 1B         [24] 2562 	mov	dptr,#_printBinary_x_65536_128
      002AE7 E0               [24] 2563 	movx	a,@dptr
      002AE8 FE               [12] 2564 	mov	r6,a
      002AE9 A3               [24] 2565 	inc	dptr
      002AEA E0               [24] 2566 	movx	a,@dptr
      002AEB FF               [12] 2567 	mov	r7,a
      002AEC 4E               [12] 2568 	orl	a,r6
      002AED 60 3A            [24] 2569 	jz	00104$
                                   2570 ;	lcdCommands.c:400: temp2 = x % 2;
      002AEF 90 00 B1         [24] 2571 	mov	dptr,#__modsint_PARM_2
      002AF2 74 02            [12] 2572 	mov	a,#0x02
      002AF4 F0               [24] 2573 	movx	@dptr,a
      002AF5 E4               [12] 2574 	clr	a
      002AF6 A3               [24] 2575 	inc	dptr
      002AF7 F0               [24] 2576 	movx	@dptr,a
                                   2577 ;	lcdCommands.c:401: putchar(temp2);
      002AF8 8E 82            [24] 2578 	mov	dpl,r6
      002AFA 8F 83            [24] 2579 	mov	dph,r7
      002AFC C0 07            [24] 2580 	push	ar7
      002AFE C0 06            [24] 2581 	push	ar6
      002B00 12 33 D6         [24] 2582 	lcall	__modsint
      002B03 12 30 45         [24] 2583 	lcall	_putchar
      002B06 D0 06            [24] 2584 	pop	ar6
      002B08 D0 07            [24] 2585 	pop	ar7
                                   2586 ;	lcdCommands.c:402: x = x / 2;
      002B0A 90 00 BA         [24] 2587 	mov	dptr,#__divsint_PARM_2
      002B0D 74 02            [12] 2588 	mov	a,#0x02
      002B0F F0               [24] 2589 	movx	@dptr,a
      002B10 E4               [12] 2590 	clr	a
      002B11 A3               [24] 2591 	inc	dptr
      002B12 F0               [24] 2592 	movx	@dptr,a
      002B13 8E 82            [24] 2593 	mov	dpl,r6
      002B15 8F 83            [24] 2594 	mov	dph,r7
      002B17 12 34 EA         [24] 2595 	lcall	__divsint
      002B1A E5 82            [12] 2596 	mov	a,dpl
      002B1C 85 83 F0         [24] 2597 	mov	b,dph
      002B1F 90 00 1B         [24] 2598 	mov	dptr,#_printBinary_x_65536_128
      002B22 F0               [24] 2599 	movx	@dptr,a
      002B23 E5 F0            [12] 2600 	mov	a,b
      002B25 A3               [24] 2601 	inc	dptr
      002B26 F0               [24] 2602 	movx	@dptr,a
      002B27 80 BB            [24] 2603 	sjmp	00101$
      002B29                       2604 00104$:
                                   2605 ;	lcdCommands.c:404: }
      002B29 22               [24] 2606 	ret
                                   2607 ;------------------------------------------------------------
                                   2608 ;Allocation info for local variables in function 'atoh'
                                   2609 ;------------------------------------------------------------
                                   2610 ;ap                        Allocated with name '_atoh_ap_65536_131'
                                   2611 ;p                         Allocated with name '_atoh_p_65536_132'
                                   2612 ;digit                     Allocated with name '_atoh_digit_65536_132'
                                   2613 ;lcase                     Allocated with name '_atoh_lcase_65536_132'
                                   2614 ;n                         Allocated with name '_atoh_n_65537_133'
                                   2615 ;------------------------------------------------------------
                                   2616 ;	lcdCommands.c:406: unsigned char atoh(char *ap)
                                   2617 ;	-----------------------------------------
                                   2618 ;	 function atoh
                                   2619 ;	-----------------------------------------
      002B2A                       2620 _atoh:
      002B2A AF F0            [24] 2621 	mov	r7,b
      002B2C AE 83            [24] 2622 	mov	r6,dph
      002B2E E5 82            [12] 2623 	mov	a,dpl
      002B30 90 00 1D         [24] 2624 	mov	dptr,#_atoh_ap_65536_131
      002B33 F0               [24] 2625 	movx	@dptr,a
      002B34 EE               [12] 2626 	mov	a,r6
      002B35 A3               [24] 2627 	inc	dptr
      002B36 F0               [24] 2628 	movx	@dptr,a
      002B37 EF               [12] 2629 	mov	a,r7
      002B38 A3               [24] 2630 	inc	dptr
      002B39 F0               [24] 2631 	movx	@dptr,a
                                   2632 ;	lcdCommands.c:411: p = ap;
      002B3A 90 00 1D         [24] 2633 	mov	dptr,#_atoh_ap_65536_131
      002B3D E0               [24] 2634 	movx	a,@dptr
      002B3E FD               [12] 2635 	mov	r5,a
      002B3F A3               [24] 2636 	inc	dptr
      002B40 E0               [24] 2637 	movx	a,@dptr
      002B41 FE               [12] 2638 	mov	r6,a
      002B42 A3               [24] 2639 	inc	dptr
      002B43 E0               [24] 2640 	movx	a,@dptr
      002B44 FF               [12] 2641 	mov	r7,a
                                   2642 ;	lcdCommands.c:412: unsigned char n = 0;
      002B45 90 00 25         [24] 2643 	mov	dptr,#_atoh_n_65537_133
      002B48 E4               [12] 2644 	clr	a
      002B49 F0               [24] 2645 	movx	@dptr,a
                                   2646 ;	lcdCommands.c:413: while(*p == ' ' || *p == '	')
      002B4A                       2647 00102$:
      002B4A 8D 82            [24] 2648 	mov	dpl,r5
      002B4C 8E 83            [24] 2649 	mov	dph,r6
      002B4E 8F F0            [24] 2650 	mov	b,r7
      002B50 12 40 59         [24] 2651 	lcall	__gptrget
      002B53 FC               [12] 2652 	mov	r4,a
      002B54 BC 20 02         [24] 2653 	cjne	r4,#0x20,00178$
      002B57 80 03            [24] 2654 	sjmp	00103$
      002B59                       2655 00178$:
      002B59 BC 09 07         [24] 2656 	cjne	r4,#0x09,00141$
      002B5C                       2657 00103$:
                                   2658 ;	lcdCommands.c:414: p++;
      002B5C 0D               [12] 2659 	inc	r5
      002B5D BD 00 EA         [24] 2660 	cjne	r5,#0x00,00102$
      002B60 0E               [12] 2661 	inc	r6
      002B61 80 E7            [24] 2662 	sjmp	00102$
      002B63                       2663 00141$:
      002B63 90 00 20         [24] 2664 	mov	dptr,#_atoh_p_65536_132
      002B66 ED               [12] 2665 	mov	a,r5
      002B67 F0               [24] 2666 	movx	@dptr,a
      002B68 EE               [12] 2667 	mov	a,r6
      002B69 A3               [24] 2668 	inc	dptr
      002B6A F0               [24] 2669 	movx	@dptr,a
      002B6B EF               [12] 2670 	mov	a,r7
      002B6C A3               [24] 2671 	inc	dptr
      002B6D F0               [24] 2672 	movx	@dptr,a
                                   2673 ;	lcdCommands.c:416: if(*p == '0' && ((*(p+1) == 'x') || (*(p+1) == 'X')))
      002B6E BC 30 29         [24] 2674 	cjne	r4,#0x30,00118$
      002B71 74 01            [12] 2675 	mov	a,#0x01
      002B73 2D               [12] 2676 	add	a,r5
      002B74 FA               [12] 2677 	mov	r2,a
      002B75 E4               [12] 2678 	clr	a
      002B76 3E               [12] 2679 	addc	a,r6
      002B77 FB               [12] 2680 	mov	r3,a
      002B78 8F 04            [24] 2681 	mov	ar4,r7
      002B7A 8A 82            [24] 2682 	mov	dpl,r2
      002B7C 8B 83            [24] 2683 	mov	dph,r3
      002B7E 8C F0            [24] 2684 	mov	b,r4
      002B80 12 40 59         [24] 2685 	lcall	__gptrget
      002B83 FC               [12] 2686 	mov	r4,a
      002B84 BC 78 02         [24] 2687 	cjne	r4,#0x78,00184$
      002B87 80 03            [24] 2688 	sjmp	00105$
      002B89                       2689 00184$:
      002B89 BC 58 0E         [24] 2690 	cjne	r4,#0x58,00118$
      002B8C                       2691 00105$:
                                   2692 ;	lcdCommands.c:417: p+=2;
      002B8C 90 00 20         [24] 2693 	mov	dptr,#_atoh_p_65536_132
      002B8F 74 02            [12] 2694 	mov	a,#0x02
      002B91 2D               [12] 2695 	add	a,r5
      002B92 F0               [24] 2696 	movx	@dptr,a
      002B93 E4               [12] 2697 	clr	a
      002B94 3E               [12] 2698 	addc	a,r6
      002B95 A3               [24] 2699 	inc	dptr
      002B96 F0               [24] 2700 	movx	@dptr,a
      002B97 EF               [12] 2701 	mov	a,r7
      002B98 A3               [24] 2702 	inc	dptr
      002B99 F0               [24] 2703 	movx	@dptr,a
                                   2704 ;	lcdCommands.c:419: while ((digit = (*p >= '0' && *p <= '9')) ||
      002B9A                       2705 00118$:
      002B9A 90 00 20         [24] 2706 	mov	dptr,#_atoh_p_65536_132
      002B9D E0               [24] 2707 	movx	a,@dptr
      002B9E FD               [12] 2708 	mov	r5,a
      002B9F A3               [24] 2709 	inc	dptr
      002BA0 E0               [24] 2710 	movx	a,@dptr
      002BA1 FE               [12] 2711 	mov	r6,a
      002BA2 A3               [24] 2712 	inc	dptr
      002BA3 E0               [24] 2713 	movx	a,@dptr
      002BA4 FF               [12] 2714 	mov	r7,a
      002BA5 8D 82            [24] 2715 	mov	dpl,r5
      002BA7 8E 83            [24] 2716 	mov	dph,r6
      002BA9 8F F0            [24] 2717 	mov	b,r7
      002BAB 12 40 59         [24] 2718 	lcall	__gptrget
      002BAE FF               [12] 2719 	mov	r7,a
      002BAF BF 30 00         [24] 2720 	cjne	r7,#0x30,00187$
      002BB2                       2721 00187$:
      002BB2 40 05            [24] 2722 	jc	00123$
      002BB4 EF               [12] 2723 	mov	a,r7
      002BB5 24 C6            [12] 2724 	add	a,#0xff - 0x39
      002BB7 50 04            [24] 2725 	jnc	00124$
      002BB9                       2726 00123$:
      002BB9 7F 00            [12] 2727 	mov	r7,#0x00
      002BBB 80 02            [24] 2728 	sjmp	00125$
      002BBD                       2729 00124$:
      002BBD 7F 01            [12] 2730 	mov	r7,#0x01
      002BBF                       2731 00125$:
      002BBF EF               [12] 2732 	mov	a,r7
      002BC0 FD               [12] 2733 	mov	r5,a
      002BC1 33               [12] 2734 	rlc	a
      002BC2 95 E0            [12] 2735 	subb	a,acc
      002BC4 FE               [12] 2736 	mov	r6,a
      002BC5 EF               [12] 2737 	mov	a,r7
      002BC6 70 5C            [24] 2738 	jnz	00119$
                                   2739 ;	lcdCommands.c:420: (lcase = (*p >= 'a' && *p <= 'f')) ||
      002BC8 90 00 20         [24] 2740 	mov	dptr,#_atoh_p_65536_132
      002BCB E0               [24] 2741 	movx	a,@dptr
      002BCC FB               [12] 2742 	mov	r3,a
      002BCD A3               [24] 2743 	inc	dptr
      002BCE E0               [24] 2744 	movx	a,@dptr
      002BCF FC               [12] 2745 	mov	r4,a
      002BD0 A3               [24] 2746 	inc	dptr
      002BD1 E0               [24] 2747 	movx	a,@dptr
      002BD2 FF               [12] 2748 	mov	r7,a
      002BD3 8B 82            [24] 2749 	mov	dpl,r3
      002BD5 8C 83            [24] 2750 	mov	dph,r4
      002BD7 8F F0            [24] 2751 	mov	b,r7
      002BD9 12 40 59         [24] 2752 	lcall	__gptrget
      002BDC FF               [12] 2753 	mov	r7,a
      002BDD BF 61 00         [24] 2754 	cjne	r7,#0x61,00191$
      002BE0                       2755 00191$:
      002BE0 40 05            [24] 2756 	jc	00126$
      002BE2 EF               [12] 2757 	mov	a,r7
      002BE3 24 99            [12] 2758 	add	a,#0xff - 0x66
      002BE5 50 04            [24] 2759 	jnc	00127$
      002BE7                       2760 00126$:
      002BE7 7F 00            [12] 2761 	mov	r7,#0x00
      002BE9 80 02            [24] 2762 	sjmp	00128$
      002BEB                       2763 00127$:
      002BEB 7F 01            [12] 2764 	mov	r7,#0x01
      002BED                       2765 00128$:
      002BED EF               [12] 2766 	mov	a,r7
      002BEE FC               [12] 2767 	mov	r4,a
      002BEF 33               [12] 2768 	rlc	a
      002BF0 95 E0            [12] 2769 	subb	a,acc
      002BF2 FF               [12] 2770 	mov	r7,a
      002BF3 90 00 23         [24] 2771 	mov	dptr,#_atoh_lcase_65536_132
      002BF6 EC               [12] 2772 	mov	a,r4
      002BF7 F0               [24] 2773 	movx	@dptr,a
      002BF8 EF               [12] 2774 	mov	a,r7
      002BF9 A3               [24] 2775 	inc	dptr
      002BFA F0               [24] 2776 	movx	@dptr,a
      002BFB EC               [12] 2777 	mov	a,r4
      002BFC 4F               [12] 2778 	orl	a,r7
      002BFD 70 25            [24] 2779 	jnz	00119$
                                   2780 ;	lcdCommands.c:421: (*p >= 'A' && *p <= 'F')) {
      002BFF 90 00 20         [24] 2781 	mov	dptr,#_atoh_p_65536_132
      002C02 E0               [24] 2782 	movx	a,@dptr
      002C03 FB               [12] 2783 	mov	r3,a
      002C04 A3               [24] 2784 	inc	dptr
      002C05 E0               [24] 2785 	movx	a,@dptr
      002C06 FC               [12] 2786 	mov	r4,a
      002C07 A3               [24] 2787 	inc	dptr
      002C08 E0               [24] 2788 	movx	a,@dptr
      002C09 FF               [12] 2789 	mov	r7,a
      002C0A 8B 82            [24] 2790 	mov	dpl,r3
      002C0C 8C 83            [24] 2791 	mov	dph,r4
      002C0E 8F F0            [24] 2792 	mov	b,r7
      002C10 12 40 59         [24] 2793 	lcall	__gptrget
      002C13 FF               [12] 2794 	mov	r7,a
      002C14 BF 41 00         [24] 2795 	cjne	r7,#0x41,00195$
      002C17                       2796 00195$:
      002C17 50 03            [24] 2797 	jnc	00196$
      002C19 02 2C CF         [24] 2798 	ljmp	00120$
      002C1C                       2799 00196$:
      002C1C EF               [12] 2800 	mov	a,r7
      002C1D 24 B9            [12] 2801 	add	a,#0xff - 0x46
      002C1F 50 03            [24] 2802 	jnc	00197$
      002C21 02 2C CF         [24] 2803 	ljmp	00120$
      002C24                       2804 00197$:
      002C24                       2805 00119$:
                                   2806 ;	lcdCommands.c:422: n *= 16;
      002C24 90 00 25         [24] 2807 	mov	dptr,#_atoh_n_65537_133
      002C27 E0               [24] 2808 	movx	a,@dptr
      002C28 C4               [12] 2809 	swap	a
      002C29 54 F0            [12] 2810 	anl	a,#0xf0
      002C2B F0               [24] 2811 	movx	@dptr,a
                                   2812 ;	lcdCommands.c:423: if (digit)	n += *p++ - '0';
      002C2C ED               [12] 2813 	mov	a,r5
      002C2D 4E               [12] 2814 	orl	a,r6
      002C2E 60 31            [24] 2815 	jz	00113$
      002C30 90 00 20         [24] 2816 	mov	dptr,#_atoh_p_65536_132
      002C33 E0               [24] 2817 	movx	a,@dptr
      002C34 FD               [12] 2818 	mov	r5,a
      002C35 A3               [24] 2819 	inc	dptr
      002C36 E0               [24] 2820 	movx	a,@dptr
      002C37 FE               [12] 2821 	mov	r6,a
      002C38 A3               [24] 2822 	inc	dptr
      002C39 E0               [24] 2823 	movx	a,@dptr
      002C3A FF               [12] 2824 	mov	r7,a
      002C3B 8D 82            [24] 2825 	mov	dpl,r5
      002C3D 8E 83            [24] 2826 	mov	dph,r6
      002C3F 8F F0            [24] 2827 	mov	b,r7
      002C41 12 40 59         [24] 2828 	lcall	__gptrget
      002C44 FC               [12] 2829 	mov	r4,a
      002C45 90 00 20         [24] 2830 	mov	dptr,#_atoh_p_65536_132
      002C48 74 01            [12] 2831 	mov	a,#0x01
      002C4A 2D               [12] 2832 	add	a,r5
      002C4B F0               [24] 2833 	movx	@dptr,a
      002C4C E4               [12] 2834 	clr	a
      002C4D 3E               [12] 2835 	addc	a,r6
      002C4E A3               [24] 2836 	inc	dptr
      002C4F F0               [24] 2837 	movx	@dptr,a
      002C50 EF               [12] 2838 	mov	a,r7
      002C51 A3               [24] 2839 	inc	dptr
      002C52 F0               [24] 2840 	movx	@dptr,a
      002C53 EC               [12] 2841 	mov	a,r4
      002C54 24 D0            [12] 2842 	add	a,#0xd0
      002C56 FC               [12] 2843 	mov	r4,a
      002C57 90 00 25         [24] 2844 	mov	dptr,#_atoh_n_65537_133
      002C5A E0               [24] 2845 	movx	a,@dptr
      002C5B FF               [12] 2846 	mov	r7,a
      002C5C 2C               [12] 2847 	add	a,r4
      002C5D F0               [24] 2848 	movx	@dptr,a
      002C5E 02 2B 9A         [24] 2849 	ljmp	00118$
      002C61                       2850 00113$:
                                   2851 ;	lcdCommands.c:424: else if (lcase)	n += 10 + (*p++ - 'a');
      002C61 90 00 23         [24] 2852 	mov	dptr,#_atoh_lcase_65536_132
      002C64 E0               [24] 2853 	movx	a,@dptr
      002C65 F5 F0            [12] 2854 	mov	b,a
      002C67 A3               [24] 2855 	inc	dptr
      002C68 E0               [24] 2856 	movx	a,@dptr
      002C69 45 F0            [12] 2857 	orl	a,b
      002C6B 60 31            [24] 2858 	jz	00110$
      002C6D 90 00 20         [24] 2859 	mov	dptr,#_atoh_p_65536_132
      002C70 E0               [24] 2860 	movx	a,@dptr
      002C71 FD               [12] 2861 	mov	r5,a
      002C72 A3               [24] 2862 	inc	dptr
      002C73 E0               [24] 2863 	movx	a,@dptr
      002C74 FE               [12] 2864 	mov	r6,a
      002C75 A3               [24] 2865 	inc	dptr
      002C76 E0               [24] 2866 	movx	a,@dptr
      002C77 FF               [12] 2867 	mov	r7,a
      002C78 8D 82            [24] 2868 	mov	dpl,r5
      002C7A 8E 83            [24] 2869 	mov	dph,r6
      002C7C 8F F0            [24] 2870 	mov	b,r7
      002C7E 12 40 59         [24] 2871 	lcall	__gptrget
      002C81 FC               [12] 2872 	mov	r4,a
      002C82 90 00 20         [24] 2873 	mov	dptr,#_atoh_p_65536_132
      002C85 74 01            [12] 2874 	mov	a,#0x01
      002C87 2D               [12] 2875 	add	a,r5
      002C88 F0               [24] 2876 	movx	@dptr,a
      002C89 E4               [12] 2877 	clr	a
      002C8A 3E               [12] 2878 	addc	a,r6
      002C8B A3               [24] 2879 	inc	dptr
      002C8C F0               [24] 2880 	movx	@dptr,a
      002C8D EF               [12] 2881 	mov	a,r7
      002C8E A3               [24] 2882 	inc	dptr
      002C8F F0               [24] 2883 	movx	@dptr,a
      002C90 74 A9            [12] 2884 	mov	a,#0xa9
      002C92 2C               [12] 2885 	add	a,r4
      002C93 FC               [12] 2886 	mov	r4,a
      002C94 90 00 25         [24] 2887 	mov	dptr,#_atoh_n_65537_133
      002C97 E0               [24] 2888 	movx	a,@dptr
      002C98 FF               [12] 2889 	mov	r7,a
      002C99 2C               [12] 2890 	add	a,r4
      002C9A F0               [24] 2891 	movx	@dptr,a
      002C9B 02 2B 9A         [24] 2892 	ljmp	00118$
      002C9E                       2893 00110$:
                                   2894 ;	lcdCommands.c:425: else		n += 10 + (*p++ - 'A');
      002C9E 90 00 20         [24] 2895 	mov	dptr,#_atoh_p_65536_132
      002CA1 E0               [24] 2896 	movx	a,@dptr
      002CA2 FD               [12] 2897 	mov	r5,a
      002CA3 A3               [24] 2898 	inc	dptr
      002CA4 E0               [24] 2899 	movx	a,@dptr
      002CA5 FE               [12] 2900 	mov	r6,a
      002CA6 A3               [24] 2901 	inc	dptr
      002CA7 E0               [24] 2902 	movx	a,@dptr
      002CA8 FF               [12] 2903 	mov	r7,a
      002CA9 8D 82            [24] 2904 	mov	dpl,r5
      002CAB 8E 83            [24] 2905 	mov	dph,r6
      002CAD 8F F0            [24] 2906 	mov	b,r7
      002CAF 12 40 59         [24] 2907 	lcall	__gptrget
      002CB2 FC               [12] 2908 	mov	r4,a
      002CB3 90 00 20         [24] 2909 	mov	dptr,#_atoh_p_65536_132
      002CB6 74 01            [12] 2910 	mov	a,#0x01
      002CB8 2D               [12] 2911 	add	a,r5
      002CB9 F0               [24] 2912 	movx	@dptr,a
      002CBA E4               [12] 2913 	clr	a
      002CBB 3E               [12] 2914 	addc	a,r6
      002CBC A3               [24] 2915 	inc	dptr
      002CBD F0               [24] 2916 	movx	@dptr,a
      002CBE EF               [12] 2917 	mov	a,r7
      002CBF A3               [24] 2918 	inc	dptr
      002CC0 F0               [24] 2919 	movx	@dptr,a
      002CC1 74 C9            [12] 2920 	mov	a,#0xc9
      002CC3 2C               [12] 2921 	add	a,r4
      002CC4 FC               [12] 2922 	mov	r4,a
      002CC5 90 00 25         [24] 2923 	mov	dptr,#_atoh_n_65537_133
      002CC8 E0               [24] 2924 	movx	a,@dptr
      002CC9 FF               [12] 2925 	mov	r7,a
      002CCA 2C               [12] 2926 	add	a,r4
      002CCB F0               [24] 2927 	movx	@dptr,a
      002CCC 02 2B 9A         [24] 2928 	ljmp	00118$
      002CCF                       2929 00120$:
                                   2930 ;	lcdCommands.c:427: return(n);
      002CCF 90 00 25         [24] 2931 	mov	dptr,#_atoh_n_65537_133
      002CD2 E0               [24] 2932 	movx	a,@dptr
                                   2933 ;	lcdCommands.c:428: }
      002CD3 F5 82            [12] 2934 	mov	dpl,a
      002CD5 22               [24] 2935 	ret
                                   2936 ;------------------------------------------------------------
                                   2937 ;Allocation info for local variables in function 'printMenu'
                                   2938 ;------------------------------------------------------------
                                   2939 ;i                         Allocated with name '_printMenu_i_65536_135'
                                   2940 ;------------------------------------------------------------
                                   2941 ;	lcdCommands.c:430: void printMenu()
                                   2942 ;	-----------------------------------------
                                   2943 ;	 function printMenu
                                   2944 ;	-----------------------------------------
      002CD6                       2945 _printMenu:
                                   2946 ;	lcdCommands.c:433: printf("%s",uiLines);
      002CD6 74 79            [12] 2947 	mov	a,#_uiLines
      002CD8 C0 E0            [24] 2948 	push	acc
      002CDA 74 40            [12] 2949 	mov	a,#(_uiLines >> 8)
      002CDC C0 E0            [24] 2950 	push	acc
      002CDE 74 80            [12] 2951 	mov	a,#0x80
      002CE0 C0 E0            [24] 2952 	push	acc
      002CE2 74 DB            [12] 2953 	mov	a,#___str_13
      002CE4 C0 E0            [24] 2954 	push	acc
      002CE6 74 43            [12] 2955 	mov	a,#(___str_13 >> 8)
      002CE8 C0 E0            [24] 2956 	push	acc
      002CEA 74 80            [12] 2957 	mov	a,#0x80
      002CEC C0 E0            [24] 2958 	push	acc
      002CEE 12 36 37         [24] 2959 	lcall	_printf
      002CF1 E5 81            [12] 2960 	mov	a,sp
      002CF3 24 FA            [12] 2961 	add	a,#0xfa
      002CF5 F5 81            [12] 2962 	mov	sp,a
                                   2963 ;	lcdCommands.c:434: printf("\n\r");
      002CF7 74 1A            [12] 2964 	mov	a,#___str_6
      002CF9 C0 E0            [24] 2965 	push	acc
      002CFB 74 43            [12] 2966 	mov	a,#(___str_6 >> 8)
      002CFD C0 E0            [24] 2967 	push	acc
      002CFF 74 80            [12] 2968 	mov	a,#0x80
      002D01 C0 E0            [24] 2969 	push	acc
      002D03 12 36 37         [24] 2970 	lcall	_printf
      002D06 15 81            [12] 2971 	dec	sp
      002D08 15 81            [12] 2972 	dec	sp
      002D0A 15 81            [12] 2973 	dec	sp
                                   2974 ;	lcdCommands.c:435: for ( i = 0; i < 10; i++)
      002D0C 7E 00            [12] 2975 	mov	r6,#0x00
      002D0E 7F 00            [12] 2976 	mov	r7,#0x00
      002D10                       2977 00102$:
                                   2978 ;	lcdCommands.c:437: printf("%s",messages[i]);
      002D10 90 00 AF         [24] 2979 	mov	dptr,#__mulint_PARM_2
      002D13 EE               [12] 2980 	mov	a,r6
      002D14 F0               [24] 2981 	movx	@dptr,a
      002D15 EF               [12] 2982 	mov	a,r7
      002D16 A3               [24] 2983 	inc	dptr
      002D17 F0               [24] 2984 	movx	@dptr,a
      002D18 90 00 28         [24] 2985 	mov	dptr,#0x0028
      002D1B C0 07            [24] 2986 	push	ar7
      002D1D C0 06            [24] 2987 	push	ar6
      002D1F 12 33 B6         [24] 2988 	lcall	__mulint
      002D22 AC 82            [24] 2989 	mov	r4,dpl
      002D24 AD 83            [24] 2990 	mov	r5,dph
      002D26 EC               [12] 2991 	mov	a,r4
      002D27 24 B5            [12] 2992 	add	a,#_messages
      002D29 FC               [12] 2993 	mov	r4,a
      002D2A ED               [12] 2994 	mov	a,r5
      002D2B 34 40            [12] 2995 	addc	a,#(_messages >> 8)
      002D2D FD               [12] 2996 	mov	r5,a
      002D2E 7B 80            [12] 2997 	mov	r3,#0x80
      002D30 C0 04            [24] 2998 	push	ar4
      002D32 C0 05            [24] 2999 	push	ar5
      002D34 C0 03            [24] 3000 	push	ar3
      002D36 74 DB            [12] 3001 	mov	a,#___str_13
      002D38 C0 E0            [24] 3002 	push	acc
      002D3A 74 43            [12] 3003 	mov	a,#(___str_13 >> 8)
      002D3C C0 E0            [24] 3004 	push	acc
      002D3E EB               [12] 3005 	mov	a,r3
      002D3F C0 E0            [24] 3006 	push	acc
      002D41 12 36 37         [24] 3007 	lcall	_printf
      002D44 E5 81            [12] 3008 	mov	a,sp
      002D46 24 FA            [12] 3009 	add	a,#0xfa
      002D48 F5 81            [12] 3010 	mov	sp,a
                                   3011 ;	lcdCommands.c:438: printf_tiny("\n\r");
      002D4A 74 1A            [12] 3012 	mov	a,#___str_6
      002D4C C0 E0            [24] 3013 	push	acc
      002D4E 74 43            [12] 3014 	mov	a,#(___str_6 >> 8)
      002D50 C0 E0            [24] 3015 	push	acc
      002D52 12 32 AD         [24] 3016 	lcall	_printf_tiny
      002D55 15 81            [12] 3017 	dec	sp
      002D57 15 81            [12] 3018 	dec	sp
      002D59 D0 06            [24] 3019 	pop	ar6
      002D5B D0 07            [24] 3020 	pop	ar7
                                   3021 ;	lcdCommands.c:435: for ( i = 0; i < 10; i++)
      002D5D 0E               [12] 3022 	inc	r6
      002D5E BE 00 01         [24] 3023 	cjne	r6,#0x00,00115$
      002D61 0F               [12] 3024 	inc	r7
      002D62                       3025 00115$:
      002D62 C3               [12] 3026 	clr	c
      002D63 EE               [12] 3027 	mov	a,r6
      002D64 94 0A            [12] 3028 	subb	a,#0x0a
      002D66 EF               [12] 3029 	mov	a,r7
      002D67 64 80            [12] 3030 	xrl	a,#0x80
      002D69 94 80            [12] 3031 	subb	a,#0x80
      002D6B 40 A3            [24] 3032 	jc	00102$
                                   3033 ;	lcdCommands.c:440: printf("%s",uiLines);
      002D6D 74 79            [12] 3034 	mov	a,#_uiLines
      002D6F C0 E0            [24] 3035 	push	acc
      002D71 74 40            [12] 3036 	mov	a,#(_uiLines >> 8)
      002D73 C0 E0            [24] 3037 	push	acc
      002D75 74 80            [12] 3038 	mov	a,#0x80
      002D77 C0 E0            [24] 3039 	push	acc
      002D79 74 DB            [12] 3040 	mov	a,#___str_13
      002D7B C0 E0            [24] 3041 	push	acc
      002D7D 74 43            [12] 3042 	mov	a,#(___str_13 >> 8)
      002D7F C0 E0            [24] 3043 	push	acc
      002D81 74 80            [12] 3044 	mov	a,#0x80
      002D83 C0 E0            [24] 3045 	push	acc
      002D85 12 36 37         [24] 3046 	lcall	_printf
      002D88 E5 81            [12] 3047 	mov	a,sp
      002D8A 24 FA            [12] 3048 	add	a,#0xfa
      002D8C F5 81            [12] 3049 	mov	sp,a
                                   3050 ;	lcdCommands.c:441: printf("\n\r");
      002D8E 74 1A            [12] 3051 	mov	a,#___str_6
      002D90 C0 E0            [24] 3052 	push	acc
      002D92 74 43            [12] 3053 	mov	a,#(___str_6 >> 8)
      002D94 C0 E0            [24] 3054 	push	acc
      002D96 74 80            [12] 3055 	mov	a,#0x80
      002D98 C0 E0            [24] 3056 	push	acc
      002D9A 12 36 37         [24] 3057 	lcall	_printf
      002D9D 15 81            [12] 3058 	dec	sp
      002D9F 15 81            [12] 3059 	dec	sp
      002DA1 15 81            [12] 3060 	dec	sp
                                   3061 ;	lcdCommands.c:443: }
      002DA3 22               [24] 3062 	ret
                                   3063 	.area CSEG    (CODE)
                                   3064 	.area CONST   (CODE)
      004079                       3065 _uiLines:
      004079 0A                    3066 	.db 0x0a
      00407A 0D                    3067 	.db 0x0d
      00407B 2D 2D 2D 2D 2D 2D 2D  3068 	.ascii "-------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
      0040AC 0A                    3069 	.db 0x0a
      0040AD 0D                    3070 	.db 0x0d
      0040AE 00                    3071 	.db 0x00
      0040AF 00                    3072 	.db 0x00
      0040B0 00                    3073 	.db 0x00
      0040B1 00                    3074 	.db 0x00
      0040B2 00                    3075 	.db 0x00
      0040B3 00                    3076 	.db 0x00
      0040B4 00                    3077 	.db 0x00
      0040B5                       3078 _messages:
      0040B5 20 45 6E 74 65 72 20  3079 	.ascii " Enter w to write a character "
             77 20 74 6F 20 77 72
             69 74 65 20 61 20 63
             68 61 72 61 63 74 65
             72 20
      0040D3 00                    3080 	.db 0x00
      0040D4 00                    3081 	.db 0x00
      0040D5 00                    3082 	.db 0x00
      0040D6 00                    3083 	.db 0x00
      0040D7 00                    3084 	.db 0x00
      0040D8 00                    3085 	.db 0x00
      0040D9 00                    3086 	.db 0x00
      0040DA 00                    3087 	.db 0x00
      0040DB 00                    3088 	.db 0x00
      0040DC 00                    3089 	.db 0x00
      0040DD 20 45 6E 74 65 72 20  3090 	.ascii " Enter s to write a string"
             73 20 74 6F 20 77 72
             69 74 65 20 61 20 73
             74 72 69 6E 67
      0040F7 00                    3091 	.db 0x00
      0040F8 00                    3092 	.db 0x00
      0040F9 00                    3093 	.db 0x00
      0040FA 00                    3094 	.db 0x00
      0040FB 00                    3095 	.db 0x00
      0040FC 00                    3096 	.db 0x00
      0040FD 00                    3097 	.db 0x00
      0040FE 00                    3098 	.db 0x00
      0040FF 00                    3099 	.db 0x00
      004100 00                    3100 	.db 0x00
      004101 00                    3101 	.db 0x00
      004102 00                    3102 	.db 0x00
      004103 00                    3103 	.db 0x00
      004104 00                    3104 	.db 0x00
      004105 20 45 6E 74 65 72 20  3105 	.ascii " Enter p to play pacman "
             70 20 74 6F 20 70 6C
             61 79 20 70 61 63 6D
             61 6E 20
      00411D 00                    3106 	.db 0x00
      00411E 00                    3107 	.db 0x00
      00411F 00                    3108 	.db 0x00
      004120 00                    3109 	.db 0x00
      004121 00                    3110 	.db 0x00
      004122 00                    3111 	.db 0x00
      004123 00                    3112 	.db 0x00
      004124 00                    3113 	.db 0x00
      004125 00                    3114 	.db 0x00
      004126 00                    3115 	.db 0x00
      004127 00                    3116 	.db 0x00
      004128 00                    3117 	.db 0x00
      004129 00                    3118 	.db 0x00
      00412A 00                    3119 	.db 0x00
      00412B 00                    3120 	.db 0x00
      00412C 00                    3121 	.db 0x00
      00412D 20 45 6E 74 65 72 20  3122 	.ascii " Enter d to perform RAM dump "
             64 20 74 6F 20 70 65
             72 66 6F 72 6D 20 52
             41 4D 20 64 75 6D 70
             20
      00414A 00                    3123 	.db 0x00
      00414B 00                    3124 	.db 0x00
      00414C 00                    3125 	.db 0x00
      00414D 00                    3126 	.db 0x00
      00414E 00                    3127 	.db 0x00
      00414F 00                    3128 	.db 0x00
      004150 00                    3129 	.db 0x00
      004151 00                    3130 	.db 0x00
      004152 00                    3131 	.db 0x00
      004153 00                    3132 	.db 0x00
      004154 00                    3133 	.db 0x00
      004155 20 45 6E 74 65 72 20  3134 	.ascii " Enter g for custom character"
             67 20 66 6F 72 20 63
             75 73 74 6F 6D 20 63
             68 61 72 61 63 74 65
             72
      004172 00                    3135 	.db 0x00
      004173 00                    3136 	.db 0x00
      004174 00                    3137 	.db 0x00
      004175 00                    3138 	.db 0x00
      004176 00                    3139 	.db 0x00
      004177 00                    3140 	.db 0x00
      004178 00                    3141 	.db 0x00
      004179 00                    3142 	.db 0x00
      00417A 00                    3143 	.db 0x00
      00417B 00                    3144 	.db 0x00
      00417C 00                    3145 	.db 0x00
      00417D 20 45 6E 74 65 72 20  3146 	.ascii " Enter x to reset timer"
             78 20 74 6F 20 72 65
             73 65 74 20 74 69 6D
             65 72
      004194 00                    3147 	.db 0x00
      004195 00                    3148 	.db 0x00
      004196 00                    3149 	.db 0x00
      004197 00                    3150 	.db 0x00
      004198 00                    3151 	.db 0x00
      004199 00                    3152 	.db 0x00
      00419A 00                    3153 	.db 0x00
      00419B 00                    3154 	.db 0x00
      00419C 00                    3155 	.db 0x00
      00419D 00                    3156 	.db 0x00
      00419E 00                    3157 	.db 0x00
      00419F 00                    3158 	.db 0x00
      0041A0 00                    3159 	.db 0x00
      0041A1 00                    3160 	.db 0x00
      0041A2 00                    3161 	.db 0x00
      0041A3 00                    3162 	.db 0x00
      0041A4 00                    3163 	.db 0x00
      0041A5 20 45 6E 74 65 72 20  3164 	.ascii " Enter y to pause timer"
             79 20 74 6F 20 70 61
             75 73 65 20 74 69 6D
             65 72
      0041BC 00                    3165 	.db 0x00
      0041BD 00                    3166 	.db 0x00
      0041BE 00                    3167 	.db 0x00
      0041BF 00                    3168 	.db 0x00
      0041C0 00                    3169 	.db 0x00
      0041C1 00                    3170 	.db 0x00
      0041C2 00                    3171 	.db 0x00
      0041C3 00                    3172 	.db 0x00
      0041C4 00                    3173 	.db 0x00
      0041C5 00                    3174 	.db 0x00
      0041C6 00                    3175 	.db 0x00
      0041C7 00                    3176 	.db 0x00
      0041C8 00                    3177 	.db 0x00
      0041C9 00                    3178 	.db 0x00
      0041CA 00                    3179 	.db 0x00
      0041CB 00                    3180 	.db 0x00
      0041CC 00                    3181 	.db 0x00
      0041CD 20 45 6E 74 65 72 20  3182 	.ascii " Enter z to resume timer"
             7A 20 74 6F 20 72 65
             73 75 6D 65 20 74 69
             6D 65 72
      0041E5 00                    3183 	.db 0x00
      0041E6 00                    3184 	.db 0x00
      0041E7 00                    3185 	.db 0x00
      0041E8 00                    3186 	.db 0x00
      0041E9 00                    3187 	.db 0x00
      0041EA 00                    3188 	.db 0x00
      0041EB 00                    3189 	.db 0x00
      0041EC 00                    3190 	.db 0x00
      0041ED 00                    3191 	.db 0x00
      0041EE 00                    3192 	.db 0x00
      0041EF 00                    3193 	.db 0x00
      0041F0 00                    3194 	.db 0x00
      0041F1 00                    3195 	.db 0x00
      0041F2 00                    3196 	.db 0x00
      0041F3 00                    3197 	.db 0x00
      0041F4 00                    3198 	.db 0x00
      0041F5 20 45 6E 74 65 72 20  3199 	.ascii " Enter c to clear screen"
             63 20 74 6F 20 63 6C
             65 61 72 20 73 63 72
             65 65 6E
      00420D 00                    3200 	.db 0x00
      00420E 00                    3201 	.db 0x00
      00420F 00                    3202 	.db 0x00
      004210 00                    3203 	.db 0x00
      004211 00                    3204 	.db 0x00
      004212 00                    3205 	.db 0x00
      004213 00                    3206 	.db 0x00
      004214 00                    3207 	.db 0x00
      004215 00                    3208 	.db 0x00
      004216 00                    3209 	.db 0x00
      004217 00                    3210 	.db 0x00
      004218 00                    3211 	.db 0x00
      004219 00                    3212 	.db 0x00
      00421A 00                    3213 	.db 0x00
      00421B 00                    3214 	.db 0x00
      00421C 00                    3215 	.db 0x00
      00421D 20 45 6E 74 65 72 20  3216 	.ascii " Enter m for main menu "
             6D 20 66 6F 72 20 6D
             61 69 6E 20 6D 65 6E
             75 20
      004234 00                    3217 	.db 0x00
      004235 00                    3218 	.db 0x00
      004236 00                    3219 	.db 0x00
      004237 00                    3220 	.db 0x00
      004238 00                    3221 	.db 0x00
      004239 00                    3222 	.db 0x00
      00423A 00                    3223 	.db 0x00
      00423B 00                    3224 	.db 0x00
      00423C 00                    3225 	.db 0x00
      00423D 00                    3226 	.db 0x00
      00423E 00                    3227 	.db 0x00
      00423F 00                    3228 	.db 0x00
      004240 00                    3229 	.db 0x00
      004241 00                    3230 	.db 0x00
      004242 00                    3231 	.db 0x00
      004243 00                    3232 	.db 0x00
      004244 00                    3233 	.db 0x00
      004245 00                    3234 	.db 0x00
      004246 00                    3235 	.db 0x00
      004247 00                    3236 	.db 0x00
      004248 00                    3237 	.db 0x00
      004249 00                    3238 	.db 0x00
      00424A 00                    3239 	.db 0x00
      00424B 00                    3240 	.db 0x00
      00424C 00                    3241 	.db 0x00
      00424D 00                    3242 	.db 0x00
      00424E 00                    3243 	.db 0x00
      00424F 00                    3244 	.db 0x00
      004250 00                    3245 	.db 0x00
      004251 00                    3246 	.db 0x00
      004252 00                    3247 	.db 0x00
      004253 00                    3248 	.db 0x00
      004254 00                    3249 	.db 0x00
      004255 00                    3250 	.db 0x00
      004256 00                    3251 	.db 0x00
      004257 00                    3252 	.db 0x00
      004258 00                    3253 	.db 0x00
      004259 00                    3254 	.db 0x00
      00425A 00                    3255 	.db 0x00
      00425B 00                    3256 	.db 0x00
      00425C 00                    3257 	.db 0x00
      00425D 00                    3258 	.db 0x00
      00425E 00                    3259 	.db 0x00
      00425F 00                    3260 	.db 0x00
      004260 00                    3261 	.db 0x00
      004261 00                    3262 	.db 0x00
      004262 00                    3263 	.db 0x00
      004263 00                    3264 	.db 0x00
      004264 00                    3265 	.db 0x00
      004265 00                    3266 	.db 0x00
      004266 00                    3267 	.db 0x00
      004267 00                    3268 	.db 0x00
      004268 00                    3269 	.db 0x00
      004269 00                    3270 	.db 0x00
      00426A 00                    3271 	.db 0x00
      00426B 00                    3272 	.db 0x00
      00426C 00                    3273 	.db 0x00
      00426D                       3274 _lookUpTable:
      00426D 00                    3275 	.db #0x00	; 0
      00426E 01                    3276 	.db #0x01	; 1
      00426F 02                    3277 	.db #0x02	; 2
      004270 03                    3278 	.db #0x03	; 3
      004271 04                    3279 	.db #0x04	; 4
      004272 05                    3280 	.db #0x05	; 5
      004273 06                    3281 	.db #0x06	; 6
      004274 07                    3282 	.db #0x07	; 7
      004275 08                    3283 	.db #0x08	; 8
      004276 09                    3284 	.db #0x09	; 9
      004277 0A                    3285 	.db #0x0a	; 10
      004278 0B                    3286 	.db #0x0b	; 11
      004279 0C                    3287 	.db #0x0c	; 12
      00427A 0D                    3288 	.db #0x0d	; 13
      00427B 0E                    3289 	.db #0x0e	; 14
      00427C 0F                    3290 	.db #0x0f	; 15
      00427D 40                    3291 	.db #0x40	; 64
      00427E 41                    3292 	.db #0x41	; 65	'A'
      00427F 42                    3293 	.db #0x42	; 66	'B'
      004280 43                    3294 	.db #0x43	; 67	'C'
      004281 44                    3295 	.db #0x44	; 68	'D'
      004282 45                    3296 	.db #0x45	; 69	'E'
      004283 46                    3297 	.db #0x46	; 70	'F'
      004284 47                    3298 	.db #0x47	; 71	'G'
      004285 48                    3299 	.db #0x48	; 72	'H'
      004286 49                    3300 	.db #0x49	; 73	'I'
      004287 4A                    3301 	.db #0x4a	; 74	'J'
      004288 4B                    3302 	.db #0x4b	; 75	'K'
      004289 4C                    3303 	.db #0x4c	; 76	'L'
      00428A 4D                    3304 	.db #0x4d	; 77	'M'
      00428B 4E                    3305 	.db #0x4e	; 78	'N'
      00428C 4F                    3306 	.db #0x4f	; 79	'O'
      00428D 10                    3307 	.db #0x10	; 16
      00428E 11                    3308 	.db #0x11	; 17
      00428F 12                    3309 	.db #0x12	; 18
      004290 13                    3310 	.db #0x13	; 19
      004291 14                    3311 	.db #0x14	; 20
      004292 15                    3312 	.db #0x15	; 21
      004293 16                    3313 	.db #0x16	; 22
      004294 17                    3314 	.db #0x17	; 23
      004295 18                    3315 	.db #0x18	; 24
      004296 19                    3316 	.db #0x19	; 25
      004297 1A                    3317 	.db #0x1a	; 26
      004298 1B                    3318 	.db #0x1b	; 27
      004299 1C                    3319 	.db #0x1c	; 28
      00429A 1D                    3320 	.db #0x1d	; 29
      00429B 1E                    3321 	.db #0x1e	; 30
      00429C 1F                    3322 	.db #0x1f	; 31
      00429D 50                    3323 	.db #0x50	; 80	'P'
      00429E 51                    3324 	.db #0x51	; 81	'Q'
      00429F 52                    3325 	.db #0x52	; 82	'R'
      0042A0 53                    3326 	.db #0x53	; 83	'S'
      0042A1 54                    3327 	.db #0x54	; 84	'T'
      0042A2 55                    3328 	.db #0x55	; 85	'U'
      0042A3 56                    3329 	.db #0x56	; 86	'V'
      0042A4 57                    3330 	.db #0x57	; 87	'W'
      0042A5 58                    3331 	.db #0x58	; 88	'X'
      0042A6 59                    3332 	.db #0x59	; 89	'Y'
      0042A7 5A                    3333 	.db #0x5a	; 90	'Z'
      0042A8 5B                    3334 	.db #0x5b	; 91
      0042A9 5C                    3335 	.db #0x5c	; 92
      0042AA 5D                    3336 	.db #0x5d	; 93
      0042AB 5E                    3337 	.db #0x5e	; 94
      0042AC 5F                    3338 	.db #0x5f	; 95
                                   3339 	.area CONST   (CODE)
      0042AD                       3340 ___str_0:
      0042AD 25 78 20 25 78        3341 	.ascii "%x %x"
      0042B2 0A                    3342 	.db 0x0a
      0042B3 0D                    3343 	.db 0x0d
      0042B4 00                    3344 	.db 0x00
                                   3345 	.area CSEG    (CODE)
                                   3346 	.area CONST   (CODE)
      0042B5                       3347 ___str_1:
      0042B5 0A                    3348 	.db 0x0a
      0042B6 0D                    3349 	.db 0x0d
      0042B7 45 6E 74 65 72 20 76  3350 	.ascii "Enter value for Row %d"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 25
             64
      0042CD 0A                    3351 	.db 0x0a
      0042CE 0D                    3352 	.db 0x0d
      0042CF 00                    3353 	.db 0x00
                                   3354 	.area CSEG    (CODE)
                                   3355 	.area CONST   (CODE)
      0042D0                       3356 ___str_2:
      0042D0 0A                    3357 	.db 0x0a
      0042D1 0D                    3358 	.db 0x0d
      0042D2 50 6C 65 61 73 65 20  3359 	.ascii "Please Input a maximum of 48 characters"
             49 6E 70 75 74 20 61
             20 6D 61 78 69 6D 75
             6D 20 6F 66 20 34 38
             20 63 68 61 72 61 63
             74 65 72 73
      0042F9 0A                    3360 	.db 0x0a
      0042FA 0D                    3361 	.db 0x0d
      0042FB 00                    3362 	.db 0x00
                                   3363 	.area CSEG    (CODE)
                                   3364 	.area CONST   (CODE)
      0042FC                       3365 ___str_3:
      0042FC 0A                    3366 	.db 0x0a
      0042FD 0D                    3367 	.db 0x0d
      0042FE 44 44 52 41 4D 20 43  3368 	.ascii "DDRAM Contents"
             6F 6E 74 65 6E 74 73
      00430C 0A                    3369 	.db 0x0a
      00430D 0D                    3370 	.db 0x0d
      00430E 00                    3371 	.db 0x00
                                   3372 	.area CSEG    (CODE)
                                   3373 	.area CONST   (CODE)
      00430F                       3374 ___str_4:
      00430F 25 32 78 3A 20        3375 	.ascii "%2x: "
      004314 00                    3376 	.db 0x00
                                   3377 	.area CSEG    (CODE)
                                   3378 	.area CONST   (CODE)
      004315                       3379 ___str_5:
      004315 25 32 78 20           3380 	.ascii "%2x "
      004319 00                    3381 	.db 0x00
                                   3382 	.area CSEG    (CODE)
                                   3383 	.area CONST   (CODE)
      00431A                       3384 ___str_6:
      00431A 0A                    3385 	.db 0x0a
      00431B 0D                    3386 	.db 0x0d
      00431C 00                    3387 	.db 0x00
                                   3388 	.area CSEG    (CODE)
                                   3389 	.area CONST   (CODE)
      00431D                       3390 ___str_7:
      00431D 0A                    3391 	.db 0x0a
      00431E 0D                    3392 	.db 0x0d
      00431F 43 47 52 41 4D 20 43  3393 	.ascii "CGRAM Contents"
             6F 6E 74 65 6E 74 73
      00432D 0A                    3394 	.db 0x0a
      00432E 0D                    3395 	.db 0x0d
      00432F 00                    3396 	.db 0x00
                                   3397 	.area CSEG    (CODE)
                                   3398 	.area CONST   (CODE)
      004330                       3399 ___str_8:
      004330 0A                    3400 	.db 0x0a
      004331 0D                    3401 	.db 0x0d
      004332 43 68 61 72 61 63 74  3402 	.ascii "Character %d"
             65 72 20 25 64
      00433E 0A                    3403 	.db 0x0a
      00433F 0D                    3404 	.db 0x0d
      004340 00                    3405 	.db 0x00
                                   3406 	.area CSEG    (CODE)
                                   3407 	.area CONST   (CODE)
      004341                       3408 ___str_9:
      004341 52 6F 77 20 25 32 78  3409 	.ascii "Row %2x: "
             3A 20
      00434A 00                    3410 	.db 0x00
                                   3411 	.area CSEG    (CODE)
                                   3412 	.area CONST   (CODE)
      00434B                       3413 ___str_10:
      00434B 57 45 4C 43 4F 4D 45  3414 	.ascii "WELCOME 2 PACMANPRESS G TO START"
             20 32 20 50 41 43 4D
             41 4E 50 52 45 53 53
             20 47 20 54 4F 20 53
             54 41 52 54
      00436B 00                    3415 	.db 0x00
                                   3416 	.area CSEG    (CODE)
                                   3417 	.area CONST   (CODE)
      00436C                       3418 ___str_11:
      00436C 0A                    3419 	.db 0x0a
      00436D 0D                    3420 	.db 0x0d
      00436E 45 6E 74 65 72 20 77  3421 	.ascii "Enter w to go up, s to go down, a to go left and d to go rig"
             20 74 6F 20 67 6F 20
             75 70 2C 20 73 20 74
             6F 20 67 6F 20 64 6F
             77 6E 2C 20 61 20 74
             6F 20 67 6F 20 6C 65
             66 74 20 61 6E 64 20
             64 20 74 6F 20 67 6F
             20 72 69 67
      0043AA 68 74 20 61 6E 64 20  3422 	.ascii "ht and q to quit"
             71 20 74 6F 20 71 75
             69 74
      0043BA 0A                    3423 	.db 0x0a
      0043BB 0D                    3424 	.db 0x0d
      0043BC 00                    3425 	.db 0x00
                                   3426 	.area CSEG    (CODE)
                                   3427 	.area CONST   (CODE)
      0043BD                       3428 ___str_12:
      0043BD 47 41 4D 45 20 4F 56  3429 	.ascii "GAME OVER! PRESS p to restart"
             45 52 21 20 50 52 45
             53 53 20 70 20 74 6F
             20 72 65 73 74 61 72
             74
      0043DA 00                    3430 	.db 0x00
                                   3431 	.area CSEG    (CODE)
                                   3432 	.area CONST   (CODE)
      0043DB                       3433 ___str_13:
      0043DB 25 73                 3434 	.ascii "%s"
      0043DD 00                    3435 	.db 0x00
                                   3436 	.area CSEG    (CODE)
                                   3437 	.area XINIT   (CODE)
                                   3438 	.area CABS    (ABS,CODE)
