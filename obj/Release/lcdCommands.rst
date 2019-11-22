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
                                     14 	.globl _atoi
                                     15 	.globl _memset
                                     16 	.globl _printf_tiny
                                     17 	.globl _putchar
                                     18 	.globl _getchar
                                     19 	.globl _printf
                                     20 	.globl _P5_7
                                     21 	.globl _P5_6
                                     22 	.globl _P5_5
                                     23 	.globl _P5_4
                                     24 	.globl _P5_3
                                     25 	.globl _P5_2
                                     26 	.globl _P5_1
                                     27 	.globl _P5_0
                                     28 	.globl _P4_7
                                     29 	.globl _P4_6
                                     30 	.globl _P4_5
                                     31 	.globl _P4_4
                                     32 	.globl _P4_3
                                     33 	.globl _P4_2
                                     34 	.globl _P4_1
                                     35 	.globl _P4_0
                                     36 	.globl _PX0L
                                     37 	.globl _PT0L
                                     38 	.globl _PX1L
                                     39 	.globl _PT1L
                                     40 	.globl _PSL
                                     41 	.globl _PT2L
                                     42 	.globl _PPCL
                                     43 	.globl _EC
                                     44 	.globl _CCF0
                                     45 	.globl _CCF1
                                     46 	.globl _CCF2
                                     47 	.globl _CCF3
                                     48 	.globl _CCF4
                                     49 	.globl _CR
                                     50 	.globl _CF
                                     51 	.globl _TF2
                                     52 	.globl _EXF2
                                     53 	.globl _RCLK
                                     54 	.globl _TCLK
                                     55 	.globl _EXEN2
                                     56 	.globl _TR2
                                     57 	.globl _C_T2
                                     58 	.globl _CP_RL2
                                     59 	.globl _T2CON_7
                                     60 	.globl _T2CON_6
                                     61 	.globl _T2CON_5
                                     62 	.globl _T2CON_4
                                     63 	.globl _T2CON_3
                                     64 	.globl _T2CON_2
                                     65 	.globl _T2CON_1
                                     66 	.globl _T2CON_0
                                     67 	.globl _PT2
                                     68 	.globl _ET2
                                     69 	.globl _CY
                                     70 	.globl _AC
                                     71 	.globl _F0
                                     72 	.globl _RS1
                                     73 	.globl _RS0
                                     74 	.globl _OV
                                     75 	.globl _F1
                                     76 	.globl _P
                                     77 	.globl _PS
                                     78 	.globl _PT1
                                     79 	.globl _PX1
                                     80 	.globl _PT0
                                     81 	.globl _PX0
                                     82 	.globl _RD
                                     83 	.globl _WR
                                     84 	.globl _T1
                                     85 	.globl _T0
                                     86 	.globl _INT1
                                     87 	.globl _INT0
                                     88 	.globl _TXD
                                     89 	.globl _RXD
                                     90 	.globl _P3_7
                                     91 	.globl _P3_6
                                     92 	.globl _P3_5
                                     93 	.globl _P3_4
                                     94 	.globl _P3_3
                                     95 	.globl _P3_2
                                     96 	.globl _P3_1
                                     97 	.globl _P3_0
                                     98 	.globl _EA
                                     99 	.globl _ES
                                    100 	.globl _ET1
                                    101 	.globl _EX1
                                    102 	.globl _ET0
                                    103 	.globl _EX0
                                    104 	.globl _P2_7
                                    105 	.globl _P2_6
                                    106 	.globl _P2_5
                                    107 	.globl _P2_4
                                    108 	.globl _P2_3
                                    109 	.globl _P2_2
                                    110 	.globl _P2_1
                                    111 	.globl _P2_0
                                    112 	.globl _SM0
                                    113 	.globl _SM1
                                    114 	.globl _SM2
                                    115 	.globl _REN
                                    116 	.globl _TB8
                                    117 	.globl _RB8
                                    118 	.globl _TI
                                    119 	.globl _RI
                                    120 	.globl _P1_7
                                    121 	.globl _P1_6
                                    122 	.globl _P1_5
                                    123 	.globl _P1_4
                                    124 	.globl _P1_3
                                    125 	.globl _P1_2
                                    126 	.globl _P1_1
                                    127 	.globl _P1_0
                                    128 	.globl _TF1
                                    129 	.globl _TR1
                                    130 	.globl _TF0
                                    131 	.globl _TR0
                                    132 	.globl _IE1
                                    133 	.globl _IT1
                                    134 	.globl _IE0
                                    135 	.globl _IT0
                                    136 	.globl _P0_7
                                    137 	.globl _P0_6
                                    138 	.globl _P0_5
                                    139 	.globl _P0_4
                                    140 	.globl _P0_3
                                    141 	.globl _P0_2
                                    142 	.globl _P0_1
                                    143 	.globl _P0_0
                                    144 	.globl _EECON
                                    145 	.globl _KBF
                                    146 	.globl _KBE
                                    147 	.globl _KBLS
                                    148 	.globl _BRL
                                    149 	.globl _BDRCON
                                    150 	.globl _T2MOD
                                    151 	.globl _SPDAT
                                    152 	.globl _SPSTA
                                    153 	.globl _SPCON
                                    154 	.globl _SADEN
                                    155 	.globl _SADDR
                                    156 	.globl _WDTPRG
                                    157 	.globl _WDTRST
                                    158 	.globl _P5
                                    159 	.globl _P4
                                    160 	.globl _IPH1
                                    161 	.globl _IPL1
                                    162 	.globl _IPH0
                                    163 	.globl _IPL0
                                    164 	.globl _IEN1
                                    165 	.globl _IEN0
                                    166 	.globl _CMOD
                                    167 	.globl _CL
                                    168 	.globl _CH
                                    169 	.globl _CCON
                                    170 	.globl _CCAPM4
                                    171 	.globl _CCAPM3
                                    172 	.globl _CCAPM2
                                    173 	.globl _CCAPM1
                                    174 	.globl _CCAPM0
                                    175 	.globl _CCAP4L
                                    176 	.globl _CCAP3L
                                    177 	.globl _CCAP2L
                                    178 	.globl _CCAP1L
                                    179 	.globl _CCAP0L
                                    180 	.globl _CCAP4H
                                    181 	.globl _CCAP3H
                                    182 	.globl _CCAP2H
                                    183 	.globl _CCAP1H
                                    184 	.globl _CCAP0H
                                    185 	.globl _CKCON1
                                    186 	.globl _CKCON0
                                    187 	.globl _CKRL
                                    188 	.globl _AUXR1
                                    189 	.globl _AUXR
                                    190 	.globl _TH2
                                    191 	.globl _TL2
                                    192 	.globl _RCAP2H
                                    193 	.globl _RCAP2L
                                    194 	.globl _T2CON
                                    195 	.globl _B
                                    196 	.globl _ACC
                                    197 	.globl _PSW
                                    198 	.globl _IP
                                    199 	.globl _P3
                                    200 	.globl _IE
                                    201 	.globl _P2
                                    202 	.globl _SBUF
                                    203 	.globl _SCON
                                    204 	.globl _P1
                                    205 	.globl _TH1
                                    206 	.globl _TH0
                                    207 	.globl _TL1
                                    208 	.globl _TL0
                                    209 	.globl _TMOD
                                    210 	.globl _TCON
                                    211 	.globl _PCON
                                    212 	.globl _DPH
                                    213 	.globl _DPL
                                    214 	.globl _SP
                                    215 	.globl _P0
                                    216 	.globl _goToXY_PARM_2
                                    217 	.globl _readCharacter
                                    218 	.globl _writeCharacter
                                    219 	.globl _busyPoll
                                    220 	.globl _lcdGeneral
                                    221 	.globl _delay
                                    222 	.globl _timerInit
                                    223 	.globl _busyWait
                                    224 	.globl _lcdInit
                                    225 	.globl _lcdPutCh
                                    226 	.globl _lcdClear
                                    227 	.globl _goToAddr
                                    228 	.globl _goToXY
                                    229 	.globl _customCharacter
                                    230 	.globl _readLCD
                                    231 	.globl _putsLCD
                                    232 	.globl _gets
                                    233 	.globl _ramDump
                                    234 	.globl _gamePacman
                                    235 	.globl _makePacmanRight
                                    236 	.globl _makePacmanLeft
                                    237 	.globl _printBinary
                                    238 	.globl _atoh
                                    239 	.globl _printMenu
                                    240 ;--------------------------------------------------------
                                    241 ; special function registers
                                    242 ;--------------------------------------------------------
                                    243 	.area RSEG    (ABS,DATA)
      000000                        244 	.org 0x0000
                           000080   245 _P0	=	0x0080
                           000081   246 _SP	=	0x0081
                           000082   247 _DPL	=	0x0082
                           000083   248 _DPH	=	0x0083
                           000087   249 _PCON	=	0x0087
                           000088   250 _TCON	=	0x0088
                           000089   251 _TMOD	=	0x0089
                           00008A   252 _TL0	=	0x008a
                           00008B   253 _TL1	=	0x008b
                           00008C   254 _TH0	=	0x008c
                           00008D   255 _TH1	=	0x008d
                           000090   256 _P1	=	0x0090
                           000098   257 _SCON	=	0x0098
                           000099   258 _SBUF	=	0x0099
                           0000A0   259 _P2	=	0x00a0
                           0000A8   260 _IE	=	0x00a8
                           0000B0   261 _P3	=	0x00b0
                           0000B8   262 _IP	=	0x00b8
                           0000D0   263 _PSW	=	0x00d0
                           0000E0   264 _ACC	=	0x00e0
                           0000F0   265 _B	=	0x00f0
                           0000C8   266 _T2CON	=	0x00c8
                           0000CA   267 _RCAP2L	=	0x00ca
                           0000CB   268 _RCAP2H	=	0x00cb
                           0000CC   269 _TL2	=	0x00cc
                           0000CD   270 _TH2	=	0x00cd
                           00008E   271 _AUXR	=	0x008e
                           0000A2   272 _AUXR1	=	0x00a2
                           000097   273 _CKRL	=	0x0097
                           00008F   274 _CKCON0	=	0x008f
                           0000AF   275 _CKCON1	=	0x00af
                           0000FA   276 _CCAP0H	=	0x00fa
                           0000FB   277 _CCAP1H	=	0x00fb
                           0000FC   278 _CCAP2H	=	0x00fc
                           0000FD   279 _CCAP3H	=	0x00fd
                           0000FE   280 _CCAP4H	=	0x00fe
                           0000EA   281 _CCAP0L	=	0x00ea
                           0000EB   282 _CCAP1L	=	0x00eb
                           0000EC   283 _CCAP2L	=	0x00ec
                           0000ED   284 _CCAP3L	=	0x00ed
                           0000EE   285 _CCAP4L	=	0x00ee
                           0000DA   286 _CCAPM0	=	0x00da
                           0000DB   287 _CCAPM1	=	0x00db
                           0000DC   288 _CCAPM2	=	0x00dc
                           0000DD   289 _CCAPM3	=	0x00dd
                           0000DE   290 _CCAPM4	=	0x00de
                           0000D8   291 _CCON	=	0x00d8
                           0000F9   292 _CH	=	0x00f9
                           0000E9   293 _CL	=	0x00e9
                           0000D9   294 _CMOD	=	0x00d9
                           0000A8   295 _IEN0	=	0x00a8
                           0000B1   296 _IEN1	=	0x00b1
                           0000B8   297 _IPL0	=	0x00b8
                           0000B7   298 _IPH0	=	0x00b7
                           0000B2   299 _IPL1	=	0x00b2
                           0000B3   300 _IPH1	=	0x00b3
                           0000C0   301 _P4	=	0x00c0
                           0000E8   302 _P5	=	0x00e8
                           0000A6   303 _WDTRST	=	0x00a6
                           0000A7   304 _WDTPRG	=	0x00a7
                           0000A9   305 _SADDR	=	0x00a9
                           0000B9   306 _SADEN	=	0x00b9
                           0000C3   307 _SPCON	=	0x00c3
                           0000C4   308 _SPSTA	=	0x00c4
                           0000C5   309 _SPDAT	=	0x00c5
                           0000C9   310 _T2MOD	=	0x00c9
                           00009B   311 _BDRCON	=	0x009b
                           00009A   312 _BRL	=	0x009a
                           00009C   313 _KBLS	=	0x009c
                           00009D   314 _KBE	=	0x009d
                           00009E   315 _KBF	=	0x009e
                           0000D2   316 _EECON	=	0x00d2
                                    317 ;--------------------------------------------------------
                                    318 ; special function bits
                                    319 ;--------------------------------------------------------
                                    320 	.area RSEG    (ABS,DATA)
      000000                        321 	.org 0x0000
                           000080   322 _P0_0	=	0x0080
                           000081   323 _P0_1	=	0x0081
                           000082   324 _P0_2	=	0x0082
                           000083   325 _P0_3	=	0x0083
                           000084   326 _P0_4	=	0x0084
                           000085   327 _P0_5	=	0x0085
                           000086   328 _P0_6	=	0x0086
                           000087   329 _P0_7	=	0x0087
                           000088   330 _IT0	=	0x0088
                           000089   331 _IE0	=	0x0089
                           00008A   332 _IT1	=	0x008a
                           00008B   333 _IE1	=	0x008b
                           00008C   334 _TR0	=	0x008c
                           00008D   335 _TF0	=	0x008d
                           00008E   336 _TR1	=	0x008e
                           00008F   337 _TF1	=	0x008f
                           000090   338 _P1_0	=	0x0090
                           000091   339 _P1_1	=	0x0091
                           000092   340 _P1_2	=	0x0092
                           000093   341 _P1_3	=	0x0093
                           000094   342 _P1_4	=	0x0094
                           000095   343 _P1_5	=	0x0095
                           000096   344 _P1_6	=	0x0096
                           000097   345 _P1_7	=	0x0097
                           000098   346 _RI	=	0x0098
                           000099   347 _TI	=	0x0099
                           00009A   348 _RB8	=	0x009a
                           00009B   349 _TB8	=	0x009b
                           00009C   350 _REN	=	0x009c
                           00009D   351 _SM2	=	0x009d
                           00009E   352 _SM1	=	0x009e
                           00009F   353 _SM0	=	0x009f
                           0000A0   354 _P2_0	=	0x00a0
                           0000A1   355 _P2_1	=	0x00a1
                           0000A2   356 _P2_2	=	0x00a2
                           0000A3   357 _P2_3	=	0x00a3
                           0000A4   358 _P2_4	=	0x00a4
                           0000A5   359 _P2_5	=	0x00a5
                           0000A6   360 _P2_6	=	0x00a6
                           0000A7   361 _P2_7	=	0x00a7
                           0000A8   362 _EX0	=	0x00a8
                           0000A9   363 _ET0	=	0x00a9
                           0000AA   364 _EX1	=	0x00aa
                           0000AB   365 _ET1	=	0x00ab
                           0000AC   366 _ES	=	0x00ac
                           0000AF   367 _EA	=	0x00af
                           0000B0   368 _P3_0	=	0x00b0
                           0000B1   369 _P3_1	=	0x00b1
                           0000B2   370 _P3_2	=	0x00b2
                           0000B3   371 _P3_3	=	0x00b3
                           0000B4   372 _P3_4	=	0x00b4
                           0000B5   373 _P3_5	=	0x00b5
                           0000B6   374 _P3_6	=	0x00b6
                           0000B7   375 _P3_7	=	0x00b7
                           0000B0   376 _RXD	=	0x00b0
                           0000B1   377 _TXD	=	0x00b1
                           0000B2   378 _INT0	=	0x00b2
                           0000B3   379 _INT1	=	0x00b3
                           0000B4   380 _T0	=	0x00b4
                           0000B5   381 _T1	=	0x00b5
                           0000B6   382 _WR	=	0x00b6
                           0000B7   383 _RD	=	0x00b7
                           0000B8   384 _PX0	=	0x00b8
                           0000B9   385 _PT0	=	0x00b9
                           0000BA   386 _PX1	=	0x00ba
                           0000BB   387 _PT1	=	0x00bb
                           0000BC   388 _PS	=	0x00bc
                           0000D0   389 _P	=	0x00d0
                           0000D1   390 _F1	=	0x00d1
                           0000D2   391 _OV	=	0x00d2
                           0000D3   392 _RS0	=	0x00d3
                           0000D4   393 _RS1	=	0x00d4
                           0000D5   394 _F0	=	0x00d5
                           0000D6   395 _AC	=	0x00d6
                           0000D7   396 _CY	=	0x00d7
                           0000AD   397 _ET2	=	0x00ad
                           0000BD   398 _PT2	=	0x00bd
                           0000C8   399 _T2CON_0	=	0x00c8
                           0000C9   400 _T2CON_1	=	0x00c9
                           0000CA   401 _T2CON_2	=	0x00ca
                           0000CB   402 _T2CON_3	=	0x00cb
                           0000CC   403 _T2CON_4	=	0x00cc
                           0000CD   404 _T2CON_5	=	0x00cd
                           0000CE   405 _T2CON_6	=	0x00ce
                           0000CF   406 _T2CON_7	=	0x00cf
                           0000C8   407 _CP_RL2	=	0x00c8
                           0000C9   408 _C_T2	=	0x00c9
                           0000CA   409 _TR2	=	0x00ca
                           0000CB   410 _EXEN2	=	0x00cb
                           0000CC   411 _TCLK	=	0x00cc
                           0000CD   412 _RCLK	=	0x00cd
                           0000CE   413 _EXF2	=	0x00ce
                           0000CF   414 _TF2	=	0x00cf
                           0000DF   415 _CF	=	0x00df
                           0000DE   416 _CR	=	0x00de
                           0000DC   417 _CCF4	=	0x00dc
                           0000DB   418 _CCF3	=	0x00db
                           0000DA   419 _CCF2	=	0x00da
                           0000D9   420 _CCF1	=	0x00d9
                           0000D8   421 _CCF0	=	0x00d8
                           0000AE   422 _EC	=	0x00ae
                           0000BE   423 _PPCL	=	0x00be
                           0000BD   424 _PT2L	=	0x00bd
                           0000BC   425 _PSL	=	0x00bc
                           0000BB   426 _PT1L	=	0x00bb
                           0000BA   427 _PX1L	=	0x00ba
                           0000B9   428 _PT0L	=	0x00b9
                           0000B8   429 _PX0L	=	0x00b8
                           0000C0   430 _P4_0	=	0x00c0
                           0000C1   431 _P4_1	=	0x00c1
                           0000C2   432 _P4_2	=	0x00c2
                           0000C3   433 _P4_3	=	0x00c3
                           0000C4   434 _P4_4	=	0x00c4
                           0000C5   435 _P4_5	=	0x00c5
                           0000C6   436 _P4_6	=	0x00c6
                           0000C7   437 _P4_7	=	0x00c7
                           0000E8   438 _P5_0	=	0x00e8
                           0000E9   439 _P5_1	=	0x00e9
                           0000EA   440 _P5_2	=	0x00ea
                           0000EB   441 _P5_3	=	0x00eb
                           0000EC   442 _P5_4	=	0x00ec
                           0000ED   443 _P5_5	=	0x00ed
                           0000EE   444 _P5_6	=	0x00ee
                           0000EF   445 _P5_7	=	0x00ef
                                    446 ;--------------------------------------------------------
                                    447 ; overlayable register banks
                                    448 ;--------------------------------------------------------
                                    449 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        450 	.ds 8
                                    451 ;--------------------------------------------------------
                                    452 ; internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area DSEG    (DATA)
      000008                        455 _putsLCD_sloc0_1_0:
      000008                        456 	.ds 2
      00000A                        457 _putsLCD_sloc1_1_0:
      00000A                        458 	.ds 3
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable items in internal ram 
                                    461 ;--------------------------------------------------------
                                    462 ;--------------------------------------------------------
                                    463 ; indirectly addressable internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area ISEG    (DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; absolute internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area IABS    (ABS,DATA)
                                    470 	.area IABS    (ABS,DATA)
                                    471 ;--------------------------------------------------------
                                    472 ; bit data
                                    473 ;--------------------------------------------------------
                                    474 	.area BSEG    (BIT)
                                    475 ;--------------------------------------------------------
                                    476 ; paged external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area PSEG    (PAG,XDATA)
                                    479 ;--------------------------------------------------------
                                    480 ; external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XSEG    (XDATA)
                           00F000   483 _lcdGeneral	=	0xf000
                           00F200   484 _busyPoll	=	0xf200
                           00F100   485 _writeCharacter	=	0xf100
                           00F300   486 _readCharacter	=	0xf300
      000001                        487 _lcdPutCh_x_65536_76:
      000001                        488 	.ds 1
      000002                        489 _goToAddr_x_65536_79:
      000002                        490 	.ds 1
      000003                        491 _goToXY_PARM_2:
      000003                        492 	.ds 1
      000004                        493 _goToXY_x_65536_81:
      000004                        494 	.ds 1
      000005                        495 _customCharacter_x_65536_83:
      000005                        496 	.ds 8
      00000D                        497 _putsLCD_y_65536_86:
      00000D                        498 	.ds 3
      000010                        499 _putsLCD_i_65536_87:
      000010                        500 	.ds 2
      000012                        501 _gets_s_65536_90:
      000012                        502 	.ds 3
      000015                        503 _gets_count_65536_91:
      000015                        504 	.ds 2
      000017                        505 _ramDump_i_65536_96:
      000017                        506 	.ds 1
      000018                        507 _gamePacman_i_65536_107:
      000018                        508 	.ds 2
      00001A                        509 _printBinary_x_65536_115:
      00001A                        510 	.ds 2
      00001C                        511 _atoh_ap_65536_118:
      00001C                        512 	.ds 3
      00001F                        513 _atoh_p_65536_119:
      00001F                        514 	.ds 3
      000022                        515 _atoh_n_65536_119:
      000022                        516 	.ds 2
      000024                        517 _atoh_lcase_65536_119:
      000024                        518 	.ds 2
                                    519 ;--------------------------------------------------------
                                    520 ; absolute external ram data
                                    521 ;--------------------------------------------------------
                                    522 	.area XABS    (ABS,XDATA)
                                    523 ;--------------------------------------------------------
                                    524 ; external initialized ram data
                                    525 ;--------------------------------------------------------
                                    526 	.area XISEG   (XDATA)
                                    527 	.area HOME    (CODE)
                                    528 	.area GSINIT0 (CODE)
                                    529 	.area GSINIT1 (CODE)
                                    530 	.area GSINIT2 (CODE)
                                    531 	.area GSINIT3 (CODE)
                                    532 	.area GSINIT4 (CODE)
                                    533 	.area GSINIT5 (CODE)
                                    534 	.area GSINIT  (CODE)
                                    535 	.area GSFINAL (CODE)
                                    536 	.area CSEG    (CODE)
                                    537 ;--------------------------------------------------------
                                    538 ; global & static initialisations
                                    539 ;--------------------------------------------------------
                                    540 	.area HOME    (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 	.area GSFINAL (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 ;--------------------------------------------------------
                                    545 ; Home
                                    546 ;--------------------------------------------------------
                                    547 	.area HOME    (CODE)
                                    548 	.area HOME    (CODE)
                                    549 ;--------------------------------------------------------
                                    550 ; code
                                    551 ;--------------------------------------------------------
                                    552 	.area CSEG    (CODE)
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'delay'
                                    555 ;------------------------------------------------------------
                                    556 ;i                         Allocated with name '_delay_i_65536_71'
                                    557 ;------------------------------------------------------------
                                    558 ;	lcdCommands.c:9: void delay()
                                    559 ;	-----------------------------------------
                                    560 ;	 function delay
                                    561 ;	-----------------------------------------
      00206D                        562 _delay:
                           000007   563 	ar7 = 0x07
                           000006   564 	ar6 = 0x06
                           000005   565 	ar5 = 0x05
                           000004   566 	ar4 = 0x04
                           000003   567 	ar3 = 0x03
                           000002   568 	ar2 = 0x02
                           000001   569 	ar1 = 0x01
                           000000   570 	ar0 = 0x00
                                    571 ;	lcdCommands.c:12: for ( i = 0 ; i < 1000; i++);
      00206D 7E E8            [12]  572 	mov	r6,#0xe8
      00206F 7F 03            [12]  573 	mov	r7,#0x03
      002071                        574 00104$:
      002071 1E               [12]  575 	dec	r6
      002072 BE FF 01         [24]  576 	cjne	r6,#0xff,00113$
      002075 1F               [12]  577 	dec	r7
      002076                        578 00113$:
      002076 EE               [12]  579 	mov	a,r6
      002077 4F               [12]  580 	orl	a,r7
      002078 70 F7            [24]  581 	jnz	00104$
                                    582 ;	lcdCommands.c:13: }
      00207A 22               [24]  583 	ret
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'timerInit'
                                    586 ;------------------------------------------------------------
                                    587 ;	lcdCommands.c:15: void timerInit()
                                    588 ;	-----------------------------------------
                                    589 ;	 function timerInit
                                    590 ;	-----------------------------------------
      00207B                        591 _timerInit:
                                    592 ;	lcdCommands.c:17: TMOD |= 0x01;
      00207B 43 89 01         [24]  593 	orl	_TMOD,#0x01
                                    594 ;	lcdCommands.c:18: TH0 = 0x4B;
      00207E 75 8C 4B         [24]  595 	mov	_TH0,#0x4b
                                    596 ;	lcdCommands.c:19: TL0 = 0xFC;
      002081 75 8A FC         [24]  597 	mov	_TL0,#0xfc
                                    598 ;	lcdCommands.c:20: TR0 = 1;           //turn ON Timer zero
                                    599 ;	assignBit
      002084 D2 8C            [12]  600 	setb	_TR0
                                    601 ;	lcdCommands.c:21: EA = 1;            //Enable Global Interrupt bit
                                    602 ;	assignBit
      002086 D2 AF            [12]  603 	setb	_EA
                                    604 ;	lcdCommands.c:22: ET0 = 1;           //Enable TImer0 Interrupt
                                    605 ;	assignBit
      002088 D2 A9            [12]  606 	setb	_ET0
                                    607 ;	lcdCommands.c:23: }
      00208A 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'busyWait'
                                    611 ;------------------------------------------------------------
                                    612 ;	lcdCommands.c:25: void busyWait()
                                    613 ;	-----------------------------------------
                                    614 ;	 function busyWait
                                    615 ;	-----------------------------------------
      00208B                        616 _busyWait:
                                    617 ;	lcdCommands.c:27: while (busyPoll & 0x80);
      00208B                        618 00101$:
      00208B 90 F2 00         [24]  619 	mov	dptr,#_busyPoll
      00208E E0               [24]  620 	movx	a,@dptr
      00208F FE               [12]  621 	mov	r6,a
      002090 A3               [24]  622 	inc	dptr
      002091 E0               [24]  623 	movx	a,@dptr
      002092 EE               [12]  624 	mov	a,r6
      002093 20 E7 F5         [24]  625 	jb	acc.7,00101$
                                    626 ;	lcdCommands.c:28: }
      002096 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'lcdInit'
                                    630 ;------------------------------------------------------------
                                    631 ;	lcdCommands.c:30: void lcdInit()
                                    632 ;	-----------------------------------------
                                    633 ;	 function lcdInit
                                    634 ;	-----------------------------------------
      002097                        635 _lcdInit:
                                    636 ;	lcdCommands.c:32: delay();
      002097 12 20 6D         [24]  637 	lcall	_delay
                                    638 ;	lcdCommands.c:33: lcdGeneral = 0x30;
      00209A 90 F0 00         [24]  639 	mov	dptr,#_lcdGeneral
      00209D 74 30            [12]  640 	mov	a,#0x30
      00209F F0               [24]  641 	movx	@dptr,a
      0020A0 E4               [12]  642 	clr	a
      0020A1 A3               [24]  643 	inc	dptr
      0020A2 F0               [24]  644 	movx	@dptr,a
                                    645 ;	lcdCommands.c:34: delay();
      0020A3 12 20 6D         [24]  646 	lcall	_delay
                                    647 ;	lcdCommands.c:35: lcdGeneral = 0x30;
      0020A6 90 F0 00         [24]  648 	mov	dptr,#_lcdGeneral
      0020A9 74 30            [12]  649 	mov	a,#0x30
      0020AB F0               [24]  650 	movx	@dptr,a
      0020AC E4               [12]  651 	clr	a
      0020AD A3               [24]  652 	inc	dptr
      0020AE F0               [24]  653 	movx	@dptr,a
                                    654 ;	lcdCommands.c:36: delay();
      0020AF 12 20 6D         [24]  655 	lcall	_delay
                                    656 ;	lcdCommands.c:37: lcdGeneral = 0x30;
      0020B2 90 F0 00         [24]  657 	mov	dptr,#_lcdGeneral
      0020B5 74 30            [12]  658 	mov	a,#0x30
      0020B7 F0               [24]  659 	movx	@dptr,a
      0020B8 E4               [12]  660 	clr	a
      0020B9 A3               [24]  661 	inc	dptr
      0020BA F0               [24]  662 	movx	@dptr,a
                                    663 ;	lcdCommands.c:38: busyWait();
      0020BB 12 20 8B         [24]  664 	lcall	_busyWait
                                    665 ;	lcdCommands.c:39: lcdGeneral = 0x38;
      0020BE 90 F0 00         [24]  666 	mov	dptr,#_lcdGeneral
      0020C1 74 38            [12]  667 	mov	a,#0x38
      0020C3 F0               [24]  668 	movx	@dptr,a
      0020C4 E4               [12]  669 	clr	a
      0020C5 A3               [24]  670 	inc	dptr
      0020C6 F0               [24]  671 	movx	@dptr,a
                                    672 ;	lcdCommands.c:40: busyWait();
      0020C7 12 20 8B         [24]  673 	lcall	_busyWait
                                    674 ;	lcdCommands.c:41: lcdGeneral = 0x08;
      0020CA 90 F0 00         [24]  675 	mov	dptr,#_lcdGeneral
      0020CD 74 08            [12]  676 	mov	a,#0x08
      0020CF F0               [24]  677 	movx	@dptr,a
      0020D0 E4               [12]  678 	clr	a
      0020D1 A3               [24]  679 	inc	dptr
      0020D2 F0               [24]  680 	movx	@dptr,a
                                    681 ;	lcdCommands.c:42: busyWait();
      0020D3 12 20 8B         [24]  682 	lcall	_busyWait
                                    683 ;	lcdCommands.c:43: lcdGeneral = 0x0C;
      0020D6 90 F0 00         [24]  684 	mov	dptr,#_lcdGeneral
      0020D9 74 0C            [12]  685 	mov	a,#0x0c
      0020DB F0               [24]  686 	movx	@dptr,a
      0020DC E4               [12]  687 	clr	a
      0020DD A3               [24]  688 	inc	dptr
      0020DE F0               [24]  689 	movx	@dptr,a
                                    690 ;	lcdCommands.c:44: busyWait();
      0020DF 12 20 8B         [24]  691 	lcall	_busyWait
                                    692 ;	lcdCommands.c:45: lcdGeneral = 0x06;
      0020E2 90 F0 00         [24]  693 	mov	dptr,#_lcdGeneral
      0020E5 74 06            [12]  694 	mov	a,#0x06
      0020E7 F0               [24]  695 	movx	@dptr,a
      0020E8 E4               [12]  696 	clr	a
      0020E9 A3               [24]  697 	inc	dptr
      0020EA F0               [24]  698 	movx	@dptr,a
                                    699 ;	lcdCommands.c:46: busyWait();
      0020EB 12 20 8B         [24]  700 	lcall	_busyWait
                                    701 ;	lcdCommands.c:47: lcdGeneral = 0x01;
      0020EE 90 F0 00         [24]  702 	mov	dptr,#_lcdGeneral
      0020F1 74 01            [12]  703 	mov	a,#0x01
      0020F3 F0               [24]  704 	movx	@dptr,a
      0020F4 E4               [12]  705 	clr	a
      0020F5 A3               [24]  706 	inc	dptr
      0020F6 F0               [24]  707 	movx	@dptr,a
                                    708 ;	lcdCommands.c:48: }
      0020F7 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'lcdPutCh'
                                    712 ;------------------------------------------------------------
                                    713 ;x                         Allocated with name '_lcdPutCh_x_65536_76'
                                    714 ;------------------------------------------------------------
                                    715 ;	lcdCommands.c:50: void lcdPutCh(uint8_t x)
                                    716 ;	-----------------------------------------
                                    717 ;	 function lcdPutCh
                                    718 ;	-----------------------------------------
      0020F8                        719 _lcdPutCh:
      0020F8 E5 82            [12]  720 	mov	a,dpl
      0020FA 90 00 01         [24]  721 	mov	dptr,#_lcdPutCh_x_65536_76
      0020FD F0               [24]  722 	movx	@dptr,a
                                    723 ;	lcdCommands.c:52: busyWait();
      0020FE 12 20 8B         [24]  724 	lcall	_busyWait
                                    725 ;	lcdCommands.c:53: writeCharacter = x;
      002101 90 00 01         [24]  726 	mov	dptr,#_lcdPutCh_x_65536_76
      002104 E0               [24]  727 	movx	a,@dptr
      002105 90 F1 00         [24]  728 	mov	dptr,#_writeCharacter
      002108 F0               [24]  729 	movx	@dptr,a
      002109 E4               [12]  730 	clr	a
      00210A A3               [24]  731 	inc	dptr
      00210B F0               [24]  732 	movx	@dptr,a
                                    733 ;	lcdCommands.c:54: }
      00210C 22               [24]  734 	ret
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'lcdClear'
                                    737 ;------------------------------------------------------------
                                    738 ;	lcdCommands.c:56: void lcdClear()
                                    739 ;	-----------------------------------------
                                    740 ;	 function lcdClear
                                    741 ;	-----------------------------------------
      00210D                        742 _lcdClear:
                                    743 ;	lcdCommands.c:58: busyWait();
      00210D 12 20 8B         [24]  744 	lcall	_busyWait
                                    745 ;	lcdCommands.c:59: lcdGeneral = 0x01;
      002110 90 F0 00         [24]  746 	mov	dptr,#_lcdGeneral
      002113 74 01            [12]  747 	mov	a,#0x01
      002115 F0               [24]  748 	movx	@dptr,a
      002116 E4               [12]  749 	clr	a
      002117 A3               [24]  750 	inc	dptr
      002118 F0               [24]  751 	movx	@dptr,a
                                    752 ;	lcdCommands.c:60: }
      002119 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'goToAddr'
                                    756 ;------------------------------------------------------------
                                    757 ;x                         Allocated with name '_goToAddr_x_65536_79'
                                    758 ;------------------------------------------------------------
                                    759 ;	lcdCommands.c:62: void goToAddr(uint8_t x)
                                    760 ;	-----------------------------------------
                                    761 ;	 function goToAddr
                                    762 ;	-----------------------------------------
      00211A                        763 _goToAddr:
      00211A E5 82            [12]  764 	mov	a,dpl
      00211C 90 00 02         [24]  765 	mov	dptr,#_goToAddr_x_65536_79
      00211F F0               [24]  766 	movx	@dptr,a
                                    767 ;	lcdCommands.c:64: busyWait();
      002120 12 20 8B         [24]  768 	lcall	_busyWait
                                    769 ;	lcdCommands.c:65: lcdGeneral = 0x80 | x;
      002123 90 00 02         [24]  770 	mov	dptr,#_goToAddr_x_65536_79
      002126 E0               [24]  771 	movx	a,@dptr
      002127 FF               [12]  772 	mov	r7,a
      002128 7E 00            [12]  773 	mov	r6,#0x00
      00212A 90 F0 00         [24]  774 	mov	dptr,#_lcdGeneral
      00212D 74 80            [12]  775 	mov	a,#0x80
      00212F 4F               [12]  776 	orl	a,r7
      002130 F0               [24]  777 	movx	@dptr,a
      002131 EE               [12]  778 	mov	a,r6
      002132 A3               [24]  779 	inc	dptr
      002133 F0               [24]  780 	movx	@dptr,a
                                    781 ;	lcdCommands.c:66: }
      002134 22               [24]  782 	ret
                                    783 ;------------------------------------------------------------
                                    784 ;Allocation info for local variables in function 'goToXY'
                                    785 ;------------------------------------------------------------
                                    786 ;y                         Allocated with name '_goToXY_PARM_2'
                                    787 ;x                         Allocated with name '_goToXY_x_65536_81'
                                    788 ;------------------------------------------------------------
                                    789 ;	lcdCommands.c:68: void goToXY(uint8_t x, uint8_t y)
                                    790 ;	-----------------------------------------
                                    791 ;	 function goToXY
                                    792 ;	-----------------------------------------
      002135                        793 _goToXY:
      002135 E5 82            [12]  794 	mov	a,dpl
      002137 90 00 04         [24]  795 	mov	dptr,#_goToXY_x_65536_81
      00213A F0               [24]  796 	movx	@dptr,a
                                    797 ;	lcdCommands.c:70: busyWait();
      00213B 12 20 8B         [24]  798 	lcall	_busyWait
                                    799 ;	lcdCommands.c:71: goToAddr(lookUpTable[x][y]);
      00213E 90 00 04         [24]  800 	mov	dptr,#_goToXY_x_65536_81
      002141 E0               [24]  801 	movx	a,@dptr
      002142 75 F0 10         [24]  802 	mov	b,#0x10
      002145 A4               [48]  803 	mul	ab
      002146 24 97            [12]  804 	add	a,#_lookUpTable
      002148 FE               [12]  805 	mov	r6,a
      002149 74 44            [12]  806 	mov	a,#(_lookUpTable >> 8)
      00214B 35 F0            [12]  807 	addc	a,b
      00214D FF               [12]  808 	mov	r7,a
      00214E 90 00 03         [24]  809 	mov	dptr,#_goToXY_PARM_2
      002151 E0               [24]  810 	movx	a,@dptr
      002152 2E               [12]  811 	add	a,r6
      002153 F5 82            [12]  812 	mov	dpl,a
      002155 E4               [12]  813 	clr	a
      002156 3F               [12]  814 	addc	a,r7
      002157 F5 83            [12]  815 	mov	dph,a
      002159 E4               [12]  816 	clr	a
      00215A 93               [24]  817 	movc	a,@a+dptr
      00215B F5 82            [12]  818 	mov	dpl,a
                                    819 ;	lcdCommands.c:72: }
      00215D 02 21 1A         [24]  820 	ljmp	_goToAddr
                                    821 ;------------------------------------------------------------
                                    822 ;Allocation info for local variables in function 'customCharacter'
                                    823 ;------------------------------------------------------------
                                    824 ;temp                      Allocated with name '_customCharacter_temp_65536_83'
                                    825 ;decimal                   Allocated with name '_customCharacter_decimal_65536_83'
                                    826 ;x                         Allocated with name '_customCharacter_x_65536_83'
                                    827 ;------------------------------------------------------------
                                    828 ;	lcdCommands.c:74: void customCharacter()
                                    829 ;	-----------------------------------------
                                    830 ;	 function customCharacter
                                    831 ;	-----------------------------------------
      002160                        832 _customCharacter:
                                    833 ;	lcdCommands.c:79: busyWait();
      002160 12 20 8B         [24]  834 	lcall	_busyWait
                                    835 ;	lcdCommands.c:80: lcdGeneral = 0x40 | 0x10;
      002163 90 F0 00         [24]  836 	mov	dptr,#_lcdGeneral
      002166 74 50            [12]  837 	mov	a,#0x50
      002168 F0               [24]  838 	movx	@dptr,a
      002169 E4               [12]  839 	clr	a
      00216A A3               [24]  840 	inc	dptr
      00216B F0               [24]  841 	movx	@dptr,a
                                    842 ;	lcdCommands.c:81: busyWait();
      00216C 12 20 8B         [24]  843 	lcall	_busyWait
                                    844 ;	lcdCommands.c:82: printf_tiny("\n\rEnter value for Row 1\n\r");
      00216F 74 D7            [12]  845 	mov	a,#___str_0
      002171 C0 E0            [24]  846 	push	acc
      002173 74 44            [12]  847 	mov	a,#(___str_0 >> 8)
      002175 C0 E0            [24]  848 	push	acc
      002177 12 34 D7         [24]  849 	lcall	_printf_tiny
      00217A 15 81            [12]  850 	dec	sp
      00217C 15 81            [12]  851 	dec	sp
                                    852 ;	lcdCommands.c:83: gets(x);
      00217E 90 00 05         [24]  853 	mov	dptr,#_customCharacter_x_65536_83
      002181 75 F0 00         [24]  854 	mov	b,#0x00
      002184 12 25 F0         [24]  855 	lcall	_gets
                                    856 ;	lcdCommands.c:84: temp = atoh(x);
      002187 90 00 05         [24]  857 	mov	dptr,#_customCharacter_x_65536_83
      00218A 75 F0 00         [24]  858 	mov	b,#0x00
      00218D 12 2D 26         [24]  859 	lcall	_atoh
      002190 AE 82            [24]  860 	mov	r6,dpl
      002192 AF 83            [24]  861 	mov	r7,dph
                                    862 ;	lcdCommands.c:87: memset(x,'\0',8 * sizeof(char));
      002194 90 00 A5         [24]  863 	mov	dptr,#_memset_PARM_2
      002197 E4               [12]  864 	clr	a
      002198 F0               [24]  865 	movx	@dptr,a
      002199 90 00 A6         [24]  866 	mov	dptr,#_memset_PARM_3
      00219C 74 08            [12]  867 	mov	a,#0x08
      00219E F0               [24]  868 	movx	@dptr,a
      00219F E4               [12]  869 	clr	a
      0021A0 A3               [24]  870 	inc	dptr
      0021A1 F0               [24]  871 	movx	@dptr,a
      0021A2 90 00 05         [24]  872 	mov	dptr,#_customCharacter_x_65536_83
      0021A5 75 F0 00         [24]  873 	mov	b,#0x00
      0021A8 C0 07            [24]  874 	push	ar7
      0021AA C0 06            [24]  875 	push	ar6
      0021AC 12 33 74         [24]  876 	lcall	_memset
      0021AF D0 06            [24]  877 	pop	ar6
      0021B1 D0 07            [24]  878 	pop	ar7
                                    879 ;	lcdCommands.c:88: writeCharacter = temp & 0xFF;
      0021B3 90 F1 00         [24]  880 	mov	dptr,#_writeCharacter
      0021B6 EE               [12]  881 	mov	a,r6
      0021B7 F0               [24]  882 	movx	@dptr,a
      0021B8 E4               [12]  883 	clr	a
      0021B9 A3               [24]  884 	inc	dptr
      0021BA F0               [24]  885 	movx	@dptr,a
                                    886 ;	lcdCommands.c:89: busyWait();
      0021BB 12 20 8B         [24]  887 	lcall	_busyWait
                                    888 ;	lcdCommands.c:90: lcdGeneral = 0x40 | 0x11;
      0021BE 90 F0 00         [24]  889 	mov	dptr,#_lcdGeneral
      0021C1 74 51            [12]  890 	mov	a,#0x51
      0021C3 F0               [24]  891 	movx	@dptr,a
      0021C4 E4               [12]  892 	clr	a
      0021C5 A3               [24]  893 	inc	dptr
      0021C6 F0               [24]  894 	movx	@dptr,a
                                    895 ;	lcdCommands.c:91: busyWait();
      0021C7 12 20 8B         [24]  896 	lcall	_busyWait
                                    897 ;	lcdCommands.c:93: printf_tiny("\n\rEnter value for Row 2\n\r");
      0021CA 74 F1            [12]  898 	mov	a,#___str_1
      0021CC C0 E0            [24]  899 	push	acc
      0021CE 74 44            [12]  900 	mov	a,#(___str_1 >> 8)
      0021D0 C0 E0            [24]  901 	push	acc
      0021D2 12 34 D7         [24]  902 	lcall	_printf_tiny
      0021D5 15 81            [12]  903 	dec	sp
      0021D7 15 81            [12]  904 	dec	sp
                                    905 ;	lcdCommands.c:94: gets(x);
      0021D9 90 00 05         [24]  906 	mov	dptr,#_customCharacter_x_65536_83
      0021DC 75 F0 00         [24]  907 	mov	b,#0x00
      0021DF 12 25 F0         [24]  908 	lcall	_gets
                                    909 ;	lcdCommands.c:95: decimal = atoi(x);
      0021E2 90 00 05         [24]  910 	mov	dptr,#_customCharacter_x_65536_83
      0021E5 75 F0 00         [24]  911 	mov	b,#0x00
      0021E8 12 33 9C         [24]  912 	lcall	_atoi
                                    913 ;	lcdCommands.c:96: printBinary(decimal);
      0021EB 12 2C D5         [24]  914 	lcall	_printBinary
                                    915 ;	lcdCommands.c:97: temp = atoh(x);
      0021EE 90 00 05         [24]  916 	mov	dptr,#_customCharacter_x_65536_83
      0021F1 75 F0 00         [24]  917 	mov	b,#0x00
      0021F4 12 2D 26         [24]  918 	lcall	_atoh
      0021F7 AE 82            [24]  919 	mov	r6,dpl
      0021F9 AF 83            [24]  920 	mov	r7,dph
                                    921 ;	lcdCommands.c:98: memset(x,'\0',8 * sizeof(char));
      0021FB 90 00 A5         [24]  922 	mov	dptr,#_memset_PARM_2
      0021FE E4               [12]  923 	clr	a
      0021FF F0               [24]  924 	movx	@dptr,a
      002200 90 00 A6         [24]  925 	mov	dptr,#_memset_PARM_3
      002203 74 08            [12]  926 	mov	a,#0x08
      002205 F0               [24]  927 	movx	@dptr,a
      002206 E4               [12]  928 	clr	a
      002207 A3               [24]  929 	inc	dptr
      002208 F0               [24]  930 	movx	@dptr,a
      002209 90 00 05         [24]  931 	mov	dptr,#_customCharacter_x_65536_83
      00220C 75 F0 00         [24]  932 	mov	b,#0x00
      00220F C0 07            [24]  933 	push	ar7
      002211 C0 06            [24]  934 	push	ar6
      002213 12 33 74         [24]  935 	lcall	_memset
      002216 D0 06            [24]  936 	pop	ar6
      002218 D0 07            [24]  937 	pop	ar7
                                    938 ;	lcdCommands.c:99: writeCharacter = temp & 0xFF;
      00221A 90 F1 00         [24]  939 	mov	dptr,#_writeCharacter
      00221D EE               [12]  940 	mov	a,r6
      00221E F0               [24]  941 	movx	@dptr,a
      00221F E4               [12]  942 	clr	a
      002220 A3               [24]  943 	inc	dptr
      002221 F0               [24]  944 	movx	@dptr,a
                                    945 ;	lcdCommands.c:100: busyWait();
      002222 12 20 8B         [24]  946 	lcall	_busyWait
                                    947 ;	lcdCommands.c:101: lcdGeneral = 0x40 | 0x12;
      002225 90 F0 00         [24]  948 	mov	dptr,#_lcdGeneral
      002228 74 52            [12]  949 	mov	a,#0x52
      00222A F0               [24]  950 	movx	@dptr,a
      00222B E4               [12]  951 	clr	a
      00222C A3               [24]  952 	inc	dptr
      00222D F0               [24]  953 	movx	@dptr,a
                                    954 ;	lcdCommands.c:102: busyWait();
      00222E 12 20 8B         [24]  955 	lcall	_busyWait
                                    956 ;	lcdCommands.c:103: printf_tiny("\n\rEnter value for Row 3\n\r");
      002231 74 0B            [12]  957 	mov	a,#___str_2
      002233 C0 E0            [24]  958 	push	acc
      002235 74 45            [12]  959 	mov	a,#(___str_2 >> 8)
      002237 C0 E0            [24]  960 	push	acc
      002239 12 34 D7         [24]  961 	lcall	_printf_tiny
      00223C 15 81            [12]  962 	dec	sp
      00223E 15 81            [12]  963 	dec	sp
                                    964 ;	lcdCommands.c:104: gets(x);
      002240 90 00 05         [24]  965 	mov	dptr,#_customCharacter_x_65536_83
      002243 75 F0 00         [24]  966 	mov	b,#0x00
      002246 12 25 F0         [24]  967 	lcall	_gets
                                    968 ;	lcdCommands.c:105: decimal = atoi(x);
      002249 90 00 05         [24]  969 	mov	dptr,#_customCharacter_x_65536_83
      00224C 75 F0 00         [24]  970 	mov	b,#0x00
      00224F 12 33 9C         [24]  971 	lcall	_atoi
                                    972 ;	lcdCommands.c:106: printBinary(decimal);
      002252 12 2C D5         [24]  973 	lcall	_printBinary
                                    974 ;	lcdCommands.c:107: temp = atoh(x);
      002255 90 00 05         [24]  975 	mov	dptr,#_customCharacter_x_65536_83
      002258 75 F0 00         [24]  976 	mov	b,#0x00
      00225B 12 2D 26         [24]  977 	lcall	_atoh
      00225E AE 82            [24]  978 	mov	r6,dpl
      002260 AF 83            [24]  979 	mov	r7,dph
                                    980 ;	lcdCommands.c:108: memset(x,'\0',8 * sizeof(char));
      002262 90 00 A5         [24]  981 	mov	dptr,#_memset_PARM_2
      002265 E4               [12]  982 	clr	a
      002266 F0               [24]  983 	movx	@dptr,a
      002267 90 00 A6         [24]  984 	mov	dptr,#_memset_PARM_3
      00226A 74 08            [12]  985 	mov	a,#0x08
      00226C F0               [24]  986 	movx	@dptr,a
      00226D E4               [12]  987 	clr	a
      00226E A3               [24]  988 	inc	dptr
      00226F F0               [24]  989 	movx	@dptr,a
      002270 90 00 05         [24]  990 	mov	dptr,#_customCharacter_x_65536_83
      002273 75 F0 00         [24]  991 	mov	b,#0x00
      002276 C0 07            [24]  992 	push	ar7
      002278 C0 06            [24]  993 	push	ar6
      00227A 12 33 74         [24]  994 	lcall	_memset
      00227D D0 06            [24]  995 	pop	ar6
      00227F D0 07            [24]  996 	pop	ar7
                                    997 ;	lcdCommands.c:109: writeCharacter = temp & 0xFF;
      002281 90 F1 00         [24]  998 	mov	dptr,#_writeCharacter
      002284 EE               [12]  999 	mov	a,r6
      002285 F0               [24] 1000 	movx	@dptr,a
      002286 E4               [12] 1001 	clr	a
      002287 A3               [24] 1002 	inc	dptr
      002288 F0               [24] 1003 	movx	@dptr,a
                                   1004 ;	lcdCommands.c:110: busyWait();
      002289 12 20 8B         [24] 1005 	lcall	_busyWait
                                   1006 ;	lcdCommands.c:111: lcdGeneral = 0x40 | 0x13;
      00228C 90 F0 00         [24] 1007 	mov	dptr,#_lcdGeneral
      00228F 74 53            [12] 1008 	mov	a,#0x53
      002291 F0               [24] 1009 	movx	@dptr,a
      002292 E4               [12] 1010 	clr	a
      002293 A3               [24] 1011 	inc	dptr
      002294 F0               [24] 1012 	movx	@dptr,a
                                   1013 ;	lcdCommands.c:112: busyWait();
      002295 12 20 8B         [24] 1014 	lcall	_busyWait
                                   1015 ;	lcdCommands.c:113: printf_tiny("\n\rEnter value for Row 4\n\r");
      002298 74 25            [12] 1016 	mov	a,#___str_3
      00229A C0 E0            [24] 1017 	push	acc
      00229C 74 45            [12] 1018 	mov	a,#(___str_3 >> 8)
      00229E C0 E0            [24] 1019 	push	acc
      0022A0 12 34 D7         [24] 1020 	lcall	_printf_tiny
      0022A3 15 81            [12] 1021 	dec	sp
      0022A5 15 81            [12] 1022 	dec	sp
                                   1023 ;	lcdCommands.c:114: gets(x);
      0022A7 90 00 05         [24] 1024 	mov	dptr,#_customCharacter_x_65536_83
      0022AA 75 F0 00         [24] 1025 	mov	b,#0x00
      0022AD 12 25 F0         [24] 1026 	lcall	_gets
                                   1027 ;	lcdCommands.c:115: temp = atoh(x);
      0022B0 90 00 05         [24] 1028 	mov	dptr,#_customCharacter_x_65536_83
      0022B3 75 F0 00         [24] 1029 	mov	b,#0x00
      0022B6 12 2D 26         [24] 1030 	lcall	_atoh
      0022B9 AE 82            [24] 1031 	mov	r6,dpl
      0022BB AF 83            [24] 1032 	mov	r7,dph
                                   1033 ;	lcdCommands.c:116: memset(x,'\0',8 * sizeof(char));
      0022BD 90 00 A5         [24] 1034 	mov	dptr,#_memset_PARM_2
      0022C0 E4               [12] 1035 	clr	a
      0022C1 F0               [24] 1036 	movx	@dptr,a
      0022C2 90 00 A6         [24] 1037 	mov	dptr,#_memset_PARM_3
      0022C5 74 08            [12] 1038 	mov	a,#0x08
      0022C7 F0               [24] 1039 	movx	@dptr,a
      0022C8 E4               [12] 1040 	clr	a
      0022C9 A3               [24] 1041 	inc	dptr
      0022CA F0               [24] 1042 	movx	@dptr,a
      0022CB 90 00 05         [24] 1043 	mov	dptr,#_customCharacter_x_65536_83
      0022CE 75 F0 00         [24] 1044 	mov	b,#0x00
      0022D1 C0 07            [24] 1045 	push	ar7
      0022D3 C0 06            [24] 1046 	push	ar6
      0022D5 12 33 74         [24] 1047 	lcall	_memset
      0022D8 D0 06            [24] 1048 	pop	ar6
      0022DA D0 07            [24] 1049 	pop	ar7
                                   1050 ;	lcdCommands.c:117: writeCharacter = temp & 0xFF;
      0022DC 90 F1 00         [24] 1051 	mov	dptr,#_writeCharacter
      0022DF EE               [12] 1052 	mov	a,r6
      0022E0 F0               [24] 1053 	movx	@dptr,a
      0022E1 E4               [12] 1054 	clr	a
      0022E2 A3               [24] 1055 	inc	dptr
      0022E3 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	lcdCommands.c:118: busyWait();
      0022E4 12 20 8B         [24] 1058 	lcall	_busyWait
                                   1059 ;	lcdCommands.c:119: lcdGeneral = 0x40 | 0x14;
      0022E7 90 F0 00         [24] 1060 	mov	dptr,#_lcdGeneral
      0022EA 74 54            [12] 1061 	mov	a,#0x54
      0022EC F0               [24] 1062 	movx	@dptr,a
      0022ED E4               [12] 1063 	clr	a
      0022EE A3               [24] 1064 	inc	dptr
      0022EF F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	lcdCommands.c:120: busyWait();
      0022F0 12 20 8B         [24] 1067 	lcall	_busyWait
                                   1068 ;	lcdCommands.c:121: printf_tiny("\n\rEnter value for Row 5\n\r");
      0022F3 74 3F            [12] 1069 	mov	a,#___str_4
      0022F5 C0 E0            [24] 1070 	push	acc
      0022F7 74 45            [12] 1071 	mov	a,#(___str_4 >> 8)
      0022F9 C0 E0            [24] 1072 	push	acc
      0022FB 12 34 D7         [24] 1073 	lcall	_printf_tiny
      0022FE 15 81            [12] 1074 	dec	sp
      002300 15 81            [12] 1075 	dec	sp
                                   1076 ;	lcdCommands.c:122: gets(x);
      002302 90 00 05         [24] 1077 	mov	dptr,#_customCharacter_x_65536_83
      002305 75 F0 00         [24] 1078 	mov	b,#0x00
      002308 12 25 F0         [24] 1079 	lcall	_gets
                                   1080 ;	lcdCommands.c:123: temp = atoh(x);
      00230B 90 00 05         [24] 1081 	mov	dptr,#_customCharacter_x_65536_83
      00230E 75 F0 00         [24] 1082 	mov	b,#0x00
      002311 12 2D 26         [24] 1083 	lcall	_atoh
      002314 AE 82            [24] 1084 	mov	r6,dpl
      002316 AF 83            [24] 1085 	mov	r7,dph
                                   1086 ;	lcdCommands.c:124: memset(x,'\0',8 * sizeof(char));
      002318 90 00 A5         [24] 1087 	mov	dptr,#_memset_PARM_2
      00231B E4               [12] 1088 	clr	a
      00231C F0               [24] 1089 	movx	@dptr,a
      00231D 90 00 A6         [24] 1090 	mov	dptr,#_memset_PARM_3
      002320 74 08            [12] 1091 	mov	a,#0x08
      002322 F0               [24] 1092 	movx	@dptr,a
      002323 E4               [12] 1093 	clr	a
      002324 A3               [24] 1094 	inc	dptr
      002325 F0               [24] 1095 	movx	@dptr,a
      002326 90 00 05         [24] 1096 	mov	dptr,#_customCharacter_x_65536_83
      002329 75 F0 00         [24] 1097 	mov	b,#0x00
      00232C C0 07            [24] 1098 	push	ar7
      00232E C0 06            [24] 1099 	push	ar6
      002330 12 33 74         [24] 1100 	lcall	_memset
      002333 D0 06            [24] 1101 	pop	ar6
      002335 D0 07            [24] 1102 	pop	ar7
                                   1103 ;	lcdCommands.c:125: writeCharacter = temp & 0xFF;
      002337 90 F1 00         [24] 1104 	mov	dptr,#_writeCharacter
      00233A EE               [12] 1105 	mov	a,r6
      00233B F0               [24] 1106 	movx	@dptr,a
      00233C E4               [12] 1107 	clr	a
      00233D A3               [24] 1108 	inc	dptr
      00233E F0               [24] 1109 	movx	@dptr,a
                                   1110 ;	lcdCommands.c:126: busyWait();
      00233F 12 20 8B         [24] 1111 	lcall	_busyWait
                                   1112 ;	lcdCommands.c:127: lcdGeneral = 0x40 | 0x15;
      002342 90 F0 00         [24] 1113 	mov	dptr,#_lcdGeneral
      002345 74 55            [12] 1114 	mov	a,#0x55
      002347 F0               [24] 1115 	movx	@dptr,a
      002348 E4               [12] 1116 	clr	a
      002349 A3               [24] 1117 	inc	dptr
      00234A F0               [24] 1118 	movx	@dptr,a
                                   1119 ;	lcdCommands.c:128: busyWait();
      00234B 12 20 8B         [24] 1120 	lcall	_busyWait
                                   1121 ;	lcdCommands.c:129: printf_tiny("\n\rEnter value for Row 6\n\r");
      00234E 74 59            [12] 1122 	mov	a,#___str_5
      002350 C0 E0            [24] 1123 	push	acc
      002352 74 45            [12] 1124 	mov	a,#(___str_5 >> 8)
      002354 C0 E0            [24] 1125 	push	acc
      002356 12 34 D7         [24] 1126 	lcall	_printf_tiny
      002359 15 81            [12] 1127 	dec	sp
      00235B 15 81            [12] 1128 	dec	sp
                                   1129 ;	lcdCommands.c:130: gets(x);
      00235D 90 00 05         [24] 1130 	mov	dptr,#_customCharacter_x_65536_83
      002360 75 F0 00         [24] 1131 	mov	b,#0x00
      002363 12 25 F0         [24] 1132 	lcall	_gets
                                   1133 ;	lcdCommands.c:131: temp = atoh(x);
      002366 90 00 05         [24] 1134 	mov	dptr,#_customCharacter_x_65536_83
      002369 75 F0 00         [24] 1135 	mov	b,#0x00
      00236C 12 2D 26         [24] 1136 	lcall	_atoh
      00236F AE 82            [24] 1137 	mov	r6,dpl
      002371 AF 83            [24] 1138 	mov	r7,dph
                                   1139 ;	lcdCommands.c:132: memset(x,'\0',8 * sizeof(char));
      002373 90 00 A5         [24] 1140 	mov	dptr,#_memset_PARM_2
      002376 E4               [12] 1141 	clr	a
      002377 F0               [24] 1142 	movx	@dptr,a
      002378 90 00 A6         [24] 1143 	mov	dptr,#_memset_PARM_3
      00237B 74 08            [12] 1144 	mov	a,#0x08
      00237D F0               [24] 1145 	movx	@dptr,a
      00237E E4               [12] 1146 	clr	a
      00237F A3               [24] 1147 	inc	dptr
      002380 F0               [24] 1148 	movx	@dptr,a
      002381 90 00 05         [24] 1149 	mov	dptr,#_customCharacter_x_65536_83
      002384 75 F0 00         [24] 1150 	mov	b,#0x00
      002387 C0 07            [24] 1151 	push	ar7
      002389 C0 06            [24] 1152 	push	ar6
      00238B 12 33 74         [24] 1153 	lcall	_memset
      00238E D0 06            [24] 1154 	pop	ar6
      002390 D0 07            [24] 1155 	pop	ar7
                                   1156 ;	lcdCommands.c:133: writeCharacter = temp & 0xFF;
      002392 90 F1 00         [24] 1157 	mov	dptr,#_writeCharacter
      002395 EE               [12] 1158 	mov	a,r6
      002396 F0               [24] 1159 	movx	@dptr,a
      002397 E4               [12] 1160 	clr	a
      002398 A3               [24] 1161 	inc	dptr
      002399 F0               [24] 1162 	movx	@dptr,a
                                   1163 ;	lcdCommands.c:134: busyWait();
      00239A 12 20 8B         [24] 1164 	lcall	_busyWait
                                   1165 ;	lcdCommands.c:135: lcdGeneral = 0x40 | 0x16;
      00239D 90 F0 00         [24] 1166 	mov	dptr,#_lcdGeneral
      0023A0 74 56            [12] 1167 	mov	a,#0x56
      0023A2 F0               [24] 1168 	movx	@dptr,a
      0023A3 E4               [12] 1169 	clr	a
      0023A4 A3               [24] 1170 	inc	dptr
      0023A5 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	lcdCommands.c:136: busyWait();
      0023A6 12 20 8B         [24] 1173 	lcall	_busyWait
                                   1174 ;	lcdCommands.c:137: printf_tiny("\n\rEnter value for Row 7\n\r");
      0023A9 74 73            [12] 1175 	mov	a,#___str_6
      0023AB C0 E0            [24] 1176 	push	acc
      0023AD 74 45            [12] 1177 	mov	a,#(___str_6 >> 8)
      0023AF C0 E0            [24] 1178 	push	acc
      0023B1 12 34 D7         [24] 1179 	lcall	_printf_tiny
      0023B4 15 81            [12] 1180 	dec	sp
      0023B6 15 81            [12] 1181 	dec	sp
                                   1182 ;	lcdCommands.c:138: gets(x);
      0023B8 90 00 05         [24] 1183 	mov	dptr,#_customCharacter_x_65536_83
      0023BB 75 F0 00         [24] 1184 	mov	b,#0x00
      0023BE 12 25 F0         [24] 1185 	lcall	_gets
                                   1186 ;	lcdCommands.c:139: temp = atoh(x);
      0023C1 90 00 05         [24] 1187 	mov	dptr,#_customCharacter_x_65536_83
      0023C4 75 F0 00         [24] 1188 	mov	b,#0x00
      0023C7 12 2D 26         [24] 1189 	lcall	_atoh
      0023CA AE 82            [24] 1190 	mov	r6,dpl
      0023CC AF 83            [24] 1191 	mov	r7,dph
                                   1192 ;	lcdCommands.c:140: memset(x,'\0',8 * sizeof(char));
      0023CE 90 00 A5         [24] 1193 	mov	dptr,#_memset_PARM_2
      0023D1 E4               [12] 1194 	clr	a
      0023D2 F0               [24] 1195 	movx	@dptr,a
      0023D3 90 00 A6         [24] 1196 	mov	dptr,#_memset_PARM_3
      0023D6 74 08            [12] 1197 	mov	a,#0x08
      0023D8 F0               [24] 1198 	movx	@dptr,a
      0023D9 E4               [12] 1199 	clr	a
      0023DA A3               [24] 1200 	inc	dptr
      0023DB F0               [24] 1201 	movx	@dptr,a
      0023DC 90 00 05         [24] 1202 	mov	dptr,#_customCharacter_x_65536_83
      0023DF 75 F0 00         [24] 1203 	mov	b,#0x00
      0023E2 C0 07            [24] 1204 	push	ar7
      0023E4 C0 06            [24] 1205 	push	ar6
      0023E6 12 33 74         [24] 1206 	lcall	_memset
      0023E9 D0 06            [24] 1207 	pop	ar6
      0023EB D0 07            [24] 1208 	pop	ar7
                                   1209 ;	lcdCommands.c:141: writeCharacter = temp & 0xFF;
      0023ED 90 F1 00         [24] 1210 	mov	dptr,#_writeCharacter
      0023F0 EE               [12] 1211 	mov	a,r6
      0023F1 F0               [24] 1212 	movx	@dptr,a
      0023F2 E4               [12] 1213 	clr	a
      0023F3 A3               [24] 1214 	inc	dptr
      0023F4 F0               [24] 1215 	movx	@dptr,a
                                   1216 ;	lcdCommands.c:142: busyWait();
      0023F5 12 20 8B         [24] 1217 	lcall	_busyWait
                                   1218 ;	lcdCommands.c:143: lcdGeneral = 0x40 | 0x17;
      0023F8 90 F0 00         [24] 1219 	mov	dptr,#_lcdGeneral
      0023FB 74 57            [12] 1220 	mov	a,#0x57
      0023FD F0               [24] 1221 	movx	@dptr,a
      0023FE E4               [12] 1222 	clr	a
      0023FF A3               [24] 1223 	inc	dptr
      002400 F0               [24] 1224 	movx	@dptr,a
                                   1225 ;	lcdCommands.c:144: busyWait();
      002401 12 20 8B         [24] 1226 	lcall	_busyWait
                                   1227 ;	lcdCommands.c:145: printf_tiny("\n\rEnter value for Row 8\n\r");
      002404 74 8D            [12] 1228 	mov	a,#___str_7
      002406 C0 E0            [24] 1229 	push	acc
      002408 74 45            [12] 1230 	mov	a,#(___str_7 >> 8)
      00240A C0 E0            [24] 1231 	push	acc
      00240C 12 34 D7         [24] 1232 	lcall	_printf_tiny
      00240F 15 81            [12] 1233 	dec	sp
      002411 15 81            [12] 1234 	dec	sp
                                   1235 ;	lcdCommands.c:146: gets(x);
      002413 90 00 05         [24] 1236 	mov	dptr,#_customCharacter_x_65536_83
      002416 75 F0 00         [24] 1237 	mov	b,#0x00
      002419 12 25 F0         [24] 1238 	lcall	_gets
                                   1239 ;	lcdCommands.c:147: temp = atoh(x);
      00241C 90 00 05         [24] 1240 	mov	dptr,#_customCharacter_x_65536_83
      00241F 75 F0 00         [24] 1241 	mov	b,#0x00
      002422 12 2D 26         [24] 1242 	lcall	_atoh
      002425 AE 82            [24] 1243 	mov	r6,dpl
      002427 AF 83            [24] 1244 	mov	r7,dph
                                   1245 ;	lcdCommands.c:148: memset(x,'\0',8 * sizeof(char));
      002429 90 00 A5         [24] 1246 	mov	dptr,#_memset_PARM_2
      00242C E4               [12] 1247 	clr	a
      00242D F0               [24] 1248 	movx	@dptr,a
      00242E 90 00 A6         [24] 1249 	mov	dptr,#_memset_PARM_3
      002431 74 08            [12] 1250 	mov	a,#0x08
      002433 F0               [24] 1251 	movx	@dptr,a
      002434 E4               [12] 1252 	clr	a
      002435 A3               [24] 1253 	inc	dptr
      002436 F0               [24] 1254 	movx	@dptr,a
      002437 90 00 05         [24] 1255 	mov	dptr,#_customCharacter_x_65536_83
      00243A 75 F0 00         [24] 1256 	mov	b,#0x00
      00243D C0 07            [24] 1257 	push	ar7
      00243F C0 06            [24] 1258 	push	ar6
      002441 12 33 74         [24] 1259 	lcall	_memset
      002444 D0 06            [24] 1260 	pop	ar6
      002446 D0 07            [24] 1261 	pop	ar7
                                   1262 ;	lcdCommands.c:149: writeCharacter = temp & 0xFF;
      002448 90 F1 00         [24] 1263 	mov	dptr,#_writeCharacter
      00244B EE               [12] 1264 	mov	a,r6
      00244C F0               [24] 1265 	movx	@dptr,a
      00244D E4               [12] 1266 	clr	a
      00244E A3               [24] 1267 	inc	dptr
      00244F F0               [24] 1268 	movx	@dptr,a
                                   1269 ;	lcdCommands.c:150: busyWait();
      002450 12 20 8B         [24] 1270 	lcall	_busyWait
                                   1271 ;	lcdCommands.c:151: goToXY(3,1);
      002453 90 00 03         [24] 1272 	mov	dptr,#_goToXY_PARM_2
      002456 74 01            [12] 1273 	mov	a,#0x01
      002458 F0               [24] 1274 	movx	@dptr,a
      002459 75 82 03         [24] 1275 	mov	dpl,#0x03
      00245C 12 21 35         [24] 1276 	lcall	_goToXY
                                   1277 ;	lcdCommands.c:152: busyWait();
      00245F 12 20 8B         [24] 1278 	lcall	_busyWait
                                   1279 ;	lcdCommands.c:153: lcdGeneral = 0x80 | 0x01;
      002462 90 F0 00         [24] 1280 	mov	dptr,#_lcdGeneral
      002465 74 81            [12] 1281 	mov	a,#0x81
      002467 F0               [24] 1282 	movx	@dptr,a
      002468 E4               [12] 1283 	clr	a
      002469 A3               [24] 1284 	inc	dptr
      00246A F0               [24] 1285 	movx	@dptr,a
                                   1286 ;	lcdCommands.c:154: busyWait();
      00246B 12 20 8B         [24] 1287 	lcall	_busyWait
                                   1288 ;	lcdCommands.c:155: writeCharacter = 0x01;
      00246E 90 F1 00         [24] 1289 	mov	dptr,#_writeCharacter
      002471 74 01            [12] 1290 	mov	a,#0x01
      002473 F0               [24] 1291 	movx	@dptr,a
      002474 E4               [12] 1292 	clr	a
      002475 A3               [24] 1293 	inc	dptr
      002476 F0               [24] 1294 	movx	@dptr,a
                                   1295 ;	lcdCommands.c:156: }
      002477 22               [24] 1296 	ret
                                   1297 ;------------------------------------------------------------
                                   1298 ;Allocation info for local variables in function 'readLCD'
                                   1299 ;------------------------------------------------------------
                                   1300 ;temp1                     Allocated with name '_readLCD_temp1_65537_85'
                                   1301 ;------------------------------------------------------------
                                   1302 ;	lcdCommands.c:158: uint8_t readLCD()
                                   1303 ;	-----------------------------------------
                                   1304 ;	 function readLCD
                                   1305 ;	-----------------------------------------
      002478                       1306 _readLCD:
                                   1307 ;	lcdCommands.c:160: busyWait();
      002478 12 20 8B         [24] 1308 	lcall	_busyWait
                                   1309 ;	lcdCommands.c:161: uint8_t temp1 = readCharacter;
      00247B 90 F3 00         [24] 1310 	mov	dptr,#_readCharacter
      00247E E0               [24] 1311 	movx	a,@dptr
      00247F FE               [12] 1312 	mov	r6,a
      002480 A3               [24] 1313 	inc	dptr
      002481 E0               [24] 1314 	movx	a,@dptr
                                   1315 ;	lcdCommands.c:162: return temp1;
      002482 8E 82            [24] 1316 	mov	dpl,r6
                                   1317 ;	lcdCommands.c:163: }
      002484 22               [24] 1318 	ret
                                   1319 ;------------------------------------------------------------
                                   1320 ;Allocation info for local variables in function 'putsLCD'
                                   1321 ;------------------------------------------------------------
                                   1322 ;sloc0                     Allocated with name '_putsLCD_sloc0_1_0'
                                   1323 ;sloc1                     Allocated with name '_putsLCD_sloc1_1_0'
                                   1324 ;y                         Allocated with name '_putsLCD_y_65536_86'
                                   1325 ;i                         Allocated with name '_putsLCD_i_65536_87'
                                   1326 ;j                         Allocated with name '_putsLCD_j_65536_87'
                                   1327 ;k                         Allocated with name '_putsLCD_k_65536_87'
                                   1328 ;------------------------------------------------------------
                                   1329 ;	lcdCommands.c:165: void putsLCD(char* y)
                                   1330 ;	-----------------------------------------
                                   1331 ;	 function putsLCD
                                   1332 ;	-----------------------------------------
      002485                       1333 _putsLCD:
      002485 AF F0            [24] 1334 	mov	r7,b
      002487 AE 83            [24] 1335 	mov	r6,dph
      002489 E5 82            [12] 1336 	mov	a,dpl
      00248B 90 00 0D         [24] 1337 	mov	dptr,#_putsLCD_y_65536_86
      00248E F0               [24] 1338 	movx	@dptr,a
      00248F EE               [12] 1339 	mov	a,r6
      002490 A3               [24] 1340 	inc	dptr
      002491 F0               [24] 1341 	movx	@dptr,a
      002492 EF               [12] 1342 	mov	a,r7
      002493 A3               [24] 1343 	inc	dptr
      002494 F0               [24] 1344 	movx	@dptr,a
                                   1345 ;	lcdCommands.c:167: int i = 0,j = 0, k =0;
      002495 90 00 10         [24] 1346 	mov	dptr,#_putsLCD_i_65536_87
      002498 E4               [12] 1347 	clr	a
      002499 F0               [24] 1348 	movx	@dptr,a
      00249A A3               [24] 1349 	inc	dptr
      00249B F0               [24] 1350 	movx	@dptr,a
                                   1351 ;	lcdCommands.c:168: while(y[i + (j * 16)] != '\0')
      00249C 90 00 0D         [24] 1352 	mov	dptr,#_putsLCD_y_65536_86
      00249F E0               [24] 1353 	movx	a,@dptr
      0024A0 F5 0A            [12] 1354 	mov	_putsLCD_sloc1_1_0,a
      0024A2 A3               [24] 1355 	inc	dptr
      0024A3 E0               [24] 1356 	movx	a,@dptr
      0024A4 F5 0B            [12] 1357 	mov	(_putsLCD_sloc1_1_0 + 1),a
      0024A6 A3               [24] 1358 	inc	dptr
      0024A7 E0               [24] 1359 	movx	a,@dptr
      0024A8 F5 0C            [12] 1360 	mov	(_putsLCD_sloc1_1_0 + 2),a
      0024AA AA 0A            [24] 1361 	mov	r2,_putsLCD_sloc1_1_0
      0024AC AB 0B            [24] 1362 	mov	r3,(_putsLCD_sloc1_1_0 + 1)
      0024AE AC 0C            [24] 1363 	mov	r4,(_putsLCD_sloc1_1_0 + 2)
      0024B0 78 00            [12] 1364 	mov	r0,#0x00
      0024B2 79 00            [12] 1365 	mov	r1,#0x00
      0024B4                       1366 00103$:
      0024B4 88 06            [24] 1367 	mov	ar6,r0
      0024B6 E9               [12] 1368 	mov	a,r1
      0024B7 C4               [12] 1369 	swap	a
      0024B8 54 F0            [12] 1370 	anl	a,#0xf0
      0024BA CE               [12] 1371 	xch	a,r6
      0024BB C4               [12] 1372 	swap	a
      0024BC CE               [12] 1373 	xch	a,r6
      0024BD 6E               [12] 1374 	xrl	a,r6
      0024BE CE               [12] 1375 	xch	a,r6
      0024BF 54 F0            [12] 1376 	anl	a,#0xf0
      0024C1 CE               [12] 1377 	xch	a,r6
      0024C2 6E               [12] 1378 	xrl	a,r6
      0024C3 FF               [12] 1379 	mov	r7,a
      0024C4 90 00 10         [24] 1380 	mov	dptr,#_putsLCD_i_65536_87
      0024C7 E0               [24] 1381 	movx	a,@dptr
      0024C8 F5 08            [12] 1382 	mov	_putsLCD_sloc0_1_0,a
      0024CA A3               [24] 1383 	inc	dptr
      0024CB E0               [24] 1384 	movx	a,@dptr
      0024CC F5 09            [12] 1385 	mov	(_putsLCD_sloc0_1_0 + 1),a
      0024CE EE               [12] 1386 	mov	a,r6
      0024CF 25 08            [12] 1387 	add	a,_putsLCD_sloc0_1_0
      0024D1 FE               [12] 1388 	mov	r6,a
      0024D2 EF               [12] 1389 	mov	a,r7
      0024D3 35 09            [12] 1390 	addc	a,(_putsLCD_sloc0_1_0 + 1)
      0024D5 FF               [12] 1391 	mov	r7,a
      0024D6 EE               [12] 1392 	mov	a,r6
      0024D7 2A               [12] 1393 	add	a,r2
      0024D8 FE               [12] 1394 	mov	r6,a
      0024D9 EF               [12] 1395 	mov	a,r7
      0024DA 3B               [12] 1396 	addc	a,r3
      0024DB FF               [12] 1397 	mov	r7,a
      0024DC 8C 05            [24] 1398 	mov	ar5,r4
      0024DE 8E 82            [24] 1399 	mov	dpl,r6
      0024E0 8F 83            [24] 1400 	mov	dph,r7
      0024E2 8D F0            [24] 1401 	mov	b,r5
      0024E4 12 42 83         [24] 1402 	lcall	__gptrget
      0024E7 70 01            [24] 1403 	jnz	00121$
      0024E9 22               [24] 1404 	ret
      0024EA                       1405 00121$:
                                   1406 ;	lcdCommands.c:170: busyWait();
      0024EA C0 04            [24] 1407 	push	ar4
      0024EC C0 03            [24] 1408 	push	ar3
      0024EE C0 02            [24] 1409 	push	ar2
      0024F0 C0 01            [24] 1410 	push	ar1
      0024F2 C0 00            [24] 1411 	push	ar0
      0024F4 12 20 8B         [24] 1412 	lcall	_busyWait
      0024F7 D0 00            [24] 1413 	pop	ar0
      0024F9 D0 01            [24] 1414 	pop	ar1
      0024FB D0 02            [24] 1415 	pop	ar2
      0024FD D0 03            [24] 1416 	pop	ar3
      0024FF D0 04            [24] 1417 	pop	ar4
                                   1418 ;	lcdCommands.c:171: if( i > 15)
      002501 C3               [12] 1419 	clr	c
      002502 74 0F            [12] 1420 	mov	a,#0x0f
      002504 95 08            [12] 1421 	subb	a,_putsLCD_sloc0_1_0
      002506 74 80            [12] 1422 	mov	a,#(0x00 ^ 0x80)
      002508 85 09 F0         [24] 1423 	mov	b,(_putsLCD_sloc0_1_0 + 1)
      00250B 63 F0 80         [24] 1424 	xrl	b,#0x80
      00250E 95 F0            [12] 1425 	subb	a,b
      002510 50 0C            [24] 1426 	jnc	00102$
                                   1427 ;	lcdCommands.c:173: j++;
      002512 08               [12] 1428 	inc	r0
      002513 B8 00 01         [24] 1429 	cjne	r0,#0x00,00123$
      002516 09               [12] 1430 	inc	r1
      002517                       1431 00123$:
                                   1432 ;	lcdCommands.c:174: i = 0;
      002517 90 00 10         [24] 1433 	mov	dptr,#_putsLCD_i_65536_87
      00251A E4               [12] 1434 	clr	a
      00251B F0               [24] 1435 	movx	@dptr,a
      00251C A3               [24] 1436 	inc	dptr
      00251D F0               [24] 1437 	movx	@dptr,a
      00251E                       1438 00102$:
                                   1439 ;	lcdCommands.c:177: goToAddr(lookUpTable[j][i]);
      00251E C0 02            [24] 1440 	push	ar2
      002520 C0 03            [24] 1441 	push	ar3
      002522 C0 04            [24] 1442 	push	ar4
      002524 88 03            [24] 1443 	mov	ar3,r0
      002526 E9               [12] 1444 	mov	a,r1
      002527 C4               [12] 1445 	swap	a
      002528 54 F0            [12] 1446 	anl	a,#0xf0
      00252A CB               [12] 1447 	xch	a,r3
      00252B C4               [12] 1448 	swap	a
      00252C CB               [12] 1449 	xch	a,r3
      00252D 6B               [12] 1450 	xrl	a,r3
      00252E CB               [12] 1451 	xch	a,r3
      00252F 54 F0            [12] 1452 	anl	a,#0xf0
      002531 CB               [12] 1453 	xch	a,r3
      002532 6B               [12] 1454 	xrl	a,r3
      002533 FC               [12] 1455 	mov	r4,a
      002534 EB               [12] 1456 	mov	a,r3
      002535 24 97            [12] 1457 	add	a,#_lookUpTable
      002537 FA               [12] 1458 	mov	r2,a
      002538 EC               [12] 1459 	mov	a,r4
      002539 34 44            [12] 1460 	addc	a,#(_lookUpTable >> 8)
      00253B FF               [12] 1461 	mov	r7,a
      00253C 90 00 10         [24] 1462 	mov	dptr,#_putsLCD_i_65536_87
      00253F E0               [24] 1463 	movx	a,@dptr
      002540 FD               [12] 1464 	mov	r5,a
      002541 A3               [24] 1465 	inc	dptr
      002542 E0               [24] 1466 	movx	a,@dptr
      002543 FE               [12] 1467 	mov	r6,a
      002544 ED               [12] 1468 	mov	a,r5
      002545 2A               [12] 1469 	add	a,r2
      002546 F5 08            [12] 1470 	mov	_putsLCD_sloc0_1_0,a
      002548 EE               [12] 1471 	mov	a,r6
      002549 3F               [12] 1472 	addc	a,r7
      00254A F5 09            [12] 1473 	mov	(_putsLCD_sloc0_1_0 + 1),a
      00254C 85 08 82         [24] 1474 	mov	dpl,_putsLCD_sloc0_1_0
      00254F 85 09 83         [24] 1475 	mov	dph,(_putsLCD_sloc0_1_0 + 1)
      002552 E4               [12] 1476 	clr	a
      002553 93               [24] 1477 	movc	a,@a+dptr
      002554 F5 82            [12] 1478 	mov	dpl,a
      002556 C0 06            [24] 1479 	push	ar6
      002558 C0 05            [24] 1480 	push	ar5
      00255A C0 04            [24] 1481 	push	ar4
      00255C C0 03            [24] 1482 	push	ar3
      00255E C0 02            [24] 1483 	push	ar2
      002560 C0 01            [24] 1484 	push	ar1
      002562 C0 00            [24] 1485 	push	ar0
      002564 12 21 1A         [24] 1486 	lcall	_goToAddr
      002567 D0 00            [24] 1487 	pop	ar0
      002569 D0 01            [24] 1488 	pop	ar1
      00256B D0 02            [24] 1489 	pop	ar2
                                   1490 ;	lcdCommands.c:178: printf_tiny("%d\n\r", lookUpTable[j][i]);
      00256D 85 08 82         [24] 1491 	mov	dpl,_putsLCD_sloc0_1_0
      002570 85 09 83         [24] 1492 	mov	dph,(_putsLCD_sloc0_1_0 + 1)
      002573 E4               [12] 1493 	clr	a
      002574 93               [24] 1494 	movc	a,@a+dptr
      002575 FF               [12] 1495 	mov	r7,a
      002576 7A 00            [12] 1496 	mov	r2,#0x00
      002578 C0 02            [24] 1497 	push	ar2
      00257A C0 01            [24] 1498 	push	ar1
      00257C C0 00            [24] 1499 	push	ar0
      00257E C0 07            [24] 1500 	push	ar7
      002580 C0 02            [24] 1501 	push	ar2
      002582 74 A7            [12] 1502 	mov	a,#___str_8
      002584 C0 E0            [24] 1503 	push	acc
      002586 74 45            [12] 1504 	mov	a,#(___str_8 >> 8)
      002588 C0 E0            [24] 1505 	push	acc
      00258A 12 34 D7         [24] 1506 	lcall	_printf_tiny
      00258D E5 81            [12] 1507 	mov	a,sp
      00258F 24 FC            [12] 1508 	add	a,#0xfc
      002591 F5 81            [12] 1509 	mov	sp,a
      002593 D0 00            [24] 1510 	pop	ar0
      002595 D0 01            [24] 1511 	pop	ar1
      002597 D0 02            [24] 1512 	pop	ar2
      002599 D0 03            [24] 1513 	pop	ar3
      00259B D0 04            [24] 1514 	pop	ar4
      00259D D0 05            [24] 1515 	pop	ar5
      00259F D0 06            [24] 1516 	pop	ar6
                                   1517 ;	lcdCommands.c:179: lcdPutCh(y[i + (j * 16)]);
      0025A1 EB               [12] 1518 	mov	a,r3
      0025A2 2D               [12] 1519 	add	a,r5
      0025A3 FB               [12] 1520 	mov	r3,a
      0025A4 EC               [12] 1521 	mov	a,r4
      0025A5 3E               [12] 1522 	addc	a,r6
      0025A6 FC               [12] 1523 	mov	r4,a
      0025A7 EB               [12] 1524 	mov	a,r3
      0025A8 25 0A            [12] 1525 	add	a,_putsLCD_sloc1_1_0
      0025AA FB               [12] 1526 	mov	r3,a
      0025AB EC               [12] 1527 	mov	a,r4
      0025AC 35 0B            [12] 1528 	addc	a,(_putsLCD_sloc1_1_0 + 1)
      0025AE FC               [12] 1529 	mov	r4,a
      0025AF AF 0C            [24] 1530 	mov	r7,(_putsLCD_sloc1_1_0 + 2)
      0025B1 8B 82            [24] 1531 	mov	dpl,r3
      0025B3 8C 83            [24] 1532 	mov	dph,r4
      0025B5 8F F0            [24] 1533 	mov	b,r7
      0025B7 12 42 83         [24] 1534 	lcall	__gptrget
      0025BA FB               [12] 1535 	mov	r3,a
      0025BB F5 82            [12] 1536 	mov	dpl,a
      0025BD C0 06            [24] 1537 	push	ar6
      0025BF C0 05            [24] 1538 	push	ar5
      0025C1 C0 04            [24] 1539 	push	ar4
      0025C3 C0 03            [24] 1540 	push	ar3
      0025C5 C0 02            [24] 1541 	push	ar2
      0025C7 C0 01            [24] 1542 	push	ar1
      0025C9 C0 00            [24] 1543 	push	ar0
      0025CB 12 20 F8         [24] 1544 	lcall	_lcdPutCh
      0025CE D0 00            [24] 1545 	pop	ar0
      0025D0 D0 01            [24] 1546 	pop	ar1
      0025D2 D0 02            [24] 1547 	pop	ar2
      0025D4 D0 03            [24] 1548 	pop	ar3
      0025D6 D0 04            [24] 1549 	pop	ar4
      0025D8 D0 05            [24] 1550 	pop	ar5
      0025DA D0 06            [24] 1551 	pop	ar6
                                   1552 ;	lcdCommands.c:180: i++;
      0025DC 90 00 10         [24] 1553 	mov	dptr,#_putsLCD_i_65536_87
      0025DF 74 01            [12] 1554 	mov	a,#0x01
      0025E1 2D               [12] 1555 	add	a,r5
      0025E2 F0               [24] 1556 	movx	@dptr,a
      0025E3 E4               [12] 1557 	clr	a
      0025E4 3E               [12] 1558 	addc	a,r6
      0025E5 A3               [24] 1559 	inc	dptr
      0025E6 F0               [24] 1560 	movx	@dptr,a
      0025E7 D0 04            [24] 1561 	pop	ar4
      0025E9 D0 03            [24] 1562 	pop	ar3
      0025EB D0 02            [24] 1563 	pop	ar2
                                   1564 ;	lcdCommands.c:182: }
      0025ED 02 24 B4         [24] 1565 	ljmp	00103$
                                   1566 ;------------------------------------------------------------
                                   1567 ;Allocation info for local variables in function 'gets'
                                   1568 ;------------------------------------------------------------
                                   1569 ;s                         Allocated with name '_gets_s_65536_90'
                                   1570 ;c                         Allocated with name '_gets_c_65536_91'
                                   1571 ;count                     Allocated with name '_gets_count_65536_91'
                                   1572 ;------------------------------------------------------------
                                   1573 ;	lcdCommands.c:184: char *gets (char *s)
                                   1574 ;	-----------------------------------------
                                   1575 ;	 function gets
                                   1576 ;	-----------------------------------------
      0025F0                       1577 _gets:
      0025F0 AF F0            [24] 1578 	mov	r7,b
      0025F2 AE 83            [24] 1579 	mov	r6,dph
      0025F4 E5 82            [12] 1580 	mov	a,dpl
      0025F6 90 00 12         [24] 1581 	mov	dptr,#_gets_s_65536_90
      0025F9 F0               [24] 1582 	movx	@dptr,a
      0025FA EE               [12] 1583 	mov	a,r6
      0025FB A3               [24] 1584 	inc	dptr
      0025FC F0               [24] 1585 	movx	@dptr,a
      0025FD EF               [12] 1586 	mov	a,r7
      0025FE A3               [24] 1587 	inc	dptr
      0025FF F0               [24] 1588 	movx	@dptr,a
                                   1589 ;	lcdCommands.c:187: unsigned int count = 0;
      002600 90 00 15         [24] 1590 	mov	dptr,#_gets_count_65536_91
      002603 E4               [12] 1591 	clr	a
      002604 F0               [24] 1592 	movx	@dptr,a
      002605 A3               [24] 1593 	inc	dptr
      002606 F0               [24] 1594 	movx	@dptr,a
                                   1595 ;	lcdCommands.c:189: while (1)
      002607                       1596 00111$:
                                   1597 ;	lcdCommands.c:191: c = getchar ();
      002607 12 32 A0         [24] 1598 	lcall	_getchar
      00260A AE 82            [24] 1599 	mov	r6,dpl
      00260C AF 83            [24] 1600 	mov	r7,dph
                                   1601 ;	lcdCommands.c:192: switch(c)
      00260E BE 08 02         [24] 1602 	cjne	r6,#0x08,00139$
      002611 80 0D            [24] 1603 	sjmp	00101$
      002613                       1604 00139$:
      002613 BE 0A 02         [24] 1605 	cjne	r6,#0x0a,00140$
      002616 80 62            [24] 1606 	sjmp	00105$
      002618                       1607 00140$:
      002618 BE 0D 02         [24] 1608 	cjne	r6,#0x0d,00141$
      00261B 80 5D            [24] 1609 	sjmp	00105$
      00261D                       1610 00141$:
      00261D 02 26 A2         [24] 1611 	ljmp	00106$
                                   1612 ;	lcdCommands.c:194: case '\b': /* backspace */
      002620                       1613 00101$:
                                   1614 ;	lcdCommands.c:195: if (count)
      002620 90 00 15         [24] 1615 	mov	dptr,#_gets_count_65536_91
      002623 E0               [24] 1616 	movx	a,@dptr
      002624 FD               [12] 1617 	mov	r5,a
      002625 A3               [24] 1618 	inc	dptr
      002626 E0               [24] 1619 	movx	a,@dptr
      002627 FF               [12] 1620 	mov	r7,a
      002628 90 00 15         [24] 1621 	mov	dptr,#_gets_count_65536_91
      00262B E0               [24] 1622 	movx	a,@dptr
      00262C F5 F0            [12] 1623 	mov	b,a
      00262E A3               [24] 1624 	inc	dptr
      00262F E0               [24] 1625 	movx	a,@dptr
      002630 45 F0            [12] 1626 	orl	a,b
      002632 70 03            [24] 1627 	jnz	00142$
      002634 02 26 DA         [24] 1628 	ljmp	00107$
      002637                       1629 00142$:
                                   1630 ;	lcdCommands.c:197: putchar ('\b');
      002637 90 00 08         [24] 1631 	mov	dptr,#0x0008
      00263A C0 07            [24] 1632 	push	ar7
      00263C C0 05            [24] 1633 	push	ar5
      00263E 12 32 6F         [24] 1634 	lcall	_putchar
                                   1635 ;	lcdCommands.c:198: putchar (' ');
      002641 90 00 20         [24] 1636 	mov	dptr,#0x0020
      002644 12 32 6F         [24] 1637 	lcall	_putchar
                                   1638 ;	lcdCommands.c:199: putchar ('\b');
      002647 90 00 08         [24] 1639 	mov	dptr,#0x0008
      00264A 12 32 6F         [24] 1640 	lcall	_putchar
      00264D D0 05            [24] 1641 	pop	ar5
      00264F D0 07            [24] 1642 	pop	ar7
                                   1643 ;	lcdCommands.c:200: --s;
      002651 90 00 12         [24] 1644 	mov	dptr,#_gets_s_65536_90
      002654 E0               [24] 1645 	movx	a,@dptr
      002655 24 FF            [12] 1646 	add	a,#0xff
      002657 FA               [12] 1647 	mov	r2,a
      002658 A3               [24] 1648 	inc	dptr
      002659 E0               [24] 1649 	movx	a,@dptr
      00265A 34 FF            [12] 1650 	addc	a,#0xff
      00265C FB               [12] 1651 	mov	r3,a
      00265D A3               [24] 1652 	inc	dptr
      00265E E0               [24] 1653 	movx	a,@dptr
      00265F FC               [12] 1654 	mov	r4,a
      002660 90 00 12         [24] 1655 	mov	dptr,#_gets_s_65536_90
      002663 EA               [12] 1656 	mov	a,r2
      002664 F0               [24] 1657 	movx	@dptr,a
      002665 EB               [12] 1658 	mov	a,r3
      002666 A3               [24] 1659 	inc	dptr
      002667 F0               [24] 1660 	movx	@dptr,a
      002668 EC               [12] 1661 	mov	a,r4
      002669 A3               [24] 1662 	inc	dptr
      00266A F0               [24] 1663 	movx	@dptr,a
                                   1664 ;	lcdCommands.c:201: --count;
      00266B 1D               [12] 1665 	dec	r5
      00266C BD FF 01         [24] 1666 	cjne	r5,#0xff,00143$
      00266F 1F               [12] 1667 	dec	r7
      002670                       1668 00143$:
      002670 90 00 15         [24] 1669 	mov	dptr,#_gets_count_65536_91
      002673 ED               [12] 1670 	mov	a,r5
      002674 F0               [24] 1671 	movx	@dptr,a
      002675 EF               [12] 1672 	mov	a,r7
      002676 A3               [24] 1673 	inc	dptr
      002677 F0               [24] 1674 	movx	@dptr,a
                                   1675 ;	lcdCommands.c:203: break;
                                   1676 ;	lcdCommands.c:206: case '\r': /* CR or LF */
      002678 80 60            [24] 1677 	sjmp	00107$
      00267A                       1678 00105$:
                                   1679 ;	lcdCommands.c:207: putchar ('\r');
      00267A 90 00 0D         [24] 1680 	mov	dptr,#0x000d
      00267D 12 32 6F         [24] 1681 	lcall	_putchar
                                   1682 ;	lcdCommands.c:208: putchar ('\n');
      002680 90 00 0A         [24] 1683 	mov	dptr,#0x000a
      002683 12 32 6F         [24] 1684 	lcall	_putchar
                                   1685 ;	lcdCommands.c:209: *s = 0;
      002686 90 00 12         [24] 1686 	mov	dptr,#_gets_s_65536_90
      002689 E0               [24] 1687 	movx	a,@dptr
      00268A FC               [12] 1688 	mov	r4,a
      00268B A3               [24] 1689 	inc	dptr
      00268C E0               [24] 1690 	movx	a,@dptr
      00268D FD               [12] 1691 	mov	r5,a
      00268E A3               [24] 1692 	inc	dptr
      00268F E0               [24] 1693 	movx	a,@dptr
      002690 FF               [12] 1694 	mov	r7,a
      002691 8C 82            [24] 1695 	mov	dpl,r4
      002693 8D 83            [24] 1696 	mov	dph,r5
      002695 8F F0            [24] 1697 	mov	b,r7
      002697 E4               [12] 1698 	clr	a
      002698 12 34 BC         [24] 1699 	lcall	__gptrput
                                   1700 ;	lcdCommands.c:210: return s;
      00269B 8C 82            [24] 1701 	mov	dpl,r4
      00269D 8D 83            [24] 1702 	mov	dph,r5
      00269F 8F F0            [24] 1703 	mov	b,r7
                                   1704 ;	lcdCommands.c:212: default:
      0026A1 22               [24] 1705 	ret
      0026A2                       1706 00106$:
                                   1707 ;	lcdCommands.c:213: *s++ = c;
      0026A2 90 00 12         [24] 1708 	mov	dptr,#_gets_s_65536_90
      0026A5 E0               [24] 1709 	movx	a,@dptr
      0026A6 FC               [12] 1710 	mov	r4,a
      0026A7 A3               [24] 1711 	inc	dptr
      0026A8 E0               [24] 1712 	movx	a,@dptr
      0026A9 FD               [12] 1713 	mov	r5,a
      0026AA A3               [24] 1714 	inc	dptr
      0026AB E0               [24] 1715 	movx	a,@dptr
      0026AC FF               [12] 1716 	mov	r7,a
      0026AD 8C 82            [24] 1717 	mov	dpl,r4
      0026AF 8D 83            [24] 1718 	mov	dph,r5
      0026B1 8F F0            [24] 1719 	mov	b,r7
      0026B3 EE               [12] 1720 	mov	a,r6
      0026B4 12 34 BC         [24] 1721 	lcall	__gptrput
      0026B7 90 00 12         [24] 1722 	mov	dptr,#_gets_s_65536_90
      0026BA 74 01            [12] 1723 	mov	a,#0x01
      0026BC 2C               [12] 1724 	add	a,r4
      0026BD F0               [24] 1725 	movx	@dptr,a
      0026BE E4               [12] 1726 	clr	a
      0026BF 3D               [12] 1727 	addc	a,r5
      0026C0 A3               [24] 1728 	inc	dptr
      0026C1 F0               [24] 1729 	movx	@dptr,a
      0026C2 EF               [12] 1730 	mov	a,r7
      0026C3 A3               [24] 1731 	inc	dptr
      0026C4 F0               [24] 1732 	movx	@dptr,a
                                   1733 ;	lcdCommands.c:214: ++count;
      0026C5 90 00 15         [24] 1734 	mov	dptr,#_gets_count_65536_91
      0026C8 E0               [24] 1735 	movx	a,@dptr
      0026C9 24 01            [12] 1736 	add	a,#0x01
      0026CB F0               [24] 1737 	movx	@dptr,a
      0026CC A3               [24] 1738 	inc	dptr
      0026CD E0               [24] 1739 	movx	a,@dptr
      0026CE 34 00            [12] 1740 	addc	a,#0x00
      0026D0 F0               [24] 1741 	movx	@dptr,a
                                   1742 ;	lcdCommands.c:215: putchar (c);
      0026D1 7F 00            [12] 1743 	mov	r7,#0x00
      0026D3 8E 82            [24] 1744 	mov	dpl,r6
      0026D5 8F 83            [24] 1745 	mov	dph,r7
      0026D7 12 32 6F         [24] 1746 	lcall	_putchar
                                   1747 ;	lcdCommands.c:217: }
      0026DA                       1748 00107$:
                                   1749 ;	lcdCommands.c:218: if (count == 48)
      0026DA 90 00 15         [24] 1750 	mov	dptr,#_gets_count_65536_91
      0026DD E0               [24] 1751 	movx	a,@dptr
      0026DE FE               [12] 1752 	mov	r6,a
      0026DF A3               [24] 1753 	inc	dptr
      0026E0 E0               [24] 1754 	movx	a,@dptr
      0026E1 FF               [12] 1755 	mov	r7,a
      0026E2 BE 30 05         [24] 1756 	cjne	r6,#0x30,00144$
      0026E5 BF 00 02         [24] 1757 	cjne	r7,#0x00,00144$
      0026E8 80 03            [24] 1758 	sjmp	00145$
      0026EA                       1759 00144$:
      0026EA 02 26 07         [24] 1760 	ljmp	00111$
      0026ED                       1761 00145$:
                                   1762 ;	lcdCommands.c:220: printf("\n\rPlease Input a maximum of 48 characters\n\r");
      0026ED 74 AC            [12] 1763 	mov	a,#___str_9
      0026EF C0 E0            [24] 1764 	push	acc
      0026F1 74 45            [12] 1765 	mov	a,#(___str_9 >> 8)
      0026F3 C0 E0            [24] 1766 	push	acc
      0026F5 74 80            [12] 1767 	mov	a,#0x80
      0026F7 C0 E0            [24] 1768 	push	acc
      0026F9 12 38 61         [24] 1769 	lcall	_printf
      0026FC 15 81            [12] 1770 	dec	sp
      0026FE 15 81            [12] 1771 	dec	sp
      002700 15 81            [12] 1772 	dec	sp
                                   1773 ;	lcdCommands.c:221: break;
                                   1774 ;	lcdCommands.c:224: }
      002702 22               [24] 1775 	ret
                                   1776 ;------------------------------------------------------------
                                   1777 ;Allocation info for local variables in function 'ramDump'
                                   1778 ;------------------------------------------------------------
                                   1779 ;i                         Allocated with name '_ramDump_i_65536_96'
                                   1780 ;j                         Allocated with name '_ramDump_j_65536_96'
                                   1781 ;x                         Allocated with name '_ramDump_x_196609_99'
                                   1782 ;x                         Allocated with name '_ramDump_x_196609_104'
                                   1783 ;------------------------------------------------------------
                                   1784 ;	lcdCommands.c:226: void ramDump()
                                   1785 ;	-----------------------------------------
                                   1786 ;	 function ramDump
                                   1787 ;	-----------------------------------------
      002703                       1788 _ramDump:
                                   1789 ;	lcdCommands.c:230: printf_tiny("\n\rDDRAM Contents\n\r");
      002703 74 D8            [12] 1790 	mov	a,#___str_10
      002705 C0 E0            [24] 1791 	push	acc
      002707 74 45            [12] 1792 	mov	a,#(___str_10 >> 8)
      002709 C0 E0            [24] 1793 	push	acc
      00270B 12 34 D7         [24] 1794 	lcall	_printf_tiny
      00270E 15 81            [12] 1795 	dec	sp
      002710 15 81            [12] 1796 	dec	sp
                                   1797 ;	lcdCommands.c:231: for (i = 0; i < 128; i += 16)      //Print 64 ASCII characters in each line
      002712 90 00 17         [24] 1798 	mov	dptr,#_ramDump_i_65536_96
      002715 E4               [12] 1799 	clr	a
      002716 F0               [24] 1800 	movx	@dptr,a
      002717                       1801 00109$:
                                   1802 ;	lcdCommands.c:233: lcdGeneral = 0x80 | i;
      002717 90 00 17         [24] 1803 	mov	dptr,#_ramDump_i_65536_96
      00271A E0               [24] 1804 	movx	a,@dptr
      00271B FF               [12] 1805 	mov	r7,a
      00271C FD               [12] 1806 	mov	r5,a
      00271D 7E 00            [12] 1807 	mov	r6,#0x00
      00271F 90 F0 00         [24] 1808 	mov	dptr,#_lcdGeneral
      002722 74 80            [12] 1809 	mov	a,#0x80
      002724 4D               [12] 1810 	orl	a,r5
      002725 F0               [24] 1811 	movx	@dptr,a
      002726 EE               [12] 1812 	mov	a,r6
      002727 A3               [24] 1813 	inc	dptr
      002728 F0               [24] 1814 	movx	@dptr,a
                                   1815 ;	lcdCommands.c:234: uint8_t x = readLCD();
      002729 C0 07            [24] 1816 	push	ar7
      00272B C0 06            [24] 1817 	push	ar6
      00272D C0 05            [24] 1818 	push	ar5
      00272F 12 24 78         [24] 1819 	lcall	_readLCD
      002732 AC 82            [24] 1820 	mov	r4,dpl
      002734 D0 05            [24] 1821 	pop	ar5
      002736 D0 06            [24] 1822 	pop	ar6
                                   1823 ;	lcdCommands.c:235: printf("%2x: ",i);
      002738 C0 06            [24] 1824 	push	ar6
      00273A C0 05            [24] 1825 	push	ar5
      00273C C0 04            [24] 1826 	push	ar4
      00273E C0 05            [24] 1827 	push	ar5
      002740 C0 06            [24] 1828 	push	ar6
      002742 74 EB            [12] 1829 	mov	a,#___str_11
      002744 C0 E0            [24] 1830 	push	acc
      002746 74 45            [12] 1831 	mov	a,#(___str_11 >> 8)
      002748 C0 E0            [24] 1832 	push	acc
      00274A 74 80            [12] 1833 	mov	a,#0x80
      00274C C0 E0            [24] 1834 	push	acc
      00274E 12 38 61         [24] 1835 	lcall	_printf
      002751 E5 81            [12] 1836 	mov	a,sp
      002753 24 FB            [12] 1837 	add	a,#0xfb
      002755 F5 81            [12] 1838 	mov	sp,a
      002757 D0 04            [24] 1839 	pop	ar4
      002759 D0 05            [24] 1840 	pop	ar5
      00275B D0 06            [24] 1841 	pop	ar6
      00275D D0 07            [24] 1842 	pop	ar7
                                   1843 ;	lcdCommands.c:236: for (j = i; j < (i+16) && j < 128; j++)    //Print the contents of buffer in ASCII
      00275F                       1844 00107$:
      00275F 8F 02            [24] 1845 	mov	ar2,r7
      002761 7B 00            [12] 1846 	mov	r3,#0x00
      002763 74 10            [12] 1847 	mov	a,#0x10
      002765 2A               [12] 1848 	add	a,r2
      002766 FA               [12] 1849 	mov	r2,a
      002767 E4               [12] 1850 	clr	a
      002768 3B               [12] 1851 	addc	a,r3
      002769 FB               [12] 1852 	mov	r3,a
      00276A C3               [12] 1853 	clr	c
      00276B ED               [12] 1854 	mov	a,r5
      00276C 9A               [12] 1855 	subb	a,r2
      00276D EE               [12] 1856 	mov	a,r6
      00276E 64 80            [12] 1857 	xrl	a,#0x80
      002770 8B F0            [24] 1858 	mov	b,r3
      002772 63 F0 80         [24] 1859 	xrl	b,#0x80
      002775 95 F0            [12] 1860 	subb	a,b
      002777 50 3F            [24] 1861 	jnc	00101$
      002779 C3               [12] 1862 	clr	c
      00277A ED               [12] 1863 	mov	a,r5
      00277B 94 80            [12] 1864 	subb	a,#0x80
      00277D EE               [12] 1865 	mov	a,r6
      00277E 64 80            [12] 1866 	xrl	a,#0x80
      002780 94 80            [12] 1867 	subb	a,#0x80
      002782 50 34            [24] 1868 	jnc	00101$
                                   1869 ;	lcdCommands.c:238: printf("%2x ", x);
      002784 8C 02            [24] 1870 	mov	ar2,r4
      002786 7B 00            [12] 1871 	mov	r3,#0x00
      002788 C0 07            [24] 1872 	push	ar7
      00278A C0 06            [24] 1873 	push	ar6
      00278C C0 05            [24] 1874 	push	ar5
      00278E C0 04            [24] 1875 	push	ar4
      002790 C0 02            [24] 1876 	push	ar2
      002792 C0 03            [24] 1877 	push	ar3
      002794 74 F1            [12] 1878 	mov	a,#___str_12
      002796 C0 E0            [24] 1879 	push	acc
      002798 74 45            [12] 1880 	mov	a,#(___str_12 >> 8)
      00279A C0 E0            [24] 1881 	push	acc
      00279C 74 80            [12] 1882 	mov	a,#0x80
      00279E C0 E0            [24] 1883 	push	acc
      0027A0 12 38 61         [24] 1884 	lcall	_printf
      0027A3 E5 81            [12] 1885 	mov	a,sp
      0027A5 24 FB            [12] 1886 	add	a,#0xfb
      0027A7 F5 81            [12] 1887 	mov	sp,a
      0027A9 D0 04            [24] 1888 	pop	ar4
      0027AB D0 05            [24] 1889 	pop	ar5
      0027AD D0 06            [24] 1890 	pop	ar6
      0027AF D0 07            [24] 1891 	pop	ar7
                                   1892 ;	lcdCommands.c:236: for (j = i; j < (i+16) && j < 128; j++)    //Print the contents of buffer in ASCII
      0027B1 0D               [12] 1893 	inc	r5
      0027B2 BD 00 AA         [24] 1894 	cjne	r5,#0x00,00107$
      0027B5 0E               [12] 1895 	inc	r6
      0027B6 80 A7            [24] 1896 	sjmp	00107$
      0027B8                       1897 00101$:
                                   1898 ;	lcdCommands.c:240: printf_tiny("\n\r");
      0027B8 74 F6            [12] 1899 	mov	a,#___str_13
      0027BA C0 E0            [24] 1900 	push	acc
      0027BC 74 45            [12] 1901 	mov	a,#(___str_13 >> 8)
      0027BE C0 E0            [24] 1902 	push	acc
      0027C0 12 34 D7         [24] 1903 	lcall	_printf_tiny
      0027C3 15 81            [12] 1904 	dec	sp
      0027C5 15 81            [12] 1905 	dec	sp
                                   1906 ;	lcdCommands.c:231: for (i = 0; i < 128; i += 16)      //Print 64 ASCII characters in each line
      0027C7 90 00 17         [24] 1907 	mov	dptr,#_ramDump_i_65536_96
      0027CA E0               [24] 1908 	movx	a,@dptr
      0027CB 24 10            [12] 1909 	add	a,#0x10
      0027CD F0               [24] 1910 	movx	@dptr,a
      0027CE E0               [24] 1911 	movx	a,@dptr
      0027CF FF               [12] 1912 	mov	r7,a
      0027D0 BF 80 00         [24] 1913 	cjne	r7,#0x80,00160$
      0027D3                       1914 00160$:
      0027D3 50 03            [24] 1915 	jnc	00161$
      0027D5 02 27 17         [24] 1916 	ljmp	00109$
      0027D8                       1917 00161$:
                                   1918 ;	lcdCommands.c:242: printf_tiny("\n\rCGRAM Contents\n\r");
      0027D8 74 F9            [12] 1919 	mov	a,#___str_14
      0027DA C0 E0            [24] 1920 	push	acc
      0027DC 74 45            [12] 1921 	mov	a,#(___str_14 >> 8)
      0027DE C0 E0            [24] 1922 	push	acc
      0027E0 12 34 D7         [24] 1923 	lcall	_printf_tiny
      0027E3 15 81            [12] 1924 	dec	sp
      0027E5 15 81            [12] 1925 	dec	sp
                                   1926 ;	lcdCommands.c:243: for (i = 0; i < 64; i += 16)      //Print 64 ASCII characters in each line
      0027E7 90 00 17         [24] 1927 	mov	dptr,#_ramDump_i_65536_96
      0027EA E4               [12] 1928 	clr	a
      0027EB F0               [24] 1929 	movx	@dptr,a
      0027EC                       1930 00115$:
                                   1931 ;	lcdCommands.c:245: lcdGeneral = 0x40 | i;
      0027EC 90 00 17         [24] 1932 	mov	dptr,#_ramDump_i_65536_96
      0027EF E0               [24] 1933 	movx	a,@dptr
      0027F0 FF               [12] 1934 	mov	r7,a
      0027F1 FD               [12] 1935 	mov	r5,a
      0027F2 7E 00            [12] 1936 	mov	r6,#0x00
      0027F4 90 F0 00         [24] 1937 	mov	dptr,#_lcdGeneral
      0027F7 74 40            [12] 1938 	mov	a,#0x40
      0027F9 4D               [12] 1939 	orl	a,r5
      0027FA F0               [24] 1940 	movx	@dptr,a
      0027FB EE               [12] 1941 	mov	a,r6
      0027FC A3               [24] 1942 	inc	dptr
      0027FD F0               [24] 1943 	movx	@dptr,a
                                   1944 ;	lcdCommands.c:246: uint8_t x = readLCD();
      0027FE C0 07            [24] 1945 	push	ar7
      002800 C0 06            [24] 1946 	push	ar6
      002802 C0 05            [24] 1947 	push	ar5
      002804 12 24 78         [24] 1948 	lcall	_readLCD
      002807 AC 82            [24] 1949 	mov	r4,dpl
      002809 D0 05            [24] 1950 	pop	ar5
      00280B D0 06            [24] 1951 	pop	ar6
                                   1952 ;	lcdCommands.c:247: printf("%2x: ",i);
      00280D C0 06            [24] 1953 	push	ar6
      00280F C0 05            [24] 1954 	push	ar5
      002811 C0 04            [24] 1955 	push	ar4
      002813 C0 05            [24] 1956 	push	ar5
      002815 C0 06            [24] 1957 	push	ar6
      002817 74 EB            [12] 1958 	mov	a,#___str_11
      002819 C0 E0            [24] 1959 	push	acc
      00281B 74 45            [12] 1960 	mov	a,#(___str_11 >> 8)
      00281D C0 E0            [24] 1961 	push	acc
      00281F 74 80            [12] 1962 	mov	a,#0x80
      002821 C0 E0            [24] 1963 	push	acc
      002823 12 38 61         [24] 1964 	lcall	_printf
      002826 E5 81            [12] 1965 	mov	a,sp
      002828 24 FB            [12] 1966 	add	a,#0xfb
      00282A F5 81            [12] 1967 	mov	sp,a
      00282C D0 04            [24] 1968 	pop	ar4
      00282E D0 05            [24] 1969 	pop	ar5
      002830 D0 06            [24] 1970 	pop	ar6
      002832 D0 07            [24] 1971 	pop	ar7
                                   1972 ;	lcdCommands.c:248: for (j = i; j < (i+16) && j < 64; j++)    //Print the contents of buffer in ASCII
      002834                       1973 00113$:
      002834 8F 02            [24] 1974 	mov	ar2,r7
      002836 7B 00            [12] 1975 	mov	r3,#0x00
      002838 74 10            [12] 1976 	mov	a,#0x10
      00283A 2A               [12] 1977 	add	a,r2
      00283B FA               [12] 1978 	mov	r2,a
      00283C E4               [12] 1979 	clr	a
      00283D 3B               [12] 1980 	addc	a,r3
      00283E FB               [12] 1981 	mov	r3,a
      00283F C3               [12] 1982 	clr	c
      002840 ED               [12] 1983 	mov	a,r5
      002841 9A               [12] 1984 	subb	a,r2
      002842 EE               [12] 1985 	mov	a,r6
      002843 64 80            [12] 1986 	xrl	a,#0x80
      002845 8B F0            [24] 1987 	mov	b,r3
      002847 63 F0 80         [24] 1988 	xrl	b,#0x80
      00284A 95 F0            [12] 1989 	subb	a,b
      00284C 50 3F            [24] 1990 	jnc	00103$
      00284E C3               [12] 1991 	clr	c
      00284F ED               [12] 1992 	mov	a,r5
      002850 94 40            [12] 1993 	subb	a,#0x40
      002852 EE               [12] 1994 	mov	a,r6
      002853 64 80            [12] 1995 	xrl	a,#0x80
      002855 94 80            [12] 1996 	subb	a,#0x80
      002857 50 34            [24] 1997 	jnc	00103$
                                   1998 ;	lcdCommands.c:250: printf("%2x ", x);
      002859 8C 02            [24] 1999 	mov	ar2,r4
      00285B 7B 00            [12] 2000 	mov	r3,#0x00
      00285D C0 07            [24] 2001 	push	ar7
      00285F C0 06            [24] 2002 	push	ar6
      002861 C0 05            [24] 2003 	push	ar5
      002863 C0 04            [24] 2004 	push	ar4
      002865 C0 02            [24] 2005 	push	ar2
      002867 C0 03            [24] 2006 	push	ar3
      002869 74 F1            [12] 2007 	mov	a,#___str_12
      00286B C0 E0            [24] 2008 	push	acc
      00286D 74 45            [12] 2009 	mov	a,#(___str_12 >> 8)
      00286F C0 E0            [24] 2010 	push	acc
      002871 74 80            [12] 2011 	mov	a,#0x80
      002873 C0 E0            [24] 2012 	push	acc
      002875 12 38 61         [24] 2013 	lcall	_printf
      002878 E5 81            [12] 2014 	mov	a,sp
      00287A 24 FB            [12] 2015 	add	a,#0xfb
      00287C F5 81            [12] 2016 	mov	sp,a
      00287E D0 04            [24] 2017 	pop	ar4
      002880 D0 05            [24] 2018 	pop	ar5
      002882 D0 06            [24] 2019 	pop	ar6
      002884 D0 07            [24] 2020 	pop	ar7
                                   2021 ;	lcdCommands.c:248: for (j = i; j < (i+16) && j < 64; j++)    //Print the contents of buffer in ASCII
      002886 0D               [12] 2022 	inc	r5
      002887 BD 00 AA         [24] 2023 	cjne	r5,#0x00,00113$
      00288A 0E               [12] 2024 	inc	r6
      00288B 80 A7            [24] 2025 	sjmp	00113$
      00288D                       2026 00103$:
                                   2027 ;	lcdCommands.c:252: printf_tiny("\n\r");
      00288D 74 F6            [12] 2028 	mov	a,#___str_13
      00288F C0 E0            [24] 2029 	push	acc
      002891 74 45            [12] 2030 	mov	a,#(___str_13 >> 8)
      002893 C0 E0            [24] 2031 	push	acc
      002895 12 34 D7         [24] 2032 	lcall	_printf_tiny
      002898 15 81            [12] 2033 	dec	sp
      00289A 15 81            [12] 2034 	dec	sp
                                   2035 ;	lcdCommands.c:243: for (i = 0; i < 64; i += 16)      //Print 64 ASCII characters in each line
      00289C 90 00 17         [24] 2036 	mov	dptr,#_ramDump_i_65536_96
      00289F E0               [24] 2037 	movx	a,@dptr
      0028A0 24 10            [12] 2038 	add	a,#0x10
      0028A2 F0               [24] 2039 	movx	@dptr,a
      0028A3 E0               [24] 2040 	movx	a,@dptr
      0028A4 FF               [12] 2041 	mov	r7,a
      0028A5 BF 40 00         [24] 2042 	cjne	r7,#0x40,00165$
      0028A8                       2043 00165$:
      0028A8 50 03            [24] 2044 	jnc	00166$
      0028AA 02 27 EC         [24] 2045 	ljmp	00115$
      0028AD                       2046 00166$:
                                   2047 ;	lcdCommands.c:254: }
      0028AD 22               [24] 2048 	ret
                                   2049 ;------------------------------------------------------------
                                   2050 ;Allocation info for local variables in function 'gamePacman'
                                   2051 ;------------------------------------------------------------
                                   2052 ;ch                        Allocated with name '_gamePacman_ch_65536_107'
                                   2053 ;i                         Allocated with name '_gamePacman_i_65536_107'
                                   2054 ;------------------------------------------------------------
                                   2055 ;	lcdCommands.c:256: void gamePacman()
                                   2056 ;	-----------------------------------------
                                   2057 ;	 function gamePacman
                                   2058 ;	-----------------------------------------
      0028AE                       2059 _gamePacman:
                                   2060 ;	lcdCommands.c:259: int i = 1;
      0028AE 90 00 18         [24] 2061 	mov	dptr,#_gamePacman_i_65536_107
      0028B1 74 01            [12] 2062 	mov	a,#0x01
      0028B3 F0               [24] 2063 	movx	@dptr,a
      0028B4 E4               [12] 2064 	clr	a
      0028B5 A3               [24] 2065 	inc	dptr
      0028B6 F0               [24] 2066 	movx	@dptr,a
                                   2067 ;	lcdCommands.c:260: makePacmanRight();
      0028B7 12 2B 1A         [24] 2068 	lcall	_makePacmanRight
                                   2069 ;	lcdCommands.c:261: makePacmanLeft();
      0028BA 12 2C 00         [24] 2070 	lcall	_makePacmanLeft
                                   2071 ;	lcdCommands.c:262: goToAddr(lookUpTable[0][4]);
      0028BD 90 44 9B         [24] 2072 	mov	dptr,#(_lookUpTable + 0x0004)
      0028C0 E4               [12] 2073 	clr	a
      0028C1 93               [24] 2074 	movc	a,@a+dptr
      0028C2 F5 82            [12] 2075 	mov	dpl,a
      0028C4 12 21 1A         [24] 2076 	lcall	_goToAddr
                                   2077 ;	lcdCommands.c:263: lcdPutCh('*');
      0028C7 75 82 2A         [24] 2078 	mov	dpl,#0x2a
      0028CA 12 20 F8         [24] 2079 	lcall	_lcdPutCh
                                   2080 ;	lcdCommands.c:264: goToAddr(lookUpTable[0][5]);
      0028CD 90 44 9C         [24] 2081 	mov	dptr,#(_lookUpTable + 0x0005)
      0028D0 E4               [12] 2082 	clr	a
      0028D1 93               [24] 2083 	movc	a,@a+dptr
      0028D2 F5 82            [12] 2084 	mov	dpl,a
      0028D4 12 21 1A         [24] 2085 	lcall	_goToAddr
                                   2086 ;	lcdCommands.c:265: lcdPutCh('*');
      0028D7 75 82 2A         [24] 2087 	mov	dpl,#0x2a
      0028DA 12 20 F8         [24] 2088 	lcall	_lcdPutCh
                                   2089 ;	lcdCommands.c:266: goToAddr(lookUpTable[0][8]);
      0028DD 90 44 9F         [24] 2090 	mov	dptr,#(_lookUpTable + 0x0008)
      0028E0 E4               [12] 2091 	clr	a
      0028E1 93               [24] 2092 	movc	a,@a+dptr
      0028E2 F5 82            [12] 2093 	mov	dpl,a
      0028E4 12 21 1A         [24] 2094 	lcall	_goToAddr
                                   2095 ;	lcdCommands.c:267: lcdPutCh('*');
      0028E7 75 82 2A         [24] 2096 	mov	dpl,#0x2a
      0028EA 12 20 F8         [24] 2097 	lcall	_lcdPutCh
                                   2098 ;	lcdCommands.c:268: goToAddr(lookUpTable[0][9]);
      0028ED 90 44 A0         [24] 2099 	mov	dptr,#(_lookUpTable + 0x0009)
      0028F0 E4               [12] 2100 	clr	a
      0028F1 93               [24] 2101 	movc	a,@a+dptr
      0028F2 F5 82            [12] 2102 	mov	dpl,a
      0028F4 12 21 1A         [24] 2103 	lcall	_goToAddr
                                   2104 ;	lcdCommands.c:269: lcdPutCh('*');
      0028F7 75 82 2A         [24] 2105 	mov	dpl,#0x2a
      0028FA 12 20 F8         [24] 2106 	lcall	_lcdPutCh
                                   2107 ;	lcdCommands.c:270: goToAddr(lookUpTable[0][12]);
      0028FD 90 44 A3         [24] 2108 	mov	dptr,#(_lookUpTable + 0x000c)
      002900 E4               [12] 2109 	clr	a
      002901 93               [24] 2110 	movc	a,@a+dptr
      002902 F5 82            [12] 2111 	mov	dpl,a
      002904 12 21 1A         [24] 2112 	lcall	_goToAddr
                                   2113 ;	lcdCommands.c:271: lcdPutCh('*');
      002907 75 82 2A         [24] 2114 	mov	dpl,#0x2a
      00290A 12 20 F8         [24] 2115 	lcall	_lcdPutCh
                                   2116 ;	lcdCommands.c:272: goToAddr(lookUpTable[0][13]);
      00290D 90 44 A4         [24] 2117 	mov	dptr,#(_lookUpTable + 0x000d)
      002910 E4               [12] 2118 	clr	a
      002911 93               [24] 2119 	movc	a,@a+dptr
      002912 F5 82            [12] 2120 	mov	dpl,a
      002914 12 21 1A         [24] 2121 	lcall	_goToAddr
                                   2122 ;	lcdCommands.c:273: lcdPutCh('*');
      002917 75 82 2A         [24] 2123 	mov	dpl,#0x2a
      00291A 12 20 F8         [24] 2124 	lcall	_lcdPutCh
                                   2125 ;	lcdCommands.c:274: goToAddr(lookUpTable[0][14]);
      00291D 90 44 A5         [24] 2126 	mov	dptr,#(_lookUpTable + 0x000e)
      002920 E4               [12] 2127 	clr	a
      002921 93               [24] 2128 	movc	a,@a+dptr
      002922 F5 82            [12] 2129 	mov	dpl,a
      002924 12 21 1A         [24] 2130 	lcall	_goToAddr
                                   2131 ;	lcdCommands.c:275: lcdPutCh('*');
      002927 75 82 2A         [24] 2132 	mov	dpl,#0x2a
      00292A 12 20 F8         [24] 2133 	lcall	_lcdPutCh
                                   2134 ;	lcdCommands.c:276: goToAddr(lookUpTable[1][1]);
      00292D 90 44 A8         [24] 2135 	mov	dptr,#(_lookUpTable + 0x0011)
      002930 E4               [12] 2136 	clr	a
      002931 93               [24] 2137 	movc	a,@a+dptr
      002932 F5 82            [12] 2138 	mov	dpl,a
      002934 12 21 1A         [24] 2139 	lcall	_goToAddr
                                   2140 ;	lcdCommands.c:277: lcdPutCh('*');
      002937 75 82 2A         [24] 2141 	mov	dpl,#0x2a
      00293A 12 20 F8         [24] 2142 	lcall	_lcdPutCh
                                   2143 ;	lcdCommands.c:278: goToAddr(lookUpTable[1][2]);
      00293D 90 44 A9         [24] 2144 	mov	dptr,#(_lookUpTable + 0x0012)
      002940 E4               [12] 2145 	clr	a
      002941 93               [24] 2146 	movc	a,@a+dptr
      002942 F5 82            [12] 2147 	mov	dpl,a
      002944 12 21 1A         [24] 2148 	lcall	_goToAddr
                                   2149 ;	lcdCommands.c:279: lcdPutCh('*');
      002947 75 82 2A         [24] 2150 	mov	dpl,#0x2a
      00294A 12 20 F8         [24] 2151 	lcall	_lcdPutCh
                                   2152 ;	lcdCommands.c:280: goToAddr(lookUpTable[1][3]);
      00294D 90 44 AA         [24] 2153 	mov	dptr,#(_lookUpTable + 0x0013)
      002950 E4               [12] 2154 	clr	a
      002951 93               [24] 2155 	movc	a,@a+dptr
      002952 F5 82            [12] 2156 	mov	dpl,a
      002954 12 21 1A         [24] 2157 	lcall	_goToAddr
                                   2158 ;	lcdCommands.c:281: lcdPutCh('*');
      002957 75 82 2A         [24] 2159 	mov	dpl,#0x2a
      00295A 12 20 F8         [24] 2160 	lcall	_lcdPutCh
                                   2161 ;	lcdCommands.c:282: goToAddr(lookUpTable[1][12]);
      00295D 90 44 B3         [24] 2162 	mov	dptr,#(_lookUpTable + 0x001c)
      002960 E4               [12] 2163 	clr	a
      002961 93               [24] 2164 	movc	a,@a+dptr
      002962 F5 82            [12] 2165 	mov	dpl,a
      002964 12 21 1A         [24] 2166 	lcall	_goToAddr
                                   2167 ;	lcdCommands.c:283: lcdPutCh('*');
      002967 75 82 2A         [24] 2168 	mov	dpl,#0x2a
      00296A 12 20 F8         [24] 2169 	lcall	_lcdPutCh
                                   2170 ;	lcdCommands.c:284: goToAddr(lookUpTable[1][13]);
      00296D 90 44 B4         [24] 2171 	mov	dptr,#(_lookUpTable + 0x001d)
      002970 E4               [12] 2172 	clr	a
      002971 93               [24] 2173 	movc	a,@a+dptr
      002972 F5 82            [12] 2174 	mov	dpl,a
      002974 12 21 1A         [24] 2175 	lcall	_goToAddr
                                   2176 ;	lcdCommands.c:285: lcdPutCh('*');
      002977 75 82 2A         [24] 2177 	mov	dpl,#0x2a
      00297A 12 20 F8         [24] 2178 	lcall	_lcdPutCh
                                   2179 ;	lcdCommands.c:286: printf_tiny("\n\rEnter w to go up, s to go down, a to go left and d to go right and q to quit\n\r");
      00297D 74 0C            [12] 2180 	mov	a,#___str_15
      00297F C0 E0            [24] 2181 	push	acc
      002981 74 46            [12] 2182 	mov	a,#(___str_15 >> 8)
      002983 C0 E0            [24] 2183 	push	acc
      002985 12 34 D7         [24] 2184 	lcall	_printf_tiny
      002988 15 81            [12] 2185 	dec	sp
      00298A 15 81            [12] 2186 	dec	sp
                                   2187 ;	lcdCommands.c:287: do{
      00298C                       2188 00109$:
                                   2189 ;	lcdCommands.c:288: ch = getchar();
      00298C 12 32 A0         [24] 2190 	lcall	_getchar
      00298F AE 82            [24] 2191 	mov	r6,dpl
      002991 AF 83            [24] 2192 	mov	r7,dph
                                   2193 ;	lcdCommands.c:289: if(ch == 'd')
      002993 BE 64 02         [24] 2194 	cjne	r6,#0x64,00134$
      002996 80 03            [24] 2195 	sjmp	00135$
      002998                       2196 00134$:
      002998 02 2A 3C         [24] 2197 	ljmp	00104$
      00299B                       2198 00135$:
                                   2199 ;	lcdCommands.c:291: putchar(7);
      00299B 90 00 07         [24] 2200 	mov	dptr,#0x0007
      00299E C0 06            [24] 2201 	push	ar6
      0029A0 12 32 6F         [24] 2202 	lcall	_putchar
      0029A3 D0 06            [24] 2203 	pop	ar6
                                   2204 ;	lcdCommands.c:292: goToAddr(lookUpTable[0][i-1]);
      0029A5 90 00 18         [24] 2205 	mov	dptr,#_gamePacman_i_65536_107
      0029A8 E0               [24] 2206 	movx	a,@dptr
      0029A9 FD               [12] 2207 	mov	r5,a
      0029AA A3               [24] 2208 	inc	dptr
      0029AB E0               [24] 2209 	movx	a,@dptr
      0029AC FF               [12] 2210 	mov	r7,a
      0029AD 8D 04            [24] 2211 	mov	ar4,r5
      0029AF EC               [12] 2212 	mov	a,r4
      0029B0 14               [12] 2213 	dec	a
      0029B1 90 44 97         [24] 2214 	mov	dptr,#_lookUpTable
      0029B4 93               [24] 2215 	movc	a,@a+dptr
      0029B5 F5 82            [12] 2216 	mov	dpl,a
      0029B7 C0 07            [24] 2217 	push	ar7
      0029B9 C0 06            [24] 2218 	push	ar6
      0029BB C0 05            [24] 2219 	push	ar5
      0029BD 12 21 1A         [24] 2220 	lcall	_goToAddr
                                   2221 ;	lcdCommands.c:293: busyWait();
      0029C0 12 20 8B         [24] 2222 	lcall	_busyWait
                                   2223 ;	lcdCommands.c:294: lcdPutCh(' ');
      0029C3 75 82 20         [24] 2224 	mov	dpl,#0x20
      0029C6 12 20 F8         [24] 2225 	lcall	_lcdPutCh
                                   2226 ;	lcdCommands.c:295: busyWait();
      0029C9 12 20 8B         [24] 2227 	lcall	_busyWait
      0029CC D0 05            [24] 2228 	pop	ar5
      0029CE D0 06            [24] 2229 	pop	ar6
      0029D0 D0 07            [24] 2230 	pop	ar7
                                   2231 ;	lcdCommands.c:296: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      0029D2 ED               [12] 2232 	mov	a,r5
      0029D3 24 97            [12] 2233 	add	a,#_lookUpTable
      0029D5 F5 82            [12] 2234 	mov	dpl,a
      0029D7 EF               [12] 2235 	mov	a,r7
      0029D8 34 44            [12] 2236 	addc	a,#(_lookUpTable >> 8)
      0029DA F5 83            [12] 2237 	mov	dph,a
      0029DC E4               [12] 2238 	clr	a
      0029DD 93               [24] 2239 	movc	a,@a+dptr
      0029DE FC               [12] 2240 	mov	r4,a
      0029DF 7B 00            [12] 2241 	mov	r3,#0x00
      0029E1 90 F0 00         [24] 2242 	mov	dptr,#_lcdGeneral
      0029E4 74 80            [12] 2243 	mov	a,#0x80
      0029E6 4C               [12] 2244 	orl	a,r4
      0029E7 F0               [24] 2245 	movx	@dptr,a
      0029E8 EB               [12] 2246 	mov	a,r3
      0029E9 A3               [24] 2247 	inc	dptr
      0029EA F0               [24] 2248 	movx	@dptr,a
                                   2249 ;	lcdCommands.c:297: busyWait();
      0029EB C0 07            [24] 2250 	push	ar7
      0029ED C0 06            [24] 2251 	push	ar6
      0029EF C0 05            [24] 2252 	push	ar5
      0029F1 12 20 8B         [24] 2253 	lcall	_busyWait
                                   2254 ;	lcdCommands.c:298: writeCharacter = 0x00;
      0029F4 90 F1 00         [24] 2255 	mov	dptr,#_writeCharacter
      0029F7 E4               [12] 2256 	clr	a
      0029F8 F0               [24] 2257 	movx	@dptr,a
      0029F9 A3               [24] 2258 	inc	dptr
      0029FA F0               [24] 2259 	movx	@dptr,a
                                   2260 ;	lcdCommands.c:299: busyWait();
      0029FB 12 20 8B         [24] 2261 	lcall	_busyWait
      0029FE D0 05            [24] 2262 	pop	ar5
      002A00 D0 06            [24] 2263 	pop	ar6
      002A02 D0 07            [24] 2264 	pop	ar7
                                   2265 ;	lcdCommands.c:300: if(i >= 47)
      002A04 C3               [12] 2266 	clr	c
      002A05 ED               [12] 2267 	mov	a,r5
      002A06 94 2F            [12] 2268 	subb	a,#0x2f
      002A08 EF               [12] 2269 	mov	a,r7
      002A09 64 80            [12] 2270 	xrl	a,#0x80
      002A0B 94 80            [12] 2271 	subb	a,#0x80
      002A0D 40 21            [24] 2272 	jc	00102$
                                   2273 ;	lcdCommands.c:302: goToAddr(lookUpTable[2][15]);
      002A0F 90 44 C6         [24] 2274 	mov	dptr,#(_lookUpTable + 0x002f)
      002A12 E4               [12] 2275 	clr	a
      002A13 93               [24] 2276 	movc	a,@a+dptr
      002A14 F5 82            [12] 2277 	mov	dpl,a
      002A16 C0 06            [24] 2278 	push	ar6
      002A18 12 21 1A         [24] 2279 	lcall	_goToAddr
                                   2280 ;	lcdCommands.c:303: busyWait();
      002A1B 12 20 8B         [24] 2281 	lcall	_busyWait
                                   2282 ;	lcdCommands.c:304: lcdPutCh(' ');
      002A1E 75 82 20         [24] 2283 	mov	dpl,#0x20
      002A21 12 20 F8         [24] 2284 	lcall	_lcdPutCh
                                   2285 ;	lcdCommands.c:305: busyWait();
      002A24 12 20 8B         [24] 2286 	lcall	_busyWait
      002A27 D0 06            [24] 2287 	pop	ar6
                                   2288 ;	lcdCommands.c:306: i = 0;
      002A29 90 00 18         [24] 2289 	mov	dptr,#_gamePacman_i_65536_107
      002A2C E4               [12] 2290 	clr	a
      002A2D F0               [24] 2291 	movx	@dptr,a
      002A2E A3               [24] 2292 	inc	dptr
      002A2F F0               [24] 2293 	movx	@dptr,a
      002A30                       2294 00102$:
                                   2295 ;	lcdCommands.c:308: i++;
      002A30 90 00 18         [24] 2296 	mov	dptr,#_gamePacman_i_65536_107
      002A33 E0               [24] 2297 	movx	a,@dptr
      002A34 24 01            [12] 2298 	add	a,#0x01
      002A36 F0               [24] 2299 	movx	@dptr,a
      002A37 A3               [24] 2300 	inc	dptr
      002A38 E0               [24] 2301 	movx	a,@dptr
      002A39 34 00            [12] 2302 	addc	a,#0x00
      002A3B F0               [24] 2303 	movx	@dptr,a
      002A3C                       2304 00104$:
                                   2305 ;	lcdCommands.c:310: i--;
      002A3C 90 00 18         [24] 2306 	mov	dptr,#_gamePacman_i_65536_107
      002A3F E0               [24] 2307 	movx	a,@dptr
      002A40 24 FF            [12] 2308 	add	a,#0xff
      002A42 FD               [12] 2309 	mov	r5,a
      002A43 A3               [24] 2310 	inc	dptr
      002A44 E0               [24] 2311 	movx	a,@dptr
      002A45 34 FF            [12] 2312 	addc	a,#0xff
      002A47 FF               [12] 2313 	mov	r7,a
      002A48 90 00 18         [24] 2314 	mov	dptr,#_gamePacman_i_65536_107
      002A4B ED               [12] 2315 	mov	a,r5
      002A4C F0               [24] 2316 	movx	@dptr,a
      002A4D EF               [12] 2317 	mov	a,r7
      002A4E A3               [24] 2318 	inc	dptr
      002A4F F0               [24] 2319 	movx	@dptr,a
                                   2320 ;	lcdCommands.c:312: if(ch == 'a')
      002A50 BE 61 02         [24] 2321 	cjne	r6,#0x61,00137$
      002A53 80 03            [24] 2322 	sjmp	00138$
      002A55                       2323 00137$:
      002A55 02 2B 06         [24] 2324 	ljmp	00108$
      002A58                       2325 00138$:
                                   2326 ;	lcdCommands.c:314: putchar(7);
      002A58 90 00 07         [24] 2327 	mov	dptr,#0x0007
      002A5B C0 06            [24] 2328 	push	ar6
      002A5D 12 32 6F         [24] 2329 	lcall	_putchar
      002A60 D0 06            [24] 2330 	pop	ar6
                                   2331 ;	lcdCommands.c:315: goToAddr(lookUpTable[0][i+1]);
      002A62 90 00 18         [24] 2332 	mov	dptr,#_gamePacman_i_65536_107
      002A65 E0               [24] 2333 	movx	a,@dptr
      002A66 FD               [12] 2334 	mov	r5,a
      002A67 A3               [24] 2335 	inc	dptr
      002A68 E0               [24] 2336 	movx	a,@dptr
      002A69 FF               [12] 2337 	mov	r7,a
      002A6A 8D 04            [24] 2338 	mov	ar4,r5
      002A6C EC               [12] 2339 	mov	a,r4
      002A6D 04               [12] 2340 	inc	a
      002A6E 90 44 97         [24] 2341 	mov	dptr,#_lookUpTable
      002A71 93               [24] 2342 	movc	a,@a+dptr
      002A72 F5 82            [12] 2343 	mov	dpl,a
      002A74 C0 07            [24] 2344 	push	ar7
      002A76 C0 06            [24] 2345 	push	ar6
      002A78 C0 05            [24] 2346 	push	ar5
      002A7A 12 21 1A         [24] 2347 	lcall	_goToAddr
                                   2348 ;	lcdCommands.c:316: busyWait();
      002A7D 12 20 8B         [24] 2349 	lcall	_busyWait
                                   2350 ;	lcdCommands.c:317: lcdPutCh(' ');
      002A80 75 82 20         [24] 2351 	mov	dpl,#0x20
      002A83 12 20 F8         [24] 2352 	lcall	_lcdPutCh
                                   2353 ;	lcdCommands.c:318: busyWait();
      002A86 12 20 8B         [24] 2354 	lcall	_busyWait
      002A89 D0 05            [24] 2355 	pop	ar5
      002A8B D0 06            [24] 2356 	pop	ar6
      002A8D D0 07            [24] 2357 	pop	ar7
                                   2358 ;	lcdCommands.c:319: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      002A8F ED               [12] 2359 	mov	a,r5
      002A90 24 97            [12] 2360 	add	a,#_lookUpTable
      002A92 F5 82            [12] 2361 	mov	dpl,a
      002A94 EF               [12] 2362 	mov	a,r7
      002A95 34 44            [12] 2363 	addc	a,#(_lookUpTable >> 8)
      002A97 F5 83            [12] 2364 	mov	dph,a
      002A99 E4               [12] 2365 	clr	a
      002A9A 93               [24] 2366 	movc	a,@a+dptr
      002A9B FC               [12] 2367 	mov	r4,a
      002A9C 7B 00            [12] 2368 	mov	r3,#0x00
      002A9E 90 F0 00         [24] 2369 	mov	dptr,#_lcdGeneral
      002AA1 74 80            [12] 2370 	mov	a,#0x80
      002AA3 4C               [12] 2371 	orl	a,r4
      002AA4 F0               [24] 2372 	movx	@dptr,a
      002AA5 EB               [12] 2373 	mov	a,r3
      002AA6 A3               [24] 2374 	inc	dptr
      002AA7 F0               [24] 2375 	movx	@dptr,a
                                   2376 ;	lcdCommands.c:320: busyWait();
      002AA8 C0 07            [24] 2377 	push	ar7
      002AAA C0 06            [24] 2378 	push	ar6
      002AAC C0 05            [24] 2379 	push	ar5
      002AAE 12 20 8B         [24] 2380 	lcall	_busyWait
                                   2381 ;	lcdCommands.c:321: writeCharacter = 0x00;
      002AB1 90 F1 00         [24] 2382 	mov	dptr,#_writeCharacter
      002AB4 E4               [12] 2383 	clr	a
      002AB5 F0               [24] 2384 	movx	@dptr,a
      002AB6 A3               [24] 2385 	inc	dptr
      002AB7 F0               [24] 2386 	movx	@dptr,a
                                   2387 ;	lcdCommands.c:322: busyWait();
      002AB8 12 20 8B         [24] 2388 	lcall	_busyWait
      002ABB D0 05            [24] 2389 	pop	ar5
      002ABD D0 06            [24] 2390 	pop	ar6
      002ABF D0 07            [24] 2391 	pop	ar7
                                   2392 ;	lcdCommands.c:323: if( i <= 0)
      002AC1 C3               [12] 2393 	clr	c
      002AC2 E4               [12] 2394 	clr	a
      002AC3 9D               [12] 2395 	subb	a,r5
      002AC4 74 80            [12] 2396 	mov	a,#(0x00 ^ 0x80)
      002AC6 8F F0            [24] 2397 	mov	b,r7
      002AC8 63 F0 80         [24] 2398 	xrl	b,#0x80
      002ACB 95 F0            [12] 2399 	subb	a,b
      002ACD 40 23            [24] 2400 	jc	00106$
                                   2401 ;	lcdCommands.c:325: goToAddr(lookUpTable[0][0]);
      002ACF 90 44 97         [24] 2402 	mov	dptr,#_lookUpTable
      002AD2 E4               [12] 2403 	clr	a
      002AD3 93               [24] 2404 	movc	a,@a+dptr
      002AD4 F5 82            [12] 2405 	mov	dpl,a
      002AD6 C0 06            [24] 2406 	push	ar6
      002AD8 12 21 1A         [24] 2407 	lcall	_goToAddr
                                   2408 ;	lcdCommands.c:326: busyWait();
      002ADB 12 20 8B         [24] 2409 	lcall	_busyWait
                                   2410 ;	lcdCommands.c:327: lcdPutCh(' ');
      002ADE 75 82 20         [24] 2411 	mov	dpl,#0x20
      002AE1 12 20 F8         [24] 2412 	lcall	_lcdPutCh
                                   2413 ;	lcdCommands.c:328: busyWait();
      002AE4 12 20 8B         [24] 2414 	lcall	_busyWait
      002AE7 D0 06            [24] 2415 	pop	ar6
                                   2416 ;	lcdCommands.c:329: i = 47;
      002AE9 90 00 18         [24] 2417 	mov	dptr,#_gamePacman_i_65536_107
      002AEC 74 2F            [12] 2418 	mov	a,#0x2f
      002AEE F0               [24] 2419 	movx	@dptr,a
      002AEF E4               [12] 2420 	clr	a
      002AF0 A3               [24] 2421 	inc	dptr
      002AF1 F0               [24] 2422 	movx	@dptr,a
      002AF2                       2423 00106$:
                                   2424 ;	lcdCommands.c:331: i--;
      002AF2 90 00 18         [24] 2425 	mov	dptr,#_gamePacman_i_65536_107
      002AF5 E0               [24] 2426 	movx	a,@dptr
      002AF6 24 FF            [12] 2427 	add	a,#0xff
      002AF8 FD               [12] 2428 	mov	r5,a
      002AF9 A3               [24] 2429 	inc	dptr
      002AFA E0               [24] 2430 	movx	a,@dptr
      002AFB 34 FF            [12] 2431 	addc	a,#0xff
      002AFD FF               [12] 2432 	mov	r7,a
      002AFE 90 00 18         [24] 2433 	mov	dptr,#_gamePacman_i_65536_107
      002B01 ED               [12] 2434 	mov	a,r5
      002B02 F0               [24] 2435 	movx	@dptr,a
      002B03 EF               [12] 2436 	mov	a,r7
      002B04 A3               [24] 2437 	inc	dptr
      002B05 F0               [24] 2438 	movx	@dptr,a
      002B06                       2439 00108$:
                                   2440 ;	lcdCommands.c:333: i++;
      002B06 90 00 18         [24] 2441 	mov	dptr,#_gamePacman_i_65536_107
      002B09 E0               [24] 2442 	movx	a,@dptr
      002B0A 24 01            [12] 2443 	add	a,#0x01
      002B0C F0               [24] 2444 	movx	@dptr,a
      002B0D A3               [24] 2445 	inc	dptr
      002B0E E0               [24] 2446 	movx	a,@dptr
      002B0F 34 00            [12] 2447 	addc	a,#0x00
      002B11 F0               [24] 2448 	movx	@dptr,a
                                   2449 ;	lcdCommands.c:334: }while(ch != 'q');
      002B12 BE 71 01         [24] 2450 	cjne	r6,#0x71,00140$
      002B15 22               [24] 2451 	ret
      002B16                       2452 00140$:
      002B16 02 29 8C         [24] 2453 	ljmp	00109$
                                   2454 ;	lcdCommands.c:335: }
      002B19 22               [24] 2455 	ret
                                   2456 ;------------------------------------------------------------
                                   2457 ;Allocation info for local variables in function 'makePacmanRight'
                                   2458 ;------------------------------------------------------------
                                   2459 ;	lcdCommands.c:337: void makePacmanRight()
                                   2460 ;	-----------------------------------------
                                   2461 ;	 function makePacmanRight
                                   2462 ;	-----------------------------------------
      002B1A                       2463 _makePacmanRight:
                                   2464 ;	lcdCommands.c:339: busyWait();
      002B1A 12 20 8B         [24] 2465 	lcall	_busyWait
                                   2466 ;	lcdCommands.c:340: lcdGeneral = 0x40 | 0x00;
      002B1D 90 F0 00         [24] 2467 	mov	dptr,#_lcdGeneral
      002B20 74 40            [12] 2468 	mov	a,#0x40
      002B22 F0               [24] 2469 	movx	@dptr,a
      002B23 E4               [12] 2470 	clr	a
      002B24 A3               [24] 2471 	inc	dptr
      002B25 F0               [24] 2472 	movx	@dptr,a
                                   2473 ;	lcdCommands.c:341: busyWait();
      002B26 12 20 8B         [24] 2474 	lcall	_busyWait
                                   2475 ;	lcdCommands.c:342: writeCharacter = 0x06;
      002B29 90 F1 00         [24] 2476 	mov	dptr,#_writeCharacter
      002B2C 74 06            [12] 2477 	mov	a,#0x06
      002B2E F0               [24] 2478 	movx	@dptr,a
      002B2F E4               [12] 2479 	clr	a
      002B30 A3               [24] 2480 	inc	dptr
      002B31 F0               [24] 2481 	movx	@dptr,a
                                   2482 ;	lcdCommands.c:343: busyWait();
      002B32 12 20 8B         [24] 2483 	lcall	_busyWait
                                   2484 ;	lcdCommands.c:344: lcdGeneral = 0x40 | 0x01;
      002B35 90 F0 00         [24] 2485 	mov	dptr,#_lcdGeneral
      002B38 74 41            [12] 2486 	mov	a,#0x41
      002B3A F0               [24] 2487 	movx	@dptr,a
      002B3B E4               [12] 2488 	clr	a
      002B3C A3               [24] 2489 	inc	dptr
      002B3D F0               [24] 2490 	movx	@dptr,a
                                   2491 ;	lcdCommands.c:345: busyWait();
      002B3E 12 20 8B         [24] 2492 	lcall	_busyWait
                                   2493 ;	lcdCommands.c:346: writeCharacter = 0x09;
      002B41 90 F1 00         [24] 2494 	mov	dptr,#_writeCharacter
      002B44 74 09            [12] 2495 	mov	a,#0x09
      002B46 F0               [24] 2496 	movx	@dptr,a
      002B47 E4               [12] 2497 	clr	a
      002B48 A3               [24] 2498 	inc	dptr
      002B49 F0               [24] 2499 	movx	@dptr,a
                                   2500 ;	lcdCommands.c:347: busyWait();
      002B4A 12 20 8B         [24] 2501 	lcall	_busyWait
                                   2502 ;	lcdCommands.c:348: lcdGeneral = 0x40 | 0x02;
      002B4D 90 F0 00         [24] 2503 	mov	dptr,#_lcdGeneral
      002B50 74 42            [12] 2504 	mov	a,#0x42
      002B52 F0               [24] 2505 	movx	@dptr,a
      002B53 E4               [12] 2506 	clr	a
      002B54 A3               [24] 2507 	inc	dptr
      002B55 F0               [24] 2508 	movx	@dptr,a
                                   2509 ;	lcdCommands.c:349: busyWait();
      002B56 12 20 8B         [24] 2510 	lcall	_busyWait
                                   2511 ;	lcdCommands.c:350: writeCharacter = 0x12;
      002B59 90 F1 00         [24] 2512 	mov	dptr,#_writeCharacter
      002B5C 74 12            [12] 2513 	mov	a,#0x12
      002B5E F0               [24] 2514 	movx	@dptr,a
      002B5F E4               [12] 2515 	clr	a
      002B60 A3               [24] 2516 	inc	dptr
      002B61 F0               [24] 2517 	movx	@dptr,a
                                   2518 ;	lcdCommands.c:351: busyWait();
      002B62 12 20 8B         [24] 2519 	lcall	_busyWait
                                   2520 ;	lcdCommands.c:352: lcdGeneral = 0x40 | 0x03;
      002B65 90 F0 00         [24] 2521 	mov	dptr,#_lcdGeneral
      002B68 74 43            [12] 2522 	mov	a,#0x43
      002B6A F0               [24] 2523 	movx	@dptr,a
      002B6B E4               [12] 2524 	clr	a
      002B6C A3               [24] 2525 	inc	dptr
      002B6D F0               [24] 2526 	movx	@dptr,a
                                   2527 ;	lcdCommands.c:353: busyWait();
      002B6E 12 20 8B         [24] 2528 	lcall	_busyWait
                                   2529 ;	lcdCommands.c:354: writeCharacter = 0x14;
      002B71 90 F1 00         [24] 2530 	mov	dptr,#_writeCharacter
      002B74 74 14            [12] 2531 	mov	a,#0x14
      002B76 F0               [24] 2532 	movx	@dptr,a
      002B77 E4               [12] 2533 	clr	a
      002B78 A3               [24] 2534 	inc	dptr
      002B79 F0               [24] 2535 	movx	@dptr,a
                                   2536 ;	lcdCommands.c:355: busyWait();
      002B7A 12 20 8B         [24] 2537 	lcall	_busyWait
                                   2538 ;	lcdCommands.c:356: lcdGeneral = 0x40 | 0x04;
      002B7D 90 F0 00         [24] 2539 	mov	dptr,#_lcdGeneral
      002B80 74 44            [12] 2540 	mov	a,#0x44
      002B82 F0               [24] 2541 	movx	@dptr,a
      002B83 E4               [12] 2542 	clr	a
      002B84 A3               [24] 2543 	inc	dptr
      002B85 F0               [24] 2544 	movx	@dptr,a
                                   2545 ;	lcdCommands.c:357: busyWait();
      002B86 12 20 8B         [24] 2546 	lcall	_busyWait
                                   2547 ;	lcdCommands.c:358: writeCharacter = 0x14;
      002B89 90 F1 00         [24] 2548 	mov	dptr,#_writeCharacter
      002B8C 74 14            [12] 2549 	mov	a,#0x14
      002B8E F0               [24] 2550 	movx	@dptr,a
      002B8F E4               [12] 2551 	clr	a
      002B90 A3               [24] 2552 	inc	dptr
      002B91 F0               [24] 2553 	movx	@dptr,a
                                   2554 ;	lcdCommands.c:359: busyWait();
      002B92 12 20 8B         [24] 2555 	lcall	_busyWait
                                   2556 ;	lcdCommands.c:360: lcdGeneral = 0x40 | 0x05;
      002B95 90 F0 00         [24] 2557 	mov	dptr,#_lcdGeneral
      002B98 74 45            [12] 2558 	mov	a,#0x45
      002B9A F0               [24] 2559 	movx	@dptr,a
      002B9B E4               [12] 2560 	clr	a
      002B9C A3               [24] 2561 	inc	dptr
      002B9D F0               [24] 2562 	movx	@dptr,a
                                   2563 ;	lcdCommands.c:361: busyWait();
      002B9E 12 20 8B         [24] 2564 	lcall	_busyWait
                                   2565 ;	lcdCommands.c:362: writeCharacter = 0x12;
      002BA1 90 F1 00         [24] 2566 	mov	dptr,#_writeCharacter
      002BA4 74 12            [12] 2567 	mov	a,#0x12
      002BA6 F0               [24] 2568 	movx	@dptr,a
      002BA7 E4               [12] 2569 	clr	a
      002BA8 A3               [24] 2570 	inc	dptr
      002BA9 F0               [24] 2571 	movx	@dptr,a
                                   2572 ;	lcdCommands.c:363: busyWait();
      002BAA 12 20 8B         [24] 2573 	lcall	_busyWait
                                   2574 ;	lcdCommands.c:364: lcdGeneral = 0x40 | 0x06;
      002BAD 90 F0 00         [24] 2575 	mov	dptr,#_lcdGeneral
      002BB0 74 46            [12] 2576 	mov	a,#0x46
      002BB2 F0               [24] 2577 	movx	@dptr,a
      002BB3 E4               [12] 2578 	clr	a
      002BB4 A3               [24] 2579 	inc	dptr
      002BB5 F0               [24] 2580 	movx	@dptr,a
                                   2581 ;	lcdCommands.c:365: busyWait();
      002BB6 12 20 8B         [24] 2582 	lcall	_busyWait
                                   2583 ;	lcdCommands.c:366: writeCharacter = 0x09;
      002BB9 90 F1 00         [24] 2584 	mov	dptr,#_writeCharacter
      002BBC 74 09            [12] 2585 	mov	a,#0x09
      002BBE F0               [24] 2586 	movx	@dptr,a
      002BBF E4               [12] 2587 	clr	a
      002BC0 A3               [24] 2588 	inc	dptr
      002BC1 F0               [24] 2589 	movx	@dptr,a
                                   2590 ;	lcdCommands.c:367: busyWait();
      002BC2 12 20 8B         [24] 2591 	lcall	_busyWait
                                   2592 ;	lcdCommands.c:368: lcdGeneral = 0x40 | 0x07;
      002BC5 90 F0 00         [24] 2593 	mov	dptr,#_lcdGeneral
      002BC8 74 47            [12] 2594 	mov	a,#0x47
      002BCA F0               [24] 2595 	movx	@dptr,a
      002BCB E4               [12] 2596 	clr	a
      002BCC A3               [24] 2597 	inc	dptr
      002BCD F0               [24] 2598 	movx	@dptr,a
                                   2599 ;	lcdCommands.c:369: busyWait();
      002BCE 12 20 8B         [24] 2600 	lcall	_busyWait
                                   2601 ;	lcdCommands.c:370: writeCharacter = 0x06;
      002BD1 90 F1 00         [24] 2602 	mov	dptr,#_writeCharacter
      002BD4 74 06            [12] 2603 	mov	a,#0x06
      002BD6 F0               [24] 2604 	movx	@dptr,a
      002BD7 E4               [12] 2605 	clr	a
      002BD8 A3               [24] 2606 	inc	dptr
      002BD9 F0               [24] 2607 	movx	@dptr,a
                                   2608 ;	lcdCommands.c:371: busyWait();
      002BDA 12 20 8B         [24] 2609 	lcall	_busyWait
                                   2610 ;	lcdCommands.c:372: goToXY(3,1);
      002BDD 90 00 03         [24] 2611 	mov	dptr,#_goToXY_PARM_2
      002BE0 74 01            [12] 2612 	mov	a,#0x01
      002BE2 F0               [24] 2613 	movx	@dptr,a
      002BE3 75 82 03         [24] 2614 	mov	dpl,#0x03
      002BE6 12 21 35         [24] 2615 	lcall	_goToXY
                                   2616 ;	lcdCommands.c:373: busyWait();
      002BE9 12 20 8B         [24] 2617 	lcall	_busyWait
                                   2618 ;	lcdCommands.c:374: lcdGeneral = 0x80 | 0x00;
      002BEC 90 F0 00         [24] 2619 	mov	dptr,#_lcdGeneral
      002BEF 74 80            [12] 2620 	mov	a,#0x80
      002BF1 F0               [24] 2621 	movx	@dptr,a
      002BF2 E4               [12] 2622 	clr	a
      002BF3 A3               [24] 2623 	inc	dptr
      002BF4 F0               [24] 2624 	movx	@dptr,a
                                   2625 ;	lcdCommands.c:375: busyWait();
      002BF5 12 20 8B         [24] 2626 	lcall	_busyWait
                                   2627 ;	lcdCommands.c:376: writeCharacter = 0x00;
      002BF8 90 F1 00         [24] 2628 	mov	dptr,#_writeCharacter
      002BFB E4               [12] 2629 	clr	a
      002BFC F0               [24] 2630 	movx	@dptr,a
      002BFD A3               [24] 2631 	inc	dptr
      002BFE F0               [24] 2632 	movx	@dptr,a
                                   2633 ;	lcdCommands.c:377: }
      002BFF 22               [24] 2634 	ret
                                   2635 ;------------------------------------------------------------
                                   2636 ;Allocation info for local variables in function 'makePacmanLeft'
                                   2637 ;------------------------------------------------------------
                                   2638 ;	lcdCommands.c:378: void makePacmanLeft()
                                   2639 ;	-----------------------------------------
                                   2640 ;	 function makePacmanLeft
                                   2641 ;	-----------------------------------------
      002C00                       2642 _makePacmanLeft:
                                   2643 ;	lcdCommands.c:380: busyWait();
      002C00 12 20 8B         [24] 2644 	lcall	_busyWait
                                   2645 ;	lcdCommands.c:381: lcdGeneral = 0x40 | 0x30;
      002C03 90 F0 00         [24] 2646 	mov	dptr,#_lcdGeneral
      002C06 74 70            [12] 2647 	mov	a,#0x70
      002C08 F0               [24] 2648 	movx	@dptr,a
      002C09 E4               [12] 2649 	clr	a
      002C0A A3               [24] 2650 	inc	dptr
      002C0B F0               [24] 2651 	movx	@dptr,a
                                   2652 ;	lcdCommands.c:382: busyWait();
      002C0C 12 20 8B         [24] 2653 	lcall	_busyWait
                                   2654 ;	lcdCommands.c:383: writeCharacter = 0x0C;
      002C0F 90 F1 00         [24] 2655 	mov	dptr,#_writeCharacter
      002C12 74 0C            [12] 2656 	mov	a,#0x0c
      002C14 F0               [24] 2657 	movx	@dptr,a
      002C15 E4               [12] 2658 	clr	a
      002C16 A3               [24] 2659 	inc	dptr
      002C17 F0               [24] 2660 	movx	@dptr,a
                                   2661 ;	lcdCommands.c:384: busyWait();
      002C18 12 20 8B         [24] 2662 	lcall	_busyWait
                                   2663 ;	lcdCommands.c:385: lcdGeneral = 0x40 | 0x31;
      002C1B 90 F0 00         [24] 2664 	mov	dptr,#_lcdGeneral
      002C1E 74 71            [12] 2665 	mov	a,#0x71
      002C20 F0               [24] 2666 	movx	@dptr,a
      002C21 E4               [12] 2667 	clr	a
      002C22 A3               [24] 2668 	inc	dptr
      002C23 F0               [24] 2669 	movx	@dptr,a
                                   2670 ;	lcdCommands.c:386: busyWait();
      002C24 12 20 8B         [24] 2671 	lcall	_busyWait
                                   2672 ;	lcdCommands.c:387: writeCharacter = 0x12;
      002C27 90 F1 00         [24] 2673 	mov	dptr,#_writeCharacter
      002C2A 74 12            [12] 2674 	mov	a,#0x12
      002C2C F0               [24] 2675 	movx	@dptr,a
      002C2D E4               [12] 2676 	clr	a
      002C2E A3               [24] 2677 	inc	dptr
      002C2F F0               [24] 2678 	movx	@dptr,a
                                   2679 ;	lcdCommands.c:388: busyWait();
      002C30 12 20 8B         [24] 2680 	lcall	_busyWait
                                   2681 ;	lcdCommands.c:389: lcdGeneral = 0x40 | 0x32;
      002C33 90 F0 00         [24] 2682 	mov	dptr,#_lcdGeneral
      002C36 74 72            [12] 2683 	mov	a,#0x72
      002C38 F0               [24] 2684 	movx	@dptr,a
      002C39 E4               [12] 2685 	clr	a
      002C3A A3               [24] 2686 	inc	dptr
      002C3B F0               [24] 2687 	movx	@dptr,a
                                   2688 ;	lcdCommands.c:390: busyWait();
      002C3C 12 20 8B         [24] 2689 	lcall	_busyWait
                                   2690 ;	lcdCommands.c:391: writeCharacter = 0x09;
      002C3F 90 F1 00         [24] 2691 	mov	dptr,#_writeCharacter
      002C42 74 09            [12] 2692 	mov	a,#0x09
      002C44 F0               [24] 2693 	movx	@dptr,a
      002C45 E4               [12] 2694 	clr	a
      002C46 A3               [24] 2695 	inc	dptr
      002C47 F0               [24] 2696 	movx	@dptr,a
                                   2697 ;	lcdCommands.c:392: busyWait();
      002C48 12 20 8B         [24] 2698 	lcall	_busyWait
                                   2699 ;	lcdCommands.c:393: lcdGeneral = 0x40 | 0x33;
      002C4B 90 F0 00         [24] 2700 	mov	dptr,#_lcdGeneral
      002C4E 74 73            [12] 2701 	mov	a,#0x73
      002C50 F0               [24] 2702 	movx	@dptr,a
      002C51 E4               [12] 2703 	clr	a
      002C52 A3               [24] 2704 	inc	dptr
      002C53 F0               [24] 2705 	movx	@dptr,a
                                   2706 ;	lcdCommands.c:394: busyWait();
      002C54 12 20 8B         [24] 2707 	lcall	_busyWait
                                   2708 ;	lcdCommands.c:395: writeCharacter = 0x05;
      002C57 90 F1 00         [24] 2709 	mov	dptr,#_writeCharacter
      002C5A 74 05            [12] 2710 	mov	a,#0x05
      002C5C F0               [24] 2711 	movx	@dptr,a
      002C5D E4               [12] 2712 	clr	a
      002C5E A3               [24] 2713 	inc	dptr
      002C5F F0               [24] 2714 	movx	@dptr,a
                                   2715 ;	lcdCommands.c:396: busyWait();
      002C60 12 20 8B         [24] 2716 	lcall	_busyWait
                                   2717 ;	lcdCommands.c:397: lcdGeneral = 0x40 | 0x34;
      002C63 90 F0 00         [24] 2718 	mov	dptr,#_lcdGeneral
      002C66 74 74            [12] 2719 	mov	a,#0x74
      002C68 F0               [24] 2720 	movx	@dptr,a
      002C69 E4               [12] 2721 	clr	a
      002C6A A3               [24] 2722 	inc	dptr
      002C6B F0               [24] 2723 	movx	@dptr,a
                                   2724 ;	lcdCommands.c:398: busyWait();
      002C6C 12 20 8B         [24] 2725 	lcall	_busyWait
                                   2726 ;	lcdCommands.c:399: writeCharacter = 0x05;
      002C6F 90 F1 00         [24] 2727 	mov	dptr,#_writeCharacter
      002C72 74 05            [12] 2728 	mov	a,#0x05
      002C74 F0               [24] 2729 	movx	@dptr,a
      002C75 E4               [12] 2730 	clr	a
      002C76 A3               [24] 2731 	inc	dptr
      002C77 F0               [24] 2732 	movx	@dptr,a
                                   2733 ;	lcdCommands.c:400: busyWait();
      002C78 12 20 8B         [24] 2734 	lcall	_busyWait
                                   2735 ;	lcdCommands.c:401: lcdGeneral = 0x40 | 0x35;
      002C7B 90 F0 00         [24] 2736 	mov	dptr,#_lcdGeneral
      002C7E 74 75            [12] 2737 	mov	a,#0x75
      002C80 F0               [24] 2738 	movx	@dptr,a
      002C81 E4               [12] 2739 	clr	a
      002C82 A3               [24] 2740 	inc	dptr
      002C83 F0               [24] 2741 	movx	@dptr,a
                                   2742 ;	lcdCommands.c:402: busyWait();
      002C84 12 20 8B         [24] 2743 	lcall	_busyWait
                                   2744 ;	lcdCommands.c:403: writeCharacter = 0x09;
      002C87 90 F1 00         [24] 2745 	mov	dptr,#_writeCharacter
      002C8A 74 09            [12] 2746 	mov	a,#0x09
      002C8C F0               [24] 2747 	movx	@dptr,a
      002C8D E4               [12] 2748 	clr	a
      002C8E A3               [24] 2749 	inc	dptr
      002C8F F0               [24] 2750 	movx	@dptr,a
                                   2751 ;	lcdCommands.c:404: busyWait();
      002C90 12 20 8B         [24] 2752 	lcall	_busyWait
                                   2753 ;	lcdCommands.c:405: lcdGeneral = 0x40 | 0x36;
      002C93 90 F0 00         [24] 2754 	mov	dptr,#_lcdGeneral
      002C96 74 76            [12] 2755 	mov	a,#0x76
      002C98 F0               [24] 2756 	movx	@dptr,a
      002C99 E4               [12] 2757 	clr	a
      002C9A A3               [24] 2758 	inc	dptr
      002C9B F0               [24] 2759 	movx	@dptr,a
                                   2760 ;	lcdCommands.c:406: busyWait();
      002C9C 12 20 8B         [24] 2761 	lcall	_busyWait
                                   2762 ;	lcdCommands.c:407: writeCharacter = 0x12;
      002C9F 90 F1 00         [24] 2763 	mov	dptr,#_writeCharacter
      002CA2 74 12            [12] 2764 	mov	a,#0x12
      002CA4 F0               [24] 2765 	movx	@dptr,a
      002CA5 E4               [12] 2766 	clr	a
      002CA6 A3               [24] 2767 	inc	dptr
      002CA7 F0               [24] 2768 	movx	@dptr,a
                                   2769 ;	lcdCommands.c:408: busyWait();
      002CA8 12 20 8B         [24] 2770 	lcall	_busyWait
                                   2771 ;	lcdCommands.c:409: lcdGeneral = 0x40 | 0x37;
      002CAB 90 F0 00         [24] 2772 	mov	dptr,#_lcdGeneral
      002CAE 74 77            [12] 2773 	mov	a,#0x77
      002CB0 F0               [24] 2774 	movx	@dptr,a
      002CB1 E4               [12] 2775 	clr	a
      002CB2 A3               [24] 2776 	inc	dptr
      002CB3 F0               [24] 2777 	movx	@dptr,a
                                   2778 ;	lcdCommands.c:410: busyWait();
      002CB4 12 20 8B         [24] 2779 	lcall	_busyWait
                                   2780 ;	lcdCommands.c:411: writeCharacter = 0x0C;
      002CB7 90 F1 00         [24] 2781 	mov	dptr,#_writeCharacter
      002CBA 74 0C            [12] 2782 	mov	a,#0x0c
      002CBC F0               [24] 2783 	movx	@dptr,a
      002CBD E4               [12] 2784 	clr	a
      002CBE A3               [24] 2785 	inc	dptr
      002CBF F0               [24] 2786 	movx	@dptr,a
                                   2787 ;	lcdCommands.c:412: busyWait();
      002CC0 12 20 8B         [24] 2788 	lcall	_busyWait
                                   2789 ;	lcdCommands.c:413: goToXY(3,1);
      002CC3 90 00 03         [24] 2790 	mov	dptr,#_goToXY_PARM_2
      002CC6 74 01            [12] 2791 	mov	a,#0x01
      002CC8 F0               [24] 2792 	movx	@dptr,a
      002CC9 75 82 03         [24] 2793 	mov	dpl,#0x03
      002CCC 12 21 35         [24] 2794 	lcall	_goToXY
                                   2795 ;	lcdCommands.c:414: busyWait();
      002CCF 12 20 8B         [24] 2796 	lcall	_busyWait
                                   2797 ;	lcdCommands.c:416: busyWait();
                                   2798 ;	lcdCommands.c:418: }
      002CD2 02 20 8B         [24] 2799 	ljmp	_busyWait
                                   2800 ;------------------------------------------------------------
                                   2801 ;Allocation info for local variables in function 'printBinary'
                                   2802 ;------------------------------------------------------------
                                   2803 ;x                         Allocated with name '_printBinary_x_65536_115'
                                   2804 ;temp                      Allocated with name '_printBinary_temp_65536_116'
                                   2805 ;------------------------------------------------------------
                                   2806 ;	lcdCommands.c:420: void printBinary(int x)
                                   2807 ;	-----------------------------------------
                                   2808 ;	 function printBinary
                                   2809 ;	-----------------------------------------
      002CD5                       2810 _printBinary:
      002CD5 AF 83            [24] 2811 	mov	r7,dph
      002CD7 E5 82            [12] 2812 	mov	a,dpl
      002CD9 90 00 1A         [24] 2813 	mov	dptr,#_printBinary_x_65536_115
      002CDC F0               [24] 2814 	movx	@dptr,a
      002CDD EF               [12] 2815 	mov	a,r7
      002CDE A3               [24] 2816 	inc	dptr
      002CDF F0               [24] 2817 	movx	@dptr,a
                                   2818 ;	lcdCommands.c:423: while(x != 0)
      002CE0                       2819 00101$:
      002CE0 90 00 1A         [24] 2820 	mov	dptr,#_printBinary_x_65536_115
      002CE3 E0               [24] 2821 	movx	a,@dptr
      002CE4 FE               [12] 2822 	mov	r6,a
      002CE5 A3               [24] 2823 	inc	dptr
      002CE6 E0               [24] 2824 	movx	a,@dptr
      002CE7 FF               [12] 2825 	mov	r7,a
      002CE8 4E               [12] 2826 	orl	a,r6
      002CE9 60 3A            [24] 2827 	jz	00104$
                                   2828 ;	lcdCommands.c:425: temp = x % 2;
      002CEB 90 00 B1         [24] 2829 	mov	dptr,#__modsint_PARM_2
      002CEE 74 02            [12] 2830 	mov	a,#0x02
      002CF0 F0               [24] 2831 	movx	@dptr,a
      002CF1 E4               [12] 2832 	clr	a
      002CF2 A3               [24] 2833 	inc	dptr
      002CF3 F0               [24] 2834 	movx	@dptr,a
                                   2835 ;	lcdCommands.c:426: putchar(temp);
      002CF4 8E 82            [24] 2836 	mov	dpl,r6
      002CF6 8F 83            [24] 2837 	mov	dph,r7
      002CF8 C0 07            [24] 2838 	push	ar7
      002CFA C0 06            [24] 2839 	push	ar6
      002CFC 12 36 00         [24] 2840 	lcall	__modsint
      002CFF 12 32 6F         [24] 2841 	lcall	_putchar
      002D02 D0 06            [24] 2842 	pop	ar6
      002D04 D0 07            [24] 2843 	pop	ar7
                                   2844 ;	lcdCommands.c:427: x = x / 2;
      002D06 90 00 BA         [24] 2845 	mov	dptr,#__divsint_PARM_2
      002D09 74 02            [12] 2846 	mov	a,#0x02
      002D0B F0               [24] 2847 	movx	@dptr,a
      002D0C E4               [12] 2848 	clr	a
      002D0D A3               [24] 2849 	inc	dptr
      002D0E F0               [24] 2850 	movx	@dptr,a
      002D0F 8E 82            [24] 2851 	mov	dpl,r6
      002D11 8F 83            [24] 2852 	mov	dph,r7
      002D13 12 37 14         [24] 2853 	lcall	__divsint
      002D16 E5 82            [12] 2854 	mov	a,dpl
      002D18 85 83 F0         [24] 2855 	mov	b,dph
      002D1B 90 00 1A         [24] 2856 	mov	dptr,#_printBinary_x_65536_115
      002D1E F0               [24] 2857 	movx	@dptr,a
      002D1F E5 F0            [12] 2858 	mov	a,b
      002D21 A3               [24] 2859 	inc	dptr
      002D22 F0               [24] 2860 	movx	@dptr,a
      002D23 80 BB            [24] 2861 	sjmp	00101$
      002D25                       2862 00104$:
                                   2863 ;	lcdCommands.c:429: }
      002D25 22               [24] 2864 	ret
                                   2865 ;------------------------------------------------------------
                                   2866 ;Allocation info for local variables in function 'atoh'
                                   2867 ;------------------------------------------------------------
                                   2868 ;ap                        Allocated with name '_atoh_ap_65536_118'
                                   2869 ;p                         Allocated with name '_atoh_p_65536_119'
                                   2870 ;n                         Allocated with name '_atoh_n_65536_119'
                                   2871 ;digit                     Allocated with name '_atoh_digit_65536_119'
                                   2872 ;lcase                     Allocated with name '_atoh_lcase_65536_119'
                                   2873 ;------------------------------------------------------------
                                   2874 ;	lcdCommands.c:431: int atoh(char *ap)
                                   2875 ;	-----------------------------------------
                                   2876 ;	 function atoh
                                   2877 ;	-----------------------------------------
      002D26                       2878 _atoh:
      002D26 AF F0            [24] 2879 	mov	r7,b
      002D28 AE 83            [24] 2880 	mov	r6,dph
      002D2A E5 82            [12] 2881 	mov	a,dpl
      002D2C 90 00 1C         [24] 2882 	mov	dptr,#_atoh_ap_65536_118
      002D2F F0               [24] 2883 	movx	@dptr,a
      002D30 EE               [12] 2884 	mov	a,r6
      002D31 A3               [24] 2885 	inc	dptr
      002D32 F0               [24] 2886 	movx	@dptr,a
      002D33 EF               [12] 2887 	mov	a,r7
      002D34 A3               [24] 2888 	inc	dptr
      002D35 F0               [24] 2889 	movx	@dptr,a
                                   2890 ;	lcdCommands.c:437: p = ap;
      002D36 90 00 1C         [24] 2891 	mov	dptr,#_atoh_ap_65536_118
      002D39 E0               [24] 2892 	movx	a,@dptr
      002D3A FD               [12] 2893 	mov	r5,a
      002D3B A3               [24] 2894 	inc	dptr
      002D3C E0               [24] 2895 	movx	a,@dptr
      002D3D FE               [12] 2896 	mov	r6,a
      002D3E A3               [24] 2897 	inc	dptr
      002D3F E0               [24] 2898 	movx	a,@dptr
      002D40 FF               [12] 2899 	mov	r7,a
                                   2900 ;	lcdCommands.c:438: n = 0;
      002D41 90 00 22         [24] 2901 	mov	dptr,#_atoh_n_65536_119
      002D44 E4               [12] 2902 	clr	a
      002D45 F0               [24] 2903 	movx	@dptr,a
      002D46 A3               [24] 2904 	inc	dptr
      002D47 F0               [24] 2905 	movx	@dptr,a
                                   2906 ;	lcdCommands.c:439: while(*p == ' ' || *p == '	')
      002D48                       2907 00102$:
      002D48 8D 82            [24] 2908 	mov	dpl,r5
      002D4A 8E 83            [24] 2909 	mov	dph,r6
      002D4C 8F F0            [24] 2910 	mov	b,r7
      002D4E 12 42 83         [24] 2911 	lcall	__gptrget
      002D51 FC               [12] 2912 	mov	r4,a
      002D52 BC 20 02         [24] 2913 	cjne	r4,#0x20,00178$
      002D55 80 03            [24] 2914 	sjmp	00103$
      002D57                       2915 00178$:
      002D57 BC 09 07         [24] 2916 	cjne	r4,#0x09,00141$
      002D5A                       2917 00103$:
                                   2918 ;	lcdCommands.c:440: p++;
      002D5A 0D               [12] 2919 	inc	r5
      002D5B BD 00 EA         [24] 2920 	cjne	r5,#0x00,00102$
      002D5E 0E               [12] 2921 	inc	r6
      002D5F 80 E7            [24] 2922 	sjmp	00102$
      002D61                       2923 00141$:
      002D61 90 00 1F         [24] 2924 	mov	dptr,#_atoh_p_65536_119
      002D64 ED               [12] 2925 	mov	a,r5
      002D65 F0               [24] 2926 	movx	@dptr,a
      002D66 EE               [12] 2927 	mov	a,r6
      002D67 A3               [24] 2928 	inc	dptr
      002D68 F0               [24] 2929 	movx	@dptr,a
      002D69 EF               [12] 2930 	mov	a,r7
      002D6A A3               [24] 2931 	inc	dptr
      002D6B F0               [24] 2932 	movx	@dptr,a
                                   2933 ;	lcdCommands.c:442: if(*p == '0' && ((*(p+1) == 'x') || (*(p+1) == 'X')))
      002D6C BC 30 29         [24] 2934 	cjne	r4,#0x30,00118$
      002D6F 74 01            [12] 2935 	mov	a,#0x01
      002D71 2D               [12] 2936 	add	a,r5
      002D72 FA               [12] 2937 	mov	r2,a
      002D73 E4               [12] 2938 	clr	a
      002D74 3E               [12] 2939 	addc	a,r6
      002D75 FB               [12] 2940 	mov	r3,a
      002D76 8F 04            [24] 2941 	mov	ar4,r7
      002D78 8A 82            [24] 2942 	mov	dpl,r2
      002D7A 8B 83            [24] 2943 	mov	dph,r3
      002D7C 8C F0            [24] 2944 	mov	b,r4
      002D7E 12 42 83         [24] 2945 	lcall	__gptrget
      002D81 FC               [12] 2946 	mov	r4,a
      002D82 BC 78 02         [24] 2947 	cjne	r4,#0x78,00184$
      002D85 80 03            [24] 2948 	sjmp	00105$
      002D87                       2949 00184$:
      002D87 BC 58 0E         [24] 2950 	cjne	r4,#0x58,00118$
      002D8A                       2951 00105$:
                                   2952 ;	lcdCommands.c:443: p+=2;
      002D8A 90 00 1F         [24] 2953 	mov	dptr,#_atoh_p_65536_119
      002D8D 74 02            [12] 2954 	mov	a,#0x02
      002D8F 2D               [12] 2955 	add	a,r5
      002D90 F0               [24] 2956 	movx	@dptr,a
      002D91 E4               [12] 2957 	clr	a
      002D92 3E               [12] 2958 	addc	a,r6
      002D93 A3               [24] 2959 	inc	dptr
      002D94 F0               [24] 2960 	movx	@dptr,a
      002D95 EF               [12] 2961 	mov	a,r7
      002D96 A3               [24] 2962 	inc	dptr
      002D97 F0               [24] 2963 	movx	@dptr,a
                                   2964 ;	lcdCommands.c:445: while ((digit = (*p >= '0' && *p <= '9')) ||
      002D98                       2965 00118$:
      002D98 90 00 1F         [24] 2966 	mov	dptr,#_atoh_p_65536_119
      002D9B E0               [24] 2967 	movx	a,@dptr
      002D9C FD               [12] 2968 	mov	r5,a
      002D9D A3               [24] 2969 	inc	dptr
      002D9E E0               [24] 2970 	movx	a,@dptr
      002D9F FE               [12] 2971 	mov	r6,a
      002DA0 A3               [24] 2972 	inc	dptr
      002DA1 E0               [24] 2973 	movx	a,@dptr
      002DA2 FF               [12] 2974 	mov	r7,a
      002DA3 8D 82            [24] 2975 	mov	dpl,r5
      002DA5 8E 83            [24] 2976 	mov	dph,r6
      002DA7 8F F0            [24] 2977 	mov	b,r7
      002DA9 12 42 83         [24] 2978 	lcall	__gptrget
      002DAC FF               [12] 2979 	mov	r7,a
      002DAD BF 30 00         [24] 2980 	cjne	r7,#0x30,00187$
      002DB0                       2981 00187$:
      002DB0 40 05            [24] 2982 	jc	00123$
      002DB2 EF               [12] 2983 	mov	a,r7
      002DB3 24 C6            [12] 2984 	add	a,#0xff - 0x39
      002DB5 50 04            [24] 2985 	jnc	00124$
      002DB7                       2986 00123$:
      002DB7 7F 00            [12] 2987 	mov	r7,#0x00
      002DB9 80 02            [24] 2988 	sjmp	00125$
      002DBB                       2989 00124$:
      002DBB 7F 01            [12] 2990 	mov	r7,#0x01
      002DBD                       2991 00125$:
      002DBD EF               [12] 2992 	mov	a,r7
      002DBE FD               [12] 2993 	mov	r5,a
      002DBF 33               [12] 2994 	rlc	a
      002DC0 95 E0            [12] 2995 	subb	a,acc
      002DC2 FE               [12] 2996 	mov	r6,a
      002DC3 EF               [12] 2997 	mov	a,r7
      002DC4 70 5C            [24] 2998 	jnz	00119$
                                   2999 ;	lcdCommands.c:446: (lcase = (*p >= 'a' && *p <= 'f')) ||
      002DC6 90 00 1F         [24] 3000 	mov	dptr,#_atoh_p_65536_119
      002DC9 E0               [24] 3001 	movx	a,@dptr
      002DCA FB               [12] 3002 	mov	r3,a
      002DCB A3               [24] 3003 	inc	dptr
      002DCC E0               [24] 3004 	movx	a,@dptr
      002DCD FC               [12] 3005 	mov	r4,a
      002DCE A3               [24] 3006 	inc	dptr
      002DCF E0               [24] 3007 	movx	a,@dptr
      002DD0 FF               [12] 3008 	mov	r7,a
      002DD1 8B 82            [24] 3009 	mov	dpl,r3
      002DD3 8C 83            [24] 3010 	mov	dph,r4
      002DD5 8F F0            [24] 3011 	mov	b,r7
      002DD7 12 42 83         [24] 3012 	lcall	__gptrget
      002DDA FF               [12] 3013 	mov	r7,a
      002DDB BF 61 00         [24] 3014 	cjne	r7,#0x61,00191$
      002DDE                       3015 00191$:
      002DDE 40 05            [24] 3016 	jc	00126$
      002DE0 EF               [12] 3017 	mov	a,r7
      002DE1 24 99            [12] 3018 	add	a,#0xff - 0x66
      002DE3 50 04            [24] 3019 	jnc	00127$
      002DE5                       3020 00126$:
      002DE5 7F 00            [12] 3021 	mov	r7,#0x00
      002DE7 80 02            [24] 3022 	sjmp	00128$
      002DE9                       3023 00127$:
      002DE9 7F 01            [12] 3024 	mov	r7,#0x01
      002DEB                       3025 00128$:
      002DEB EF               [12] 3026 	mov	a,r7
      002DEC FC               [12] 3027 	mov	r4,a
      002DED 33               [12] 3028 	rlc	a
      002DEE 95 E0            [12] 3029 	subb	a,acc
      002DF0 FF               [12] 3030 	mov	r7,a
      002DF1 90 00 24         [24] 3031 	mov	dptr,#_atoh_lcase_65536_119
      002DF4 EC               [12] 3032 	mov	a,r4
      002DF5 F0               [24] 3033 	movx	@dptr,a
      002DF6 EF               [12] 3034 	mov	a,r7
      002DF7 A3               [24] 3035 	inc	dptr
      002DF8 F0               [24] 3036 	movx	@dptr,a
      002DF9 EC               [12] 3037 	mov	a,r4
      002DFA 4F               [12] 3038 	orl	a,r7
      002DFB 70 25            [24] 3039 	jnz	00119$
                                   3040 ;	lcdCommands.c:447: (*p >= 'A' && *p <= 'F')) {
      002DFD 90 00 1F         [24] 3041 	mov	dptr,#_atoh_p_65536_119
      002E00 E0               [24] 3042 	movx	a,@dptr
      002E01 FB               [12] 3043 	mov	r3,a
      002E02 A3               [24] 3044 	inc	dptr
      002E03 E0               [24] 3045 	movx	a,@dptr
      002E04 FC               [12] 3046 	mov	r4,a
      002E05 A3               [24] 3047 	inc	dptr
      002E06 E0               [24] 3048 	movx	a,@dptr
      002E07 FF               [12] 3049 	mov	r7,a
      002E08 8B 82            [24] 3050 	mov	dpl,r3
      002E0A 8C 83            [24] 3051 	mov	dph,r4
      002E0C 8F F0            [24] 3052 	mov	b,r7
      002E0E 12 42 83         [24] 3053 	lcall	__gptrget
      002E11 FF               [12] 3054 	mov	r7,a
      002E12 BF 41 00         [24] 3055 	cjne	r7,#0x41,00195$
      002E15                       3056 00195$:
      002E15 50 03            [24] 3057 	jnc	00196$
      002E17 02 2F 14         [24] 3058 	ljmp	00120$
      002E1A                       3059 00196$:
      002E1A EF               [12] 3060 	mov	a,r7
      002E1B 24 B9            [12] 3061 	add	a,#0xff - 0x46
      002E1D 50 03            [24] 3062 	jnc	00197$
      002E1F 02 2F 14         [24] 3063 	ljmp	00120$
      002E22                       3064 00197$:
      002E22                       3065 00119$:
                                   3066 ;	lcdCommands.c:448: n *= 16;
      002E22 90 00 22         [24] 3067 	mov	dptr,#_atoh_n_65536_119
      002E25 E0               [24] 3068 	movx	a,@dptr
      002E26 FC               [12] 3069 	mov	r4,a
      002E27 A3               [24] 3070 	inc	dptr
      002E28 E0               [24] 3071 	movx	a,@dptr
      002E29 C4               [12] 3072 	swap	a
      002E2A 54 F0            [12] 3073 	anl	a,#0xf0
      002E2C CC               [12] 3074 	xch	a,r4
      002E2D C4               [12] 3075 	swap	a
      002E2E CC               [12] 3076 	xch	a,r4
      002E2F 6C               [12] 3077 	xrl	a,r4
      002E30 CC               [12] 3078 	xch	a,r4
      002E31 54 F0            [12] 3079 	anl	a,#0xf0
      002E33 CC               [12] 3080 	xch	a,r4
      002E34 6C               [12] 3081 	xrl	a,r4
      002E35 FF               [12] 3082 	mov	r7,a
      002E36 90 00 22         [24] 3083 	mov	dptr,#_atoh_n_65536_119
      002E39 EC               [12] 3084 	mov	a,r4
      002E3A F0               [24] 3085 	movx	@dptr,a
      002E3B EF               [12] 3086 	mov	a,r7
      002E3C A3               [24] 3087 	inc	dptr
      002E3D F0               [24] 3088 	movx	@dptr,a
                                   3089 ;	lcdCommands.c:449: if (digit)	n += *p++ - '0';
      002E3E ED               [12] 3090 	mov	a,r5
      002E3F 4E               [12] 3091 	orl	a,r6
      002E40 60 42            [24] 3092 	jz	00113$
      002E42 90 00 1F         [24] 3093 	mov	dptr,#_atoh_p_65536_119
      002E45 E0               [24] 3094 	movx	a,@dptr
      002E46 FD               [12] 3095 	mov	r5,a
      002E47 A3               [24] 3096 	inc	dptr
      002E48 E0               [24] 3097 	movx	a,@dptr
      002E49 FE               [12] 3098 	mov	r6,a
      002E4A A3               [24] 3099 	inc	dptr
      002E4B E0               [24] 3100 	movx	a,@dptr
      002E4C FF               [12] 3101 	mov	r7,a
      002E4D 8D 82            [24] 3102 	mov	dpl,r5
      002E4F 8E 83            [24] 3103 	mov	dph,r6
      002E51 8F F0            [24] 3104 	mov	b,r7
      002E53 12 42 83         [24] 3105 	lcall	__gptrget
      002E56 FC               [12] 3106 	mov	r4,a
      002E57 90 00 1F         [24] 3107 	mov	dptr,#_atoh_p_65536_119
      002E5A 74 01            [12] 3108 	mov	a,#0x01
      002E5C 2D               [12] 3109 	add	a,r5
      002E5D F0               [24] 3110 	movx	@dptr,a
      002E5E E4               [12] 3111 	clr	a
      002E5F 3E               [12] 3112 	addc	a,r6
      002E60 A3               [24] 3113 	inc	dptr
      002E61 F0               [24] 3114 	movx	@dptr,a
      002E62 EF               [12] 3115 	mov	a,r7
      002E63 A3               [24] 3116 	inc	dptr
      002E64 F0               [24] 3117 	movx	@dptr,a
      002E65 7F 00            [12] 3118 	mov	r7,#0x00
      002E67 EC               [12] 3119 	mov	a,r4
      002E68 24 D0            [12] 3120 	add	a,#0xd0
      002E6A FC               [12] 3121 	mov	r4,a
      002E6B EF               [12] 3122 	mov	a,r7
      002E6C 34 FF            [12] 3123 	addc	a,#0xff
      002E6E FF               [12] 3124 	mov	r7,a
      002E6F 90 00 22         [24] 3125 	mov	dptr,#_atoh_n_65536_119
      002E72 E0               [24] 3126 	movx	a,@dptr
      002E73 FD               [12] 3127 	mov	r5,a
      002E74 A3               [24] 3128 	inc	dptr
      002E75 E0               [24] 3129 	movx	a,@dptr
      002E76 FE               [12] 3130 	mov	r6,a
      002E77 90 00 22         [24] 3131 	mov	dptr,#_atoh_n_65536_119
      002E7A EC               [12] 3132 	mov	a,r4
      002E7B 2D               [12] 3133 	add	a,r5
      002E7C F0               [24] 3134 	movx	@dptr,a
      002E7D EF               [12] 3135 	mov	a,r7
      002E7E 3E               [12] 3136 	addc	a,r6
      002E7F A3               [24] 3137 	inc	dptr
      002E80 F0               [24] 3138 	movx	@dptr,a
      002E81 02 2D 98         [24] 3139 	ljmp	00118$
      002E84                       3140 00113$:
                                   3141 ;	lcdCommands.c:450: else if (lcase)	n += 10 + (*p++ - 'a');
      002E84 90 00 24         [24] 3142 	mov	dptr,#_atoh_lcase_65536_119
      002E87 E0               [24] 3143 	movx	a,@dptr
      002E88 F5 F0            [12] 3144 	mov	b,a
      002E8A A3               [24] 3145 	inc	dptr
      002E8B E0               [24] 3146 	movx	a,@dptr
      002E8C 45 F0            [12] 3147 	orl	a,b
      002E8E 60 42            [24] 3148 	jz	00110$
      002E90 90 00 1F         [24] 3149 	mov	dptr,#_atoh_p_65536_119
      002E93 E0               [24] 3150 	movx	a,@dptr
      002E94 FD               [12] 3151 	mov	r5,a
      002E95 A3               [24] 3152 	inc	dptr
      002E96 E0               [24] 3153 	movx	a,@dptr
      002E97 FE               [12] 3154 	mov	r6,a
      002E98 A3               [24] 3155 	inc	dptr
      002E99 E0               [24] 3156 	movx	a,@dptr
      002E9A FF               [12] 3157 	mov	r7,a
      002E9B 8D 82            [24] 3158 	mov	dpl,r5
      002E9D 8E 83            [24] 3159 	mov	dph,r6
      002E9F 8F F0            [24] 3160 	mov	b,r7
      002EA1 12 42 83         [24] 3161 	lcall	__gptrget
      002EA4 FC               [12] 3162 	mov	r4,a
      002EA5 90 00 1F         [24] 3163 	mov	dptr,#_atoh_p_65536_119
      002EA8 74 01            [12] 3164 	mov	a,#0x01
      002EAA 2D               [12] 3165 	add	a,r5
      002EAB F0               [24] 3166 	movx	@dptr,a
      002EAC E4               [12] 3167 	clr	a
      002EAD 3E               [12] 3168 	addc	a,r6
      002EAE A3               [24] 3169 	inc	dptr
      002EAF F0               [24] 3170 	movx	@dptr,a
      002EB0 EF               [12] 3171 	mov	a,r7
      002EB1 A3               [24] 3172 	inc	dptr
      002EB2 F0               [24] 3173 	movx	@dptr,a
      002EB3 7F 00            [12] 3174 	mov	r7,#0x00
      002EB5 74 A9            [12] 3175 	mov	a,#0xa9
      002EB7 2C               [12] 3176 	add	a,r4
      002EB8 FC               [12] 3177 	mov	r4,a
      002EB9 74 FF            [12] 3178 	mov	a,#0xff
      002EBB 3F               [12] 3179 	addc	a,r7
      002EBC FF               [12] 3180 	mov	r7,a
      002EBD 90 00 22         [24] 3181 	mov	dptr,#_atoh_n_65536_119
      002EC0 E0               [24] 3182 	movx	a,@dptr
      002EC1 FD               [12] 3183 	mov	r5,a
      002EC2 A3               [24] 3184 	inc	dptr
      002EC3 E0               [24] 3185 	movx	a,@dptr
      002EC4 FE               [12] 3186 	mov	r6,a
      002EC5 90 00 22         [24] 3187 	mov	dptr,#_atoh_n_65536_119
      002EC8 EC               [12] 3188 	mov	a,r4
      002EC9 2D               [12] 3189 	add	a,r5
      002ECA F0               [24] 3190 	movx	@dptr,a
      002ECB EF               [12] 3191 	mov	a,r7
      002ECC 3E               [12] 3192 	addc	a,r6
      002ECD A3               [24] 3193 	inc	dptr
      002ECE F0               [24] 3194 	movx	@dptr,a
      002ECF 02 2D 98         [24] 3195 	ljmp	00118$
      002ED2                       3196 00110$:
                                   3197 ;	lcdCommands.c:451: else		n += 10 + (*p++ - 'A');
      002ED2 90 00 1F         [24] 3198 	mov	dptr,#_atoh_p_65536_119
      002ED5 E0               [24] 3199 	movx	a,@dptr
      002ED6 FD               [12] 3200 	mov	r5,a
      002ED7 A3               [24] 3201 	inc	dptr
      002ED8 E0               [24] 3202 	movx	a,@dptr
      002ED9 FE               [12] 3203 	mov	r6,a
      002EDA A3               [24] 3204 	inc	dptr
      002EDB E0               [24] 3205 	movx	a,@dptr
      002EDC FF               [12] 3206 	mov	r7,a
      002EDD 8D 82            [24] 3207 	mov	dpl,r5
      002EDF 8E 83            [24] 3208 	mov	dph,r6
      002EE1 8F F0            [24] 3209 	mov	b,r7
      002EE3 12 42 83         [24] 3210 	lcall	__gptrget
      002EE6 FC               [12] 3211 	mov	r4,a
      002EE7 90 00 1F         [24] 3212 	mov	dptr,#_atoh_p_65536_119
      002EEA 74 01            [12] 3213 	mov	a,#0x01
      002EEC 2D               [12] 3214 	add	a,r5
      002EED F0               [24] 3215 	movx	@dptr,a
      002EEE E4               [12] 3216 	clr	a
      002EEF 3E               [12] 3217 	addc	a,r6
      002EF0 A3               [24] 3218 	inc	dptr
      002EF1 F0               [24] 3219 	movx	@dptr,a
      002EF2 EF               [12] 3220 	mov	a,r7
      002EF3 A3               [24] 3221 	inc	dptr
      002EF4 F0               [24] 3222 	movx	@dptr,a
      002EF5 7F 00            [12] 3223 	mov	r7,#0x00
      002EF7 74 C9            [12] 3224 	mov	a,#0xc9
      002EF9 2C               [12] 3225 	add	a,r4
      002EFA FC               [12] 3226 	mov	r4,a
      002EFB 74 FF            [12] 3227 	mov	a,#0xff
      002EFD 3F               [12] 3228 	addc	a,r7
      002EFE FF               [12] 3229 	mov	r7,a
      002EFF 90 00 22         [24] 3230 	mov	dptr,#_atoh_n_65536_119
      002F02 E0               [24] 3231 	movx	a,@dptr
      002F03 FD               [12] 3232 	mov	r5,a
      002F04 A3               [24] 3233 	inc	dptr
      002F05 E0               [24] 3234 	movx	a,@dptr
      002F06 FE               [12] 3235 	mov	r6,a
      002F07 90 00 22         [24] 3236 	mov	dptr,#_atoh_n_65536_119
      002F0A EC               [12] 3237 	mov	a,r4
      002F0B 2D               [12] 3238 	add	a,r5
      002F0C F0               [24] 3239 	movx	@dptr,a
      002F0D EF               [12] 3240 	mov	a,r7
      002F0E 3E               [12] 3241 	addc	a,r6
      002F0F A3               [24] 3242 	inc	dptr
      002F10 F0               [24] 3243 	movx	@dptr,a
      002F11 02 2D 98         [24] 3244 	ljmp	00118$
      002F14                       3245 00120$:
                                   3246 ;	lcdCommands.c:453: return(n);
      002F14 90 00 22         [24] 3247 	mov	dptr,#_atoh_n_65536_119
      002F17 E0               [24] 3248 	movx	a,@dptr
      002F18 FE               [12] 3249 	mov	r6,a
      002F19 A3               [24] 3250 	inc	dptr
      002F1A E0               [24] 3251 	movx	a,@dptr
                                   3252 ;	lcdCommands.c:454: }
      002F1B 8E 82            [24] 3253 	mov	dpl,r6
      002F1D F5 83            [12] 3254 	mov	dph,a
      002F1F 22               [24] 3255 	ret
                                   3256 ;------------------------------------------------------------
                                   3257 ;Allocation info for local variables in function 'printMenu'
                                   3258 ;------------------------------------------------------------
                                   3259 ;i                         Allocated with name '_printMenu_i_65536_121'
                                   3260 ;------------------------------------------------------------
                                   3261 ;	lcdCommands.c:456: void printMenu()
                                   3262 ;	-----------------------------------------
                                   3263 ;	 function printMenu
                                   3264 ;	-----------------------------------------
      002F20                       3265 _printMenu:
                                   3266 ;	lcdCommands.c:459: printf("%s",uiLines);
      002F20 74 A3            [12] 3267 	mov	a,#_uiLines
      002F22 C0 E0            [24] 3268 	push	acc
      002F24 74 42            [12] 3269 	mov	a,#(_uiLines >> 8)
      002F26 C0 E0            [24] 3270 	push	acc
      002F28 74 80            [12] 3271 	mov	a,#0x80
      002F2A C0 E0            [24] 3272 	push	acc
      002F2C 74 5D            [12] 3273 	mov	a,#___str_16
      002F2E C0 E0            [24] 3274 	push	acc
      002F30 74 46            [12] 3275 	mov	a,#(___str_16 >> 8)
      002F32 C0 E0            [24] 3276 	push	acc
      002F34 74 80            [12] 3277 	mov	a,#0x80
      002F36 C0 E0            [24] 3278 	push	acc
      002F38 12 38 61         [24] 3279 	lcall	_printf
      002F3B E5 81            [12] 3280 	mov	a,sp
      002F3D 24 FA            [12] 3281 	add	a,#0xfa
      002F3F F5 81            [12] 3282 	mov	sp,a
                                   3283 ;	lcdCommands.c:460: printf("\n\r");
      002F41 74 F6            [12] 3284 	mov	a,#___str_13
      002F43 C0 E0            [24] 3285 	push	acc
      002F45 74 45            [12] 3286 	mov	a,#(___str_13 >> 8)
      002F47 C0 E0            [24] 3287 	push	acc
      002F49 74 80            [12] 3288 	mov	a,#0x80
      002F4B C0 E0            [24] 3289 	push	acc
      002F4D 12 38 61         [24] 3290 	lcall	_printf
      002F50 15 81            [12] 3291 	dec	sp
      002F52 15 81            [12] 3292 	dec	sp
      002F54 15 81            [12] 3293 	dec	sp
                                   3294 ;	lcdCommands.c:461: for ( i = 0; i < 10; i++)
      002F56 7E 00            [12] 3295 	mov	r6,#0x00
      002F58 7F 00            [12] 3296 	mov	r7,#0x00
      002F5A                       3297 00102$:
                                   3298 ;	lcdCommands.c:463: printf("%s",messages[i]);
      002F5A 90 00 AF         [24] 3299 	mov	dptr,#__mulint_PARM_2
      002F5D EE               [12] 3300 	mov	a,r6
      002F5E F0               [24] 3301 	movx	@dptr,a
      002F5F EF               [12] 3302 	mov	a,r7
      002F60 A3               [24] 3303 	inc	dptr
      002F61 F0               [24] 3304 	movx	@dptr,a
      002F62 90 00 28         [24] 3305 	mov	dptr,#0x0028
      002F65 C0 07            [24] 3306 	push	ar7
      002F67 C0 06            [24] 3307 	push	ar6
      002F69 12 35 E0         [24] 3308 	lcall	__mulint
      002F6C AC 82            [24] 3309 	mov	r4,dpl
      002F6E AD 83            [24] 3310 	mov	r5,dph
      002F70 EC               [12] 3311 	mov	a,r4
      002F71 24 DF            [12] 3312 	add	a,#_messages
      002F73 FC               [12] 3313 	mov	r4,a
      002F74 ED               [12] 3314 	mov	a,r5
      002F75 34 42            [12] 3315 	addc	a,#(_messages >> 8)
      002F77 FD               [12] 3316 	mov	r5,a
      002F78 7B 80            [12] 3317 	mov	r3,#0x80
      002F7A C0 04            [24] 3318 	push	ar4
      002F7C C0 05            [24] 3319 	push	ar5
      002F7E C0 03            [24] 3320 	push	ar3
      002F80 74 5D            [12] 3321 	mov	a,#___str_16
      002F82 C0 E0            [24] 3322 	push	acc
      002F84 74 46            [12] 3323 	mov	a,#(___str_16 >> 8)
      002F86 C0 E0            [24] 3324 	push	acc
      002F88 EB               [12] 3325 	mov	a,r3
      002F89 C0 E0            [24] 3326 	push	acc
      002F8B 12 38 61         [24] 3327 	lcall	_printf
      002F8E E5 81            [12] 3328 	mov	a,sp
      002F90 24 FA            [12] 3329 	add	a,#0xfa
      002F92 F5 81            [12] 3330 	mov	sp,a
                                   3331 ;	lcdCommands.c:464: printf_tiny("\n\r");
      002F94 74 F6            [12] 3332 	mov	a,#___str_13
      002F96 C0 E0            [24] 3333 	push	acc
      002F98 74 45            [12] 3334 	mov	a,#(___str_13 >> 8)
      002F9A C0 E0            [24] 3335 	push	acc
      002F9C 12 34 D7         [24] 3336 	lcall	_printf_tiny
      002F9F 15 81            [12] 3337 	dec	sp
      002FA1 15 81            [12] 3338 	dec	sp
      002FA3 D0 06            [24] 3339 	pop	ar6
      002FA5 D0 07            [24] 3340 	pop	ar7
                                   3341 ;	lcdCommands.c:461: for ( i = 0; i < 10; i++)
      002FA7 0E               [12] 3342 	inc	r6
      002FA8 BE 00 01         [24] 3343 	cjne	r6,#0x00,00115$
      002FAB 0F               [12] 3344 	inc	r7
      002FAC                       3345 00115$:
      002FAC C3               [12] 3346 	clr	c
      002FAD EE               [12] 3347 	mov	a,r6
      002FAE 94 0A            [12] 3348 	subb	a,#0x0a
      002FB0 EF               [12] 3349 	mov	a,r7
      002FB1 64 80            [12] 3350 	xrl	a,#0x80
      002FB3 94 80            [12] 3351 	subb	a,#0x80
      002FB5 40 A3            [24] 3352 	jc	00102$
                                   3353 ;	lcdCommands.c:466: printf("%s",uiLines);
      002FB7 74 A3            [12] 3354 	mov	a,#_uiLines
      002FB9 C0 E0            [24] 3355 	push	acc
      002FBB 74 42            [12] 3356 	mov	a,#(_uiLines >> 8)
      002FBD C0 E0            [24] 3357 	push	acc
      002FBF 74 80            [12] 3358 	mov	a,#0x80
      002FC1 C0 E0            [24] 3359 	push	acc
      002FC3 74 5D            [12] 3360 	mov	a,#___str_16
      002FC5 C0 E0            [24] 3361 	push	acc
      002FC7 74 46            [12] 3362 	mov	a,#(___str_16 >> 8)
      002FC9 C0 E0            [24] 3363 	push	acc
      002FCB 74 80            [12] 3364 	mov	a,#0x80
      002FCD C0 E0            [24] 3365 	push	acc
      002FCF 12 38 61         [24] 3366 	lcall	_printf
      002FD2 E5 81            [12] 3367 	mov	a,sp
      002FD4 24 FA            [12] 3368 	add	a,#0xfa
      002FD6 F5 81            [12] 3369 	mov	sp,a
                                   3370 ;	lcdCommands.c:467: printf("\n\r");
      002FD8 74 F6            [12] 3371 	mov	a,#___str_13
      002FDA C0 E0            [24] 3372 	push	acc
      002FDC 74 45            [12] 3373 	mov	a,#(___str_13 >> 8)
      002FDE C0 E0            [24] 3374 	push	acc
      002FE0 74 80            [12] 3375 	mov	a,#0x80
      002FE2 C0 E0            [24] 3376 	push	acc
      002FE4 12 38 61         [24] 3377 	lcall	_printf
      002FE7 15 81            [12] 3378 	dec	sp
      002FE9 15 81            [12] 3379 	dec	sp
      002FEB 15 81            [12] 3380 	dec	sp
                                   3381 ;	lcdCommands.c:469: }
      002FED 22               [24] 3382 	ret
                                   3383 	.area CSEG    (CODE)
                                   3384 	.area CONST   (CODE)
      0042A3                       3385 _uiLines:
      0042A3 0A                    3386 	.db 0x0a
      0042A4 0D                    3387 	.db 0x0d
      0042A5 2D 2D 2D 2D 2D 2D 2D  3388 	.ascii "-------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
      0042D6 0A                    3389 	.db 0x0a
      0042D7 0D                    3390 	.db 0x0d
      0042D8 00                    3391 	.db 0x00
      0042D9 00                    3392 	.db 0x00
      0042DA 00                    3393 	.db 0x00
      0042DB 00                    3394 	.db 0x00
      0042DC 00                    3395 	.db 0x00
      0042DD 00                    3396 	.db 0x00
      0042DE 00                    3397 	.db 0x00
      0042DF                       3398 _messages:
      0042DF 20 45 6E 74 65 72 20  3399 	.ascii " Enter w to write a character "
             77 20 74 6F 20 77 72
             69 74 65 20 61 20 63
             68 61 72 61 63 74 65
             72 20
      0042FD 00                    3400 	.db 0x00
      0042FE 00                    3401 	.db 0x00
      0042FF 00                    3402 	.db 0x00
      004300 00                    3403 	.db 0x00
      004301 00                    3404 	.db 0x00
      004302 00                    3405 	.db 0x00
      004303 00                    3406 	.db 0x00
      004304 00                    3407 	.db 0x00
      004305 00                    3408 	.db 0x00
      004306 00                    3409 	.db 0x00
      004307 20 45 6E 74 65 72 20  3410 	.ascii " Enter s to write a string"
             73 20 74 6F 20 77 72
             69 74 65 20 61 20 73
             74 72 69 6E 67
      004321 00                    3411 	.db 0x00
      004322 00                    3412 	.db 0x00
      004323 00                    3413 	.db 0x00
      004324 00                    3414 	.db 0x00
      004325 00                    3415 	.db 0x00
      004326 00                    3416 	.db 0x00
      004327 00                    3417 	.db 0x00
      004328 00                    3418 	.db 0x00
      004329 00                    3419 	.db 0x00
      00432A 00                    3420 	.db 0x00
      00432B 00                    3421 	.db 0x00
      00432C 00                    3422 	.db 0x00
      00432D 00                    3423 	.db 0x00
      00432E 00                    3424 	.db 0x00
      00432F 20 45 6E 74 65 72 20  3425 	.ascii " Enter p to play pacman "
             70 20 74 6F 20 70 6C
             61 79 20 70 61 63 6D
             61 6E 20
      004347 00                    3426 	.db 0x00
      004348 00                    3427 	.db 0x00
      004349 00                    3428 	.db 0x00
      00434A 00                    3429 	.db 0x00
      00434B 00                    3430 	.db 0x00
      00434C 00                    3431 	.db 0x00
      00434D 00                    3432 	.db 0x00
      00434E 00                    3433 	.db 0x00
      00434F 00                    3434 	.db 0x00
      004350 00                    3435 	.db 0x00
      004351 00                    3436 	.db 0x00
      004352 00                    3437 	.db 0x00
      004353 00                    3438 	.db 0x00
      004354 00                    3439 	.db 0x00
      004355 00                    3440 	.db 0x00
      004356 00                    3441 	.db 0x00
      004357 20 45 6E 74 65 72 20  3442 	.ascii " Enter d to perform RAM dump "
             64 20 74 6F 20 70 65
             72 66 6F 72 6D 20 52
             41 4D 20 64 75 6D 70
             20
      004374 00                    3443 	.db 0x00
      004375 00                    3444 	.db 0x00
      004376 00                    3445 	.db 0x00
      004377 00                    3446 	.db 0x00
      004378 00                    3447 	.db 0x00
      004379 00                    3448 	.db 0x00
      00437A 00                    3449 	.db 0x00
      00437B 00                    3450 	.db 0x00
      00437C 00                    3451 	.db 0x00
      00437D 00                    3452 	.db 0x00
      00437E 00                    3453 	.db 0x00
      00437F 20 45 6E 74 65 72 20  3454 	.ascii " Enter g for custom character"
             67 20 66 6F 72 20 63
             75 73 74 6F 6D 20 63
             68 61 72 61 63 74 65
             72
      00439C 00                    3455 	.db 0x00
      00439D 00                    3456 	.db 0x00
      00439E 00                    3457 	.db 0x00
      00439F 00                    3458 	.db 0x00
      0043A0 00                    3459 	.db 0x00
      0043A1 00                    3460 	.db 0x00
      0043A2 00                    3461 	.db 0x00
      0043A3 00                    3462 	.db 0x00
      0043A4 00                    3463 	.db 0x00
      0043A5 00                    3464 	.db 0x00
      0043A6 00                    3465 	.db 0x00
      0043A7 20 45 6E 74 65 72 20  3466 	.ascii " Enter x to reset timer"
             78 20 74 6F 20 72 65
             73 65 74 20 74 69 6D
             65 72
      0043BE 00                    3467 	.db 0x00
      0043BF 00                    3468 	.db 0x00
      0043C0 00                    3469 	.db 0x00
      0043C1 00                    3470 	.db 0x00
      0043C2 00                    3471 	.db 0x00
      0043C3 00                    3472 	.db 0x00
      0043C4 00                    3473 	.db 0x00
      0043C5 00                    3474 	.db 0x00
      0043C6 00                    3475 	.db 0x00
      0043C7 00                    3476 	.db 0x00
      0043C8 00                    3477 	.db 0x00
      0043C9 00                    3478 	.db 0x00
      0043CA 00                    3479 	.db 0x00
      0043CB 00                    3480 	.db 0x00
      0043CC 00                    3481 	.db 0x00
      0043CD 00                    3482 	.db 0x00
      0043CE 00                    3483 	.db 0x00
      0043CF 20 45 6E 74 65 72 20  3484 	.ascii " Enter y to pause timer"
             79 20 74 6F 20 70 61
             75 73 65 20 74 69 6D
             65 72
      0043E6 00                    3485 	.db 0x00
      0043E7 00                    3486 	.db 0x00
      0043E8 00                    3487 	.db 0x00
      0043E9 00                    3488 	.db 0x00
      0043EA 00                    3489 	.db 0x00
      0043EB 00                    3490 	.db 0x00
      0043EC 00                    3491 	.db 0x00
      0043ED 00                    3492 	.db 0x00
      0043EE 00                    3493 	.db 0x00
      0043EF 00                    3494 	.db 0x00
      0043F0 00                    3495 	.db 0x00
      0043F1 00                    3496 	.db 0x00
      0043F2 00                    3497 	.db 0x00
      0043F3 00                    3498 	.db 0x00
      0043F4 00                    3499 	.db 0x00
      0043F5 00                    3500 	.db 0x00
      0043F6 00                    3501 	.db 0x00
      0043F7 20 45 6E 74 65 72 20  3502 	.ascii " Enter z to resume timer"
             7A 20 74 6F 20 72 65
             73 75 6D 65 20 74 69
             6D 65 72
      00440F 00                    3503 	.db 0x00
      004410 00                    3504 	.db 0x00
      004411 00                    3505 	.db 0x00
      004412 00                    3506 	.db 0x00
      004413 00                    3507 	.db 0x00
      004414 00                    3508 	.db 0x00
      004415 00                    3509 	.db 0x00
      004416 00                    3510 	.db 0x00
      004417 00                    3511 	.db 0x00
      004418 00                    3512 	.db 0x00
      004419 00                    3513 	.db 0x00
      00441A 00                    3514 	.db 0x00
      00441B 00                    3515 	.db 0x00
      00441C 00                    3516 	.db 0x00
      00441D 00                    3517 	.db 0x00
      00441E 00                    3518 	.db 0x00
      00441F 20 45 6E 74 65 72 20  3519 	.ascii " Enter s to clear screen"
             73 20 74 6F 20 63 6C
             65 61 72 20 73 63 72
             65 65 6E
      004437 00                    3520 	.db 0x00
      004438 00                    3521 	.db 0x00
      004439 00                    3522 	.db 0x00
      00443A 00                    3523 	.db 0x00
      00443B 00                    3524 	.db 0x00
      00443C 00                    3525 	.db 0x00
      00443D 00                    3526 	.db 0x00
      00443E 00                    3527 	.db 0x00
      00443F 00                    3528 	.db 0x00
      004440 00                    3529 	.db 0x00
      004441 00                    3530 	.db 0x00
      004442 00                    3531 	.db 0x00
      004443 00                    3532 	.db 0x00
      004444 00                    3533 	.db 0x00
      004445 00                    3534 	.db 0x00
      004446 00                    3535 	.db 0x00
      004447 20 45 6E 74 65 72 20  3536 	.ascii " Enter m for main menu "
             6D 20 66 6F 72 20 6D
             61 69 6E 20 6D 65 6E
             75 20
      00445E 00                    3537 	.db 0x00
      00445F 00                    3538 	.db 0x00
      004460 00                    3539 	.db 0x00
      004461 00                    3540 	.db 0x00
      004462 00                    3541 	.db 0x00
      004463 00                    3542 	.db 0x00
      004464 00                    3543 	.db 0x00
      004465 00                    3544 	.db 0x00
      004466 00                    3545 	.db 0x00
      004467 00                    3546 	.db 0x00
      004468 00                    3547 	.db 0x00
      004469 00                    3548 	.db 0x00
      00446A 00                    3549 	.db 0x00
      00446B 00                    3550 	.db 0x00
      00446C 00                    3551 	.db 0x00
      00446D 00                    3552 	.db 0x00
      00446E 00                    3553 	.db 0x00
      00446F 00                    3554 	.db 0x00
      004470 00                    3555 	.db 0x00
      004471 00                    3556 	.db 0x00
      004472 00                    3557 	.db 0x00
      004473 00                    3558 	.db 0x00
      004474 00                    3559 	.db 0x00
      004475 00                    3560 	.db 0x00
      004476 00                    3561 	.db 0x00
      004477 00                    3562 	.db 0x00
      004478 00                    3563 	.db 0x00
      004479 00                    3564 	.db 0x00
      00447A 00                    3565 	.db 0x00
      00447B 00                    3566 	.db 0x00
      00447C 00                    3567 	.db 0x00
      00447D 00                    3568 	.db 0x00
      00447E 00                    3569 	.db 0x00
      00447F 00                    3570 	.db 0x00
      004480 00                    3571 	.db 0x00
      004481 00                    3572 	.db 0x00
      004482 00                    3573 	.db 0x00
      004483 00                    3574 	.db 0x00
      004484 00                    3575 	.db 0x00
      004485 00                    3576 	.db 0x00
      004486 00                    3577 	.db 0x00
      004487 00                    3578 	.db 0x00
      004488 00                    3579 	.db 0x00
      004489 00                    3580 	.db 0x00
      00448A 00                    3581 	.db 0x00
      00448B 00                    3582 	.db 0x00
      00448C 00                    3583 	.db 0x00
      00448D 00                    3584 	.db 0x00
      00448E 00                    3585 	.db 0x00
      00448F 00                    3586 	.db 0x00
      004490 00                    3587 	.db 0x00
      004491 00                    3588 	.db 0x00
      004492 00                    3589 	.db 0x00
      004493 00                    3590 	.db 0x00
      004494 00                    3591 	.db 0x00
      004495 00                    3592 	.db 0x00
      004496 00                    3593 	.db 0x00
      004497                       3594 _lookUpTable:
      004497 00                    3595 	.db #0x00	; 0
      004498 01                    3596 	.db #0x01	; 1
      004499 02                    3597 	.db #0x02	; 2
      00449A 03                    3598 	.db #0x03	; 3
      00449B 04                    3599 	.db #0x04	; 4
      00449C 05                    3600 	.db #0x05	; 5
      00449D 06                    3601 	.db #0x06	; 6
      00449E 07                    3602 	.db #0x07	; 7
      00449F 08                    3603 	.db #0x08	; 8
      0044A0 09                    3604 	.db #0x09	; 9
      0044A1 0A                    3605 	.db #0x0a	; 10
      0044A2 0B                    3606 	.db #0x0b	; 11
      0044A3 0C                    3607 	.db #0x0c	; 12
      0044A4 0D                    3608 	.db #0x0d	; 13
      0044A5 0E                    3609 	.db #0x0e	; 14
      0044A6 0F                    3610 	.db #0x0f	; 15
      0044A7 40                    3611 	.db #0x40	; 64
      0044A8 41                    3612 	.db #0x41	; 65	'A'
      0044A9 42                    3613 	.db #0x42	; 66	'B'
      0044AA 43                    3614 	.db #0x43	; 67	'C'
      0044AB 44                    3615 	.db #0x44	; 68	'D'
      0044AC 45                    3616 	.db #0x45	; 69	'E'
      0044AD 46                    3617 	.db #0x46	; 70	'F'
      0044AE 47                    3618 	.db #0x47	; 71	'G'
      0044AF 48                    3619 	.db #0x48	; 72	'H'
      0044B0 49                    3620 	.db #0x49	; 73	'I'
      0044B1 4A                    3621 	.db #0x4a	; 74	'J'
      0044B2 4B                    3622 	.db #0x4b	; 75	'K'
      0044B3 4C                    3623 	.db #0x4c	; 76	'L'
      0044B4 4D                    3624 	.db #0x4d	; 77	'M'
      0044B5 4E                    3625 	.db #0x4e	; 78	'N'
      0044B6 4F                    3626 	.db #0x4f	; 79	'O'
      0044B7 10                    3627 	.db #0x10	; 16
      0044B8 11                    3628 	.db #0x11	; 17
      0044B9 12                    3629 	.db #0x12	; 18
      0044BA 13                    3630 	.db #0x13	; 19
      0044BB 14                    3631 	.db #0x14	; 20
      0044BC 15                    3632 	.db #0x15	; 21
      0044BD 16                    3633 	.db #0x16	; 22
      0044BE 17                    3634 	.db #0x17	; 23
      0044BF 18                    3635 	.db #0x18	; 24
      0044C0 19                    3636 	.db #0x19	; 25
      0044C1 1A                    3637 	.db #0x1a	; 26
      0044C2 1B                    3638 	.db #0x1b	; 27
      0044C3 1C                    3639 	.db #0x1c	; 28
      0044C4 1D                    3640 	.db #0x1d	; 29
      0044C5 1E                    3641 	.db #0x1e	; 30
      0044C6 1F                    3642 	.db #0x1f	; 31
      0044C7 50                    3643 	.db #0x50	; 80	'P'
      0044C8 51                    3644 	.db #0x51	; 81	'Q'
      0044C9 52                    3645 	.db #0x52	; 82	'R'
      0044CA 53                    3646 	.db #0x53	; 83	'S'
      0044CB 54                    3647 	.db #0x54	; 84	'T'
      0044CC 55                    3648 	.db #0x55	; 85	'U'
      0044CD 56                    3649 	.db #0x56	; 86	'V'
      0044CE 57                    3650 	.db #0x57	; 87	'W'
      0044CF 58                    3651 	.db #0x58	; 88	'X'
      0044D0 59                    3652 	.db #0x59	; 89	'Y'
      0044D1 5A                    3653 	.db #0x5a	; 90	'Z'
      0044D2 5B                    3654 	.db #0x5b	; 91
      0044D3 5C                    3655 	.db #0x5c	; 92
      0044D4 5D                    3656 	.db #0x5d	; 93
      0044D5 5E                    3657 	.db #0x5e	; 94
      0044D6 5F                    3658 	.db #0x5f	; 95
                                   3659 	.area CONST   (CODE)
      0044D7                       3660 ___str_0:
      0044D7 0A                    3661 	.db 0x0a
      0044D8 0D                    3662 	.db 0x0d
      0044D9 45 6E 74 65 72 20 76  3663 	.ascii "Enter value for Row 1"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 31
      0044EE 0A                    3664 	.db 0x0a
      0044EF 0D                    3665 	.db 0x0d
      0044F0 00                    3666 	.db 0x00
                                   3667 	.area CSEG    (CODE)
                                   3668 	.area CONST   (CODE)
      0044F1                       3669 ___str_1:
      0044F1 0A                    3670 	.db 0x0a
      0044F2 0D                    3671 	.db 0x0d
      0044F3 45 6E 74 65 72 20 76  3672 	.ascii "Enter value for Row 2"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 32
      004508 0A                    3673 	.db 0x0a
      004509 0D                    3674 	.db 0x0d
      00450A 00                    3675 	.db 0x00
                                   3676 	.area CSEG    (CODE)
                                   3677 	.area CONST   (CODE)
      00450B                       3678 ___str_2:
      00450B 0A                    3679 	.db 0x0a
      00450C 0D                    3680 	.db 0x0d
      00450D 45 6E 74 65 72 20 76  3681 	.ascii "Enter value for Row 3"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 33
      004522 0A                    3682 	.db 0x0a
      004523 0D                    3683 	.db 0x0d
      004524 00                    3684 	.db 0x00
                                   3685 	.area CSEG    (CODE)
                                   3686 	.area CONST   (CODE)
      004525                       3687 ___str_3:
      004525 0A                    3688 	.db 0x0a
      004526 0D                    3689 	.db 0x0d
      004527 45 6E 74 65 72 20 76  3690 	.ascii "Enter value for Row 4"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 34
      00453C 0A                    3691 	.db 0x0a
      00453D 0D                    3692 	.db 0x0d
      00453E 00                    3693 	.db 0x00
                                   3694 	.area CSEG    (CODE)
                                   3695 	.area CONST   (CODE)
      00453F                       3696 ___str_4:
      00453F 0A                    3697 	.db 0x0a
      004540 0D                    3698 	.db 0x0d
      004541 45 6E 74 65 72 20 76  3699 	.ascii "Enter value for Row 5"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 35
      004556 0A                    3700 	.db 0x0a
      004557 0D                    3701 	.db 0x0d
      004558 00                    3702 	.db 0x00
                                   3703 	.area CSEG    (CODE)
                                   3704 	.area CONST   (CODE)
      004559                       3705 ___str_5:
      004559 0A                    3706 	.db 0x0a
      00455A 0D                    3707 	.db 0x0d
      00455B 45 6E 74 65 72 20 76  3708 	.ascii "Enter value for Row 6"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 36
      004570 0A                    3709 	.db 0x0a
      004571 0D                    3710 	.db 0x0d
      004572 00                    3711 	.db 0x00
                                   3712 	.area CSEG    (CODE)
                                   3713 	.area CONST   (CODE)
      004573                       3714 ___str_6:
      004573 0A                    3715 	.db 0x0a
      004574 0D                    3716 	.db 0x0d
      004575 45 6E 74 65 72 20 76  3717 	.ascii "Enter value for Row 7"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 37
      00458A 0A                    3718 	.db 0x0a
      00458B 0D                    3719 	.db 0x0d
      00458C 00                    3720 	.db 0x00
                                   3721 	.area CSEG    (CODE)
                                   3722 	.area CONST   (CODE)
      00458D                       3723 ___str_7:
      00458D 0A                    3724 	.db 0x0a
      00458E 0D                    3725 	.db 0x0d
      00458F 45 6E 74 65 72 20 76  3726 	.ascii "Enter value for Row 8"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 38
      0045A4 0A                    3727 	.db 0x0a
      0045A5 0D                    3728 	.db 0x0d
      0045A6 00                    3729 	.db 0x00
                                   3730 	.area CSEG    (CODE)
                                   3731 	.area CONST   (CODE)
      0045A7                       3732 ___str_8:
      0045A7 25 64                 3733 	.ascii "%d"
      0045A9 0A                    3734 	.db 0x0a
      0045AA 0D                    3735 	.db 0x0d
      0045AB 00                    3736 	.db 0x00
                                   3737 	.area CSEG    (CODE)
                                   3738 	.area CONST   (CODE)
      0045AC                       3739 ___str_9:
      0045AC 0A                    3740 	.db 0x0a
      0045AD 0D                    3741 	.db 0x0d
      0045AE 50 6C 65 61 73 65 20  3742 	.ascii "Please Input a maximum of 48 characters"
             49 6E 70 75 74 20 61
             20 6D 61 78 69 6D 75
             6D 20 6F 66 20 34 38
             20 63 68 61 72 61 63
             74 65 72 73
      0045D5 0A                    3743 	.db 0x0a
      0045D6 0D                    3744 	.db 0x0d
      0045D7 00                    3745 	.db 0x00
                                   3746 	.area CSEG    (CODE)
                                   3747 	.area CONST   (CODE)
      0045D8                       3748 ___str_10:
      0045D8 0A                    3749 	.db 0x0a
      0045D9 0D                    3750 	.db 0x0d
      0045DA 44 44 52 41 4D 20 43  3751 	.ascii "DDRAM Contents"
             6F 6E 74 65 6E 74 73
      0045E8 0A                    3752 	.db 0x0a
      0045E9 0D                    3753 	.db 0x0d
      0045EA 00                    3754 	.db 0x00
                                   3755 	.area CSEG    (CODE)
                                   3756 	.area CONST   (CODE)
      0045EB                       3757 ___str_11:
      0045EB 25 32 78 3A 20        3758 	.ascii "%2x: "
      0045F0 00                    3759 	.db 0x00
                                   3760 	.area CSEG    (CODE)
                                   3761 	.area CONST   (CODE)
      0045F1                       3762 ___str_12:
      0045F1 25 32 78 20           3763 	.ascii "%2x "
      0045F5 00                    3764 	.db 0x00
                                   3765 	.area CSEG    (CODE)
                                   3766 	.area CONST   (CODE)
      0045F6                       3767 ___str_13:
      0045F6 0A                    3768 	.db 0x0a
      0045F7 0D                    3769 	.db 0x0d
      0045F8 00                    3770 	.db 0x00
                                   3771 	.area CSEG    (CODE)
                                   3772 	.area CONST   (CODE)
      0045F9                       3773 ___str_14:
      0045F9 0A                    3774 	.db 0x0a
      0045FA 0D                    3775 	.db 0x0d
      0045FB 43 47 52 41 4D 20 43  3776 	.ascii "CGRAM Contents"
             6F 6E 74 65 6E 74 73
      004609 0A                    3777 	.db 0x0a
      00460A 0D                    3778 	.db 0x0d
      00460B 00                    3779 	.db 0x00
                                   3780 	.area CSEG    (CODE)
                                   3781 	.area CONST   (CODE)
      00460C                       3782 ___str_15:
      00460C 0A                    3783 	.db 0x0a
      00460D 0D                    3784 	.db 0x0d
      00460E 45 6E 74 65 72 20 77  3785 	.ascii "Enter w to go up, s to go down, a to go left and d to go rig"
             20 74 6F 20 67 6F 20
             75 70 2C 20 73 20 74
             6F 20 67 6F 20 64 6F
             77 6E 2C 20 61 20 74
             6F 20 67 6F 20 6C 65
             66 74 20 61 6E 64 20
             64 20 74 6F 20 67 6F
             20 72 69 67
      00464A 68 74 20 61 6E 64 20  3786 	.ascii "ht and q to quit"
             71 20 74 6F 20 71 75
             69 74
      00465A 0A                    3787 	.db 0x0a
      00465B 0D                    3788 	.db 0x0d
      00465C 00                    3789 	.db 0x00
                                   3790 	.area CSEG    (CODE)
                                   3791 	.area CONST   (CODE)
      00465D                       3792 ___str_16:
      00465D 25 73                 3793 	.ascii "%s"
      00465F 00                    3794 	.db 0x00
                                   3795 	.area CSEG    (CODE)
                                   3796 	.area XINIT   (CODE)
                                   3797 	.area CABS    (ABS,CODE)
