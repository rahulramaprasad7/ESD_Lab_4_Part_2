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
      00000D                        497 _putsLCD_y_65536_94:
      00000D                        498 	.ds 3
      000010                        499 _putsLCD_i_65536_95:
      000010                        500 	.ds 2
      000012                        501 _gets_s_65536_98:
      000012                        502 	.ds 3
      000015                        503 _gets_count_65536_99:
      000015                        504 	.ds 2
      000017                        505 _ramDump_i_65536_104:
      000017                        506 	.ds 1
      000018                        507 _gamePacman_i_65536_115:
      000018                        508 	.ds 2
      00001A                        509 _printBinary_x_65536_123:
      00001A                        510 	.ds 2
      00001C                        511 _atoh_ap_65536_126:
      00001C                        512 	.ds 3
      00001F                        513 _atoh_p_65536_127:
      00001F                        514 	.ds 3
      000022                        515 _atoh_n_65536_127:
      000022                        516 	.ds 2
      000024                        517 _atoh_lcase_65536_127:
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
      002146 24 61            [12]  804 	add	a,#_lookUpTable
      002148 FE               [12]  805 	mov	r6,a
      002149 74 45            [12]  806 	mov	a,#(_lookUpTable >> 8)
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
                                    844 ;	lcdCommands.c:82: do{
      00216F                        845 00102$:
                                    846 ;	lcdCommands.c:83: printf_tiny("\n\rEnter value for Row 1\n\r");
      00216F 74 A1            [12]  847 	mov	a,#___str_0
      002171 C0 E0            [24]  848 	push	acc
      002173 74 45            [12]  849 	mov	a,#(___str_0 >> 8)
      002175 C0 E0            [24]  850 	push	acc
      002177 12 35 A1         [24]  851 	lcall	_printf_tiny
      00217A 15 81            [12]  852 	dec	sp
      00217C 15 81            [12]  853 	dec	sp
                                    854 ;	lcdCommands.c:84: gets(x);
      00217E 90 00 05         [24]  855 	mov	dptr,#_customCharacter_x_65536_83
      002181 75 F0 00         [24]  856 	mov	b,#0x00
      002184 12 26 BA         [24]  857 	lcall	_gets
                                    858 ;	lcdCommands.c:85: temp = atoh(x);
      002187 90 00 05         [24]  859 	mov	dptr,#_customCharacter_x_65536_83
      00218A 75 F0 00         [24]  860 	mov	b,#0x00
      00218D 12 2D F0         [24]  861 	lcall	_atoh
      002190 AE 82            [24]  862 	mov	r6,dpl
                                    863 ;	lcdCommands.c:86: }while(temp < 0 || temp > 0x1F);
      002192 E5 83            [12]  864 	mov	a,dph
      002194 FF               [12]  865 	mov	r7,a
      002195 20 E7 D7         [24]  866 	jb	acc.7,00102$
      002198 C3               [12]  867 	clr	c
      002199 74 1F            [12]  868 	mov	a,#0x1f
      00219B 9E               [12]  869 	subb	a,r6
      00219C 74 80            [12]  870 	mov	a,#(0x00 ^ 0x80)
      00219E 8F F0            [24]  871 	mov	b,r7
      0021A0 63 F0 80         [24]  872 	xrl	b,#0x80
      0021A3 95 F0            [12]  873 	subb	a,b
      0021A5 40 C8            [24]  874 	jc	00102$
                                    875 ;	lcdCommands.c:88: memset(x,'\0',8 * sizeof(char));
      0021A7 90 00 A5         [24]  876 	mov	dptr,#_memset_PARM_2
      0021AA E4               [12]  877 	clr	a
      0021AB F0               [24]  878 	movx	@dptr,a
      0021AC 90 00 A6         [24]  879 	mov	dptr,#_memset_PARM_3
      0021AF 74 08            [12]  880 	mov	a,#0x08
      0021B1 F0               [24]  881 	movx	@dptr,a
      0021B2 E4               [12]  882 	clr	a
      0021B3 A3               [24]  883 	inc	dptr
      0021B4 F0               [24]  884 	movx	@dptr,a
      0021B5 90 00 05         [24]  885 	mov	dptr,#_customCharacter_x_65536_83
      0021B8 75 F0 00         [24]  886 	mov	b,#0x00
      0021BB C0 07            [24]  887 	push	ar7
      0021BD C0 06            [24]  888 	push	ar6
      0021BF 12 34 3E         [24]  889 	lcall	_memset
      0021C2 D0 06            [24]  890 	pop	ar6
      0021C4 D0 07            [24]  891 	pop	ar7
                                    892 ;	lcdCommands.c:89: writeCharacter = temp & 0xFF;
      0021C6 90 F1 00         [24]  893 	mov	dptr,#_writeCharacter
      0021C9 EE               [12]  894 	mov	a,r6
      0021CA F0               [24]  895 	movx	@dptr,a
      0021CB E4               [12]  896 	clr	a
      0021CC A3               [24]  897 	inc	dptr
      0021CD F0               [24]  898 	movx	@dptr,a
                                    899 ;	lcdCommands.c:90: busyWait();
      0021CE 12 20 8B         [24]  900 	lcall	_busyWait
                                    901 ;	lcdCommands.c:91: lcdGeneral = 0x40 | 0x11;
      0021D1 90 F0 00         [24]  902 	mov	dptr,#_lcdGeneral
      0021D4 74 51            [12]  903 	mov	a,#0x51
      0021D6 F0               [24]  904 	movx	@dptr,a
      0021D7 E4               [12]  905 	clr	a
      0021D8 A3               [24]  906 	inc	dptr
      0021D9 F0               [24]  907 	movx	@dptr,a
                                    908 ;	lcdCommands.c:92: busyWait();
      0021DA 12 20 8B         [24]  909 	lcall	_busyWait
                                    910 ;	lcdCommands.c:93: do{
      0021DD                        911 00106$:
                                    912 ;	lcdCommands.c:94: printf_tiny("\n\rEnter value for Row 2\n\r");
      0021DD 74 BB            [12]  913 	mov	a,#___str_1
      0021DF C0 E0            [24]  914 	push	acc
      0021E1 74 45            [12]  915 	mov	a,#(___str_1 >> 8)
      0021E3 C0 E0            [24]  916 	push	acc
      0021E5 12 35 A1         [24]  917 	lcall	_printf_tiny
      0021E8 15 81            [12]  918 	dec	sp
      0021EA 15 81            [12]  919 	dec	sp
                                    920 ;	lcdCommands.c:95: gets(x);
      0021EC 90 00 05         [24]  921 	mov	dptr,#_customCharacter_x_65536_83
      0021EF 75 F0 00         [24]  922 	mov	b,#0x00
      0021F2 12 26 BA         [24]  923 	lcall	_gets
                                    924 ;	lcdCommands.c:96: temp = atoh(x);
      0021F5 90 00 05         [24]  925 	mov	dptr,#_customCharacter_x_65536_83
      0021F8 75 F0 00         [24]  926 	mov	b,#0x00
      0021FB 12 2D F0         [24]  927 	lcall	_atoh
      0021FE AE 82            [24]  928 	mov	r6,dpl
                                    929 ;	lcdCommands.c:97: }while(temp < 0 || temp > 0x1F);
      002200 E5 83            [12]  930 	mov	a,dph
      002202 FF               [12]  931 	mov	r7,a
      002203 20 E7 D7         [24]  932 	jb	acc.7,00106$
      002206 C3               [12]  933 	clr	c
      002207 74 1F            [12]  934 	mov	a,#0x1f
      002209 9E               [12]  935 	subb	a,r6
      00220A 74 80            [12]  936 	mov	a,#(0x00 ^ 0x80)
      00220C 8F F0            [24]  937 	mov	b,r7
      00220E 63 F0 80         [24]  938 	xrl	b,#0x80
      002211 95 F0            [12]  939 	subb	a,b
      002213 40 C8            [24]  940 	jc	00106$
                                    941 ;	lcdCommands.c:98: gets(x);
      002215 90 00 05         [24]  942 	mov	dptr,#_customCharacter_x_65536_83
      002218 75 F0 00         [24]  943 	mov	b,#0x00
      00221B 12 26 BA         [24]  944 	lcall	_gets
                                    945 ;	lcdCommands.c:99: decimal = atoi(x);
      00221E 90 00 05         [24]  946 	mov	dptr,#_customCharacter_x_65536_83
      002221 75 F0 00         [24]  947 	mov	b,#0x00
      002224 12 34 66         [24]  948 	lcall	_atoi
                                    949 ;	lcdCommands.c:100: printBinary(decimal);
      002227 AE 82            [24]  950 	mov	r6,dpl
      002229 AF 83            [24]  951 	mov  r7,dph
      00222B C0 07            [24]  952 	push	ar7
      00222D C0 06            [24]  953 	push	ar6
      00222F 12 2D 9F         [24]  954 	lcall	_printBinary
                                    955 ;	lcdCommands.c:101: temp = atoh(x);
      002232 90 00 05         [24]  956 	mov	dptr,#_customCharacter_x_65536_83
      002235 75 F0 00         [24]  957 	mov	b,#0x00
      002238 12 2D F0         [24]  958 	lcall	_atoh
      00223B AC 82            [24]  959 	mov	r4,dpl
      00223D AD 83            [24]  960 	mov	r5,dph
                                    961 ;	lcdCommands.c:102: memset(x,'\0',8 * sizeof(char));
      00223F 90 00 A5         [24]  962 	mov	dptr,#_memset_PARM_2
      002242 E4               [12]  963 	clr	a
      002243 F0               [24]  964 	movx	@dptr,a
      002244 90 00 A6         [24]  965 	mov	dptr,#_memset_PARM_3
      002247 74 08            [12]  966 	mov	a,#0x08
      002249 F0               [24]  967 	movx	@dptr,a
      00224A E4               [12]  968 	clr	a
      00224B A3               [24]  969 	inc	dptr
      00224C F0               [24]  970 	movx	@dptr,a
      00224D 90 00 05         [24]  971 	mov	dptr,#_customCharacter_x_65536_83
      002250 75 F0 00         [24]  972 	mov	b,#0x00
      002253 C0 05            [24]  973 	push	ar5
      002255 C0 04            [24]  974 	push	ar4
      002257 12 34 3E         [24]  975 	lcall	_memset
      00225A D0 04            [24]  976 	pop	ar4
      00225C D0 05            [24]  977 	pop	ar5
                                    978 ;	lcdCommands.c:103: writeCharacter = temp & 0xFF;
      00225E 90 F1 00         [24]  979 	mov	dptr,#_writeCharacter
      002261 EC               [12]  980 	mov	a,r4
      002262 F0               [24]  981 	movx	@dptr,a
      002263 E4               [12]  982 	clr	a
      002264 A3               [24]  983 	inc	dptr
      002265 F0               [24]  984 	movx	@dptr,a
                                    985 ;	lcdCommands.c:104: busyWait();
      002266 12 20 8B         [24]  986 	lcall	_busyWait
                                    987 ;	lcdCommands.c:105: lcdGeneral = 0x40 | 0x12;
      002269 90 F0 00         [24]  988 	mov	dptr,#_lcdGeneral
      00226C 74 52            [12]  989 	mov	a,#0x52
      00226E F0               [24]  990 	movx	@dptr,a
      00226F E4               [12]  991 	clr	a
      002270 A3               [24]  992 	inc	dptr
      002271 F0               [24]  993 	movx	@dptr,a
                                    994 ;	lcdCommands.c:106: busyWait();
      002272 12 20 8B         [24]  995 	lcall	_busyWait
      002275 D0 06            [24]  996 	pop	ar6
      002277 D0 07            [24]  997 	pop	ar7
                                    998 ;	lcdCommands.c:107: do{
      002279                        999 00110$:
                                   1000 ;	lcdCommands.c:108: printf_tiny("\n\rEnter value for Row 3\n\r");
      002279 C0 07            [24] 1001 	push	ar7
      00227B C0 06            [24] 1002 	push	ar6
      00227D 74 D5            [12] 1003 	mov	a,#___str_2
      00227F C0 E0            [24] 1004 	push	acc
      002281 74 45            [12] 1005 	mov	a,#(___str_2 >> 8)
      002283 C0 E0            [24] 1006 	push	acc
      002285 12 35 A1         [24] 1007 	lcall	_printf_tiny
      002288 15 81            [12] 1008 	dec	sp
      00228A 15 81            [12] 1009 	dec	sp
                                   1010 ;	lcdCommands.c:109: gets(x);
      00228C 90 00 05         [24] 1011 	mov	dptr,#_customCharacter_x_65536_83
      00228F 75 F0 00         [24] 1012 	mov	b,#0x00
      002292 12 26 BA         [24] 1013 	lcall	_gets
                                   1014 ;	lcdCommands.c:110: temp = atoh(x);
      002295 90 00 05         [24] 1015 	mov	dptr,#_customCharacter_x_65536_83
      002298 75 F0 00         [24] 1016 	mov	b,#0x00
      00229B 12 2D F0         [24] 1017 	lcall	_atoh
      00229E AC 82            [24] 1018 	mov	r4,dpl
      0022A0 AD 83            [24] 1019 	mov	r5,dph
      0022A2 D0 06            [24] 1020 	pop	ar6
      0022A4 D0 07            [24] 1021 	pop	ar7
                                   1022 ;	lcdCommands.c:111: }while(temp < 0 || temp > 0x1F);
      0022A6 ED               [12] 1023 	mov	a,r5
      0022A7 20 E7 CF         [24] 1024 	jb	acc.7,00110$
      0022AA C3               [12] 1025 	clr	c
      0022AB 74 1F            [12] 1026 	mov	a,#0x1f
      0022AD 9C               [12] 1027 	subb	a,r4
      0022AE 74 80            [12] 1028 	mov	a,#(0x00 ^ 0x80)
      0022B0 8D F0            [24] 1029 	mov	b,r5
      0022B2 63 F0 80         [24] 1030 	xrl	b,#0x80
      0022B5 95 F0            [12] 1031 	subb	a,b
      0022B7 40 C0            [24] 1032 	jc	00110$
                                   1033 ;	lcdCommands.c:112: printBinary(decimal);
      0022B9 8E 82            [24] 1034 	mov	dpl,r6
      0022BB 8F 83            [24] 1035 	mov	dph,r7
      0022BD 12 2D 9F         [24] 1036 	lcall	_printBinary
                                   1037 ;	lcdCommands.c:113: temp = atoh(x);
      0022C0 90 00 05         [24] 1038 	mov	dptr,#_customCharacter_x_65536_83
      0022C3 75 F0 00         [24] 1039 	mov	b,#0x00
      0022C6 12 2D F0         [24] 1040 	lcall	_atoh
      0022C9 AE 82            [24] 1041 	mov	r6,dpl
      0022CB AF 83            [24] 1042 	mov	r7,dph
                                   1043 ;	lcdCommands.c:114: memset(x,'\0',8 * sizeof(char));
      0022CD 90 00 A5         [24] 1044 	mov	dptr,#_memset_PARM_2
      0022D0 E4               [12] 1045 	clr	a
      0022D1 F0               [24] 1046 	movx	@dptr,a
      0022D2 90 00 A6         [24] 1047 	mov	dptr,#_memset_PARM_3
      0022D5 74 08            [12] 1048 	mov	a,#0x08
      0022D7 F0               [24] 1049 	movx	@dptr,a
      0022D8 E4               [12] 1050 	clr	a
      0022D9 A3               [24] 1051 	inc	dptr
      0022DA F0               [24] 1052 	movx	@dptr,a
      0022DB 90 00 05         [24] 1053 	mov	dptr,#_customCharacter_x_65536_83
      0022DE 75 F0 00         [24] 1054 	mov	b,#0x00
      0022E1 C0 07            [24] 1055 	push	ar7
      0022E3 C0 06            [24] 1056 	push	ar6
      0022E5 12 34 3E         [24] 1057 	lcall	_memset
      0022E8 D0 06            [24] 1058 	pop	ar6
      0022EA D0 07            [24] 1059 	pop	ar7
                                   1060 ;	lcdCommands.c:115: writeCharacter = temp & 0xFF;
      0022EC 90 F1 00         [24] 1061 	mov	dptr,#_writeCharacter
      0022EF EE               [12] 1062 	mov	a,r6
      0022F0 F0               [24] 1063 	movx	@dptr,a
      0022F1 E4               [12] 1064 	clr	a
      0022F2 A3               [24] 1065 	inc	dptr
      0022F3 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	lcdCommands.c:116: busyWait();
      0022F4 12 20 8B         [24] 1068 	lcall	_busyWait
                                   1069 ;	lcdCommands.c:117: lcdGeneral = 0x40 | 0x13;
      0022F7 90 F0 00         [24] 1070 	mov	dptr,#_lcdGeneral
      0022FA 74 53            [12] 1071 	mov	a,#0x53
      0022FC F0               [24] 1072 	movx	@dptr,a
      0022FD E4               [12] 1073 	clr	a
      0022FE A3               [24] 1074 	inc	dptr
      0022FF F0               [24] 1075 	movx	@dptr,a
                                   1076 ;	lcdCommands.c:118: busyWait();
      002300 12 20 8B         [24] 1077 	lcall	_busyWait
                                   1078 ;	lcdCommands.c:119: do{
      002303                       1079 00114$:
                                   1080 ;	lcdCommands.c:120: printf_tiny("\n\rEnter value for Row 4\n\r");
      002303 74 EF            [12] 1081 	mov	a,#___str_3
      002305 C0 E0            [24] 1082 	push	acc
      002307 74 45            [12] 1083 	mov	a,#(___str_3 >> 8)
      002309 C0 E0            [24] 1084 	push	acc
      00230B 12 35 A1         [24] 1085 	lcall	_printf_tiny
      00230E 15 81            [12] 1086 	dec	sp
      002310 15 81            [12] 1087 	dec	sp
                                   1088 ;	lcdCommands.c:121: gets(x);
      002312 90 00 05         [24] 1089 	mov	dptr,#_customCharacter_x_65536_83
      002315 75 F0 00         [24] 1090 	mov	b,#0x00
      002318 12 26 BA         [24] 1091 	lcall	_gets
                                   1092 ;	lcdCommands.c:122: temp = atoh(x);
      00231B 90 00 05         [24] 1093 	mov	dptr,#_customCharacter_x_65536_83
      00231E 75 F0 00         [24] 1094 	mov	b,#0x00
      002321 12 2D F0         [24] 1095 	lcall	_atoh
      002324 AE 82            [24] 1096 	mov	r6,dpl
                                   1097 ;	lcdCommands.c:123: }while(temp < 0 || temp > 0x1F);
      002326 E5 83            [12] 1098 	mov	a,dph
      002328 FF               [12] 1099 	mov	r7,a
      002329 20 E7 D7         [24] 1100 	jb	acc.7,00114$
      00232C C3               [12] 1101 	clr	c
      00232D 74 1F            [12] 1102 	mov	a,#0x1f
      00232F 9E               [12] 1103 	subb	a,r6
      002330 74 80            [12] 1104 	mov	a,#(0x00 ^ 0x80)
      002332 8F F0            [24] 1105 	mov	b,r7
      002334 63 F0 80         [24] 1106 	xrl	b,#0x80
      002337 95 F0            [12] 1107 	subb	a,b
      002339 40 C8            [24] 1108 	jc	00114$
                                   1109 ;	lcdCommands.c:124: memset(x,'\0',8 * sizeof(char));
      00233B 90 00 A5         [24] 1110 	mov	dptr,#_memset_PARM_2
      00233E E4               [12] 1111 	clr	a
      00233F F0               [24] 1112 	movx	@dptr,a
      002340 90 00 A6         [24] 1113 	mov	dptr,#_memset_PARM_3
      002343 74 08            [12] 1114 	mov	a,#0x08
      002345 F0               [24] 1115 	movx	@dptr,a
      002346 E4               [12] 1116 	clr	a
      002347 A3               [24] 1117 	inc	dptr
      002348 F0               [24] 1118 	movx	@dptr,a
      002349 90 00 05         [24] 1119 	mov	dptr,#_customCharacter_x_65536_83
      00234C 75 F0 00         [24] 1120 	mov	b,#0x00
      00234F C0 07            [24] 1121 	push	ar7
      002351 C0 06            [24] 1122 	push	ar6
      002353 12 34 3E         [24] 1123 	lcall	_memset
      002356 D0 06            [24] 1124 	pop	ar6
      002358 D0 07            [24] 1125 	pop	ar7
                                   1126 ;	lcdCommands.c:125: writeCharacter = temp & 0xFF;
      00235A 90 F1 00         [24] 1127 	mov	dptr,#_writeCharacter
      00235D EE               [12] 1128 	mov	a,r6
      00235E F0               [24] 1129 	movx	@dptr,a
      00235F E4               [12] 1130 	clr	a
      002360 A3               [24] 1131 	inc	dptr
      002361 F0               [24] 1132 	movx	@dptr,a
                                   1133 ;	lcdCommands.c:126: busyWait();
      002362 12 20 8B         [24] 1134 	lcall	_busyWait
                                   1135 ;	lcdCommands.c:127: lcdGeneral = 0x40 | 0x14;
      002365 90 F0 00         [24] 1136 	mov	dptr,#_lcdGeneral
      002368 74 54            [12] 1137 	mov	a,#0x54
      00236A F0               [24] 1138 	movx	@dptr,a
      00236B E4               [12] 1139 	clr	a
      00236C A3               [24] 1140 	inc	dptr
      00236D F0               [24] 1141 	movx	@dptr,a
                                   1142 ;	lcdCommands.c:128: busyWait();
      00236E 12 20 8B         [24] 1143 	lcall	_busyWait
                                   1144 ;	lcdCommands.c:129: do{
      002371                       1145 00118$:
                                   1146 ;	lcdCommands.c:130: printf_tiny("\n\rEnter value for Row 5\n\r");
      002371 74 09            [12] 1147 	mov	a,#___str_4
      002373 C0 E0            [24] 1148 	push	acc
      002375 74 46            [12] 1149 	mov	a,#(___str_4 >> 8)
      002377 C0 E0            [24] 1150 	push	acc
      002379 12 35 A1         [24] 1151 	lcall	_printf_tiny
      00237C 15 81            [12] 1152 	dec	sp
      00237E 15 81            [12] 1153 	dec	sp
                                   1154 ;	lcdCommands.c:131: gets(x);
      002380 90 00 05         [24] 1155 	mov	dptr,#_customCharacter_x_65536_83
      002383 75 F0 00         [24] 1156 	mov	b,#0x00
      002386 12 26 BA         [24] 1157 	lcall	_gets
                                   1158 ;	lcdCommands.c:132: temp = atoh(x);
      002389 90 00 05         [24] 1159 	mov	dptr,#_customCharacter_x_65536_83
      00238C 75 F0 00         [24] 1160 	mov	b,#0x00
      00238F 12 2D F0         [24] 1161 	lcall	_atoh
      002392 AE 82            [24] 1162 	mov	r6,dpl
                                   1163 ;	lcdCommands.c:133: }while(temp < 0 || temp > 0x1F);
      002394 E5 83            [12] 1164 	mov	a,dph
      002396 FF               [12] 1165 	mov	r7,a
      002397 20 E7 D7         [24] 1166 	jb	acc.7,00118$
      00239A C3               [12] 1167 	clr	c
      00239B 74 1F            [12] 1168 	mov	a,#0x1f
      00239D 9E               [12] 1169 	subb	a,r6
      00239E 74 80            [12] 1170 	mov	a,#(0x00 ^ 0x80)
      0023A0 8F F0            [24] 1171 	mov	b,r7
      0023A2 63 F0 80         [24] 1172 	xrl	b,#0x80
      0023A5 95 F0            [12] 1173 	subb	a,b
      0023A7 40 C8            [24] 1174 	jc	00118$
                                   1175 ;	lcdCommands.c:134: memset(x,'\0',8 * sizeof(char));
      0023A9 90 00 A5         [24] 1176 	mov	dptr,#_memset_PARM_2
      0023AC E4               [12] 1177 	clr	a
      0023AD F0               [24] 1178 	movx	@dptr,a
      0023AE 90 00 A6         [24] 1179 	mov	dptr,#_memset_PARM_3
      0023B1 74 08            [12] 1180 	mov	a,#0x08
      0023B3 F0               [24] 1181 	movx	@dptr,a
      0023B4 E4               [12] 1182 	clr	a
      0023B5 A3               [24] 1183 	inc	dptr
      0023B6 F0               [24] 1184 	movx	@dptr,a
      0023B7 90 00 05         [24] 1185 	mov	dptr,#_customCharacter_x_65536_83
      0023BA 75 F0 00         [24] 1186 	mov	b,#0x00
      0023BD C0 07            [24] 1187 	push	ar7
      0023BF C0 06            [24] 1188 	push	ar6
      0023C1 12 34 3E         [24] 1189 	lcall	_memset
      0023C4 D0 06            [24] 1190 	pop	ar6
      0023C6 D0 07            [24] 1191 	pop	ar7
                                   1192 ;	lcdCommands.c:135: writeCharacter = temp & 0xFF;
      0023C8 90 F1 00         [24] 1193 	mov	dptr,#_writeCharacter
      0023CB EE               [12] 1194 	mov	a,r6
      0023CC F0               [24] 1195 	movx	@dptr,a
      0023CD E4               [12] 1196 	clr	a
      0023CE A3               [24] 1197 	inc	dptr
      0023CF F0               [24] 1198 	movx	@dptr,a
                                   1199 ;	lcdCommands.c:136: busyWait();
      0023D0 12 20 8B         [24] 1200 	lcall	_busyWait
                                   1201 ;	lcdCommands.c:137: lcdGeneral = 0x40 | 0x15;
      0023D3 90 F0 00         [24] 1202 	mov	dptr,#_lcdGeneral
      0023D6 74 55            [12] 1203 	mov	a,#0x55
      0023D8 F0               [24] 1204 	movx	@dptr,a
      0023D9 E4               [12] 1205 	clr	a
      0023DA A3               [24] 1206 	inc	dptr
      0023DB F0               [24] 1207 	movx	@dptr,a
                                   1208 ;	lcdCommands.c:138: busyWait();
      0023DC 12 20 8B         [24] 1209 	lcall	_busyWait
                                   1210 ;	lcdCommands.c:139: do{
      0023DF                       1211 00122$:
                                   1212 ;	lcdCommands.c:140: printf_tiny("\n\rEnter value for Row 6\n\r");
      0023DF 74 23            [12] 1213 	mov	a,#___str_5
      0023E1 C0 E0            [24] 1214 	push	acc
      0023E3 74 46            [12] 1215 	mov	a,#(___str_5 >> 8)
      0023E5 C0 E0            [24] 1216 	push	acc
      0023E7 12 35 A1         [24] 1217 	lcall	_printf_tiny
      0023EA 15 81            [12] 1218 	dec	sp
      0023EC 15 81            [12] 1219 	dec	sp
                                   1220 ;	lcdCommands.c:141: gets(x);
      0023EE 90 00 05         [24] 1221 	mov	dptr,#_customCharacter_x_65536_83
      0023F1 75 F0 00         [24] 1222 	mov	b,#0x00
      0023F4 12 26 BA         [24] 1223 	lcall	_gets
                                   1224 ;	lcdCommands.c:142: temp = atoh(x);
      0023F7 90 00 05         [24] 1225 	mov	dptr,#_customCharacter_x_65536_83
      0023FA 75 F0 00         [24] 1226 	mov	b,#0x00
      0023FD 12 2D F0         [24] 1227 	lcall	_atoh
      002400 AE 82            [24] 1228 	mov	r6,dpl
                                   1229 ;	lcdCommands.c:143: }while(temp < 0 || temp > 0x1F);
      002402 E5 83            [12] 1230 	mov	a,dph
      002404 FF               [12] 1231 	mov	r7,a
      002405 20 E7 D7         [24] 1232 	jb	acc.7,00122$
      002408 C3               [12] 1233 	clr	c
      002409 74 1F            [12] 1234 	mov	a,#0x1f
      00240B 9E               [12] 1235 	subb	a,r6
      00240C 74 80            [12] 1236 	mov	a,#(0x00 ^ 0x80)
      00240E 8F F0            [24] 1237 	mov	b,r7
      002410 63 F0 80         [24] 1238 	xrl	b,#0x80
      002413 95 F0            [12] 1239 	subb	a,b
      002415 40 C8            [24] 1240 	jc	00122$
                                   1241 ;	lcdCommands.c:144: memset(x,'\0',8 * sizeof(char));
      002417 90 00 A5         [24] 1242 	mov	dptr,#_memset_PARM_2
      00241A E4               [12] 1243 	clr	a
      00241B F0               [24] 1244 	movx	@dptr,a
      00241C 90 00 A6         [24] 1245 	mov	dptr,#_memset_PARM_3
      00241F 74 08            [12] 1246 	mov	a,#0x08
      002421 F0               [24] 1247 	movx	@dptr,a
      002422 E4               [12] 1248 	clr	a
      002423 A3               [24] 1249 	inc	dptr
      002424 F0               [24] 1250 	movx	@dptr,a
      002425 90 00 05         [24] 1251 	mov	dptr,#_customCharacter_x_65536_83
      002428 75 F0 00         [24] 1252 	mov	b,#0x00
      00242B C0 07            [24] 1253 	push	ar7
      00242D C0 06            [24] 1254 	push	ar6
      00242F 12 34 3E         [24] 1255 	lcall	_memset
      002432 D0 06            [24] 1256 	pop	ar6
      002434 D0 07            [24] 1257 	pop	ar7
                                   1258 ;	lcdCommands.c:145: writeCharacter = temp & 0xFF;
      002436 90 F1 00         [24] 1259 	mov	dptr,#_writeCharacter
      002439 EE               [12] 1260 	mov	a,r6
      00243A F0               [24] 1261 	movx	@dptr,a
      00243B E4               [12] 1262 	clr	a
      00243C A3               [24] 1263 	inc	dptr
      00243D F0               [24] 1264 	movx	@dptr,a
                                   1265 ;	lcdCommands.c:146: busyWait();
      00243E 12 20 8B         [24] 1266 	lcall	_busyWait
                                   1267 ;	lcdCommands.c:147: lcdGeneral = 0x40 | 0x16;
      002441 90 F0 00         [24] 1268 	mov	dptr,#_lcdGeneral
      002444 74 56            [12] 1269 	mov	a,#0x56
      002446 F0               [24] 1270 	movx	@dptr,a
      002447 E4               [12] 1271 	clr	a
      002448 A3               [24] 1272 	inc	dptr
      002449 F0               [24] 1273 	movx	@dptr,a
                                   1274 ;	lcdCommands.c:148: busyWait();
      00244A 12 20 8B         [24] 1275 	lcall	_busyWait
                                   1276 ;	lcdCommands.c:149: do{
      00244D                       1277 00126$:
                                   1278 ;	lcdCommands.c:150: printf_tiny("\n\rEnter value for Row 7\n\r");
      00244D 74 3D            [12] 1279 	mov	a,#___str_6
      00244F C0 E0            [24] 1280 	push	acc
      002451 74 46            [12] 1281 	mov	a,#(___str_6 >> 8)
      002453 C0 E0            [24] 1282 	push	acc
      002455 12 35 A1         [24] 1283 	lcall	_printf_tiny
      002458 15 81            [12] 1284 	dec	sp
      00245A 15 81            [12] 1285 	dec	sp
                                   1286 ;	lcdCommands.c:151: gets(x);
      00245C 90 00 05         [24] 1287 	mov	dptr,#_customCharacter_x_65536_83
      00245F 75 F0 00         [24] 1288 	mov	b,#0x00
      002462 12 26 BA         [24] 1289 	lcall	_gets
                                   1290 ;	lcdCommands.c:152: temp = atoh(x);
      002465 90 00 05         [24] 1291 	mov	dptr,#_customCharacter_x_65536_83
      002468 75 F0 00         [24] 1292 	mov	b,#0x00
      00246B 12 2D F0         [24] 1293 	lcall	_atoh
      00246E AE 82            [24] 1294 	mov	r6,dpl
                                   1295 ;	lcdCommands.c:153: }while(temp < 0 || temp > 0x1F);
      002470 E5 83            [12] 1296 	mov	a,dph
      002472 FF               [12] 1297 	mov	r7,a
      002473 20 E7 D7         [24] 1298 	jb	acc.7,00126$
      002476 C3               [12] 1299 	clr	c
      002477 74 1F            [12] 1300 	mov	a,#0x1f
      002479 9E               [12] 1301 	subb	a,r6
      00247A 74 80            [12] 1302 	mov	a,#(0x00 ^ 0x80)
      00247C 8F F0            [24] 1303 	mov	b,r7
      00247E 63 F0 80         [24] 1304 	xrl	b,#0x80
      002481 95 F0            [12] 1305 	subb	a,b
      002483 40 C8            [24] 1306 	jc	00126$
                                   1307 ;	lcdCommands.c:154: memset(x,'\0',8 * sizeof(char));
      002485 90 00 A5         [24] 1308 	mov	dptr,#_memset_PARM_2
      002488 E4               [12] 1309 	clr	a
      002489 F0               [24] 1310 	movx	@dptr,a
      00248A 90 00 A6         [24] 1311 	mov	dptr,#_memset_PARM_3
      00248D 74 08            [12] 1312 	mov	a,#0x08
      00248F F0               [24] 1313 	movx	@dptr,a
      002490 E4               [12] 1314 	clr	a
      002491 A3               [24] 1315 	inc	dptr
      002492 F0               [24] 1316 	movx	@dptr,a
      002493 90 00 05         [24] 1317 	mov	dptr,#_customCharacter_x_65536_83
      002496 75 F0 00         [24] 1318 	mov	b,#0x00
      002499 C0 07            [24] 1319 	push	ar7
      00249B C0 06            [24] 1320 	push	ar6
      00249D 12 34 3E         [24] 1321 	lcall	_memset
      0024A0 D0 06            [24] 1322 	pop	ar6
      0024A2 D0 07            [24] 1323 	pop	ar7
                                   1324 ;	lcdCommands.c:155: writeCharacter = temp & 0xFF;
      0024A4 90 F1 00         [24] 1325 	mov	dptr,#_writeCharacter
      0024A7 EE               [12] 1326 	mov	a,r6
      0024A8 F0               [24] 1327 	movx	@dptr,a
      0024A9 E4               [12] 1328 	clr	a
      0024AA A3               [24] 1329 	inc	dptr
      0024AB F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	lcdCommands.c:156: busyWait();
      0024AC 12 20 8B         [24] 1332 	lcall	_busyWait
                                   1333 ;	lcdCommands.c:157: lcdGeneral = 0x40 | 0x17;
      0024AF 90 F0 00         [24] 1334 	mov	dptr,#_lcdGeneral
      0024B2 74 57            [12] 1335 	mov	a,#0x57
      0024B4 F0               [24] 1336 	movx	@dptr,a
      0024B5 E4               [12] 1337 	clr	a
      0024B6 A3               [24] 1338 	inc	dptr
      0024B7 F0               [24] 1339 	movx	@dptr,a
                                   1340 ;	lcdCommands.c:158: busyWait();
      0024B8 12 20 8B         [24] 1341 	lcall	_busyWait
                                   1342 ;	lcdCommands.c:159: do{
      0024BB                       1343 00130$:
                                   1344 ;	lcdCommands.c:160: printf_tiny("\n\rEnter value for Row 8\n\r");
      0024BB 74 57            [12] 1345 	mov	a,#___str_7
      0024BD C0 E0            [24] 1346 	push	acc
      0024BF 74 46            [12] 1347 	mov	a,#(___str_7 >> 8)
      0024C1 C0 E0            [24] 1348 	push	acc
      0024C3 12 35 A1         [24] 1349 	lcall	_printf_tiny
      0024C6 15 81            [12] 1350 	dec	sp
      0024C8 15 81            [12] 1351 	dec	sp
                                   1352 ;	lcdCommands.c:161: gets(x);
      0024CA 90 00 05         [24] 1353 	mov	dptr,#_customCharacter_x_65536_83
      0024CD 75 F0 00         [24] 1354 	mov	b,#0x00
      0024D0 12 26 BA         [24] 1355 	lcall	_gets
                                   1356 ;	lcdCommands.c:162: temp = atoh(x);
      0024D3 90 00 05         [24] 1357 	mov	dptr,#_customCharacter_x_65536_83
      0024D6 75 F0 00         [24] 1358 	mov	b,#0x00
      0024D9 12 2D F0         [24] 1359 	lcall	_atoh
      0024DC AE 82            [24] 1360 	mov	r6,dpl
                                   1361 ;	lcdCommands.c:163: }while(temp < 0 || temp > 0x1F);
      0024DE E5 83            [12] 1362 	mov	a,dph
      0024E0 FF               [12] 1363 	mov	r7,a
      0024E1 20 E7 D7         [24] 1364 	jb	acc.7,00130$
      0024E4 C3               [12] 1365 	clr	c
      0024E5 74 1F            [12] 1366 	mov	a,#0x1f
      0024E7 9E               [12] 1367 	subb	a,r6
      0024E8 74 80            [12] 1368 	mov	a,#(0x00 ^ 0x80)
      0024EA 8F F0            [24] 1369 	mov	b,r7
      0024EC 63 F0 80         [24] 1370 	xrl	b,#0x80
      0024EF 95 F0            [12] 1371 	subb	a,b
      0024F1 40 C8            [24] 1372 	jc	00130$
                                   1373 ;	lcdCommands.c:164: memset(x,'\0',8 * sizeof(char));
      0024F3 90 00 A5         [24] 1374 	mov	dptr,#_memset_PARM_2
      0024F6 E4               [12] 1375 	clr	a
      0024F7 F0               [24] 1376 	movx	@dptr,a
      0024F8 90 00 A6         [24] 1377 	mov	dptr,#_memset_PARM_3
      0024FB 74 08            [12] 1378 	mov	a,#0x08
      0024FD F0               [24] 1379 	movx	@dptr,a
      0024FE E4               [12] 1380 	clr	a
      0024FF A3               [24] 1381 	inc	dptr
      002500 F0               [24] 1382 	movx	@dptr,a
      002501 90 00 05         [24] 1383 	mov	dptr,#_customCharacter_x_65536_83
      002504 75 F0 00         [24] 1384 	mov	b,#0x00
      002507 C0 07            [24] 1385 	push	ar7
      002509 C0 06            [24] 1386 	push	ar6
      00250B 12 34 3E         [24] 1387 	lcall	_memset
      00250E D0 06            [24] 1388 	pop	ar6
      002510 D0 07            [24] 1389 	pop	ar7
                                   1390 ;	lcdCommands.c:165: writeCharacter = temp & 0xFF;
      002512 90 F1 00         [24] 1391 	mov	dptr,#_writeCharacter
      002515 EE               [12] 1392 	mov	a,r6
      002516 F0               [24] 1393 	movx	@dptr,a
      002517 E4               [12] 1394 	clr	a
      002518 A3               [24] 1395 	inc	dptr
      002519 F0               [24] 1396 	movx	@dptr,a
                                   1397 ;	lcdCommands.c:166: busyWait();
      00251A 12 20 8B         [24] 1398 	lcall	_busyWait
                                   1399 ;	lcdCommands.c:167: goToXY(3,1);
      00251D 90 00 03         [24] 1400 	mov	dptr,#_goToXY_PARM_2
      002520 74 01            [12] 1401 	mov	a,#0x01
      002522 F0               [24] 1402 	movx	@dptr,a
      002523 75 82 03         [24] 1403 	mov	dpl,#0x03
      002526 12 21 35         [24] 1404 	lcall	_goToXY
                                   1405 ;	lcdCommands.c:168: busyWait();
      002529 12 20 8B         [24] 1406 	lcall	_busyWait
                                   1407 ;	lcdCommands.c:169: lcdGeneral = 0x80 | 0x01;
      00252C 90 F0 00         [24] 1408 	mov	dptr,#_lcdGeneral
      00252F 74 81            [12] 1409 	mov	a,#0x81
      002531 F0               [24] 1410 	movx	@dptr,a
      002532 E4               [12] 1411 	clr	a
      002533 A3               [24] 1412 	inc	dptr
      002534 F0               [24] 1413 	movx	@dptr,a
                                   1414 ;	lcdCommands.c:170: busyWait();
      002535 12 20 8B         [24] 1415 	lcall	_busyWait
                                   1416 ;	lcdCommands.c:171: writeCharacter = 0x01;
      002538 90 F1 00         [24] 1417 	mov	dptr,#_writeCharacter
      00253B 74 01            [12] 1418 	mov	a,#0x01
      00253D F0               [24] 1419 	movx	@dptr,a
      00253E E4               [12] 1420 	clr	a
      00253F A3               [24] 1421 	inc	dptr
      002540 F0               [24] 1422 	movx	@dptr,a
                                   1423 ;	lcdCommands.c:172: }
      002541 22               [24] 1424 	ret
                                   1425 ;------------------------------------------------------------
                                   1426 ;Allocation info for local variables in function 'readLCD'
                                   1427 ;------------------------------------------------------------
                                   1428 ;temp1                     Allocated with name '_readLCD_temp1_65537_93'
                                   1429 ;------------------------------------------------------------
                                   1430 ;	lcdCommands.c:174: uint8_t readLCD()
                                   1431 ;	-----------------------------------------
                                   1432 ;	 function readLCD
                                   1433 ;	-----------------------------------------
      002542                       1434 _readLCD:
                                   1435 ;	lcdCommands.c:176: busyWait();
      002542 12 20 8B         [24] 1436 	lcall	_busyWait
                                   1437 ;	lcdCommands.c:177: uint8_t temp1 = readCharacter;
      002545 90 F3 00         [24] 1438 	mov	dptr,#_readCharacter
      002548 E0               [24] 1439 	movx	a,@dptr
      002549 FE               [12] 1440 	mov	r6,a
      00254A A3               [24] 1441 	inc	dptr
      00254B E0               [24] 1442 	movx	a,@dptr
                                   1443 ;	lcdCommands.c:178: return temp1;
      00254C 8E 82            [24] 1444 	mov	dpl,r6
                                   1445 ;	lcdCommands.c:179: }
      00254E 22               [24] 1446 	ret
                                   1447 ;------------------------------------------------------------
                                   1448 ;Allocation info for local variables in function 'putsLCD'
                                   1449 ;------------------------------------------------------------
                                   1450 ;sloc0                     Allocated with name '_putsLCD_sloc0_1_0'
                                   1451 ;sloc1                     Allocated with name '_putsLCD_sloc1_1_0'
                                   1452 ;y                         Allocated with name '_putsLCD_y_65536_94'
                                   1453 ;i                         Allocated with name '_putsLCD_i_65536_95'
                                   1454 ;j                         Allocated with name '_putsLCD_j_65536_95'
                                   1455 ;k                         Allocated with name '_putsLCD_k_65536_95'
                                   1456 ;------------------------------------------------------------
                                   1457 ;	lcdCommands.c:181: void putsLCD(char* y)
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function putsLCD
                                   1460 ;	-----------------------------------------
      00254F                       1461 _putsLCD:
      00254F AF F0            [24] 1462 	mov	r7,b
      002551 AE 83            [24] 1463 	mov	r6,dph
      002553 E5 82            [12] 1464 	mov	a,dpl
      002555 90 00 0D         [24] 1465 	mov	dptr,#_putsLCD_y_65536_94
      002558 F0               [24] 1466 	movx	@dptr,a
      002559 EE               [12] 1467 	mov	a,r6
      00255A A3               [24] 1468 	inc	dptr
      00255B F0               [24] 1469 	movx	@dptr,a
      00255C EF               [12] 1470 	mov	a,r7
      00255D A3               [24] 1471 	inc	dptr
      00255E F0               [24] 1472 	movx	@dptr,a
                                   1473 ;	lcdCommands.c:183: int i = 0,j = 0, k =0;
      00255F 90 00 10         [24] 1474 	mov	dptr,#_putsLCD_i_65536_95
      002562 E4               [12] 1475 	clr	a
      002563 F0               [24] 1476 	movx	@dptr,a
      002564 A3               [24] 1477 	inc	dptr
      002565 F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	lcdCommands.c:184: while(y[i + (j * 16)] != '\0')
      002566 90 00 0D         [24] 1480 	mov	dptr,#_putsLCD_y_65536_94
      002569 E0               [24] 1481 	movx	a,@dptr
      00256A F5 0A            [12] 1482 	mov	_putsLCD_sloc1_1_0,a
      00256C A3               [24] 1483 	inc	dptr
      00256D E0               [24] 1484 	movx	a,@dptr
      00256E F5 0B            [12] 1485 	mov	(_putsLCD_sloc1_1_0 + 1),a
      002570 A3               [24] 1486 	inc	dptr
      002571 E0               [24] 1487 	movx	a,@dptr
      002572 F5 0C            [12] 1488 	mov	(_putsLCD_sloc1_1_0 + 2),a
      002574 AA 0A            [24] 1489 	mov	r2,_putsLCD_sloc1_1_0
      002576 AB 0B            [24] 1490 	mov	r3,(_putsLCD_sloc1_1_0 + 1)
      002578 AC 0C            [24] 1491 	mov	r4,(_putsLCD_sloc1_1_0 + 2)
      00257A 78 00            [12] 1492 	mov	r0,#0x00
      00257C 79 00            [12] 1493 	mov	r1,#0x00
      00257E                       1494 00103$:
      00257E 88 06            [24] 1495 	mov	ar6,r0
      002580 E9               [12] 1496 	mov	a,r1
      002581 C4               [12] 1497 	swap	a
      002582 54 F0            [12] 1498 	anl	a,#0xf0
      002584 CE               [12] 1499 	xch	a,r6
      002585 C4               [12] 1500 	swap	a
      002586 CE               [12] 1501 	xch	a,r6
      002587 6E               [12] 1502 	xrl	a,r6
      002588 CE               [12] 1503 	xch	a,r6
      002589 54 F0            [12] 1504 	anl	a,#0xf0
      00258B CE               [12] 1505 	xch	a,r6
      00258C 6E               [12] 1506 	xrl	a,r6
      00258D FF               [12] 1507 	mov	r7,a
      00258E 90 00 10         [24] 1508 	mov	dptr,#_putsLCD_i_65536_95
      002591 E0               [24] 1509 	movx	a,@dptr
      002592 F5 08            [12] 1510 	mov	_putsLCD_sloc0_1_0,a
      002594 A3               [24] 1511 	inc	dptr
      002595 E0               [24] 1512 	movx	a,@dptr
      002596 F5 09            [12] 1513 	mov	(_putsLCD_sloc0_1_0 + 1),a
      002598 EE               [12] 1514 	mov	a,r6
      002599 25 08            [12] 1515 	add	a,_putsLCD_sloc0_1_0
      00259B FE               [12] 1516 	mov	r6,a
      00259C EF               [12] 1517 	mov	a,r7
      00259D 35 09            [12] 1518 	addc	a,(_putsLCD_sloc0_1_0 + 1)
      00259F FF               [12] 1519 	mov	r7,a
      0025A0 EE               [12] 1520 	mov	a,r6
      0025A1 2A               [12] 1521 	add	a,r2
      0025A2 FE               [12] 1522 	mov	r6,a
      0025A3 EF               [12] 1523 	mov	a,r7
      0025A4 3B               [12] 1524 	addc	a,r3
      0025A5 FF               [12] 1525 	mov	r7,a
      0025A6 8C 05            [24] 1526 	mov	ar5,r4
      0025A8 8E 82            [24] 1527 	mov	dpl,r6
      0025AA 8F 83            [24] 1528 	mov	dph,r7
      0025AC 8D F0            [24] 1529 	mov	b,r5
      0025AE 12 43 4D         [24] 1530 	lcall	__gptrget
      0025B1 70 01            [24] 1531 	jnz	00121$
      0025B3 22               [24] 1532 	ret
      0025B4                       1533 00121$:
                                   1534 ;	lcdCommands.c:186: busyWait();
      0025B4 C0 04            [24] 1535 	push	ar4
      0025B6 C0 03            [24] 1536 	push	ar3
      0025B8 C0 02            [24] 1537 	push	ar2
      0025BA C0 01            [24] 1538 	push	ar1
      0025BC C0 00            [24] 1539 	push	ar0
      0025BE 12 20 8B         [24] 1540 	lcall	_busyWait
      0025C1 D0 00            [24] 1541 	pop	ar0
      0025C3 D0 01            [24] 1542 	pop	ar1
      0025C5 D0 02            [24] 1543 	pop	ar2
      0025C7 D0 03            [24] 1544 	pop	ar3
      0025C9 D0 04            [24] 1545 	pop	ar4
                                   1546 ;	lcdCommands.c:187: if( i > 15)
      0025CB C3               [12] 1547 	clr	c
      0025CC 74 0F            [12] 1548 	mov	a,#0x0f
      0025CE 95 08            [12] 1549 	subb	a,_putsLCD_sloc0_1_0
      0025D0 74 80            [12] 1550 	mov	a,#(0x00 ^ 0x80)
      0025D2 85 09 F0         [24] 1551 	mov	b,(_putsLCD_sloc0_1_0 + 1)
      0025D5 63 F0 80         [24] 1552 	xrl	b,#0x80
      0025D8 95 F0            [12] 1553 	subb	a,b
      0025DA 50 0C            [24] 1554 	jnc	00102$
                                   1555 ;	lcdCommands.c:189: j++;
      0025DC 08               [12] 1556 	inc	r0
      0025DD B8 00 01         [24] 1557 	cjne	r0,#0x00,00123$
      0025E0 09               [12] 1558 	inc	r1
      0025E1                       1559 00123$:
                                   1560 ;	lcdCommands.c:190: i = 0;
      0025E1 90 00 10         [24] 1561 	mov	dptr,#_putsLCD_i_65536_95
      0025E4 E4               [12] 1562 	clr	a
      0025E5 F0               [24] 1563 	movx	@dptr,a
      0025E6 A3               [24] 1564 	inc	dptr
      0025E7 F0               [24] 1565 	movx	@dptr,a
      0025E8                       1566 00102$:
                                   1567 ;	lcdCommands.c:193: goToAddr(lookUpTable[j][i]);
      0025E8 C0 02            [24] 1568 	push	ar2
      0025EA C0 03            [24] 1569 	push	ar3
      0025EC C0 04            [24] 1570 	push	ar4
      0025EE 88 03            [24] 1571 	mov	ar3,r0
      0025F0 E9               [12] 1572 	mov	a,r1
      0025F1 C4               [12] 1573 	swap	a
      0025F2 54 F0            [12] 1574 	anl	a,#0xf0
      0025F4 CB               [12] 1575 	xch	a,r3
      0025F5 C4               [12] 1576 	swap	a
      0025F6 CB               [12] 1577 	xch	a,r3
      0025F7 6B               [12] 1578 	xrl	a,r3
      0025F8 CB               [12] 1579 	xch	a,r3
      0025F9 54 F0            [12] 1580 	anl	a,#0xf0
      0025FB CB               [12] 1581 	xch	a,r3
      0025FC 6B               [12] 1582 	xrl	a,r3
      0025FD FC               [12] 1583 	mov	r4,a
      0025FE EB               [12] 1584 	mov	a,r3
      0025FF 24 61            [12] 1585 	add	a,#_lookUpTable
      002601 FA               [12] 1586 	mov	r2,a
      002602 EC               [12] 1587 	mov	a,r4
      002603 34 45            [12] 1588 	addc	a,#(_lookUpTable >> 8)
      002605 FF               [12] 1589 	mov	r7,a
      002606 90 00 10         [24] 1590 	mov	dptr,#_putsLCD_i_65536_95
      002609 E0               [24] 1591 	movx	a,@dptr
      00260A FD               [12] 1592 	mov	r5,a
      00260B A3               [24] 1593 	inc	dptr
      00260C E0               [24] 1594 	movx	a,@dptr
      00260D FE               [12] 1595 	mov	r6,a
      00260E ED               [12] 1596 	mov	a,r5
      00260F 2A               [12] 1597 	add	a,r2
      002610 F5 08            [12] 1598 	mov	_putsLCD_sloc0_1_0,a
      002612 EE               [12] 1599 	mov	a,r6
      002613 3F               [12] 1600 	addc	a,r7
      002614 F5 09            [12] 1601 	mov	(_putsLCD_sloc0_1_0 + 1),a
      002616 85 08 82         [24] 1602 	mov	dpl,_putsLCD_sloc0_1_0
      002619 85 09 83         [24] 1603 	mov	dph,(_putsLCD_sloc0_1_0 + 1)
      00261C E4               [12] 1604 	clr	a
      00261D 93               [24] 1605 	movc	a,@a+dptr
      00261E F5 82            [12] 1606 	mov	dpl,a
      002620 C0 06            [24] 1607 	push	ar6
      002622 C0 05            [24] 1608 	push	ar5
      002624 C0 04            [24] 1609 	push	ar4
      002626 C0 03            [24] 1610 	push	ar3
      002628 C0 02            [24] 1611 	push	ar2
      00262A C0 01            [24] 1612 	push	ar1
      00262C C0 00            [24] 1613 	push	ar0
      00262E 12 21 1A         [24] 1614 	lcall	_goToAddr
      002631 D0 00            [24] 1615 	pop	ar0
      002633 D0 01            [24] 1616 	pop	ar1
      002635 D0 02            [24] 1617 	pop	ar2
                                   1618 ;	lcdCommands.c:194: printf_tiny("%d\n\r", lookUpTable[j][i]);
      002637 85 08 82         [24] 1619 	mov	dpl,_putsLCD_sloc0_1_0
      00263A 85 09 83         [24] 1620 	mov	dph,(_putsLCD_sloc0_1_0 + 1)
      00263D E4               [12] 1621 	clr	a
      00263E 93               [24] 1622 	movc	a,@a+dptr
      00263F FF               [12] 1623 	mov	r7,a
      002640 7A 00            [12] 1624 	mov	r2,#0x00
      002642 C0 02            [24] 1625 	push	ar2
      002644 C0 01            [24] 1626 	push	ar1
      002646 C0 00            [24] 1627 	push	ar0
      002648 C0 07            [24] 1628 	push	ar7
      00264A C0 02            [24] 1629 	push	ar2
      00264C 74 71            [12] 1630 	mov	a,#___str_8
      00264E C0 E0            [24] 1631 	push	acc
      002650 74 46            [12] 1632 	mov	a,#(___str_8 >> 8)
      002652 C0 E0            [24] 1633 	push	acc
      002654 12 35 A1         [24] 1634 	lcall	_printf_tiny
      002657 E5 81            [12] 1635 	mov	a,sp
      002659 24 FC            [12] 1636 	add	a,#0xfc
      00265B F5 81            [12] 1637 	mov	sp,a
      00265D D0 00            [24] 1638 	pop	ar0
      00265F D0 01            [24] 1639 	pop	ar1
      002661 D0 02            [24] 1640 	pop	ar2
      002663 D0 03            [24] 1641 	pop	ar3
      002665 D0 04            [24] 1642 	pop	ar4
      002667 D0 05            [24] 1643 	pop	ar5
      002669 D0 06            [24] 1644 	pop	ar6
                                   1645 ;	lcdCommands.c:195: lcdPutCh(y[i + (j * 16)]);
      00266B EB               [12] 1646 	mov	a,r3
      00266C 2D               [12] 1647 	add	a,r5
      00266D FB               [12] 1648 	mov	r3,a
      00266E EC               [12] 1649 	mov	a,r4
      00266F 3E               [12] 1650 	addc	a,r6
      002670 FC               [12] 1651 	mov	r4,a
      002671 EB               [12] 1652 	mov	a,r3
      002672 25 0A            [12] 1653 	add	a,_putsLCD_sloc1_1_0
      002674 FB               [12] 1654 	mov	r3,a
      002675 EC               [12] 1655 	mov	a,r4
      002676 35 0B            [12] 1656 	addc	a,(_putsLCD_sloc1_1_0 + 1)
      002678 FC               [12] 1657 	mov	r4,a
      002679 AF 0C            [24] 1658 	mov	r7,(_putsLCD_sloc1_1_0 + 2)
      00267B 8B 82            [24] 1659 	mov	dpl,r3
      00267D 8C 83            [24] 1660 	mov	dph,r4
      00267F 8F F0            [24] 1661 	mov	b,r7
      002681 12 43 4D         [24] 1662 	lcall	__gptrget
      002684 FB               [12] 1663 	mov	r3,a
      002685 F5 82            [12] 1664 	mov	dpl,a
      002687 C0 06            [24] 1665 	push	ar6
      002689 C0 05            [24] 1666 	push	ar5
      00268B C0 04            [24] 1667 	push	ar4
      00268D C0 03            [24] 1668 	push	ar3
      00268F C0 02            [24] 1669 	push	ar2
      002691 C0 01            [24] 1670 	push	ar1
      002693 C0 00            [24] 1671 	push	ar0
      002695 12 20 F8         [24] 1672 	lcall	_lcdPutCh
      002698 D0 00            [24] 1673 	pop	ar0
      00269A D0 01            [24] 1674 	pop	ar1
      00269C D0 02            [24] 1675 	pop	ar2
      00269E D0 03            [24] 1676 	pop	ar3
      0026A0 D0 04            [24] 1677 	pop	ar4
      0026A2 D0 05            [24] 1678 	pop	ar5
      0026A4 D0 06            [24] 1679 	pop	ar6
                                   1680 ;	lcdCommands.c:196: i++;
      0026A6 90 00 10         [24] 1681 	mov	dptr,#_putsLCD_i_65536_95
      0026A9 74 01            [12] 1682 	mov	a,#0x01
      0026AB 2D               [12] 1683 	add	a,r5
      0026AC F0               [24] 1684 	movx	@dptr,a
      0026AD E4               [12] 1685 	clr	a
      0026AE 3E               [12] 1686 	addc	a,r6
      0026AF A3               [24] 1687 	inc	dptr
      0026B0 F0               [24] 1688 	movx	@dptr,a
      0026B1 D0 04            [24] 1689 	pop	ar4
      0026B3 D0 03            [24] 1690 	pop	ar3
      0026B5 D0 02            [24] 1691 	pop	ar2
                                   1692 ;	lcdCommands.c:198: }
      0026B7 02 25 7E         [24] 1693 	ljmp	00103$
                                   1694 ;------------------------------------------------------------
                                   1695 ;Allocation info for local variables in function 'gets'
                                   1696 ;------------------------------------------------------------
                                   1697 ;s                         Allocated with name '_gets_s_65536_98'
                                   1698 ;c                         Allocated with name '_gets_c_65536_99'
                                   1699 ;count                     Allocated with name '_gets_count_65536_99'
                                   1700 ;------------------------------------------------------------
                                   1701 ;	lcdCommands.c:200: char *gets (char *s)
                                   1702 ;	-----------------------------------------
                                   1703 ;	 function gets
                                   1704 ;	-----------------------------------------
      0026BA                       1705 _gets:
      0026BA AF F0            [24] 1706 	mov	r7,b
      0026BC AE 83            [24] 1707 	mov	r6,dph
      0026BE E5 82            [12] 1708 	mov	a,dpl
      0026C0 90 00 12         [24] 1709 	mov	dptr,#_gets_s_65536_98
      0026C3 F0               [24] 1710 	movx	@dptr,a
      0026C4 EE               [12] 1711 	mov	a,r6
      0026C5 A3               [24] 1712 	inc	dptr
      0026C6 F0               [24] 1713 	movx	@dptr,a
      0026C7 EF               [12] 1714 	mov	a,r7
      0026C8 A3               [24] 1715 	inc	dptr
      0026C9 F0               [24] 1716 	movx	@dptr,a
                                   1717 ;	lcdCommands.c:203: unsigned int count = 0;
      0026CA 90 00 15         [24] 1718 	mov	dptr,#_gets_count_65536_99
      0026CD E4               [12] 1719 	clr	a
      0026CE F0               [24] 1720 	movx	@dptr,a
      0026CF A3               [24] 1721 	inc	dptr
      0026D0 F0               [24] 1722 	movx	@dptr,a
                                   1723 ;	lcdCommands.c:205: while (1)
      0026D1                       1724 00111$:
                                   1725 ;	lcdCommands.c:207: c = getchar ();
      0026D1 12 33 6A         [24] 1726 	lcall	_getchar
      0026D4 AE 82            [24] 1727 	mov	r6,dpl
      0026D6 AF 83            [24] 1728 	mov	r7,dph
                                   1729 ;	lcdCommands.c:208: switch(c)
      0026D8 BE 08 02         [24] 1730 	cjne	r6,#0x08,00139$
      0026DB 80 0D            [24] 1731 	sjmp	00101$
      0026DD                       1732 00139$:
      0026DD BE 0A 02         [24] 1733 	cjne	r6,#0x0a,00140$
      0026E0 80 62            [24] 1734 	sjmp	00105$
      0026E2                       1735 00140$:
      0026E2 BE 0D 02         [24] 1736 	cjne	r6,#0x0d,00141$
      0026E5 80 5D            [24] 1737 	sjmp	00105$
      0026E7                       1738 00141$:
      0026E7 02 27 6C         [24] 1739 	ljmp	00106$
                                   1740 ;	lcdCommands.c:210: case '\b': /* backspace */
      0026EA                       1741 00101$:
                                   1742 ;	lcdCommands.c:211: if (count)
      0026EA 90 00 15         [24] 1743 	mov	dptr,#_gets_count_65536_99
      0026ED E0               [24] 1744 	movx	a,@dptr
      0026EE FD               [12] 1745 	mov	r5,a
      0026EF A3               [24] 1746 	inc	dptr
      0026F0 E0               [24] 1747 	movx	a,@dptr
      0026F1 FF               [12] 1748 	mov	r7,a
      0026F2 90 00 15         [24] 1749 	mov	dptr,#_gets_count_65536_99
      0026F5 E0               [24] 1750 	movx	a,@dptr
      0026F6 F5 F0            [12] 1751 	mov	b,a
      0026F8 A3               [24] 1752 	inc	dptr
      0026F9 E0               [24] 1753 	movx	a,@dptr
      0026FA 45 F0            [12] 1754 	orl	a,b
      0026FC 70 03            [24] 1755 	jnz	00142$
      0026FE 02 27 A4         [24] 1756 	ljmp	00107$
      002701                       1757 00142$:
                                   1758 ;	lcdCommands.c:213: putchar ('\b');
      002701 90 00 08         [24] 1759 	mov	dptr,#0x0008
      002704 C0 07            [24] 1760 	push	ar7
      002706 C0 05            [24] 1761 	push	ar5
      002708 12 33 39         [24] 1762 	lcall	_putchar
                                   1763 ;	lcdCommands.c:214: putchar (' ');
      00270B 90 00 20         [24] 1764 	mov	dptr,#0x0020
      00270E 12 33 39         [24] 1765 	lcall	_putchar
                                   1766 ;	lcdCommands.c:215: putchar ('\b');
      002711 90 00 08         [24] 1767 	mov	dptr,#0x0008
      002714 12 33 39         [24] 1768 	lcall	_putchar
      002717 D0 05            [24] 1769 	pop	ar5
      002719 D0 07            [24] 1770 	pop	ar7
                                   1771 ;	lcdCommands.c:216: --s;
      00271B 90 00 12         [24] 1772 	mov	dptr,#_gets_s_65536_98
      00271E E0               [24] 1773 	movx	a,@dptr
      00271F 24 FF            [12] 1774 	add	a,#0xff
      002721 FA               [12] 1775 	mov	r2,a
      002722 A3               [24] 1776 	inc	dptr
      002723 E0               [24] 1777 	movx	a,@dptr
      002724 34 FF            [12] 1778 	addc	a,#0xff
      002726 FB               [12] 1779 	mov	r3,a
      002727 A3               [24] 1780 	inc	dptr
      002728 E0               [24] 1781 	movx	a,@dptr
      002729 FC               [12] 1782 	mov	r4,a
      00272A 90 00 12         [24] 1783 	mov	dptr,#_gets_s_65536_98
      00272D EA               [12] 1784 	mov	a,r2
      00272E F0               [24] 1785 	movx	@dptr,a
      00272F EB               [12] 1786 	mov	a,r3
      002730 A3               [24] 1787 	inc	dptr
      002731 F0               [24] 1788 	movx	@dptr,a
      002732 EC               [12] 1789 	mov	a,r4
      002733 A3               [24] 1790 	inc	dptr
      002734 F0               [24] 1791 	movx	@dptr,a
                                   1792 ;	lcdCommands.c:217: --count;
      002735 1D               [12] 1793 	dec	r5
      002736 BD FF 01         [24] 1794 	cjne	r5,#0xff,00143$
      002739 1F               [12] 1795 	dec	r7
      00273A                       1796 00143$:
      00273A 90 00 15         [24] 1797 	mov	dptr,#_gets_count_65536_99
      00273D ED               [12] 1798 	mov	a,r5
      00273E F0               [24] 1799 	movx	@dptr,a
      00273F EF               [12] 1800 	mov	a,r7
      002740 A3               [24] 1801 	inc	dptr
      002741 F0               [24] 1802 	movx	@dptr,a
                                   1803 ;	lcdCommands.c:219: break;
                                   1804 ;	lcdCommands.c:222: case '\r': /* CR or LF */
      002742 80 60            [24] 1805 	sjmp	00107$
      002744                       1806 00105$:
                                   1807 ;	lcdCommands.c:223: putchar ('\r');
      002744 90 00 0D         [24] 1808 	mov	dptr,#0x000d
      002747 12 33 39         [24] 1809 	lcall	_putchar
                                   1810 ;	lcdCommands.c:224: putchar ('\n');
      00274A 90 00 0A         [24] 1811 	mov	dptr,#0x000a
      00274D 12 33 39         [24] 1812 	lcall	_putchar
                                   1813 ;	lcdCommands.c:225: *s = 0;
      002750 90 00 12         [24] 1814 	mov	dptr,#_gets_s_65536_98
      002753 E0               [24] 1815 	movx	a,@dptr
      002754 FC               [12] 1816 	mov	r4,a
      002755 A3               [24] 1817 	inc	dptr
      002756 E0               [24] 1818 	movx	a,@dptr
      002757 FD               [12] 1819 	mov	r5,a
      002758 A3               [24] 1820 	inc	dptr
      002759 E0               [24] 1821 	movx	a,@dptr
      00275A FF               [12] 1822 	mov	r7,a
      00275B 8C 82            [24] 1823 	mov	dpl,r4
      00275D 8D 83            [24] 1824 	mov	dph,r5
      00275F 8F F0            [24] 1825 	mov	b,r7
      002761 E4               [12] 1826 	clr	a
      002762 12 35 86         [24] 1827 	lcall	__gptrput
                                   1828 ;	lcdCommands.c:226: return s;
      002765 8C 82            [24] 1829 	mov	dpl,r4
      002767 8D 83            [24] 1830 	mov	dph,r5
      002769 8F F0            [24] 1831 	mov	b,r7
                                   1832 ;	lcdCommands.c:228: default:
      00276B 22               [24] 1833 	ret
      00276C                       1834 00106$:
                                   1835 ;	lcdCommands.c:229: *s++ = c;
      00276C 90 00 12         [24] 1836 	mov	dptr,#_gets_s_65536_98
      00276F E0               [24] 1837 	movx	a,@dptr
      002770 FC               [12] 1838 	mov	r4,a
      002771 A3               [24] 1839 	inc	dptr
      002772 E0               [24] 1840 	movx	a,@dptr
      002773 FD               [12] 1841 	mov	r5,a
      002774 A3               [24] 1842 	inc	dptr
      002775 E0               [24] 1843 	movx	a,@dptr
      002776 FF               [12] 1844 	mov	r7,a
      002777 8C 82            [24] 1845 	mov	dpl,r4
      002779 8D 83            [24] 1846 	mov	dph,r5
      00277B 8F F0            [24] 1847 	mov	b,r7
      00277D EE               [12] 1848 	mov	a,r6
      00277E 12 35 86         [24] 1849 	lcall	__gptrput
      002781 90 00 12         [24] 1850 	mov	dptr,#_gets_s_65536_98
      002784 74 01            [12] 1851 	mov	a,#0x01
      002786 2C               [12] 1852 	add	a,r4
      002787 F0               [24] 1853 	movx	@dptr,a
      002788 E4               [12] 1854 	clr	a
      002789 3D               [12] 1855 	addc	a,r5
      00278A A3               [24] 1856 	inc	dptr
      00278B F0               [24] 1857 	movx	@dptr,a
      00278C EF               [12] 1858 	mov	a,r7
      00278D A3               [24] 1859 	inc	dptr
      00278E F0               [24] 1860 	movx	@dptr,a
                                   1861 ;	lcdCommands.c:230: ++count;
      00278F 90 00 15         [24] 1862 	mov	dptr,#_gets_count_65536_99
      002792 E0               [24] 1863 	movx	a,@dptr
      002793 24 01            [12] 1864 	add	a,#0x01
      002795 F0               [24] 1865 	movx	@dptr,a
      002796 A3               [24] 1866 	inc	dptr
      002797 E0               [24] 1867 	movx	a,@dptr
      002798 34 00            [12] 1868 	addc	a,#0x00
      00279A F0               [24] 1869 	movx	@dptr,a
                                   1870 ;	lcdCommands.c:231: putchar (c);
      00279B 7F 00            [12] 1871 	mov	r7,#0x00
      00279D 8E 82            [24] 1872 	mov	dpl,r6
      00279F 8F 83            [24] 1873 	mov	dph,r7
      0027A1 12 33 39         [24] 1874 	lcall	_putchar
                                   1875 ;	lcdCommands.c:233: }
      0027A4                       1876 00107$:
                                   1877 ;	lcdCommands.c:234: if (count == 48)
      0027A4 90 00 15         [24] 1878 	mov	dptr,#_gets_count_65536_99
      0027A7 E0               [24] 1879 	movx	a,@dptr
      0027A8 FE               [12] 1880 	mov	r6,a
      0027A9 A3               [24] 1881 	inc	dptr
      0027AA E0               [24] 1882 	movx	a,@dptr
      0027AB FF               [12] 1883 	mov	r7,a
      0027AC BE 30 05         [24] 1884 	cjne	r6,#0x30,00144$
      0027AF BF 00 02         [24] 1885 	cjne	r7,#0x00,00144$
      0027B2 80 03            [24] 1886 	sjmp	00145$
      0027B4                       1887 00144$:
      0027B4 02 26 D1         [24] 1888 	ljmp	00111$
      0027B7                       1889 00145$:
                                   1890 ;	lcdCommands.c:236: printf("\n\rPlease Input a maximum of 48 characters\n\r");
      0027B7 74 76            [12] 1891 	mov	a,#___str_9
      0027B9 C0 E0            [24] 1892 	push	acc
      0027BB 74 46            [12] 1893 	mov	a,#(___str_9 >> 8)
      0027BD C0 E0            [24] 1894 	push	acc
      0027BF 74 80            [12] 1895 	mov	a,#0x80
      0027C1 C0 E0            [24] 1896 	push	acc
      0027C3 12 39 2B         [24] 1897 	lcall	_printf
      0027C6 15 81            [12] 1898 	dec	sp
      0027C8 15 81            [12] 1899 	dec	sp
      0027CA 15 81            [12] 1900 	dec	sp
                                   1901 ;	lcdCommands.c:237: break;
                                   1902 ;	lcdCommands.c:240: }
      0027CC 22               [24] 1903 	ret
                                   1904 ;------------------------------------------------------------
                                   1905 ;Allocation info for local variables in function 'ramDump'
                                   1906 ;------------------------------------------------------------
                                   1907 ;i                         Allocated with name '_ramDump_i_65536_104'
                                   1908 ;j                         Allocated with name '_ramDump_j_65536_104'
                                   1909 ;x                         Allocated with name '_ramDump_x_196609_107'
                                   1910 ;x                         Allocated with name '_ramDump_x_196609_112'
                                   1911 ;------------------------------------------------------------
                                   1912 ;	lcdCommands.c:242: void ramDump()
                                   1913 ;	-----------------------------------------
                                   1914 ;	 function ramDump
                                   1915 ;	-----------------------------------------
      0027CD                       1916 _ramDump:
                                   1917 ;	lcdCommands.c:246: printf_tiny("\n\rDDRAM Contents\n\r");
      0027CD 74 A2            [12] 1918 	mov	a,#___str_10
      0027CF C0 E0            [24] 1919 	push	acc
      0027D1 74 46            [12] 1920 	mov	a,#(___str_10 >> 8)
      0027D3 C0 E0            [24] 1921 	push	acc
      0027D5 12 35 A1         [24] 1922 	lcall	_printf_tiny
      0027D8 15 81            [12] 1923 	dec	sp
      0027DA 15 81            [12] 1924 	dec	sp
                                   1925 ;	lcdCommands.c:247: for (i = 0; i < 128; i += 16)      //Print 64 ASCII characters in each line
      0027DC 90 00 17         [24] 1926 	mov	dptr,#_ramDump_i_65536_104
      0027DF E4               [12] 1927 	clr	a
      0027E0 F0               [24] 1928 	movx	@dptr,a
      0027E1                       1929 00109$:
                                   1930 ;	lcdCommands.c:249: lcdGeneral = 0x80 | i;
      0027E1 90 00 17         [24] 1931 	mov	dptr,#_ramDump_i_65536_104
      0027E4 E0               [24] 1932 	movx	a,@dptr
      0027E5 FF               [12] 1933 	mov	r7,a
      0027E6 FD               [12] 1934 	mov	r5,a
      0027E7 7E 00            [12] 1935 	mov	r6,#0x00
      0027E9 90 F0 00         [24] 1936 	mov	dptr,#_lcdGeneral
      0027EC 74 80            [12] 1937 	mov	a,#0x80
      0027EE 4D               [12] 1938 	orl	a,r5
      0027EF F0               [24] 1939 	movx	@dptr,a
      0027F0 EE               [12] 1940 	mov	a,r6
      0027F1 A3               [24] 1941 	inc	dptr
      0027F2 F0               [24] 1942 	movx	@dptr,a
                                   1943 ;	lcdCommands.c:250: uint8_t x = readLCD();
      0027F3 C0 07            [24] 1944 	push	ar7
      0027F5 C0 06            [24] 1945 	push	ar6
      0027F7 C0 05            [24] 1946 	push	ar5
      0027F9 12 25 42         [24] 1947 	lcall	_readLCD
      0027FC AC 82            [24] 1948 	mov	r4,dpl
      0027FE D0 05            [24] 1949 	pop	ar5
      002800 D0 06            [24] 1950 	pop	ar6
                                   1951 ;	lcdCommands.c:251: printf("%2x: ",i);
      002802 C0 06            [24] 1952 	push	ar6
      002804 C0 05            [24] 1953 	push	ar5
      002806 C0 04            [24] 1954 	push	ar4
      002808 C0 05            [24] 1955 	push	ar5
      00280A C0 06            [24] 1956 	push	ar6
      00280C 74 B5            [12] 1957 	mov	a,#___str_11
      00280E C0 E0            [24] 1958 	push	acc
      002810 74 46            [12] 1959 	mov	a,#(___str_11 >> 8)
      002812 C0 E0            [24] 1960 	push	acc
      002814 74 80            [12] 1961 	mov	a,#0x80
      002816 C0 E0            [24] 1962 	push	acc
      002818 12 39 2B         [24] 1963 	lcall	_printf
      00281B E5 81            [12] 1964 	mov	a,sp
      00281D 24 FB            [12] 1965 	add	a,#0xfb
      00281F F5 81            [12] 1966 	mov	sp,a
      002821 D0 04            [24] 1967 	pop	ar4
      002823 D0 05            [24] 1968 	pop	ar5
      002825 D0 06            [24] 1969 	pop	ar6
      002827 D0 07            [24] 1970 	pop	ar7
                                   1971 ;	lcdCommands.c:252: for (j = i; j < (i+16) && j < 128; j++)    //Print the contents of buffer in ASCII
      002829                       1972 00107$:
      002829 8F 02            [24] 1973 	mov	ar2,r7
      00282B 7B 00            [12] 1974 	mov	r3,#0x00
      00282D 74 10            [12] 1975 	mov	a,#0x10
      00282F 2A               [12] 1976 	add	a,r2
      002830 FA               [12] 1977 	mov	r2,a
      002831 E4               [12] 1978 	clr	a
      002832 3B               [12] 1979 	addc	a,r3
      002833 FB               [12] 1980 	mov	r3,a
      002834 C3               [12] 1981 	clr	c
      002835 ED               [12] 1982 	mov	a,r5
      002836 9A               [12] 1983 	subb	a,r2
      002837 EE               [12] 1984 	mov	a,r6
      002838 64 80            [12] 1985 	xrl	a,#0x80
      00283A 8B F0            [24] 1986 	mov	b,r3
      00283C 63 F0 80         [24] 1987 	xrl	b,#0x80
      00283F 95 F0            [12] 1988 	subb	a,b
      002841 50 3F            [24] 1989 	jnc	00101$
      002843 C3               [12] 1990 	clr	c
      002844 ED               [12] 1991 	mov	a,r5
      002845 94 80            [12] 1992 	subb	a,#0x80
      002847 EE               [12] 1993 	mov	a,r6
      002848 64 80            [12] 1994 	xrl	a,#0x80
      00284A 94 80            [12] 1995 	subb	a,#0x80
      00284C 50 34            [24] 1996 	jnc	00101$
                                   1997 ;	lcdCommands.c:254: printf("%2x ", x);
      00284E 8C 02            [24] 1998 	mov	ar2,r4
      002850 7B 00            [12] 1999 	mov	r3,#0x00
      002852 C0 07            [24] 2000 	push	ar7
      002854 C0 06            [24] 2001 	push	ar6
      002856 C0 05            [24] 2002 	push	ar5
      002858 C0 04            [24] 2003 	push	ar4
      00285A C0 02            [24] 2004 	push	ar2
      00285C C0 03            [24] 2005 	push	ar3
      00285E 74 BB            [12] 2006 	mov	a,#___str_12
      002860 C0 E0            [24] 2007 	push	acc
      002862 74 46            [12] 2008 	mov	a,#(___str_12 >> 8)
      002864 C0 E0            [24] 2009 	push	acc
      002866 74 80            [12] 2010 	mov	a,#0x80
      002868 C0 E0            [24] 2011 	push	acc
      00286A 12 39 2B         [24] 2012 	lcall	_printf
      00286D E5 81            [12] 2013 	mov	a,sp
      00286F 24 FB            [12] 2014 	add	a,#0xfb
      002871 F5 81            [12] 2015 	mov	sp,a
      002873 D0 04            [24] 2016 	pop	ar4
      002875 D0 05            [24] 2017 	pop	ar5
      002877 D0 06            [24] 2018 	pop	ar6
      002879 D0 07            [24] 2019 	pop	ar7
                                   2020 ;	lcdCommands.c:252: for (j = i; j < (i+16) && j < 128; j++)    //Print the contents of buffer in ASCII
      00287B 0D               [12] 2021 	inc	r5
      00287C BD 00 AA         [24] 2022 	cjne	r5,#0x00,00107$
      00287F 0E               [12] 2023 	inc	r6
      002880 80 A7            [24] 2024 	sjmp	00107$
      002882                       2025 00101$:
                                   2026 ;	lcdCommands.c:256: printf_tiny("\n\r");
      002882 74 C0            [12] 2027 	mov	a,#___str_13
      002884 C0 E0            [24] 2028 	push	acc
      002886 74 46            [12] 2029 	mov	a,#(___str_13 >> 8)
      002888 C0 E0            [24] 2030 	push	acc
      00288A 12 35 A1         [24] 2031 	lcall	_printf_tiny
      00288D 15 81            [12] 2032 	dec	sp
      00288F 15 81            [12] 2033 	dec	sp
                                   2034 ;	lcdCommands.c:247: for (i = 0; i < 128; i += 16)      //Print 64 ASCII characters in each line
      002891 90 00 17         [24] 2035 	mov	dptr,#_ramDump_i_65536_104
      002894 E0               [24] 2036 	movx	a,@dptr
      002895 24 10            [12] 2037 	add	a,#0x10
      002897 F0               [24] 2038 	movx	@dptr,a
      002898 E0               [24] 2039 	movx	a,@dptr
      002899 FF               [12] 2040 	mov	r7,a
      00289A BF 80 00         [24] 2041 	cjne	r7,#0x80,00160$
      00289D                       2042 00160$:
      00289D 50 03            [24] 2043 	jnc	00161$
      00289F 02 27 E1         [24] 2044 	ljmp	00109$
      0028A2                       2045 00161$:
                                   2046 ;	lcdCommands.c:258: printf_tiny("\n\rCGRAM Contents\n\r");
      0028A2 74 C3            [12] 2047 	mov	a,#___str_14
      0028A4 C0 E0            [24] 2048 	push	acc
      0028A6 74 46            [12] 2049 	mov	a,#(___str_14 >> 8)
      0028A8 C0 E0            [24] 2050 	push	acc
      0028AA 12 35 A1         [24] 2051 	lcall	_printf_tiny
      0028AD 15 81            [12] 2052 	dec	sp
      0028AF 15 81            [12] 2053 	dec	sp
                                   2054 ;	lcdCommands.c:259: for (i = 0; i < 64; i += 16)      //Print 64 ASCII characters in each line
      0028B1 90 00 17         [24] 2055 	mov	dptr,#_ramDump_i_65536_104
      0028B4 E4               [12] 2056 	clr	a
      0028B5 F0               [24] 2057 	movx	@dptr,a
      0028B6                       2058 00115$:
                                   2059 ;	lcdCommands.c:261: lcdGeneral = 0x40 | i;
      0028B6 90 00 17         [24] 2060 	mov	dptr,#_ramDump_i_65536_104
      0028B9 E0               [24] 2061 	movx	a,@dptr
      0028BA FF               [12] 2062 	mov	r7,a
      0028BB FD               [12] 2063 	mov	r5,a
      0028BC 7E 00            [12] 2064 	mov	r6,#0x00
      0028BE 90 F0 00         [24] 2065 	mov	dptr,#_lcdGeneral
      0028C1 74 40            [12] 2066 	mov	a,#0x40
      0028C3 4D               [12] 2067 	orl	a,r5
      0028C4 F0               [24] 2068 	movx	@dptr,a
      0028C5 EE               [12] 2069 	mov	a,r6
      0028C6 A3               [24] 2070 	inc	dptr
      0028C7 F0               [24] 2071 	movx	@dptr,a
                                   2072 ;	lcdCommands.c:262: uint8_t x = readLCD();
      0028C8 C0 07            [24] 2073 	push	ar7
      0028CA C0 06            [24] 2074 	push	ar6
      0028CC C0 05            [24] 2075 	push	ar5
      0028CE 12 25 42         [24] 2076 	lcall	_readLCD
      0028D1 AC 82            [24] 2077 	mov	r4,dpl
      0028D3 D0 05            [24] 2078 	pop	ar5
      0028D5 D0 06            [24] 2079 	pop	ar6
                                   2080 ;	lcdCommands.c:263: printf("%2x: ",i);
      0028D7 C0 06            [24] 2081 	push	ar6
      0028D9 C0 05            [24] 2082 	push	ar5
      0028DB C0 04            [24] 2083 	push	ar4
      0028DD C0 05            [24] 2084 	push	ar5
      0028DF C0 06            [24] 2085 	push	ar6
      0028E1 74 B5            [12] 2086 	mov	a,#___str_11
      0028E3 C0 E0            [24] 2087 	push	acc
      0028E5 74 46            [12] 2088 	mov	a,#(___str_11 >> 8)
      0028E7 C0 E0            [24] 2089 	push	acc
      0028E9 74 80            [12] 2090 	mov	a,#0x80
      0028EB C0 E0            [24] 2091 	push	acc
      0028ED 12 39 2B         [24] 2092 	lcall	_printf
      0028F0 E5 81            [12] 2093 	mov	a,sp
      0028F2 24 FB            [12] 2094 	add	a,#0xfb
      0028F4 F5 81            [12] 2095 	mov	sp,a
      0028F6 D0 04            [24] 2096 	pop	ar4
      0028F8 D0 05            [24] 2097 	pop	ar5
      0028FA D0 06            [24] 2098 	pop	ar6
      0028FC D0 07            [24] 2099 	pop	ar7
                                   2100 ;	lcdCommands.c:264: for (j = i; j < (i+16) && j < 64; j++)    //Print the contents of buffer in ASCII
      0028FE                       2101 00113$:
      0028FE 8F 02            [24] 2102 	mov	ar2,r7
      002900 7B 00            [12] 2103 	mov	r3,#0x00
      002902 74 10            [12] 2104 	mov	a,#0x10
      002904 2A               [12] 2105 	add	a,r2
      002905 FA               [12] 2106 	mov	r2,a
      002906 E4               [12] 2107 	clr	a
      002907 3B               [12] 2108 	addc	a,r3
      002908 FB               [12] 2109 	mov	r3,a
      002909 C3               [12] 2110 	clr	c
      00290A ED               [12] 2111 	mov	a,r5
      00290B 9A               [12] 2112 	subb	a,r2
      00290C EE               [12] 2113 	mov	a,r6
      00290D 64 80            [12] 2114 	xrl	a,#0x80
      00290F 8B F0            [24] 2115 	mov	b,r3
      002911 63 F0 80         [24] 2116 	xrl	b,#0x80
      002914 95 F0            [12] 2117 	subb	a,b
      002916 50 3F            [24] 2118 	jnc	00103$
      002918 C3               [12] 2119 	clr	c
      002919 ED               [12] 2120 	mov	a,r5
      00291A 94 40            [12] 2121 	subb	a,#0x40
      00291C EE               [12] 2122 	mov	a,r6
      00291D 64 80            [12] 2123 	xrl	a,#0x80
      00291F 94 80            [12] 2124 	subb	a,#0x80
      002921 50 34            [24] 2125 	jnc	00103$
                                   2126 ;	lcdCommands.c:266: printf("%2x ", x);
      002923 8C 02            [24] 2127 	mov	ar2,r4
      002925 7B 00            [12] 2128 	mov	r3,#0x00
      002927 C0 07            [24] 2129 	push	ar7
      002929 C0 06            [24] 2130 	push	ar6
      00292B C0 05            [24] 2131 	push	ar5
      00292D C0 04            [24] 2132 	push	ar4
      00292F C0 02            [24] 2133 	push	ar2
      002931 C0 03            [24] 2134 	push	ar3
      002933 74 BB            [12] 2135 	mov	a,#___str_12
      002935 C0 E0            [24] 2136 	push	acc
      002937 74 46            [12] 2137 	mov	a,#(___str_12 >> 8)
      002939 C0 E0            [24] 2138 	push	acc
      00293B 74 80            [12] 2139 	mov	a,#0x80
      00293D C0 E0            [24] 2140 	push	acc
      00293F 12 39 2B         [24] 2141 	lcall	_printf
      002942 E5 81            [12] 2142 	mov	a,sp
      002944 24 FB            [12] 2143 	add	a,#0xfb
      002946 F5 81            [12] 2144 	mov	sp,a
      002948 D0 04            [24] 2145 	pop	ar4
      00294A D0 05            [24] 2146 	pop	ar5
      00294C D0 06            [24] 2147 	pop	ar6
      00294E D0 07            [24] 2148 	pop	ar7
                                   2149 ;	lcdCommands.c:264: for (j = i; j < (i+16) && j < 64; j++)    //Print the contents of buffer in ASCII
      002950 0D               [12] 2150 	inc	r5
      002951 BD 00 AA         [24] 2151 	cjne	r5,#0x00,00113$
      002954 0E               [12] 2152 	inc	r6
      002955 80 A7            [24] 2153 	sjmp	00113$
      002957                       2154 00103$:
                                   2155 ;	lcdCommands.c:268: printf_tiny("\n\r");
      002957 74 C0            [12] 2156 	mov	a,#___str_13
      002959 C0 E0            [24] 2157 	push	acc
      00295B 74 46            [12] 2158 	mov	a,#(___str_13 >> 8)
      00295D C0 E0            [24] 2159 	push	acc
      00295F 12 35 A1         [24] 2160 	lcall	_printf_tiny
      002962 15 81            [12] 2161 	dec	sp
      002964 15 81            [12] 2162 	dec	sp
                                   2163 ;	lcdCommands.c:259: for (i = 0; i < 64; i += 16)      //Print 64 ASCII characters in each line
      002966 90 00 17         [24] 2164 	mov	dptr,#_ramDump_i_65536_104
      002969 E0               [24] 2165 	movx	a,@dptr
      00296A 24 10            [12] 2166 	add	a,#0x10
      00296C F0               [24] 2167 	movx	@dptr,a
      00296D E0               [24] 2168 	movx	a,@dptr
      00296E FF               [12] 2169 	mov	r7,a
      00296F BF 40 00         [24] 2170 	cjne	r7,#0x40,00165$
      002972                       2171 00165$:
      002972 50 03            [24] 2172 	jnc	00166$
      002974 02 28 B6         [24] 2173 	ljmp	00115$
      002977                       2174 00166$:
                                   2175 ;	lcdCommands.c:270: }
      002977 22               [24] 2176 	ret
                                   2177 ;------------------------------------------------------------
                                   2178 ;Allocation info for local variables in function 'gamePacman'
                                   2179 ;------------------------------------------------------------
                                   2180 ;ch                        Allocated with name '_gamePacman_ch_65536_115'
                                   2181 ;i                         Allocated with name '_gamePacman_i_65536_115'
                                   2182 ;------------------------------------------------------------
                                   2183 ;	lcdCommands.c:272: void gamePacman()
                                   2184 ;	-----------------------------------------
                                   2185 ;	 function gamePacman
                                   2186 ;	-----------------------------------------
      002978                       2187 _gamePacman:
                                   2188 ;	lcdCommands.c:275: int i = 1;
      002978 90 00 18         [24] 2189 	mov	dptr,#_gamePacman_i_65536_115
      00297B 74 01            [12] 2190 	mov	a,#0x01
      00297D F0               [24] 2191 	movx	@dptr,a
      00297E E4               [12] 2192 	clr	a
      00297F A3               [24] 2193 	inc	dptr
      002980 F0               [24] 2194 	movx	@dptr,a
                                   2195 ;	lcdCommands.c:276: makePacmanRight();
      002981 12 2B E4         [24] 2196 	lcall	_makePacmanRight
                                   2197 ;	lcdCommands.c:277: makePacmanLeft();
      002984 12 2C CA         [24] 2198 	lcall	_makePacmanLeft
                                   2199 ;	lcdCommands.c:278: goToAddr(lookUpTable[0][4]);
      002987 90 45 65         [24] 2200 	mov	dptr,#(_lookUpTable + 0x0004)
      00298A E4               [12] 2201 	clr	a
      00298B 93               [24] 2202 	movc	a,@a+dptr
      00298C F5 82            [12] 2203 	mov	dpl,a
      00298E 12 21 1A         [24] 2204 	lcall	_goToAddr
                                   2205 ;	lcdCommands.c:279: lcdPutCh('*');
      002991 75 82 2A         [24] 2206 	mov	dpl,#0x2a
      002994 12 20 F8         [24] 2207 	lcall	_lcdPutCh
                                   2208 ;	lcdCommands.c:280: goToAddr(lookUpTable[0][5]);
      002997 90 45 66         [24] 2209 	mov	dptr,#(_lookUpTable + 0x0005)
      00299A E4               [12] 2210 	clr	a
      00299B 93               [24] 2211 	movc	a,@a+dptr
      00299C F5 82            [12] 2212 	mov	dpl,a
      00299E 12 21 1A         [24] 2213 	lcall	_goToAddr
                                   2214 ;	lcdCommands.c:281: lcdPutCh('*');
      0029A1 75 82 2A         [24] 2215 	mov	dpl,#0x2a
      0029A4 12 20 F8         [24] 2216 	lcall	_lcdPutCh
                                   2217 ;	lcdCommands.c:282: goToAddr(lookUpTable[0][8]);
      0029A7 90 45 69         [24] 2218 	mov	dptr,#(_lookUpTable + 0x0008)
      0029AA E4               [12] 2219 	clr	a
      0029AB 93               [24] 2220 	movc	a,@a+dptr
      0029AC F5 82            [12] 2221 	mov	dpl,a
      0029AE 12 21 1A         [24] 2222 	lcall	_goToAddr
                                   2223 ;	lcdCommands.c:283: lcdPutCh('*');
      0029B1 75 82 2A         [24] 2224 	mov	dpl,#0x2a
      0029B4 12 20 F8         [24] 2225 	lcall	_lcdPutCh
                                   2226 ;	lcdCommands.c:284: goToAddr(lookUpTable[0][9]);
      0029B7 90 45 6A         [24] 2227 	mov	dptr,#(_lookUpTable + 0x0009)
      0029BA E4               [12] 2228 	clr	a
      0029BB 93               [24] 2229 	movc	a,@a+dptr
      0029BC F5 82            [12] 2230 	mov	dpl,a
      0029BE 12 21 1A         [24] 2231 	lcall	_goToAddr
                                   2232 ;	lcdCommands.c:285: lcdPutCh('*');
      0029C1 75 82 2A         [24] 2233 	mov	dpl,#0x2a
      0029C4 12 20 F8         [24] 2234 	lcall	_lcdPutCh
                                   2235 ;	lcdCommands.c:286: goToAddr(lookUpTable[0][12]);
      0029C7 90 45 6D         [24] 2236 	mov	dptr,#(_lookUpTable + 0x000c)
      0029CA E4               [12] 2237 	clr	a
      0029CB 93               [24] 2238 	movc	a,@a+dptr
      0029CC F5 82            [12] 2239 	mov	dpl,a
      0029CE 12 21 1A         [24] 2240 	lcall	_goToAddr
                                   2241 ;	lcdCommands.c:287: lcdPutCh('*');
      0029D1 75 82 2A         [24] 2242 	mov	dpl,#0x2a
      0029D4 12 20 F8         [24] 2243 	lcall	_lcdPutCh
                                   2244 ;	lcdCommands.c:288: goToAddr(lookUpTable[0][13]);
      0029D7 90 45 6E         [24] 2245 	mov	dptr,#(_lookUpTable + 0x000d)
      0029DA E4               [12] 2246 	clr	a
      0029DB 93               [24] 2247 	movc	a,@a+dptr
      0029DC F5 82            [12] 2248 	mov	dpl,a
      0029DE 12 21 1A         [24] 2249 	lcall	_goToAddr
                                   2250 ;	lcdCommands.c:289: lcdPutCh('*');
      0029E1 75 82 2A         [24] 2251 	mov	dpl,#0x2a
      0029E4 12 20 F8         [24] 2252 	lcall	_lcdPutCh
                                   2253 ;	lcdCommands.c:290: goToAddr(lookUpTable[0][14]);
      0029E7 90 45 6F         [24] 2254 	mov	dptr,#(_lookUpTable + 0x000e)
      0029EA E4               [12] 2255 	clr	a
      0029EB 93               [24] 2256 	movc	a,@a+dptr
      0029EC F5 82            [12] 2257 	mov	dpl,a
      0029EE 12 21 1A         [24] 2258 	lcall	_goToAddr
                                   2259 ;	lcdCommands.c:291: lcdPutCh('*');
      0029F1 75 82 2A         [24] 2260 	mov	dpl,#0x2a
      0029F4 12 20 F8         [24] 2261 	lcall	_lcdPutCh
                                   2262 ;	lcdCommands.c:292: goToAddr(lookUpTable[1][1]);
      0029F7 90 45 72         [24] 2263 	mov	dptr,#(_lookUpTable + 0x0011)
      0029FA E4               [12] 2264 	clr	a
      0029FB 93               [24] 2265 	movc	a,@a+dptr
      0029FC F5 82            [12] 2266 	mov	dpl,a
      0029FE 12 21 1A         [24] 2267 	lcall	_goToAddr
                                   2268 ;	lcdCommands.c:293: lcdPutCh('*');
      002A01 75 82 2A         [24] 2269 	mov	dpl,#0x2a
      002A04 12 20 F8         [24] 2270 	lcall	_lcdPutCh
                                   2271 ;	lcdCommands.c:294: goToAddr(lookUpTable[1][2]);
      002A07 90 45 73         [24] 2272 	mov	dptr,#(_lookUpTable + 0x0012)
      002A0A E4               [12] 2273 	clr	a
      002A0B 93               [24] 2274 	movc	a,@a+dptr
      002A0C F5 82            [12] 2275 	mov	dpl,a
      002A0E 12 21 1A         [24] 2276 	lcall	_goToAddr
                                   2277 ;	lcdCommands.c:295: lcdPutCh('*');
      002A11 75 82 2A         [24] 2278 	mov	dpl,#0x2a
      002A14 12 20 F8         [24] 2279 	lcall	_lcdPutCh
                                   2280 ;	lcdCommands.c:296: goToAddr(lookUpTable[1][3]);
      002A17 90 45 74         [24] 2281 	mov	dptr,#(_lookUpTable + 0x0013)
      002A1A E4               [12] 2282 	clr	a
      002A1B 93               [24] 2283 	movc	a,@a+dptr
      002A1C F5 82            [12] 2284 	mov	dpl,a
      002A1E 12 21 1A         [24] 2285 	lcall	_goToAddr
                                   2286 ;	lcdCommands.c:297: lcdPutCh('*');
      002A21 75 82 2A         [24] 2287 	mov	dpl,#0x2a
      002A24 12 20 F8         [24] 2288 	lcall	_lcdPutCh
                                   2289 ;	lcdCommands.c:298: goToAddr(lookUpTable[1][12]);
      002A27 90 45 7D         [24] 2290 	mov	dptr,#(_lookUpTable + 0x001c)
      002A2A E4               [12] 2291 	clr	a
      002A2B 93               [24] 2292 	movc	a,@a+dptr
      002A2C F5 82            [12] 2293 	mov	dpl,a
      002A2E 12 21 1A         [24] 2294 	lcall	_goToAddr
                                   2295 ;	lcdCommands.c:299: lcdPutCh('*');
      002A31 75 82 2A         [24] 2296 	mov	dpl,#0x2a
      002A34 12 20 F8         [24] 2297 	lcall	_lcdPutCh
                                   2298 ;	lcdCommands.c:300: goToAddr(lookUpTable[1][13]);
      002A37 90 45 7E         [24] 2299 	mov	dptr,#(_lookUpTable + 0x001d)
      002A3A E4               [12] 2300 	clr	a
      002A3B 93               [24] 2301 	movc	a,@a+dptr
      002A3C F5 82            [12] 2302 	mov	dpl,a
      002A3E 12 21 1A         [24] 2303 	lcall	_goToAddr
                                   2304 ;	lcdCommands.c:301: lcdPutCh('*');
      002A41 75 82 2A         [24] 2305 	mov	dpl,#0x2a
      002A44 12 20 F8         [24] 2306 	lcall	_lcdPutCh
                                   2307 ;	lcdCommands.c:302: printf_tiny("\n\rEnter w to go up, s to go down, a to go left and d to go right and q to quit\n\r");
      002A47 74 D6            [12] 2308 	mov	a,#___str_15
      002A49 C0 E0            [24] 2309 	push	acc
      002A4B 74 46            [12] 2310 	mov	a,#(___str_15 >> 8)
      002A4D C0 E0            [24] 2311 	push	acc
      002A4F 12 35 A1         [24] 2312 	lcall	_printf_tiny
      002A52 15 81            [12] 2313 	dec	sp
      002A54 15 81            [12] 2314 	dec	sp
                                   2315 ;	lcdCommands.c:303: do{
      002A56                       2316 00109$:
                                   2317 ;	lcdCommands.c:304: ch = getchar();
      002A56 12 33 6A         [24] 2318 	lcall	_getchar
      002A59 AE 82            [24] 2319 	mov	r6,dpl
      002A5B AF 83            [24] 2320 	mov	r7,dph
                                   2321 ;	lcdCommands.c:305: if(ch == 'd')
      002A5D BE 64 02         [24] 2322 	cjne	r6,#0x64,00134$
      002A60 80 03            [24] 2323 	sjmp	00135$
      002A62                       2324 00134$:
      002A62 02 2B 06         [24] 2325 	ljmp	00104$
      002A65                       2326 00135$:
                                   2327 ;	lcdCommands.c:307: putchar(7);
      002A65 90 00 07         [24] 2328 	mov	dptr,#0x0007
      002A68 C0 06            [24] 2329 	push	ar6
      002A6A 12 33 39         [24] 2330 	lcall	_putchar
      002A6D D0 06            [24] 2331 	pop	ar6
                                   2332 ;	lcdCommands.c:308: goToAddr(lookUpTable[0][i-1]);
      002A6F 90 00 18         [24] 2333 	mov	dptr,#_gamePacman_i_65536_115
      002A72 E0               [24] 2334 	movx	a,@dptr
      002A73 FD               [12] 2335 	mov	r5,a
      002A74 A3               [24] 2336 	inc	dptr
      002A75 E0               [24] 2337 	movx	a,@dptr
      002A76 FF               [12] 2338 	mov	r7,a
      002A77 8D 04            [24] 2339 	mov	ar4,r5
      002A79 EC               [12] 2340 	mov	a,r4
      002A7A 14               [12] 2341 	dec	a
      002A7B 90 45 61         [24] 2342 	mov	dptr,#_lookUpTable
      002A7E 93               [24] 2343 	movc	a,@a+dptr
      002A7F F5 82            [12] 2344 	mov	dpl,a
      002A81 C0 07            [24] 2345 	push	ar7
      002A83 C0 06            [24] 2346 	push	ar6
      002A85 C0 05            [24] 2347 	push	ar5
      002A87 12 21 1A         [24] 2348 	lcall	_goToAddr
                                   2349 ;	lcdCommands.c:309: busyWait();
      002A8A 12 20 8B         [24] 2350 	lcall	_busyWait
                                   2351 ;	lcdCommands.c:310: lcdPutCh(' ');
      002A8D 75 82 20         [24] 2352 	mov	dpl,#0x20
      002A90 12 20 F8         [24] 2353 	lcall	_lcdPutCh
                                   2354 ;	lcdCommands.c:311: busyWait();
      002A93 12 20 8B         [24] 2355 	lcall	_busyWait
      002A96 D0 05            [24] 2356 	pop	ar5
      002A98 D0 06            [24] 2357 	pop	ar6
      002A9A D0 07            [24] 2358 	pop	ar7
                                   2359 ;	lcdCommands.c:312: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      002A9C ED               [12] 2360 	mov	a,r5
      002A9D 24 61            [12] 2361 	add	a,#_lookUpTable
      002A9F F5 82            [12] 2362 	mov	dpl,a
      002AA1 EF               [12] 2363 	mov	a,r7
      002AA2 34 45            [12] 2364 	addc	a,#(_lookUpTable >> 8)
      002AA4 F5 83            [12] 2365 	mov	dph,a
      002AA6 E4               [12] 2366 	clr	a
      002AA7 93               [24] 2367 	movc	a,@a+dptr
      002AA8 FC               [12] 2368 	mov	r4,a
      002AA9 7B 00            [12] 2369 	mov	r3,#0x00
      002AAB 90 F0 00         [24] 2370 	mov	dptr,#_lcdGeneral
      002AAE 74 80            [12] 2371 	mov	a,#0x80
      002AB0 4C               [12] 2372 	orl	a,r4
      002AB1 F0               [24] 2373 	movx	@dptr,a
      002AB2 EB               [12] 2374 	mov	a,r3
      002AB3 A3               [24] 2375 	inc	dptr
      002AB4 F0               [24] 2376 	movx	@dptr,a
                                   2377 ;	lcdCommands.c:313: busyWait();
      002AB5 C0 07            [24] 2378 	push	ar7
      002AB7 C0 06            [24] 2379 	push	ar6
      002AB9 C0 05            [24] 2380 	push	ar5
      002ABB 12 20 8B         [24] 2381 	lcall	_busyWait
                                   2382 ;	lcdCommands.c:314: writeCharacter = 0x00;
      002ABE 90 F1 00         [24] 2383 	mov	dptr,#_writeCharacter
      002AC1 E4               [12] 2384 	clr	a
      002AC2 F0               [24] 2385 	movx	@dptr,a
      002AC3 A3               [24] 2386 	inc	dptr
      002AC4 F0               [24] 2387 	movx	@dptr,a
                                   2388 ;	lcdCommands.c:315: busyWait();
      002AC5 12 20 8B         [24] 2389 	lcall	_busyWait
      002AC8 D0 05            [24] 2390 	pop	ar5
      002ACA D0 06            [24] 2391 	pop	ar6
      002ACC D0 07            [24] 2392 	pop	ar7
                                   2393 ;	lcdCommands.c:316: if(i >= 47)
      002ACE C3               [12] 2394 	clr	c
      002ACF ED               [12] 2395 	mov	a,r5
      002AD0 94 2F            [12] 2396 	subb	a,#0x2f
      002AD2 EF               [12] 2397 	mov	a,r7
      002AD3 64 80            [12] 2398 	xrl	a,#0x80
      002AD5 94 80            [12] 2399 	subb	a,#0x80
      002AD7 40 21            [24] 2400 	jc	00102$
                                   2401 ;	lcdCommands.c:318: goToAddr(lookUpTable[2][15]);
      002AD9 90 45 90         [24] 2402 	mov	dptr,#(_lookUpTable + 0x002f)
      002ADC E4               [12] 2403 	clr	a
      002ADD 93               [24] 2404 	movc	a,@a+dptr
      002ADE F5 82            [12] 2405 	mov	dpl,a
      002AE0 C0 06            [24] 2406 	push	ar6
      002AE2 12 21 1A         [24] 2407 	lcall	_goToAddr
                                   2408 ;	lcdCommands.c:319: busyWait();
      002AE5 12 20 8B         [24] 2409 	lcall	_busyWait
                                   2410 ;	lcdCommands.c:320: lcdPutCh(' ');
      002AE8 75 82 20         [24] 2411 	mov	dpl,#0x20
      002AEB 12 20 F8         [24] 2412 	lcall	_lcdPutCh
                                   2413 ;	lcdCommands.c:321: busyWait();
      002AEE 12 20 8B         [24] 2414 	lcall	_busyWait
      002AF1 D0 06            [24] 2415 	pop	ar6
                                   2416 ;	lcdCommands.c:322: i = 0;
      002AF3 90 00 18         [24] 2417 	mov	dptr,#_gamePacman_i_65536_115
      002AF6 E4               [12] 2418 	clr	a
      002AF7 F0               [24] 2419 	movx	@dptr,a
      002AF8 A3               [24] 2420 	inc	dptr
      002AF9 F0               [24] 2421 	movx	@dptr,a
      002AFA                       2422 00102$:
                                   2423 ;	lcdCommands.c:324: i++;
      002AFA 90 00 18         [24] 2424 	mov	dptr,#_gamePacman_i_65536_115
      002AFD E0               [24] 2425 	movx	a,@dptr
      002AFE 24 01            [12] 2426 	add	a,#0x01
      002B00 F0               [24] 2427 	movx	@dptr,a
      002B01 A3               [24] 2428 	inc	dptr
      002B02 E0               [24] 2429 	movx	a,@dptr
      002B03 34 00            [12] 2430 	addc	a,#0x00
      002B05 F0               [24] 2431 	movx	@dptr,a
      002B06                       2432 00104$:
                                   2433 ;	lcdCommands.c:326: i--;
      002B06 90 00 18         [24] 2434 	mov	dptr,#_gamePacman_i_65536_115
      002B09 E0               [24] 2435 	movx	a,@dptr
      002B0A 24 FF            [12] 2436 	add	a,#0xff
      002B0C FD               [12] 2437 	mov	r5,a
      002B0D A3               [24] 2438 	inc	dptr
      002B0E E0               [24] 2439 	movx	a,@dptr
      002B0F 34 FF            [12] 2440 	addc	a,#0xff
      002B11 FF               [12] 2441 	mov	r7,a
      002B12 90 00 18         [24] 2442 	mov	dptr,#_gamePacman_i_65536_115
      002B15 ED               [12] 2443 	mov	a,r5
      002B16 F0               [24] 2444 	movx	@dptr,a
      002B17 EF               [12] 2445 	mov	a,r7
      002B18 A3               [24] 2446 	inc	dptr
      002B19 F0               [24] 2447 	movx	@dptr,a
                                   2448 ;	lcdCommands.c:328: if(ch == 'a')
      002B1A BE 61 02         [24] 2449 	cjne	r6,#0x61,00137$
      002B1D 80 03            [24] 2450 	sjmp	00138$
      002B1F                       2451 00137$:
      002B1F 02 2B D0         [24] 2452 	ljmp	00108$
      002B22                       2453 00138$:
                                   2454 ;	lcdCommands.c:330: putchar(7);
      002B22 90 00 07         [24] 2455 	mov	dptr,#0x0007
      002B25 C0 06            [24] 2456 	push	ar6
      002B27 12 33 39         [24] 2457 	lcall	_putchar
      002B2A D0 06            [24] 2458 	pop	ar6
                                   2459 ;	lcdCommands.c:331: goToAddr(lookUpTable[0][i+1]);
      002B2C 90 00 18         [24] 2460 	mov	dptr,#_gamePacman_i_65536_115
      002B2F E0               [24] 2461 	movx	a,@dptr
      002B30 FD               [12] 2462 	mov	r5,a
      002B31 A3               [24] 2463 	inc	dptr
      002B32 E0               [24] 2464 	movx	a,@dptr
      002B33 FF               [12] 2465 	mov	r7,a
      002B34 8D 04            [24] 2466 	mov	ar4,r5
      002B36 EC               [12] 2467 	mov	a,r4
      002B37 04               [12] 2468 	inc	a
      002B38 90 45 61         [24] 2469 	mov	dptr,#_lookUpTable
      002B3B 93               [24] 2470 	movc	a,@a+dptr
      002B3C F5 82            [12] 2471 	mov	dpl,a
      002B3E C0 07            [24] 2472 	push	ar7
      002B40 C0 06            [24] 2473 	push	ar6
      002B42 C0 05            [24] 2474 	push	ar5
      002B44 12 21 1A         [24] 2475 	lcall	_goToAddr
                                   2476 ;	lcdCommands.c:332: busyWait();
      002B47 12 20 8B         [24] 2477 	lcall	_busyWait
                                   2478 ;	lcdCommands.c:333: lcdPutCh(' ');
      002B4A 75 82 20         [24] 2479 	mov	dpl,#0x20
      002B4D 12 20 F8         [24] 2480 	lcall	_lcdPutCh
                                   2481 ;	lcdCommands.c:334: busyWait();
      002B50 12 20 8B         [24] 2482 	lcall	_busyWait
      002B53 D0 05            [24] 2483 	pop	ar5
      002B55 D0 06            [24] 2484 	pop	ar6
      002B57 D0 07            [24] 2485 	pop	ar7
                                   2486 ;	lcdCommands.c:335: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      002B59 ED               [12] 2487 	mov	a,r5
      002B5A 24 61            [12] 2488 	add	a,#_lookUpTable
      002B5C F5 82            [12] 2489 	mov	dpl,a
      002B5E EF               [12] 2490 	mov	a,r7
      002B5F 34 45            [12] 2491 	addc	a,#(_lookUpTable >> 8)
      002B61 F5 83            [12] 2492 	mov	dph,a
      002B63 E4               [12] 2493 	clr	a
      002B64 93               [24] 2494 	movc	a,@a+dptr
      002B65 FC               [12] 2495 	mov	r4,a
      002B66 7B 00            [12] 2496 	mov	r3,#0x00
      002B68 90 F0 00         [24] 2497 	mov	dptr,#_lcdGeneral
      002B6B 74 80            [12] 2498 	mov	a,#0x80
      002B6D 4C               [12] 2499 	orl	a,r4
      002B6E F0               [24] 2500 	movx	@dptr,a
      002B6F EB               [12] 2501 	mov	a,r3
      002B70 A3               [24] 2502 	inc	dptr
      002B71 F0               [24] 2503 	movx	@dptr,a
                                   2504 ;	lcdCommands.c:336: busyWait();
      002B72 C0 07            [24] 2505 	push	ar7
      002B74 C0 06            [24] 2506 	push	ar6
      002B76 C0 05            [24] 2507 	push	ar5
      002B78 12 20 8B         [24] 2508 	lcall	_busyWait
                                   2509 ;	lcdCommands.c:337: writeCharacter = 0x00;
      002B7B 90 F1 00         [24] 2510 	mov	dptr,#_writeCharacter
      002B7E E4               [12] 2511 	clr	a
      002B7F F0               [24] 2512 	movx	@dptr,a
      002B80 A3               [24] 2513 	inc	dptr
      002B81 F0               [24] 2514 	movx	@dptr,a
                                   2515 ;	lcdCommands.c:338: busyWait();
      002B82 12 20 8B         [24] 2516 	lcall	_busyWait
      002B85 D0 05            [24] 2517 	pop	ar5
      002B87 D0 06            [24] 2518 	pop	ar6
      002B89 D0 07            [24] 2519 	pop	ar7
                                   2520 ;	lcdCommands.c:339: if( i <= 0)
      002B8B C3               [12] 2521 	clr	c
      002B8C E4               [12] 2522 	clr	a
      002B8D 9D               [12] 2523 	subb	a,r5
      002B8E 74 80            [12] 2524 	mov	a,#(0x00 ^ 0x80)
      002B90 8F F0            [24] 2525 	mov	b,r7
      002B92 63 F0 80         [24] 2526 	xrl	b,#0x80
      002B95 95 F0            [12] 2527 	subb	a,b
      002B97 40 23            [24] 2528 	jc	00106$
                                   2529 ;	lcdCommands.c:341: goToAddr(lookUpTable[0][0]);
      002B99 90 45 61         [24] 2530 	mov	dptr,#_lookUpTable
      002B9C E4               [12] 2531 	clr	a
      002B9D 93               [24] 2532 	movc	a,@a+dptr
      002B9E F5 82            [12] 2533 	mov	dpl,a
      002BA0 C0 06            [24] 2534 	push	ar6
      002BA2 12 21 1A         [24] 2535 	lcall	_goToAddr
                                   2536 ;	lcdCommands.c:342: busyWait();
      002BA5 12 20 8B         [24] 2537 	lcall	_busyWait
                                   2538 ;	lcdCommands.c:343: lcdPutCh(' ');
      002BA8 75 82 20         [24] 2539 	mov	dpl,#0x20
      002BAB 12 20 F8         [24] 2540 	lcall	_lcdPutCh
                                   2541 ;	lcdCommands.c:344: busyWait();
      002BAE 12 20 8B         [24] 2542 	lcall	_busyWait
      002BB1 D0 06            [24] 2543 	pop	ar6
                                   2544 ;	lcdCommands.c:345: i = 47;
      002BB3 90 00 18         [24] 2545 	mov	dptr,#_gamePacman_i_65536_115
      002BB6 74 2F            [12] 2546 	mov	a,#0x2f
      002BB8 F0               [24] 2547 	movx	@dptr,a
      002BB9 E4               [12] 2548 	clr	a
      002BBA A3               [24] 2549 	inc	dptr
      002BBB F0               [24] 2550 	movx	@dptr,a
      002BBC                       2551 00106$:
                                   2552 ;	lcdCommands.c:347: i--;
      002BBC 90 00 18         [24] 2553 	mov	dptr,#_gamePacman_i_65536_115
      002BBF E0               [24] 2554 	movx	a,@dptr
      002BC0 24 FF            [12] 2555 	add	a,#0xff
      002BC2 FD               [12] 2556 	mov	r5,a
      002BC3 A3               [24] 2557 	inc	dptr
      002BC4 E0               [24] 2558 	movx	a,@dptr
      002BC5 34 FF            [12] 2559 	addc	a,#0xff
      002BC7 FF               [12] 2560 	mov	r7,a
      002BC8 90 00 18         [24] 2561 	mov	dptr,#_gamePacman_i_65536_115
      002BCB ED               [12] 2562 	mov	a,r5
      002BCC F0               [24] 2563 	movx	@dptr,a
      002BCD EF               [12] 2564 	mov	a,r7
      002BCE A3               [24] 2565 	inc	dptr
      002BCF F0               [24] 2566 	movx	@dptr,a
      002BD0                       2567 00108$:
                                   2568 ;	lcdCommands.c:349: i++;
      002BD0 90 00 18         [24] 2569 	mov	dptr,#_gamePacman_i_65536_115
      002BD3 E0               [24] 2570 	movx	a,@dptr
      002BD4 24 01            [12] 2571 	add	a,#0x01
      002BD6 F0               [24] 2572 	movx	@dptr,a
      002BD7 A3               [24] 2573 	inc	dptr
      002BD8 E0               [24] 2574 	movx	a,@dptr
      002BD9 34 00            [12] 2575 	addc	a,#0x00
      002BDB F0               [24] 2576 	movx	@dptr,a
                                   2577 ;	lcdCommands.c:350: }while(ch != 'q');
      002BDC BE 71 01         [24] 2578 	cjne	r6,#0x71,00140$
      002BDF 22               [24] 2579 	ret
      002BE0                       2580 00140$:
      002BE0 02 2A 56         [24] 2581 	ljmp	00109$
                                   2582 ;	lcdCommands.c:351: }
      002BE3 22               [24] 2583 	ret
                                   2584 ;------------------------------------------------------------
                                   2585 ;Allocation info for local variables in function 'makePacmanRight'
                                   2586 ;------------------------------------------------------------
                                   2587 ;	lcdCommands.c:353: void makePacmanRight()
                                   2588 ;	-----------------------------------------
                                   2589 ;	 function makePacmanRight
                                   2590 ;	-----------------------------------------
      002BE4                       2591 _makePacmanRight:
                                   2592 ;	lcdCommands.c:355: busyWait();
      002BE4 12 20 8B         [24] 2593 	lcall	_busyWait
                                   2594 ;	lcdCommands.c:356: lcdGeneral = 0x40 | 0x00;
      002BE7 90 F0 00         [24] 2595 	mov	dptr,#_lcdGeneral
      002BEA 74 40            [12] 2596 	mov	a,#0x40
      002BEC F0               [24] 2597 	movx	@dptr,a
      002BED E4               [12] 2598 	clr	a
      002BEE A3               [24] 2599 	inc	dptr
      002BEF F0               [24] 2600 	movx	@dptr,a
                                   2601 ;	lcdCommands.c:357: busyWait();
      002BF0 12 20 8B         [24] 2602 	lcall	_busyWait
                                   2603 ;	lcdCommands.c:358: writeCharacter = 0x06;
      002BF3 90 F1 00         [24] 2604 	mov	dptr,#_writeCharacter
      002BF6 74 06            [12] 2605 	mov	a,#0x06
      002BF8 F0               [24] 2606 	movx	@dptr,a
      002BF9 E4               [12] 2607 	clr	a
      002BFA A3               [24] 2608 	inc	dptr
      002BFB F0               [24] 2609 	movx	@dptr,a
                                   2610 ;	lcdCommands.c:359: busyWait();
      002BFC 12 20 8B         [24] 2611 	lcall	_busyWait
                                   2612 ;	lcdCommands.c:360: lcdGeneral = 0x40 | 0x01;
      002BFF 90 F0 00         [24] 2613 	mov	dptr,#_lcdGeneral
      002C02 74 41            [12] 2614 	mov	a,#0x41
      002C04 F0               [24] 2615 	movx	@dptr,a
      002C05 E4               [12] 2616 	clr	a
      002C06 A3               [24] 2617 	inc	dptr
      002C07 F0               [24] 2618 	movx	@dptr,a
                                   2619 ;	lcdCommands.c:361: busyWait();
      002C08 12 20 8B         [24] 2620 	lcall	_busyWait
                                   2621 ;	lcdCommands.c:362: writeCharacter = 0x09;
      002C0B 90 F1 00         [24] 2622 	mov	dptr,#_writeCharacter
      002C0E 74 09            [12] 2623 	mov	a,#0x09
      002C10 F0               [24] 2624 	movx	@dptr,a
      002C11 E4               [12] 2625 	clr	a
      002C12 A3               [24] 2626 	inc	dptr
      002C13 F0               [24] 2627 	movx	@dptr,a
                                   2628 ;	lcdCommands.c:363: busyWait();
      002C14 12 20 8B         [24] 2629 	lcall	_busyWait
                                   2630 ;	lcdCommands.c:364: lcdGeneral = 0x40 | 0x02;
      002C17 90 F0 00         [24] 2631 	mov	dptr,#_lcdGeneral
      002C1A 74 42            [12] 2632 	mov	a,#0x42
      002C1C F0               [24] 2633 	movx	@dptr,a
      002C1D E4               [12] 2634 	clr	a
      002C1E A3               [24] 2635 	inc	dptr
      002C1F F0               [24] 2636 	movx	@dptr,a
                                   2637 ;	lcdCommands.c:365: busyWait();
      002C20 12 20 8B         [24] 2638 	lcall	_busyWait
                                   2639 ;	lcdCommands.c:366: writeCharacter = 0x12;
      002C23 90 F1 00         [24] 2640 	mov	dptr,#_writeCharacter
      002C26 74 12            [12] 2641 	mov	a,#0x12
      002C28 F0               [24] 2642 	movx	@dptr,a
      002C29 E4               [12] 2643 	clr	a
      002C2A A3               [24] 2644 	inc	dptr
      002C2B F0               [24] 2645 	movx	@dptr,a
                                   2646 ;	lcdCommands.c:367: busyWait();
      002C2C 12 20 8B         [24] 2647 	lcall	_busyWait
                                   2648 ;	lcdCommands.c:368: lcdGeneral = 0x40 | 0x03;
      002C2F 90 F0 00         [24] 2649 	mov	dptr,#_lcdGeneral
      002C32 74 43            [12] 2650 	mov	a,#0x43
      002C34 F0               [24] 2651 	movx	@dptr,a
      002C35 E4               [12] 2652 	clr	a
      002C36 A3               [24] 2653 	inc	dptr
      002C37 F0               [24] 2654 	movx	@dptr,a
                                   2655 ;	lcdCommands.c:369: busyWait();
      002C38 12 20 8B         [24] 2656 	lcall	_busyWait
                                   2657 ;	lcdCommands.c:370: writeCharacter = 0x14;
      002C3B 90 F1 00         [24] 2658 	mov	dptr,#_writeCharacter
      002C3E 74 14            [12] 2659 	mov	a,#0x14
      002C40 F0               [24] 2660 	movx	@dptr,a
      002C41 E4               [12] 2661 	clr	a
      002C42 A3               [24] 2662 	inc	dptr
      002C43 F0               [24] 2663 	movx	@dptr,a
                                   2664 ;	lcdCommands.c:371: busyWait();
      002C44 12 20 8B         [24] 2665 	lcall	_busyWait
                                   2666 ;	lcdCommands.c:372: lcdGeneral = 0x40 | 0x04;
      002C47 90 F0 00         [24] 2667 	mov	dptr,#_lcdGeneral
      002C4A 74 44            [12] 2668 	mov	a,#0x44
      002C4C F0               [24] 2669 	movx	@dptr,a
      002C4D E4               [12] 2670 	clr	a
      002C4E A3               [24] 2671 	inc	dptr
      002C4F F0               [24] 2672 	movx	@dptr,a
                                   2673 ;	lcdCommands.c:373: busyWait();
      002C50 12 20 8B         [24] 2674 	lcall	_busyWait
                                   2675 ;	lcdCommands.c:374: writeCharacter = 0x14;
      002C53 90 F1 00         [24] 2676 	mov	dptr,#_writeCharacter
      002C56 74 14            [12] 2677 	mov	a,#0x14
      002C58 F0               [24] 2678 	movx	@dptr,a
      002C59 E4               [12] 2679 	clr	a
      002C5A A3               [24] 2680 	inc	dptr
      002C5B F0               [24] 2681 	movx	@dptr,a
                                   2682 ;	lcdCommands.c:375: busyWait();
      002C5C 12 20 8B         [24] 2683 	lcall	_busyWait
                                   2684 ;	lcdCommands.c:376: lcdGeneral = 0x40 | 0x05;
      002C5F 90 F0 00         [24] 2685 	mov	dptr,#_lcdGeneral
      002C62 74 45            [12] 2686 	mov	a,#0x45
      002C64 F0               [24] 2687 	movx	@dptr,a
      002C65 E4               [12] 2688 	clr	a
      002C66 A3               [24] 2689 	inc	dptr
      002C67 F0               [24] 2690 	movx	@dptr,a
                                   2691 ;	lcdCommands.c:377: busyWait();
      002C68 12 20 8B         [24] 2692 	lcall	_busyWait
                                   2693 ;	lcdCommands.c:378: writeCharacter = 0x12;
      002C6B 90 F1 00         [24] 2694 	mov	dptr,#_writeCharacter
      002C6E 74 12            [12] 2695 	mov	a,#0x12
      002C70 F0               [24] 2696 	movx	@dptr,a
      002C71 E4               [12] 2697 	clr	a
      002C72 A3               [24] 2698 	inc	dptr
      002C73 F0               [24] 2699 	movx	@dptr,a
                                   2700 ;	lcdCommands.c:379: busyWait();
      002C74 12 20 8B         [24] 2701 	lcall	_busyWait
                                   2702 ;	lcdCommands.c:380: lcdGeneral = 0x40 | 0x06;
      002C77 90 F0 00         [24] 2703 	mov	dptr,#_lcdGeneral
      002C7A 74 46            [12] 2704 	mov	a,#0x46
      002C7C F0               [24] 2705 	movx	@dptr,a
      002C7D E4               [12] 2706 	clr	a
      002C7E A3               [24] 2707 	inc	dptr
      002C7F F0               [24] 2708 	movx	@dptr,a
                                   2709 ;	lcdCommands.c:381: busyWait();
      002C80 12 20 8B         [24] 2710 	lcall	_busyWait
                                   2711 ;	lcdCommands.c:382: writeCharacter = 0x09;
      002C83 90 F1 00         [24] 2712 	mov	dptr,#_writeCharacter
      002C86 74 09            [12] 2713 	mov	a,#0x09
      002C88 F0               [24] 2714 	movx	@dptr,a
      002C89 E4               [12] 2715 	clr	a
      002C8A A3               [24] 2716 	inc	dptr
      002C8B F0               [24] 2717 	movx	@dptr,a
                                   2718 ;	lcdCommands.c:383: busyWait();
      002C8C 12 20 8B         [24] 2719 	lcall	_busyWait
                                   2720 ;	lcdCommands.c:384: lcdGeneral = 0x40 | 0x07;
      002C8F 90 F0 00         [24] 2721 	mov	dptr,#_lcdGeneral
      002C92 74 47            [12] 2722 	mov	a,#0x47
      002C94 F0               [24] 2723 	movx	@dptr,a
      002C95 E4               [12] 2724 	clr	a
      002C96 A3               [24] 2725 	inc	dptr
      002C97 F0               [24] 2726 	movx	@dptr,a
                                   2727 ;	lcdCommands.c:385: busyWait();
      002C98 12 20 8B         [24] 2728 	lcall	_busyWait
                                   2729 ;	lcdCommands.c:386: writeCharacter = 0x06;
      002C9B 90 F1 00         [24] 2730 	mov	dptr,#_writeCharacter
      002C9E 74 06            [12] 2731 	mov	a,#0x06
      002CA0 F0               [24] 2732 	movx	@dptr,a
      002CA1 E4               [12] 2733 	clr	a
      002CA2 A3               [24] 2734 	inc	dptr
      002CA3 F0               [24] 2735 	movx	@dptr,a
                                   2736 ;	lcdCommands.c:387: busyWait();
      002CA4 12 20 8B         [24] 2737 	lcall	_busyWait
                                   2738 ;	lcdCommands.c:388: goToXY(3,1);
      002CA7 90 00 03         [24] 2739 	mov	dptr,#_goToXY_PARM_2
      002CAA 74 01            [12] 2740 	mov	a,#0x01
      002CAC F0               [24] 2741 	movx	@dptr,a
      002CAD 75 82 03         [24] 2742 	mov	dpl,#0x03
      002CB0 12 21 35         [24] 2743 	lcall	_goToXY
                                   2744 ;	lcdCommands.c:389: busyWait();
      002CB3 12 20 8B         [24] 2745 	lcall	_busyWait
                                   2746 ;	lcdCommands.c:390: lcdGeneral = 0x80 | 0x00;
      002CB6 90 F0 00         [24] 2747 	mov	dptr,#_lcdGeneral
      002CB9 74 80            [12] 2748 	mov	a,#0x80
      002CBB F0               [24] 2749 	movx	@dptr,a
      002CBC E4               [12] 2750 	clr	a
      002CBD A3               [24] 2751 	inc	dptr
      002CBE F0               [24] 2752 	movx	@dptr,a
                                   2753 ;	lcdCommands.c:391: busyWait();
      002CBF 12 20 8B         [24] 2754 	lcall	_busyWait
                                   2755 ;	lcdCommands.c:392: writeCharacter = 0x00;
      002CC2 90 F1 00         [24] 2756 	mov	dptr,#_writeCharacter
      002CC5 E4               [12] 2757 	clr	a
      002CC6 F0               [24] 2758 	movx	@dptr,a
      002CC7 A3               [24] 2759 	inc	dptr
      002CC8 F0               [24] 2760 	movx	@dptr,a
                                   2761 ;	lcdCommands.c:393: }
      002CC9 22               [24] 2762 	ret
                                   2763 ;------------------------------------------------------------
                                   2764 ;Allocation info for local variables in function 'makePacmanLeft'
                                   2765 ;------------------------------------------------------------
                                   2766 ;	lcdCommands.c:394: void makePacmanLeft()
                                   2767 ;	-----------------------------------------
                                   2768 ;	 function makePacmanLeft
                                   2769 ;	-----------------------------------------
      002CCA                       2770 _makePacmanLeft:
                                   2771 ;	lcdCommands.c:396: busyWait();
      002CCA 12 20 8B         [24] 2772 	lcall	_busyWait
                                   2773 ;	lcdCommands.c:397: lcdGeneral = 0x40 | 0x30;
      002CCD 90 F0 00         [24] 2774 	mov	dptr,#_lcdGeneral
      002CD0 74 70            [12] 2775 	mov	a,#0x70
      002CD2 F0               [24] 2776 	movx	@dptr,a
      002CD3 E4               [12] 2777 	clr	a
      002CD4 A3               [24] 2778 	inc	dptr
      002CD5 F0               [24] 2779 	movx	@dptr,a
                                   2780 ;	lcdCommands.c:398: busyWait();
      002CD6 12 20 8B         [24] 2781 	lcall	_busyWait
                                   2782 ;	lcdCommands.c:399: writeCharacter = 0x0C;
      002CD9 90 F1 00         [24] 2783 	mov	dptr,#_writeCharacter
      002CDC 74 0C            [12] 2784 	mov	a,#0x0c
      002CDE F0               [24] 2785 	movx	@dptr,a
      002CDF E4               [12] 2786 	clr	a
      002CE0 A3               [24] 2787 	inc	dptr
      002CE1 F0               [24] 2788 	movx	@dptr,a
                                   2789 ;	lcdCommands.c:400: busyWait();
      002CE2 12 20 8B         [24] 2790 	lcall	_busyWait
                                   2791 ;	lcdCommands.c:401: lcdGeneral = 0x40 | 0x31;
      002CE5 90 F0 00         [24] 2792 	mov	dptr,#_lcdGeneral
      002CE8 74 71            [12] 2793 	mov	a,#0x71
      002CEA F0               [24] 2794 	movx	@dptr,a
      002CEB E4               [12] 2795 	clr	a
      002CEC A3               [24] 2796 	inc	dptr
      002CED F0               [24] 2797 	movx	@dptr,a
                                   2798 ;	lcdCommands.c:402: busyWait();
      002CEE 12 20 8B         [24] 2799 	lcall	_busyWait
                                   2800 ;	lcdCommands.c:403: writeCharacter = 0x12;
      002CF1 90 F1 00         [24] 2801 	mov	dptr,#_writeCharacter
      002CF4 74 12            [12] 2802 	mov	a,#0x12
      002CF6 F0               [24] 2803 	movx	@dptr,a
      002CF7 E4               [12] 2804 	clr	a
      002CF8 A3               [24] 2805 	inc	dptr
      002CF9 F0               [24] 2806 	movx	@dptr,a
                                   2807 ;	lcdCommands.c:404: busyWait();
      002CFA 12 20 8B         [24] 2808 	lcall	_busyWait
                                   2809 ;	lcdCommands.c:405: lcdGeneral = 0x40 | 0x32;
      002CFD 90 F0 00         [24] 2810 	mov	dptr,#_lcdGeneral
      002D00 74 72            [12] 2811 	mov	a,#0x72
      002D02 F0               [24] 2812 	movx	@dptr,a
      002D03 E4               [12] 2813 	clr	a
      002D04 A3               [24] 2814 	inc	dptr
      002D05 F0               [24] 2815 	movx	@dptr,a
                                   2816 ;	lcdCommands.c:406: busyWait();
      002D06 12 20 8B         [24] 2817 	lcall	_busyWait
                                   2818 ;	lcdCommands.c:407: writeCharacter = 0x09;
      002D09 90 F1 00         [24] 2819 	mov	dptr,#_writeCharacter
      002D0C 74 09            [12] 2820 	mov	a,#0x09
      002D0E F0               [24] 2821 	movx	@dptr,a
      002D0F E4               [12] 2822 	clr	a
      002D10 A3               [24] 2823 	inc	dptr
      002D11 F0               [24] 2824 	movx	@dptr,a
                                   2825 ;	lcdCommands.c:408: busyWait();
      002D12 12 20 8B         [24] 2826 	lcall	_busyWait
                                   2827 ;	lcdCommands.c:409: lcdGeneral = 0x40 | 0x33;
      002D15 90 F0 00         [24] 2828 	mov	dptr,#_lcdGeneral
      002D18 74 73            [12] 2829 	mov	a,#0x73
      002D1A F0               [24] 2830 	movx	@dptr,a
      002D1B E4               [12] 2831 	clr	a
      002D1C A3               [24] 2832 	inc	dptr
      002D1D F0               [24] 2833 	movx	@dptr,a
                                   2834 ;	lcdCommands.c:410: busyWait();
      002D1E 12 20 8B         [24] 2835 	lcall	_busyWait
                                   2836 ;	lcdCommands.c:411: writeCharacter = 0x05;
      002D21 90 F1 00         [24] 2837 	mov	dptr,#_writeCharacter
      002D24 74 05            [12] 2838 	mov	a,#0x05
      002D26 F0               [24] 2839 	movx	@dptr,a
      002D27 E4               [12] 2840 	clr	a
      002D28 A3               [24] 2841 	inc	dptr
      002D29 F0               [24] 2842 	movx	@dptr,a
                                   2843 ;	lcdCommands.c:412: busyWait();
      002D2A 12 20 8B         [24] 2844 	lcall	_busyWait
                                   2845 ;	lcdCommands.c:413: lcdGeneral = 0x40 | 0x34;
      002D2D 90 F0 00         [24] 2846 	mov	dptr,#_lcdGeneral
      002D30 74 74            [12] 2847 	mov	a,#0x74
      002D32 F0               [24] 2848 	movx	@dptr,a
      002D33 E4               [12] 2849 	clr	a
      002D34 A3               [24] 2850 	inc	dptr
      002D35 F0               [24] 2851 	movx	@dptr,a
                                   2852 ;	lcdCommands.c:414: busyWait();
      002D36 12 20 8B         [24] 2853 	lcall	_busyWait
                                   2854 ;	lcdCommands.c:415: writeCharacter = 0x05;
      002D39 90 F1 00         [24] 2855 	mov	dptr,#_writeCharacter
      002D3C 74 05            [12] 2856 	mov	a,#0x05
      002D3E F0               [24] 2857 	movx	@dptr,a
      002D3F E4               [12] 2858 	clr	a
      002D40 A3               [24] 2859 	inc	dptr
      002D41 F0               [24] 2860 	movx	@dptr,a
                                   2861 ;	lcdCommands.c:416: busyWait();
      002D42 12 20 8B         [24] 2862 	lcall	_busyWait
                                   2863 ;	lcdCommands.c:417: lcdGeneral = 0x40 | 0x35;
      002D45 90 F0 00         [24] 2864 	mov	dptr,#_lcdGeneral
      002D48 74 75            [12] 2865 	mov	a,#0x75
      002D4A F0               [24] 2866 	movx	@dptr,a
      002D4B E4               [12] 2867 	clr	a
      002D4C A3               [24] 2868 	inc	dptr
      002D4D F0               [24] 2869 	movx	@dptr,a
                                   2870 ;	lcdCommands.c:418: busyWait();
      002D4E 12 20 8B         [24] 2871 	lcall	_busyWait
                                   2872 ;	lcdCommands.c:419: writeCharacter = 0x09;
      002D51 90 F1 00         [24] 2873 	mov	dptr,#_writeCharacter
      002D54 74 09            [12] 2874 	mov	a,#0x09
      002D56 F0               [24] 2875 	movx	@dptr,a
      002D57 E4               [12] 2876 	clr	a
      002D58 A3               [24] 2877 	inc	dptr
      002D59 F0               [24] 2878 	movx	@dptr,a
                                   2879 ;	lcdCommands.c:420: busyWait();
      002D5A 12 20 8B         [24] 2880 	lcall	_busyWait
                                   2881 ;	lcdCommands.c:421: lcdGeneral = 0x40 | 0x36;
      002D5D 90 F0 00         [24] 2882 	mov	dptr,#_lcdGeneral
      002D60 74 76            [12] 2883 	mov	a,#0x76
      002D62 F0               [24] 2884 	movx	@dptr,a
      002D63 E4               [12] 2885 	clr	a
      002D64 A3               [24] 2886 	inc	dptr
      002D65 F0               [24] 2887 	movx	@dptr,a
                                   2888 ;	lcdCommands.c:422: busyWait();
      002D66 12 20 8B         [24] 2889 	lcall	_busyWait
                                   2890 ;	lcdCommands.c:423: writeCharacter = 0x12;
      002D69 90 F1 00         [24] 2891 	mov	dptr,#_writeCharacter
      002D6C 74 12            [12] 2892 	mov	a,#0x12
      002D6E F0               [24] 2893 	movx	@dptr,a
      002D6F E4               [12] 2894 	clr	a
      002D70 A3               [24] 2895 	inc	dptr
      002D71 F0               [24] 2896 	movx	@dptr,a
                                   2897 ;	lcdCommands.c:424: busyWait();
      002D72 12 20 8B         [24] 2898 	lcall	_busyWait
                                   2899 ;	lcdCommands.c:425: lcdGeneral = 0x40 | 0x37;
      002D75 90 F0 00         [24] 2900 	mov	dptr,#_lcdGeneral
      002D78 74 77            [12] 2901 	mov	a,#0x77
      002D7A F0               [24] 2902 	movx	@dptr,a
      002D7B E4               [12] 2903 	clr	a
      002D7C A3               [24] 2904 	inc	dptr
      002D7D F0               [24] 2905 	movx	@dptr,a
                                   2906 ;	lcdCommands.c:426: busyWait();
      002D7E 12 20 8B         [24] 2907 	lcall	_busyWait
                                   2908 ;	lcdCommands.c:427: writeCharacter = 0x0C;
      002D81 90 F1 00         [24] 2909 	mov	dptr,#_writeCharacter
      002D84 74 0C            [12] 2910 	mov	a,#0x0c
      002D86 F0               [24] 2911 	movx	@dptr,a
      002D87 E4               [12] 2912 	clr	a
      002D88 A3               [24] 2913 	inc	dptr
      002D89 F0               [24] 2914 	movx	@dptr,a
                                   2915 ;	lcdCommands.c:428: busyWait();
      002D8A 12 20 8B         [24] 2916 	lcall	_busyWait
                                   2917 ;	lcdCommands.c:429: goToXY(3,1);
      002D8D 90 00 03         [24] 2918 	mov	dptr,#_goToXY_PARM_2
      002D90 74 01            [12] 2919 	mov	a,#0x01
      002D92 F0               [24] 2920 	movx	@dptr,a
      002D93 75 82 03         [24] 2921 	mov	dpl,#0x03
      002D96 12 21 35         [24] 2922 	lcall	_goToXY
                                   2923 ;	lcdCommands.c:430: busyWait();
      002D99 12 20 8B         [24] 2924 	lcall	_busyWait
                                   2925 ;	lcdCommands.c:432: busyWait();
                                   2926 ;	lcdCommands.c:434: }
      002D9C 02 20 8B         [24] 2927 	ljmp	_busyWait
                                   2928 ;------------------------------------------------------------
                                   2929 ;Allocation info for local variables in function 'printBinary'
                                   2930 ;------------------------------------------------------------
                                   2931 ;x                         Allocated with name '_printBinary_x_65536_123'
                                   2932 ;temp2                     Allocated with name '_printBinary_temp2_65536_124'
                                   2933 ;------------------------------------------------------------
                                   2934 ;	lcdCommands.c:436: void printBinary(int x)
                                   2935 ;	-----------------------------------------
                                   2936 ;	 function printBinary
                                   2937 ;	-----------------------------------------
      002D9F                       2938 _printBinary:
      002D9F AF 83            [24] 2939 	mov	r7,dph
      002DA1 E5 82            [12] 2940 	mov	a,dpl
      002DA3 90 00 1A         [24] 2941 	mov	dptr,#_printBinary_x_65536_123
      002DA6 F0               [24] 2942 	movx	@dptr,a
      002DA7 EF               [12] 2943 	mov	a,r7
      002DA8 A3               [24] 2944 	inc	dptr
      002DA9 F0               [24] 2945 	movx	@dptr,a
                                   2946 ;	lcdCommands.c:439: while(x != 0)
      002DAA                       2947 00101$:
      002DAA 90 00 1A         [24] 2948 	mov	dptr,#_printBinary_x_65536_123
      002DAD E0               [24] 2949 	movx	a,@dptr
      002DAE FE               [12] 2950 	mov	r6,a
      002DAF A3               [24] 2951 	inc	dptr
      002DB0 E0               [24] 2952 	movx	a,@dptr
      002DB1 FF               [12] 2953 	mov	r7,a
      002DB2 4E               [12] 2954 	orl	a,r6
      002DB3 60 3A            [24] 2955 	jz	00104$
                                   2956 ;	lcdCommands.c:441: temp2 = x % 2;
      002DB5 90 00 B1         [24] 2957 	mov	dptr,#__modsint_PARM_2
      002DB8 74 02            [12] 2958 	mov	a,#0x02
      002DBA F0               [24] 2959 	movx	@dptr,a
      002DBB E4               [12] 2960 	clr	a
      002DBC A3               [24] 2961 	inc	dptr
      002DBD F0               [24] 2962 	movx	@dptr,a
                                   2963 ;	lcdCommands.c:442: putchar(temp2);
      002DBE 8E 82            [24] 2964 	mov	dpl,r6
      002DC0 8F 83            [24] 2965 	mov	dph,r7
      002DC2 C0 07            [24] 2966 	push	ar7
      002DC4 C0 06            [24] 2967 	push	ar6
      002DC6 12 36 CA         [24] 2968 	lcall	__modsint
      002DC9 12 33 39         [24] 2969 	lcall	_putchar
      002DCC D0 06            [24] 2970 	pop	ar6
      002DCE D0 07            [24] 2971 	pop	ar7
                                   2972 ;	lcdCommands.c:443: x = x / 2;
      002DD0 90 00 BA         [24] 2973 	mov	dptr,#__divsint_PARM_2
      002DD3 74 02            [12] 2974 	mov	a,#0x02
      002DD5 F0               [24] 2975 	movx	@dptr,a
      002DD6 E4               [12] 2976 	clr	a
      002DD7 A3               [24] 2977 	inc	dptr
      002DD8 F0               [24] 2978 	movx	@dptr,a
      002DD9 8E 82            [24] 2979 	mov	dpl,r6
      002DDB 8F 83            [24] 2980 	mov	dph,r7
      002DDD 12 37 DE         [24] 2981 	lcall	__divsint
      002DE0 E5 82            [12] 2982 	mov	a,dpl
      002DE2 85 83 F0         [24] 2983 	mov	b,dph
      002DE5 90 00 1A         [24] 2984 	mov	dptr,#_printBinary_x_65536_123
      002DE8 F0               [24] 2985 	movx	@dptr,a
      002DE9 E5 F0            [12] 2986 	mov	a,b
      002DEB A3               [24] 2987 	inc	dptr
      002DEC F0               [24] 2988 	movx	@dptr,a
      002DED 80 BB            [24] 2989 	sjmp	00101$
      002DEF                       2990 00104$:
                                   2991 ;	lcdCommands.c:445: }
      002DEF 22               [24] 2992 	ret
                                   2993 ;------------------------------------------------------------
                                   2994 ;Allocation info for local variables in function 'atoh'
                                   2995 ;------------------------------------------------------------
                                   2996 ;ap                        Allocated with name '_atoh_ap_65536_126'
                                   2997 ;p                         Allocated with name '_atoh_p_65536_127'
                                   2998 ;n                         Allocated with name '_atoh_n_65536_127'
                                   2999 ;digit                     Allocated with name '_atoh_digit_65536_127'
                                   3000 ;lcase                     Allocated with name '_atoh_lcase_65536_127'
                                   3001 ;------------------------------------------------------------
                                   3002 ;	lcdCommands.c:447: int atoh(char *ap)
                                   3003 ;	-----------------------------------------
                                   3004 ;	 function atoh
                                   3005 ;	-----------------------------------------
      002DF0                       3006 _atoh:
      002DF0 AF F0            [24] 3007 	mov	r7,b
      002DF2 AE 83            [24] 3008 	mov	r6,dph
      002DF4 E5 82            [12] 3009 	mov	a,dpl
      002DF6 90 00 1C         [24] 3010 	mov	dptr,#_atoh_ap_65536_126
      002DF9 F0               [24] 3011 	movx	@dptr,a
      002DFA EE               [12] 3012 	mov	a,r6
      002DFB A3               [24] 3013 	inc	dptr
      002DFC F0               [24] 3014 	movx	@dptr,a
      002DFD EF               [12] 3015 	mov	a,r7
      002DFE A3               [24] 3016 	inc	dptr
      002DFF F0               [24] 3017 	movx	@dptr,a
                                   3018 ;	lcdCommands.c:453: p = ap;
      002E00 90 00 1C         [24] 3019 	mov	dptr,#_atoh_ap_65536_126
      002E03 E0               [24] 3020 	movx	a,@dptr
      002E04 FD               [12] 3021 	mov	r5,a
      002E05 A3               [24] 3022 	inc	dptr
      002E06 E0               [24] 3023 	movx	a,@dptr
      002E07 FE               [12] 3024 	mov	r6,a
      002E08 A3               [24] 3025 	inc	dptr
      002E09 E0               [24] 3026 	movx	a,@dptr
      002E0A FF               [12] 3027 	mov	r7,a
                                   3028 ;	lcdCommands.c:454: n = 0;
      002E0B 90 00 22         [24] 3029 	mov	dptr,#_atoh_n_65536_127
      002E0E E4               [12] 3030 	clr	a
      002E0F F0               [24] 3031 	movx	@dptr,a
      002E10 A3               [24] 3032 	inc	dptr
      002E11 F0               [24] 3033 	movx	@dptr,a
                                   3034 ;	lcdCommands.c:455: while(*p == ' ' || *p == '	')
      002E12                       3035 00102$:
      002E12 8D 82            [24] 3036 	mov	dpl,r5
      002E14 8E 83            [24] 3037 	mov	dph,r6
      002E16 8F F0            [24] 3038 	mov	b,r7
      002E18 12 43 4D         [24] 3039 	lcall	__gptrget
      002E1B FC               [12] 3040 	mov	r4,a
      002E1C BC 20 02         [24] 3041 	cjne	r4,#0x20,00178$
      002E1F 80 03            [24] 3042 	sjmp	00103$
      002E21                       3043 00178$:
      002E21 BC 09 07         [24] 3044 	cjne	r4,#0x09,00141$
      002E24                       3045 00103$:
                                   3046 ;	lcdCommands.c:456: p++;
      002E24 0D               [12] 3047 	inc	r5
      002E25 BD 00 EA         [24] 3048 	cjne	r5,#0x00,00102$
      002E28 0E               [12] 3049 	inc	r6
      002E29 80 E7            [24] 3050 	sjmp	00102$
      002E2B                       3051 00141$:
      002E2B 90 00 1F         [24] 3052 	mov	dptr,#_atoh_p_65536_127
      002E2E ED               [12] 3053 	mov	a,r5
      002E2F F0               [24] 3054 	movx	@dptr,a
      002E30 EE               [12] 3055 	mov	a,r6
      002E31 A3               [24] 3056 	inc	dptr
      002E32 F0               [24] 3057 	movx	@dptr,a
      002E33 EF               [12] 3058 	mov	a,r7
      002E34 A3               [24] 3059 	inc	dptr
      002E35 F0               [24] 3060 	movx	@dptr,a
                                   3061 ;	lcdCommands.c:458: if(*p == '0' && ((*(p+1) == 'x') || (*(p+1) == 'X')))
      002E36 BC 30 29         [24] 3062 	cjne	r4,#0x30,00118$
      002E39 74 01            [12] 3063 	mov	a,#0x01
      002E3B 2D               [12] 3064 	add	a,r5
      002E3C FA               [12] 3065 	mov	r2,a
      002E3D E4               [12] 3066 	clr	a
      002E3E 3E               [12] 3067 	addc	a,r6
      002E3F FB               [12] 3068 	mov	r3,a
      002E40 8F 04            [24] 3069 	mov	ar4,r7
      002E42 8A 82            [24] 3070 	mov	dpl,r2
      002E44 8B 83            [24] 3071 	mov	dph,r3
      002E46 8C F0            [24] 3072 	mov	b,r4
      002E48 12 43 4D         [24] 3073 	lcall	__gptrget
      002E4B FC               [12] 3074 	mov	r4,a
      002E4C BC 78 02         [24] 3075 	cjne	r4,#0x78,00184$
      002E4F 80 03            [24] 3076 	sjmp	00105$
      002E51                       3077 00184$:
      002E51 BC 58 0E         [24] 3078 	cjne	r4,#0x58,00118$
      002E54                       3079 00105$:
                                   3080 ;	lcdCommands.c:459: p+=2;
      002E54 90 00 1F         [24] 3081 	mov	dptr,#_atoh_p_65536_127
      002E57 74 02            [12] 3082 	mov	a,#0x02
      002E59 2D               [12] 3083 	add	a,r5
      002E5A F0               [24] 3084 	movx	@dptr,a
      002E5B E4               [12] 3085 	clr	a
      002E5C 3E               [12] 3086 	addc	a,r6
      002E5D A3               [24] 3087 	inc	dptr
      002E5E F0               [24] 3088 	movx	@dptr,a
      002E5F EF               [12] 3089 	mov	a,r7
      002E60 A3               [24] 3090 	inc	dptr
      002E61 F0               [24] 3091 	movx	@dptr,a
                                   3092 ;	lcdCommands.c:461: while ((digit = (*p >= '0' && *p <= '9')) ||
      002E62                       3093 00118$:
      002E62 90 00 1F         [24] 3094 	mov	dptr,#_atoh_p_65536_127
      002E65 E0               [24] 3095 	movx	a,@dptr
      002E66 FD               [12] 3096 	mov	r5,a
      002E67 A3               [24] 3097 	inc	dptr
      002E68 E0               [24] 3098 	movx	a,@dptr
      002E69 FE               [12] 3099 	mov	r6,a
      002E6A A3               [24] 3100 	inc	dptr
      002E6B E0               [24] 3101 	movx	a,@dptr
      002E6C FF               [12] 3102 	mov	r7,a
      002E6D 8D 82            [24] 3103 	mov	dpl,r5
      002E6F 8E 83            [24] 3104 	mov	dph,r6
      002E71 8F F0            [24] 3105 	mov	b,r7
      002E73 12 43 4D         [24] 3106 	lcall	__gptrget
      002E76 FF               [12] 3107 	mov	r7,a
      002E77 BF 30 00         [24] 3108 	cjne	r7,#0x30,00187$
      002E7A                       3109 00187$:
      002E7A 40 05            [24] 3110 	jc	00123$
      002E7C EF               [12] 3111 	mov	a,r7
      002E7D 24 C6            [12] 3112 	add	a,#0xff - 0x39
      002E7F 50 04            [24] 3113 	jnc	00124$
      002E81                       3114 00123$:
      002E81 7F 00            [12] 3115 	mov	r7,#0x00
      002E83 80 02            [24] 3116 	sjmp	00125$
      002E85                       3117 00124$:
      002E85 7F 01            [12] 3118 	mov	r7,#0x01
      002E87                       3119 00125$:
      002E87 EF               [12] 3120 	mov	a,r7
      002E88 FD               [12] 3121 	mov	r5,a
      002E89 33               [12] 3122 	rlc	a
      002E8A 95 E0            [12] 3123 	subb	a,acc
      002E8C FE               [12] 3124 	mov	r6,a
      002E8D EF               [12] 3125 	mov	a,r7
      002E8E 70 5C            [24] 3126 	jnz	00119$
                                   3127 ;	lcdCommands.c:462: (lcase = (*p >= 'a' && *p <= 'f')) ||
      002E90 90 00 1F         [24] 3128 	mov	dptr,#_atoh_p_65536_127
      002E93 E0               [24] 3129 	movx	a,@dptr
      002E94 FB               [12] 3130 	mov	r3,a
      002E95 A3               [24] 3131 	inc	dptr
      002E96 E0               [24] 3132 	movx	a,@dptr
      002E97 FC               [12] 3133 	mov	r4,a
      002E98 A3               [24] 3134 	inc	dptr
      002E99 E0               [24] 3135 	movx	a,@dptr
      002E9A FF               [12] 3136 	mov	r7,a
      002E9B 8B 82            [24] 3137 	mov	dpl,r3
      002E9D 8C 83            [24] 3138 	mov	dph,r4
      002E9F 8F F0            [24] 3139 	mov	b,r7
      002EA1 12 43 4D         [24] 3140 	lcall	__gptrget
      002EA4 FF               [12] 3141 	mov	r7,a
      002EA5 BF 61 00         [24] 3142 	cjne	r7,#0x61,00191$
      002EA8                       3143 00191$:
      002EA8 40 05            [24] 3144 	jc	00126$
      002EAA EF               [12] 3145 	mov	a,r7
      002EAB 24 99            [12] 3146 	add	a,#0xff - 0x66
      002EAD 50 04            [24] 3147 	jnc	00127$
      002EAF                       3148 00126$:
      002EAF 7F 00            [12] 3149 	mov	r7,#0x00
      002EB1 80 02            [24] 3150 	sjmp	00128$
      002EB3                       3151 00127$:
      002EB3 7F 01            [12] 3152 	mov	r7,#0x01
      002EB5                       3153 00128$:
      002EB5 EF               [12] 3154 	mov	a,r7
      002EB6 FC               [12] 3155 	mov	r4,a
      002EB7 33               [12] 3156 	rlc	a
      002EB8 95 E0            [12] 3157 	subb	a,acc
      002EBA FF               [12] 3158 	mov	r7,a
      002EBB 90 00 24         [24] 3159 	mov	dptr,#_atoh_lcase_65536_127
      002EBE EC               [12] 3160 	mov	a,r4
      002EBF F0               [24] 3161 	movx	@dptr,a
      002EC0 EF               [12] 3162 	mov	a,r7
      002EC1 A3               [24] 3163 	inc	dptr
      002EC2 F0               [24] 3164 	movx	@dptr,a
      002EC3 EC               [12] 3165 	mov	a,r4
      002EC4 4F               [12] 3166 	orl	a,r7
      002EC5 70 25            [24] 3167 	jnz	00119$
                                   3168 ;	lcdCommands.c:463: (*p >= 'A' && *p <= 'F')) {
      002EC7 90 00 1F         [24] 3169 	mov	dptr,#_atoh_p_65536_127
      002ECA E0               [24] 3170 	movx	a,@dptr
      002ECB FB               [12] 3171 	mov	r3,a
      002ECC A3               [24] 3172 	inc	dptr
      002ECD E0               [24] 3173 	movx	a,@dptr
      002ECE FC               [12] 3174 	mov	r4,a
      002ECF A3               [24] 3175 	inc	dptr
      002ED0 E0               [24] 3176 	movx	a,@dptr
      002ED1 FF               [12] 3177 	mov	r7,a
      002ED2 8B 82            [24] 3178 	mov	dpl,r3
      002ED4 8C 83            [24] 3179 	mov	dph,r4
      002ED6 8F F0            [24] 3180 	mov	b,r7
      002ED8 12 43 4D         [24] 3181 	lcall	__gptrget
      002EDB FF               [12] 3182 	mov	r7,a
      002EDC BF 41 00         [24] 3183 	cjne	r7,#0x41,00195$
      002EDF                       3184 00195$:
      002EDF 50 03            [24] 3185 	jnc	00196$
      002EE1 02 2F DE         [24] 3186 	ljmp	00120$
      002EE4                       3187 00196$:
      002EE4 EF               [12] 3188 	mov	a,r7
      002EE5 24 B9            [12] 3189 	add	a,#0xff - 0x46
      002EE7 50 03            [24] 3190 	jnc	00197$
      002EE9 02 2F DE         [24] 3191 	ljmp	00120$
      002EEC                       3192 00197$:
      002EEC                       3193 00119$:
                                   3194 ;	lcdCommands.c:464: n *= 16;
      002EEC 90 00 22         [24] 3195 	mov	dptr,#_atoh_n_65536_127
      002EEF E0               [24] 3196 	movx	a,@dptr
      002EF0 FC               [12] 3197 	mov	r4,a
      002EF1 A3               [24] 3198 	inc	dptr
      002EF2 E0               [24] 3199 	movx	a,@dptr
      002EF3 C4               [12] 3200 	swap	a
      002EF4 54 F0            [12] 3201 	anl	a,#0xf0
      002EF6 CC               [12] 3202 	xch	a,r4
      002EF7 C4               [12] 3203 	swap	a
      002EF8 CC               [12] 3204 	xch	a,r4
      002EF9 6C               [12] 3205 	xrl	a,r4
      002EFA CC               [12] 3206 	xch	a,r4
      002EFB 54 F0            [12] 3207 	anl	a,#0xf0
      002EFD CC               [12] 3208 	xch	a,r4
      002EFE 6C               [12] 3209 	xrl	a,r4
      002EFF FF               [12] 3210 	mov	r7,a
      002F00 90 00 22         [24] 3211 	mov	dptr,#_atoh_n_65536_127
      002F03 EC               [12] 3212 	mov	a,r4
      002F04 F0               [24] 3213 	movx	@dptr,a
      002F05 EF               [12] 3214 	mov	a,r7
      002F06 A3               [24] 3215 	inc	dptr
      002F07 F0               [24] 3216 	movx	@dptr,a
                                   3217 ;	lcdCommands.c:465: if (digit)	n += *p++ - '0';
      002F08 ED               [12] 3218 	mov	a,r5
      002F09 4E               [12] 3219 	orl	a,r6
      002F0A 60 42            [24] 3220 	jz	00113$
      002F0C 90 00 1F         [24] 3221 	mov	dptr,#_atoh_p_65536_127
      002F0F E0               [24] 3222 	movx	a,@dptr
      002F10 FD               [12] 3223 	mov	r5,a
      002F11 A3               [24] 3224 	inc	dptr
      002F12 E0               [24] 3225 	movx	a,@dptr
      002F13 FE               [12] 3226 	mov	r6,a
      002F14 A3               [24] 3227 	inc	dptr
      002F15 E0               [24] 3228 	movx	a,@dptr
      002F16 FF               [12] 3229 	mov	r7,a
      002F17 8D 82            [24] 3230 	mov	dpl,r5
      002F19 8E 83            [24] 3231 	mov	dph,r6
      002F1B 8F F0            [24] 3232 	mov	b,r7
      002F1D 12 43 4D         [24] 3233 	lcall	__gptrget
      002F20 FC               [12] 3234 	mov	r4,a
      002F21 90 00 1F         [24] 3235 	mov	dptr,#_atoh_p_65536_127
      002F24 74 01            [12] 3236 	mov	a,#0x01
      002F26 2D               [12] 3237 	add	a,r5
      002F27 F0               [24] 3238 	movx	@dptr,a
      002F28 E4               [12] 3239 	clr	a
      002F29 3E               [12] 3240 	addc	a,r6
      002F2A A3               [24] 3241 	inc	dptr
      002F2B F0               [24] 3242 	movx	@dptr,a
      002F2C EF               [12] 3243 	mov	a,r7
      002F2D A3               [24] 3244 	inc	dptr
      002F2E F0               [24] 3245 	movx	@dptr,a
      002F2F 7F 00            [12] 3246 	mov	r7,#0x00
      002F31 EC               [12] 3247 	mov	a,r4
      002F32 24 D0            [12] 3248 	add	a,#0xd0
      002F34 FC               [12] 3249 	mov	r4,a
      002F35 EF               [12] 3250 	mov	a,r7
      002F36 34 FF            [12] 3251 	addc	a,#0xff
      002F38 FF               [12] 3252 	mov	r7,a
      002F39 90 00 22         [24] 3253 	mov	dptr,#_atoh_n_65536_127
      002F3C E0               [24] 3254 	movx	a,@dptr
      002F3D FD               [12] 3255 	mov	r5,a
      002F3E A3               [24] 3256 	inc	dptr
      002F3F E0               [24] 3257 	movx	a,@dptr
      002F40 FE               [12] 3258 	mov	r6,a
      002F41 90 00 22         [24] 3259 	mov	dptr,#_atoh_n_65536_127
      002F44 EC               [12] 3260 	mov	a,r4
      002F45 2D               [12] 3261 	add	a,r5
      002F46 F0               [24] 3262 	movx	@dptr,a
      002F47 EF               [12] 3263 	mov	a,r7
      002F48 3E               [12] 3264 	addc	a,r6
      002F49 A3               [24] 3265 	inc	dptr
      002F4A F0               [24] 3266 	movx	@dptr,a
      002F4B 02 2E 62         [24] 3267 	ljmp	00118$
      002F4E                       3268 00113$:
                                   3269 ;	lcdCommands.c:466: else if (lcase)	n += 10 + (*p++ - 'a');
      002F4E 90 00 24         [24] 3270 	mov	dptr,#_atoh_lcase_65536_127
      002F51 E0               [24] 3271 	movx	a,@dptr
      002F52 F5 F0            [12] 3272 	mov	b,a
      002F54 A3               [24] 3273 	inc	dptr
      002F55 E0               [24] 3274 	movx	a,@dptr
      002F56 45 F0            [12] 3275 	orl	a,b
      002F58 60 42            [24] 3276 	jz	00110$
      002F5A 90 00 1F         [24] 3277 	mov	dptr,#_atoh_p_65536_127
      002F5D E0               [24] 3278 	movx	a,@dptr
      002F5E FD               [12] 3279 	mov	r5,a
      002F5F A3               [24] 3280 	inc	dptr
      002F60 E0               [24] 3281 	movx	a,@dptr
      002F61 FE               [12] 3282 	mov	r6,a
      002F62 A3               [24] 3283 	inc	dptr
      002F63 E0               [24] 3284 	movx	a,@dptr
      002F64 FF               [12] 3285 	mov	r7,a
      002F65 8D 82            [24] 3286 	mov	dpl,r5
      002F67 8E 83            [24] 3287 	mov	dph,r6
      002F69 8F F0            [24] 3288 	mov	b,r7
      002F6B 12 43 4D         [24] 3289 	lcall	__gptrget
      002F6E FC               [12] 3290 	mov	r4,a
      002F6F 90 00 1F         [24] 3291 	mov	dptr,#_atoh_p_65536_127
      002F72 74 01            [12] 3292 	mov	a,#0x01
      002F74 2D               [12] 3293 	add	a,r5
      002F75 F0               [24] 3294 	movx	@dptr,a
      002F76 E4               [12] 3295 	clr	a
      002F77 3E               [12] 3296 	addc	a,r6
      002F78 A3               [24] 3297 	inc	dptr
      002F79 F0               [24] 3298 	movx	@dptr,a
      002F7A EF               [12] 3299 	mov	a,r7
      002F7B A3               [24] 3300 	inc	dptr
      002F7C F0               [24] 3301 	movx	@dptr,a
      002F7D 7F 00            [12] 3302 	mov	r7,#0x00
      002F7F 74 A9            [12] 3303 	mov	a,#0xa9
      002F81 2C               [12] 3304 	add	a,r4
      002F82 FC               [12] 3305 	mov	r4,a
      002F83 74 FF            [12] 3306 	mov	a,#0xff
      002F85 3F               [12] 3307 	addc	a,r7
      002F86 FF               [12] 3308 	mov	r7,a
      002F87 90 00 22         [24] 3309 	mov	dptr,#_atoh_n_65536_127
      002F8A E0               [24] 3310 	movx	a,@dptr
      002F8B FD               [12] 3311 	mov	r5,a
      002F8C A3               [24] 3312 	inc	dptr
      002F8D E0               [24] 3313 	movx	a,@dptr
      002F8E FE               [12] 3314 	mov	r6,a
      002F8F 90 00 22         [24] 3315 	mov	dptr,#_atoh_n_65536_127
      002F92 EC               [12] 3316 	mov	a,r4
      002F93 2D               [12] 3317 	add	a,r5
      002F94 F0               [24] 3318 	movx	@dptr,a
      002F95 EF               [12] 3319 	mov	a,r7
      002F96 3E               [12] 3320 	addc	a,r6
      002F97 A3               [24] 3321 	inc	dptr
      002F98 F0               [24] 3322 	movx	@dptr,a
      002F99 02 2E 62         [24] 3323 	ljmp	00118$
      002F9C                       3324 00110$:
                                   3325 ;	lcdCommands.c:467: else		n += 10 + (*p++ - 'A');
      002F9C 90 00 1F         [24] 3326 	mov	dptr,#_atoh_p_65536_127
      002F9F E0               [24] 3327 	movx	a,@dptr
      002FA0 FD               [12] 3328 	mov	r5,a
      002FA1 A3               [24] 3329 	inc	dptr
      002FA2 E0               [24] 3330 	movx	a,@dptr
      002FA3 FE               [12] 3331 	mov	r6,a
      002FA4 A3               [24] 3332 	inc	dptr
      002FA5 E0               [24] 3333 	movx	a,@dptr
      002FA6 FF               [12] 3334 	mov	r7,a
      002FA7 8D 82            [24] 3335 	mov	dpl,r5
      002FA9 8E 83            [24] 3336 	mov	dph,r6
      002FAB 8F F0            [24] 3337 	mov	b,r7
      002FAD 12 43 4D         [24] 3338 	lcall	__gptrget
      002FB0 FC               [12] 3339 	mov	r4,a
      002FB1 90 00 1F         [24] 3340 	mov	dptr,#_atoh_p_65536_127
      002FB4 74 01            [12] 3341 	mov	a,#0x01
      002FB6 2D               [12] 3342 	add	a,r5
      002FB7 F0               [24] 3343 	movx	@dptr,a
      002FB8 E4               [12] 3344 	clr	a
      002FB9 3E               [12] 3345 	addc	a,r6
      002FBA A3               [24] 3346 	inc	dptr
      002FBB F0               [24] 3347 	movx	@dptr,a
      002FBC EF               [12] 3348 	mov	a,r7
      002FBD A3               [24] 3349 	inc	dptr
      002FBE F0               [24] 3350 	movx	@dptr,a
      002FBF 7F 00            [12] 3351 	mov	r7,#0x00
      002FC1 74 C9            [12] 3352 	mov	a,#0xc9
      002FC3 2C               [12] 3353 	add	a,r4
      002FC4 FC               [12] 3354 	mov	r4,a
      002FC5 74 FF            [12] 3355 	mov	a,#0xff
      002FC7 3F               [12] 3356 	addc	a,r7
      002FC8 FF               [12] 3357 	mov	r7,a
      002FC9 90 00 22         [24] 3358 	mov	dptr,#_atoh_n_65536_127
      002FCC E0               [24] 3359 	movx	a,@dptr
      002FCD FD               [12] 3360 	mov	r5,a
      002FCE A3               [24] 3361 	inc	dptr
      002FCF E0               [24] 3362 	movx	a,@dptr
      002FD0 FE               [12] 3363 	mov	r6,a
      002FD1 90 00 22         [24] 3364 	mov	dptr,#_atoh_n_65536_127
      002FD4 EC               [12] 3365 	mov	a,r4
      002FD5 2D               [12] 3366 	add	a,r5
      002FD6 F0               [24] 3367 	movx	@dptr,a
      002FD7 EF               [12] 3368 	mov	a,r7
      002FD8 3E               [12] 3369 	addc	a,r6
      002FD9 A3               [24] 3370 	inc	dptr
      002FDA F0               [24] 3371 	movx	@dptr,a
      002FDB 02 2E 62         [24] 3372 	ljmp	00118$
      002FDE                       3373 00120$:
                                   3374 ;	lcdCommands.c:469: return(n);
      002FDE 90 00 22         [24] 3375 	mov	dptr,#_atoh_n_65536_127
      002FE1 E0               [24] 3376 	movx	a,@dptr
      002FE2 FE               [12] 3377 	mov	r6,a
      002FE3 A3               [24] 3378 	inc	dptr
      002FE4 E0               [24] 3379 	movx	a,@dptr
                                   3380 ;	lcdCommands.c:470: }
      002FE5 8E 82            [24] 3381 	mov	dpl,r6
      002FE7 F5 83            [12] 3382 	mov	dph,a
      002FE9 22               [24] 3383 	ret
                                   3384 ;------------------------------------------------------------
                                   3385 ;Allocation info for local variables in function 'printMenu'
                                   3386 ;------------------------------------------------------------
                                   3387 ;i                         Allocated with name '_printMenu_i_65536_129'
                                   3388 ;------------------------------------------------------------
                                   3389 ;	lcdCommands.c:472: void printMenu()
                                   3390 ;	-----------------------------------------
                                   3391 ;	 function printMenu
                                   3392 ;	-----------------------------------------
      002FEA                       3393 _printMenu:
                                   3394 ;	lcdCommands.c:475: printf("%s",uiLines);
      002FEA 74 6D            [12] 3395 	mov	a,#_uiLines
      002FEC C0 E0            [24] 3396 	push	acc
      002FEE 74 43            [12] 3397 	mov	a,#(_uiLines >> 8)
      002FF0 C0 E0            [24] 3398 	push	acc
      002FF2 74 80            [12] 3399 	mov	a,#0x80
      002FF4 C0 E0            [24] 3400 	push	acc
      002FF6 74 27            [12] 3401 	mov	a,#___str_16
      002FF8 C0 E0            [24] 3402 	push	acc
      002FFA 74 47            [12] 3403 	mov	a,#(___str_16 >> 8)
      002FFC C0 E0            [24] 3404 	push	acc
      002FFE 74 80            [12] 3405 	mov	a,#0x80
      003000 C0 E0            [24] 3406 	push	acc
      003002 12 39 2B         [24] 3407 	lcall	_printf
      003005 E5 81            [12] 3408 	mov	a,sp
      003007 24 FA            [12] 3409 	add	a,#0xfa
      003009 F5 81            [12] 3410 	mov	sp,a
                                   3411 ;	lcdCommands.c:476: printf("\n\r");
      00300B 74 C0            [12] 3412 	mov	a,#___str_13
      00300D C0 E0            [24] 3413 	push	acc
      00300F 74 46            [12] 3414 	mov	a,#(___str_13 >> 8)
      003011 C0 E0            [24] 3415 	push	acc
      003013 74 80            [12] 3416 	mov	a,#0x80
      003015 C0 E0            [24] 3417 	push	acc
      003017 12 39 2B         [24] 3418 	lcall	_printf
      00301A 15 81            [12] 3419 	dec	sp
      00301C 15 81            [12] 3420 	dec	sp
      00301E 15 81            [12] 3421 	dec	sp
                                   3422 ;	lcdCommands.c:477: for ( i = 0; i < 10; i++)
      003020 7E 00            [12] 3423 	mov	r6,#0x00
      003022 7F 00            [12] 3424 	mov	r7,#0x00
      003024                       3425 00102$:
                                   3426 ;	lcdCommands.c:479: printf("%s",messages[i]);
      003024 90 00 AF         [24] 3427 	mov	dptr,#__mulint_PARM_2
      003027 EE               [12] 3428 	mov	a,r6
      003028 F0               [24] 3429 	movx	@dptr,a
      003029 EF               [12] 3430 	mov	a,r7
      00302A A3               [24] 3431 	inc	dptr
      00302B F0               [24] 3432 	movx	@dptr,a
      00302C 90 00 28         [24] 3433 	mov	dptr,#0x0028
      00302F C0 07            [24] 3434 	push	ar7
      003031 C0 06            [24] 3435 	push	ar6
      003033 12 36 AA         [24] 3436 	lcall	__mulint
      003036 AC 82            [24] 3437 	mov	r4,dpl
      003038 AD 83            [24] 3438 	mov	r5,dph
      00303A EC               [12] 3439 	mov	a,r4
      00303B 24 A9            [12] 3440 	add	a,#_messages
      00303D FC               [12] 3441 	mov	r4,a
      00303E ED               [12] 3442 	mov	a,r5
      00303F 34 43            [12] 3443 	addc	a,#(_messages >> 8)
      003041 FD               [12] 3444 	mov	r5,a
      003042 7B 80            [12] 3445 	mov	r3,#0x80
      003044 C0 04            [24] 3446 	push	ar4
      003046 C0 05            [24] 3447 	push	ar5
      003048 C0 03            [24] 3448 	push	ar3
      00304A 74 27            [12] 3449 	mov	a,#___str_16
      00304C C0 E0            [24] 3450 	push	acc
      00304E 74 47            [12] 3451 	mov	a,#(___str_16 >> 8)
      003050 C0 E0            [24] 3452 	push	acc
      003052 EB               [12] 3453 	mov	a,r3
      003053 C0 E0            [24] 3454 	push	acc
      003055 12 39 2B         [24] 3455 	lcall	_printf
      003058 E5 81            [12] 3456 	mov	a,sp
      00305A 24 FA            [12] 3457 	add	a,#0xfa
      00305C F5 81            [12] 3458 	mov	sp,a
                                   3459 ;	lcdCommands.c:480: printf_tiny("\n\r");
      00305E 74 C0            [12] 3460 	mov	a,#___str_13
      003060 C0 E0            [24] 3461 	push	acc
      003062 74 46            [12] 3462 	mov	a,#(___str_13 >> 8)
      003064 C0 E0            [24] 3463 	push	acc
      003066 12 35 A1         [24] 3464 	lcall	_printf_tiny
      003069 15 81            [12] 3465 	dec	sp
      00306B 15 81            [12] 3466 	dec	sp
      00306D D0 06            [24] 3467 	pop	ar6
      00306F D0 07            [24] 3468 	pop	ar7
                                   3469 ;	lcdCommands.c:477: for ( i = 0; i < 10; i++)
      003071 0E               [12] 3470 	inc	r6
      003072 BE 00 01         [24] 3471 	cjne	r6,#0x00,00115$
      003075 0F               [12] 3472 	inc	r7
      003076                       3473 00115$:
      003076 C3               [12] 3474 	clr	c
      003077 EE               [12] 3475 	mov	a,r6
      003078 94 0A            [12] 3476 	subb	a,#0x0a
      00307A EF               [12] 3477 	mov	a,r7
      00307B 64 80            [12] 3478 	xrl	a,#0x80
      00307D 94 80            [12] 3479 	subb	a,#0x80
      00307F 40 A3            [24] 3480 	jc	00102$
                                   3481 ;	lcdCommands.c:482: printf("%s",uiLines);
      003081 74 6D            [12] 3482 	mov	a,#_uiLines
      003083 C0 E0            [24] 3483 	push	acc
      003085 74 43            [12] 3484 	mov	a,#(_uiLines >> 8)
      003087 C0 E0            [24] 3485 	push	acc
      003089 74 80            [12] 3486 	mov	a,#0x80
      00308B C0 E0            [24] 3487 	push	acc
      00308D 74 27            [12] 3488 	mov	a,#___str_16
      00308F C0 E0            [24] 3489 	push	acc
      003091 74 47            [12] 3490 	mov	a,#(___str_16 >> 8)
      003093 C0 E0            [24] 3491 	push	acc
      003095 74 80            [12] 3492 	mov	a,#0x80
      003097 C0 E0            [24] 3493 	push	acc
      003099 12 39 2B         [24] 3494 	lcall	_printf
      00309C E5 81            [12] 3495 	mov	a,sp
      00309E 24 FA            [12] 3496 	add	a,#0xfa
      0030A0 F5 81            [12] 3497 	mov	sp,a
                                   3498 ;	lcdCommands.c:483: printf("\n\r");
      0030A2 74 C0            [12] 3499 	mov	a,#___str_13
      0030A4 C0 E0            [24] 3500 	push	acc
      0030A6 74 46            [12] 3501 	mov	a,#(___str_13 >> 8)
      0030A8 C0 E0            [24] 3502 	push	acc
      0030AA 74 80            [12] 3503 	mov	a,#0x80
      0030AC C0 E0            [24] 3504 	push	acc
      0030AE 12 39 2B         [24] 3505 	lcall	_printf
      0030B1 15 81            [12] 3506 	dec	sp
      0030B3 15 81            [12] 3507 	dec	sp
      0030B5 15 81            [12] 3508 	dec	sp
                                   3509 ;	lcdCommands.c:485: }
      0030B7 22               [24] 3510 	ret
                                   3511 	.area CSEG    (CODE)
                                   3512 	.area CONST   (CODE)
      00436D                       3513 _uiLines:
      00436D 0A                    3514 	.db 0x0a
      00436E 0D                    3515 	.db 0x0d
      00436F 2D 2D 2D 2D 2D 2D 2D  3516 	.ascii "-------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
      0043A0 0A                    3517 	.db 0x0a
      0043A1 0D                    3518 	.db 0x0d
      0043A2 00                    3519 	.db 0x00
      0043A3 00                    3520 	.db 0x00
      0043A4 00                    3521 	.db 0x00
      0043A5 00                    3522 	.db 0x00
      0043A6 00                    3523 	.db 0x00
      0043A7 00                    3524 	.db 0x00
      0043A8 00                    3525 	.db 0x00
      0043A9                       3526 _messages:
      0043A9 20 45 6E 74 65 72 20  3527 	.ascii " Enter w to write a character "
             77 20 74 6F 20 77 72
             69 74 65 20 61 20 63
             68 61 72 61 63 74 65
             72 20
      0043C7 00                    3528 	.db 0x00
      0043C8 00                    3529 	.db 0x00
      0043C9 00                    3530 	.db 0x00
      0043CA 00                    3531 	.db 0x00
      0043CB 00                    3532 	.db 0x00
      0043CC 00                    3533 	.db 0x00
      0043CD 00                    3534 	.db 0x00
      0043CE 00                    3535 	.db 0x00
      0043CF 00                    3536 	.db 0x00
      0043D0 00                    3537 	.db 0x00
      0043D1 20 45 6E 74 65 72 20  3538 	.ascii " Enter s to write a string"
             73 20 74 6F 20 77 72
             69 74 65 20 61 20 73
             74 72 69 6E 67
      0043EB 00                    3539 	.db 0x00
      0043EC 00                    3540 	.db 0x00
      0043ED 00                    3541 	.db 0x00
      0043EE 00                    3542 	.db 0x00
      0043EF 00                    3543 	.db 0x00
      0043F0 00                    3544 	.db 0x00
      0043F1 00                    3545 	.db 0x00
      0043F2 00                    3546 	.db 0x00
      0043F3 00                    3547 	.db 0x00
      0043F4 00                    3548 	.db 0x00
      0043F5 00                    3549 	.db 0x00
      0043F6 00                    3550 	.db 0x00
      0043F7 00                    3551 	.db 0x00
      0043F8 00                    3552 	.db 0x00
      0043F9 20 45 6E 74 65 72 20  3553 	.ascii " Enter p to play pacman "
             70 20 74 6F 20 70 6C
             61 79 20 70 61 63 6D
             61 6E 20
      004411 00                    3554 	.db 0x00
      004412 00                    3555 	.db 0x00
      004413 00                    3556 	.db 0x00
      004414 00                    3557 	.db 0x00
      004415 00                    3558 	.db 0x00
      004416 00                    3559 	.db 0x00
      004417 00                    3560 	.db 0x00
      004418 00                    3561 	.db 0x00
      004419 00                    3562 	.db 0x00
      00441A 00                    3563 	.db 0x00
      00441B 00                    3564 	.db 0x00
      00441C 00                    3565 	.db 0x00
      00441D 00                    3566 	.db 0x00
      00441E 00                    3567 	.db 0x00
      00441F 00                    3568 	.db 0x00
      004420 00                    3569 	.db 0x00
      004421 20 45 6E 74 65 72 20  3570 	.ascii " Enter d to perform RAM dump "
             64 20 74 6F 20 70 65
             72 66 6F 72 6D 20 52
             41 4D 20 64 75 6D 70
             20
      00443E 00                    3571 	.db 0x00
      00443F 00                    3572 	.db 0x00
      004440 00                    3573 	.db 0x00
      004441 00                    3574 	.db 0x00
      004442 00                    3575 	.db 0x00
      004443 00                    3576 	.db 0x00
      004444 00                    3577 	.db 0x00
      004445 00                    3578 	.db 0x00
      004446 00                    3579 	.db 0x00
      004447 00                    3580 	.db 0x00
      004448 00                    3581 	.db 0x00
      004449 20 45 6E 74 65 72 20  3582 	.ascii " Enter g for custom character"
             67 20 66 6F 72 20 63
             75 73 74 6F 6D 20 63
             68 61 72 61 63 74 65
             72
      004466 00                    3583 	.db 0x00
      004467 00                    3584 	.db 0x00
      004468 00                    3585 	.db 0x00
      004469 00                    3586 	.db 0x00
      00446A 00                    3587 	.db 0x00
      00446B 00                    3588 	.db 0x00
      00446C 00                    3589 	.db 0x00
      00446D 00                    3590 	.db 0x00
      00446E 00                    3591 	.db 0x00
      00446F 00                    3592 	.db 0x00
      004470 00                    3593 	.db 0x00
      004471 20 45 6E 74 65 72 20  3594 	.ascii " Enter x to reset timer"
             78 20 74 6F 20 72 65
             73 65 74 20 74 69 6D
             65 72
      004488 00                    3595 	.db 0x00
      004489 00                    3596 	.db 0x00
      00448A 00                    3597 	.db 0x00
      00448B 00                    3598 	.db 0x00
      00448C 00                    3599 	.db 0x00
      00448D 00                    3600 	.db 0x00
      00448E 00                    3601 	.db 0x00
      00448F 00                    3602 	.db 0x00
      004490 00                    3603 	.db 0x00
      004491 00                    3604 	.db 0x00
      004492 00                    3605 	.db 0x00
      004493 00                    3606 	.db 0x00
      004494 00                    3607 	.db 0x00
      004495 00                    3608 	.db 0x00
      004496 00                    3609 	.db 0x00
      004497 00                    3610 	.db 0x00
      004498 00                    3611 	.db 0x00
      004499 20 45 6E 74 65 72 20  3612 	.ascii " Enter y to pause timer"
             79 20 74 6F 20 70 61
             75 73 65 20 74 69 6D
             65 72
      0044B0 00                    3613 	.db 0x00
      0044B1 00                    3614 	.db 0x00
      0044B2 00                    3615 	.db 0x00
      0044B3 00                    3616 	.db 0x00
      0044B4 00                    3617 	.db 0x00
      0044B5 00                    3618 	.db 0x00
      0044B6 00                    3619 	.db 0x00
      0044B7 00                    3620 	.db 0x00
      0044B8 00                    3621 	.db 0x00
      0044B9 00                    3622 	.db 0x00
      0044BA 00                    3623 	.db 0x00
      0044BB 00                    3624 	.db 0x00
      0044BC 00                    3625 	.db 0x00
      0044BD 00                    3626 	.db 0x00
      0044BE 00                    3627 	.db 0x00
      0044BF 00                    3628 	.db 0x00
      0044C0 00                    3629 	.db 0x00
      0044C1 20 45 6E 74 65 72 20  3630 	.ascii " Enter z to resume timer"
             7A 20 74 6F 20 72 65
             73 75 6D 65 20 74 69
             6D 65 72
      0044D9 00                    3631 	.db 0x00
      0044DA 00                    3632 	.db 0x00
      0044DB 00                    3633 	.db 0x00
      0044DC 00                    3634 	.db 0x00
      0044DD 00                    3635 	.db 0x00
      0044DE 00                    3636 	.db 0x00
      0044DF 00                    3637 	.db 0x00
      0044E0 00                    3638 	.db 0x00
      0044E1 00                    3639 	.db 0x00
      0044E2 00                    3640 	.db 0x00
      0044E3 00                    3641 	.db 0x00
      0044E4 00                    3642 	.db 0x00
      0044E5 00                    3643 	.db 0x00
      0044E6 00                    3644 	.db 0x00
      0044E7 00                    3645 	.db 0x00
      0044E8 00                    3646 	.db 0x00
      0044E9 20 45 6E 74 65 72 20  3647 	.ascii " Enter s to clear screen"
             73 20 74 6F 20 63 6C
             65 61 72 20 73 63 72
             65 65 6E
      004501 00                    3648 	.db 0x00
      004502 00                    3649 	.db 0x00
      004503 00                    3650 	.db 0x00
      004504 00                    3651 	.db 0x00
      004505 00                    3652 	.db 0x00
      004506 00                    3653 	.db 0x00
      004507 00                    3654 	.db 0x00
      004508 00                    3655 	.db 0x00
      004509 00                    3656 	.db 0x00
      00450A 00                    3657 	.db 0x00
      00450B 00                    3658 	.db 0x00
      00450C 00                    3659 	.db 0x00
      00450D 00                    3660 	.db 0x00
      00450E 00                    3661 	.db 0x00
      00450F 00                    3662 	.db 0x00
      004510 00                    3663 	.db 0x00
      004511 20 45 6E 74 65 72 20  3664 	.ascii " Enter m for main menu "
             6D 20 66 6F 72 20 6D
             61 69 6E 20 6D 65 6E
             75 20
      004528 00                    3665 	.db 0x00
      004529 00                    3666 	.db 0x00
      00452A 00                    3667 	.db 0x00
      00452B 00                    3668 	.db 0x00
      00452C 00                    3669 	.db 0x00
      00452D 00                    3670 	.db 0x00
      00452E 00                    3671 	.db 0x00
      00452F 00                    3672 	.db 0x00
      004530 00                    3673 	.db 0x00
      004531 00                    3674 	.db 0x00
      004532 00                    3675 	.db 0x00
      004533 00                    3676 	.db 0x00
      004534 00                    3677 	.db 0x00
      004535 00                    3678 	.db 0x00
      004536 00                    3679 	.db 0x00
      004537 00                    3680 	.db 0x00
      004538 00                    3681 	.db 0x00
      004539 00                    3682 	.db 0x00
      00453A 00                    3683 	.db 0x00
      00453B 00                    3684 	.db 0x00
      00453C 00                    3685 	.db 0x00
      00453D 00                    3686 	.db 0x00
      00453E 00                    3687 	.db 0x00
      00453F 00                    3688 	.db 0x00
      004540 00                    3689 	.db 0x00
      004541 00                    3690 	.db 0x00
      004542 00                    3691 	.db 0x00
      004543 00                    3692 	.db 0x00
      004544 00                    3693 	.db 0x00
      004545 00                    3694 	.db 0x00
      004546 00                    3695 	.db 0x00
      004547 00                    3696 	.db 0x00
      004548 00                    3697 	.db 0x00
      004549 00                    3698 	.db 0x00
      00454A 00                    3699 	.db 0x00
      00454B 00                    3700 	.db 0x00
      00454C 00                    3701 	.db 0x00
      00454D 00                    3702 	.db 0x00
      00454E 00                    3703 	.db 0x00
      00454F 00                    3704 	.db 0x00
      004550 00                    3705 	.db 0x00
      004551 00                    3706 	.db 0x00
      004552 00                    3707 	.db 0x00
      004553 00                    3708 	.db 0x00
      004554 00                    3709 	.db 0x00
      004555 00                    3710 	.db 0x00
      004556 00                    3711 	.db 0x00
      004557 00                    3712 	.db 0x00
      004558 00                    3713 	.db 0x00
      004559 00                    3714 	.db 0x00
      00455A 00                    3715 	.db 0x00
      00455B 00                    3716 	.db 0x00
      00455C 00                    3717 	.db 0x00
      00455D 00                    3718 	.db 0x00
      00455E 00                    3719 	.db 0x00
      00455F 00                    3720 	.db 0x00
      004560 00                    3721 	.db 0x00
      004561                       3722 _lookUpTable:
      004561 00                    3723 	.db #0x00	; 0
      004562 01                    3724 	.db #0x01	; 1
      004563 02                    3725 	.db #0x02	; 2
      004564 03                    3726 	.db #0x03	; 3
      004565 04                    3727 	.db #0x04	; 4
      004566 05                    3728 	.db #0x05	; 5
      004567 06                    3729 	.db #0x06	; 6
      004568 07                    3730 	.db #0x07	; 7
      004569 08                    3731 	.db #0x08	; 8
      00456A 09                    3732 	.db #0x09	; 9
      00456B 0A                    3733 	.db #0x0a	; 10
      00456C 0B                    3734 	.db #0x0b	; 11
      00456D 0C                    3735 	.db #0x0c	; 12
      00456E 0D                    3736 	.db #0x0d	; 13
      00456F 0E                    3737 	.db #0x0e	; 14
      004570 0F                    3738 	.db #0x0f	; 15
      004571 40                    3739 	.db #0x40	; 64
      004572 41                    3740 	.db #0x41	; 65	'A'
      004573 42                    3741 	.db #0x42	; 66	'B'
      004574 43                    3742 	.db #0x43	; 67	'C'
      004575 44                    3743 	.db #0x44	; 68	'D'
      004576 45                    3744 	.db #0x45	; 69	'E'
      004577 46                    3745 	.db #0x46	; 70	'F'
      004578 47                    3746 	.db #0x47	; 71	'G'
      004579 48                    3747 	.db #0x48	; 72	'H'
      00457A 49                    3748 	.db #0x49	; 73	'I'
      00457B 4A                    3749 	.db #0x4a	; 74	'J'
      00457C 4B                    3750 	.db #0x4b	; 75	'K'
      00457D 4C                    3751 	.db #0x4c	; 76	'L'
      00457E 4D                    3752 	.db #0x4d	; 77	'M'
      00457F 4E                    3753 	.db #0x4e	; 78	'N'
      004580 4F                    3754 	.db #0x4f	; 79	'O'
      004581 10                    3755 	.db #0x10	; 16
      004582 11                    3756 	.db #0x11	; 17
      004583 12                    3757 	.db #0x12	; 18
      004584 13                    3758 	.db #0x13	; 19
      004585 14                    3759 	.db #0x14	; 20
      004586 15                    3760 	.db #0x15	; 21
      004587 16                    3761 	.db #0x16	; 22
      004588 17                    3762 	.db #0x17	; 23
      004589 18                    3763 	.db #0x18	; 24
      00458A 19                    3764 	.db #0x19	; 25
      00458B 1A                    3765 	.db #0x1a	; 26
      00458C 1B                    3766 	.db #0x1b	; 27
      00458D 1C                    3767 	.db #0x1c	; 28
      00458E 1D                    3768 	.db #0x1d	; 29
      00458F 1E                    3769 	.db #0x1e	; 30
      004590 1F                    3770 	.db #0x1f	; 31
      004591 50                    3771 	.db #0x50	; 80	'P'
      004592 51                    3772 	.db #0x51	; 81	'Q'
      004593 52                    3773 	.db #0x52	; 82	'R'
      004594 53                    3774 	.db #0x53	; 83	'S'
      004595 54                    3775 	.db #0x54	; 84	'T'
      004596 55                    3776 	.db #0x55	; 85	'U'
      004597 56                    3777 	.db #0x56	; 86	'V'
      004598 57                    3778 	.db #0x57	; 87	'W'
      004599 58                    3779 	.db #0x58	; 88	'X'
      00459A 59                    3780 	.db #0x59	; 89	'Y'
      00459B 5A                    3781 	.db #0x5a	; 90	'Z'
      00459C 5B                    3782 	.db #0x5b	; 91
      00459D 5C                    3783 	.db #0x5c	; 92
      00459E 5D                    3784 	.db #0x5d	; 93
      00459F 5E                    3785 	.db #0x5e	; 94
      0045A0 5F                    3786 	.db #0x5f	; 95
                                   3787 	.area CONST   (CODE)
      0045A1                       3788 ___str_0:
      0045A1 0A                    3789 	.db 0x0a
      0045A2 0D                    3790 	.db 0x0d
      0045A3 45 6E 74 65 72 20 76  3791 	.ascii "Enter value for Row 1"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 31
      0045B8 0A                    3792 	.db 0x0a
      0045B9 0D                    3793 	.db 0x0d
      0045BA 00                    3794 	.db 0x00
                                   3795 	.area CSEG    (CODE)
                                   3796 	.area CONST   (CODE)
      0045BB                       3797 ___str_1:
      0045BB 0A                    3798 	.db 0x0a
      0045BC 0D                    3799 	.db 0x0d
      0045BD 45 6E 74 65 72 20 76  3800 	.ascii "Enter value for Row 2"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 32
      0045D2 0A                    3801 	.db 0x0a
      0045D3 0D                    3802 	.db 0x0d
      0045D4 00                    3803 	.db 0x00
                                   3804 	.area CSEG    (CODE)
                                   3805 	.area CONST   (CODE)
      0045D5                       3806 ___str_2:
      0045D5 0A                    3807 	.db 0x0a
      0045D6 0D                    3808 	.db 0x0d
      0045D7 45 6E 74 65 72 20 76  3809 	.ascii "Enter value for Row 3"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 33
      0045EC 0A                    3810 	.db 0x0a
      0045ED 0D                    3811 	.db 0x0d
      0045EE 00                    3812 	.db 0x00
                                   3813 	.area CSEG    (CODE)
                                   3814 	.area CONST   (CODE)
      0045EF                       3815 ___str_3:
      0045EF 0A                    3816 	.db 0x0a
      0045F0 0D                    3817 	.db 0x0d
      0045F1 45 6E 74 65 72 20 76  3818 	.ascii "Enter value for Row 4"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 34
      004606 0A                    3819 	.db 0x0a
      004607 0D                    3820 	.db 0x0d
      004608 00                    3821 	.db 0x00
                                   3822 	.area CSEG    (CODE)
                                   3823 	.area CONST   (CODE)
      004609                       3824 ___str_4:
      004609 0A                    3825 	.db 0x0a
      00460A 0D                    3826 	.db 0x0d
      00460B 45 6E 74 65 72 20 76  3827 	.ascii "Enter value for Row 5"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 35
      004620 0A                    3828 	.db 0x0a
      004621 0D                    3829 	.db 0x0d
      004622 00                    3830 	.db 0x00
                                   3831 	.area CSEG    (CODE)
                                   3832 	.area CONST   (CODE)
      004623                       3833 ___str_5:
      004623 0A                    3834 	.db 0x0a
      004624 0D                    3835 	.db 0x0d
      004625 45 6E 74 65 72 20 76  3836 	.ascii "Enter value for Row 6"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 36
      00463A 0A                    3837 	.db 0x0a
      00463B 0D                    3838 	.db 0x0d
      00463C 00                    3839 	.db 0x00
                                   3840 	.area CSEG    (CODE)
                                   3841 	.area CONST   (CODE)
      00463D                       3842 ___str_6:
      00463D 0A                    3843 	.db 0x0a
      00463E 0D                    3844 	.db 0x0d
      00463F 45 6E 74 65 72 20 76  3845 	.ascii "Enter value for Row 7"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 37
      004654 0A                    3846 	.db 0x0a
      004655 0D                    3847 	.db 0x0d
      004656 00                    3848 	.db 0x00
                                   3849 	.area CSEG    (CODE)
                                   3850 	.area CONST   (CODE)
      004657                       3851 ___str_7:
      004657 0A                    3852 	.db 0x0a
      004658 0D                    3853 	.db 0x0d
      004659 45 6E 74 65 72 20 76  3854 	.ascii "Enter value for Row 8"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 38
      00466E 0A                    3855 	.db 0x0a
      00466F 0D                    3856 	.db 0x0d
      004670 00                    3857 	.db 0x00
                                   3858 	.area CSEG    (CODE)
                                   3859 	.area CONST   (CODE)
      004671                       3860 ___str_8:
      004671 25 64                 3861 	.ascii "%d"
      004673 0A                    3862 	.db 0x0a
      004674 0D                    3863 	.db 0x0d
      004675 00                    3864 	.db 0x00
                                   3865 	.area CSEG    (CODE)
                                   3866 	.area CONST   (CODE)
      004676                       3867 ___str_9:
      004676 0A                    3868 	.db 0x0a
      004677 0D                    3869 	.db 0x0d
      004678 50 6C 65 61 73 65 20  3870 	.ascii "Please Input a maximum of 48 characters"
             49 6E 70 75 74 20 61
             20 6D 61 78 69 6D 75
             6D 20 6F 66 20 34 38
             20 63 68 61 72 61 63
             74 65 72 73
      00469F 0A                    3871 	.db 0x0a
      0046A0 0D                    3872 	.db 0x0d
      0046A1 00                    3873 	.db 0x00
                                   3874 	.area CSEG    (CODE)
                                   3875 	.area CONST   (CODE)
      0046A2                       3876 ___str_10:
      0046A2 0A                    3877 	.db 0x0a
      0046A3 0D                    3878 	.db 0x0d
      0046A4 44 44 52 41 4D 20 43  3879 	.ascii "DDRAM Contents"
             6F 6E 74 65 6E 74 73
      0046B2 0A                    3880 	.db 0x0a
      0046B3 0D                    3881 	.db 0x0d
      0046B4 00                    3882 	.db 0x00
                                   3883 	.area CSEG    (CODE)
                                   3884 	.area CONST   (CODE)
      0046B5                       3885 ___str_11:
      0046B5 25 32 78 3A 20        3886 	.ascii "%2x: "
      0046BA 00                    3887 	.db 0x00
                                   3888 	.area CSEG    (CODE)
                                   3889 	.area CONST   (CODE)
      0046BB                       3890 ___str_12:
      0046BB 25 32 78 20           3891 	.ascii "%2x "
      0046BF 00                    3892 	.db 0x00
                                   3893 	.area CSEG    (CODE)
                                   3894 	.area CONST   (CODE)
      0046C0                       3895 ___str_13:
      0046C0 0A                    3896 	.db 0x0a
      0046C1 0D                    3897 	.db 0x0d
      0046C2 00                    3898 	.db 0x00
                                   3899 	.area CSEG    (CODE)
                                   3900 	.area CONST   (CODE)
      0046C3                       3901 ___str_14:
      0046C3 0A                    3902 	.db 0x0a
      0046C4 0D                    3903 	.db 0x0d
      0046C5 43 47 52 41 4D 20 43  3904 	.ascii "CGRAM Contents"
             6F 6E 74 65 6E 74 73
      0046D3 0A                    3905 	.db 0x0a
      0046D4 0D                    3906 	.db 0x0d
      0046D5 00                    3907 	.db 0x00
                                   3908 	.area CSEG    (CODE)
                                   3909 	.area CONST   (CODE)
      0046D6                       3910 ___str_15:
      0046D6 0A                    3911 	.db 0x0a
      0046D7 0D                    3912 	.db 0x0d
      0046D8 45 6E 74 65 72 20 77  3913 	.ascii "Enter w to go up, s to go down, a to go left and d to go rig"
             20 74 6F 20 67 6F 20
             75 70 2C 20 73 20 74
             6F 20 67 6F 20 64 6F
             77 6E 2C 20 61 20 74
             6F 20 67 6F 20 6C 65
             66 74 20 61 6E 64 20
             64 20 74 6F 20 67 6F
             20 72 69 67
      004714 68 74 20 61 6E 64 20  3914 	.ascii "ht and q to quit"
             71 20 74 6F 20 71 75
             69 74
      004724 0A                    3915 	.db 0x0a
      004725 0D                    3916 	.db 0x0d
      004726 00                    3917 	.db 0x00
                                   3918 	.area CSEG    (CODE)
                                   3919 	.area CONST   (CODE)
      004727                       3920 ___str_16:
      004727 25 73                 3921 	.ascii "%s"
      004729 00                    3922 	.db 0x00
                                   3923 	.area CSEG    (CODE)
                                   3924 	.area XINIT   (CODE)
                                   3925 	.area CABS    (ABS,CODE)
