                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lookUpTable1
                                     12 	.globl _timer0_isr
                                     13 	.globl _main
                                     14 	.globl _ramDump
                                     15 	.globl _printMenu
                                     16 	.globl _gamePacman
                                     17 	.globl _customCharacter
                                     18 	.globl _timerInit
                                     19 	.globl _putsLCD
                                     20 	.globl _goToAddr
                                     21 	.globl _lcdClear
                                     22 	.globl _lcdPutCh
                                     23 	.globl _busyWait
                                     24 	.globl _lcdInit
                                     25 	.globl _atoi
                                     26 	.globl _memset
                                     27 	.globl _printf_tiny
                                     28 	.globl _gets
                                     29 	.globl _printf
                                     30 	.globl _P5_7
                                     31 	.globl _P5_6
                                     32 	.globl _P5_5
                                     33 	.globl _P5_4
                                     34 	.globl _P5_3
                                     35 	.globl _P5_2
                                     36 	.globl _P5_1
                                     37 	.globl _P5_0
                                     38 	.globl _P4_7
                                     39 	.globl _P4_6
                                     40 	.globl _P4_5
                                     41 	.globl _P4_4
                                     42 	.globl _P4_3
                                     43 	.globl _P4_2
                                     44 	.globl _P4_1
                                     45 	.globl _P4_0
                                     46 	.globl _PX0L
                                     47 	.globl _PT0L
                                     48 	.globl _PX1L
                                     49 	.globl _PT1L
                                     50 	.globl _PSL
                                     51 	.globl _PT2L
                                     52 	.globl _PPCL
                                     53 	.globl _EC
                                     54 	.globl _CCF0
                                     55 	.globl _CCF1
                                     56 	.globl _CCF2
                                     57 	.globl _CCF3
                                     58 	.globl _CCF4
                                     59 	.globl _CR
                                     60 	.globl _CF
                                     61 	.globl _TF2
                                     62 	.globl _EXF2
                                     63 	.globl _RCLK
                                     64 	.globl _TCLK
                                     65 	.globl _EXEN2
                                     66 	.globl _TR2
                                     67 	.globl _C_T2
                                     68 	.globl _CP_RL2
                                     69 	.globl _T2CON_7
                                     70 	.globl _T2CON_6
                                     71 	.globl _T2CON_5
                                     72 	.globl _T2CON_4
                                     73 	.globl _T2CON_3
                                     74 	.globl _T2CON_2
                                     75 	.globl _T2CON_1
                                     76 	.globl _T2CON_0
                                     77 	.globl _PT2
                                     78 	.globl _ET2
                                     79 	.globl _CY
                                     80 	.globl _AC
                                     81 	.globl _F0
                                     82 	.globl _RS1
                                     83 	.globl _RS0
                                     84 	.globl _OV
                                     85 	.globl _F1
                                     86 	.globl _P
                                     87 	.globl _PS
                                     88 	.globl _PT1
                                     89 	.globl _PX1
                                     90 	.globl _PT0
                                     91 	.globl _PX0
                                     92 	.globl _RD
                                     93 	.globl _WR
                                     94 	.globl _T1
                                     95 	.globl _T0
                                     96 	.globl _INT1
                                     97 	.globl _INT0
                                     98 	.globl _TXD
                                     99 	.globl _RXD
                                    100 	.globl _P3_7
                                    101 	.globl _P3_6
                                    102 	.globl _P3_5
                                    103 	.globl _P3_4
                                    104 	.globl _P3_3
                                    105 	.globl _P3_2
                                    106 	.globl _P3_1
                                    107 	.globl _P3_0
                                    108 	.globl _EA
                                    109 	.globl _ES
                                    110 	.globl _ET1
                                    111 	.globl _EX1
                                    112 	.globl _ET0
                                    113 	.globl _EX0
                                    114 	.globl _P2_7
                                    115 	.globl _P2_6
                                    116 	.globl _P2_5
                                    117 	.globl _P2_4
                                    118 	.globl _P2_3
                                    119 	.globl _P2_2
                                    120 	.globl _P2_1
                                    121 	.globl _P2_0
                                    122 	.globl _SM0
                                    123 	.globl _SM1
                                    124 	.globl _SM2
                                    125 	.globl _REN
                                    126 	.globl _TB8
                                    127 	.globl _RB8
                                    128 	.globl _TI
                                    129 	.globl _RI
                                    130 	.globl _P1_7
                                    131 	.globl _P1_6
                                    132 	.globl _P1_5
                                    133 	.globl _P1_4
                                    134 	.globl _P1_3
                                    135 	.globl _P1_2
                                    136 	.globl _P1_1
                                    137 	.globl _P1_0
                                    138 	.globl _TF1
                                    139 	.globl _TR1
                                    140 	.globl _TF0
                                    141 	.globl _TR0
                                    142 	.globl _IE1
                                    143 	.globl _IT1
                                    144 	.globl _IE0
                                    145 	.globl _IT0
                                    146 	.globl _P0_7
                                    147 	.globl _P0_6
                                    148 	.globl _P0_5
                                    149 	.globl _P0_4
                                    150 	.globl _P0_3
                                    151 	.globl _P0_2
                                    152 	.globl _P0_1
                                    153 	.globl _P0_0
                                    154 	.globl _EECON
                                    155 	.globl _KBF
                                    156 	.globl _KBE
                                    157 	.globl _KBLS
                                    158 	.globl _BRL
                                    159 	.globl _BDRCON
                                    160 	.globl _T2MOD
                                    161 	.globl _SPDAT
                                    162 	.globl _SPSTA
                                    163 	.globl _SPCON
                                    164 	.globl _SADEN
                                    165 	.globl _SADDR
                                    166 	.globl _WDTPRG
                                    167 	.globl _WDTRST
                                    168 	.globl _P5
                                    169 	.globl _P4
                                    170 	.globl _IPH1
                                    171 	.globl _IPL1
                                    172 	.globl _IPH0
                                    173 	.globl _IPL0
                                    174 	.globl _IEN1
                                    175 	.globl _IEN0
                                    176 	.globl _CMOD
                                    177 	.globl _CL
                                    178 	.globl _CH
                                    179 	.globl _CCON
                                    180 	.globl _CCAPM4
                                    181 	.globl _CCAPM3
                                    182 	.globl _CCAPM2
                                    183 	.globl _CCAPM1
                                    184 	.globl _CCAPM0
                                    185 	.globl _CCAP4L
                                    186 	.globl _CCAP3L
                                    187 	.globl _CCAP2L
                                    188 	.globl _CCAP1L
                                    189 	.globl _CCAP0L
                                    190 	.globl _CCAP4H
                                    191 	.globl _CCAP3H
                                    192 	.globl _CCAP2H
                                    193 	.globl _CCAP1H
                                    194 	.globl _CCAP0H
                                    195 	.globl _CKCON1
                                    196 	.globl _CKCON0
                                    197 	.globl _CKRL
                                    198 	.globl _AUXR1
                                    199 	.globl _AUXR
                                    200 	.globl _TH2
                                    201 	.globl _TL2
                                    202 	.globl _RCAP2H
                                    203 	.globl _RCAP2L
                                    204 	.globl _T2CON
                                    205 	.globl _B
                                    206 	.globl _ACC
                                    207 	.globl _PSW
                                    208 	.globl _IP
                                    209 	.globl _P3
                                    210 	.globl _IE
                                    211 	.globl _P2
                                    212 	.globl _SBUF
                                    213 	.globl _SCON
                                    214 	.globl _P1
                                    215 	.globl _TH1
                                    216 	.globl _TH0
                                    217 	.globl _TL1
                                    218 	.globl _TL0
                                    219 	.globl _TMOD
                                    220 	.globl _TCON
                                    221 	.globl _PCON
                                    222 	.globl _DPH
                                    223 	.globl _DPL
                                    224 	.globl _SP
                                    225 	.globl _P0
                                    226 	.globl _ch
                                    227 	.globl _check
                                    228 	.globl _x2
                                    229 	.globl _hour
                                    230 	.globl _min
                                    231 	.globl _sec
                                    232 	.globl _partSec
                                    233 	.globl _readCharacter
                                    234 	.globl _writeCharacter
                                    235 	.globl _busyPoll
                                    236 	.globl _lcdGeneral
                                    237 	.globl _putchar
                                    238 	.globl _getchar
                                    239 	.globl _printTimeStamp
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
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable items in internal ram 
                                    457 ;--------------------------------------------------------
                                    458 ;--------------------------------------------------------
                                    459 ; Stack segment in internal ram 
                                    460 ;--------------------------------------------------------
                                    461 	.area	SSEG
      000019                        462 __start__stack:
      000019                        463 	.ds	1
                                    464 
                                    465 ;--------------------------------------------------------
                                    466 ; indirectly addressable internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area ISEG    (DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; absolute internal ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area IABS    (ABS,DATA)
                                    473 	.area IABS    (ABS,DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; bit data
                                    476 ;--------------------------------------------------------
                                    477 	.area BSEG    (BIT)
                                    478 ;--------------------------------------------------------
                                    479 ; paged external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area PSEG    (PAG,XDATA)
                                    482 ;--------------------------------------------------------
                                    483 ; external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XSEG    (XDATA)
                           00F000   486 _lcdGeneral	=	0xf000
                           00F200   487 _busyPoll	=	0xf200
                           00F100   488 _writeCharacter	=	0xf100
                           00F300   489 _readCharacter	=	0xf300
      000026                        490 _partSec::
      000026                        491 	.ds 1
      000027                        492 _sec::
      000027                        493 	.ds 1
      000028                        494 _min::
      000028                        495 	.ds 1
      000029                        496 _hour::
      000029                        497 	.ds 1
      00002A                        498 _x2::
      00002A                        499 	.ds 1
      00002B                        500 _check::
      00002B                        501 	.ds 1
      00002C                        502 _ch::
      00002C                        503 	.ds 1
      00002D                        504 _main_input_65537_72:
      00002D                        505 	.ds 60
      000069                        506 _main_x_196609_75:
      000069                        507 	.ds 10
      000073                        508 _main_stringRead_196609_87:
      000073                        509 	.ds 48
      0000A3                        510 _putchar_c_65536_96:
      0000A3                        511 	.ds 2
                                    512 ;--------------------------------------------------------
                                    513 ; absolute external ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XABS    (ABS,XDATA)
                                    516 ;--------------------------------------------------------
                                    517 ; external initialized ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area XISEG   (XDATA)
                                    520 	.area HOME    (CODE)
                                    521 	.area GSINIT0 (CODE)
                                    522 	.area GSINIT1 (CODE)
                                    523 	.area GSINIT2 (CODE)
                                    524 	.area GSINIT3 (CODE)
                                    525 	.area GSINIT4 (CODE)
                                    526 	.area GSINIT5 (CODE)
                                    527 	.area GSINIT  (CODE)
                                    528 	.area GSFINAL (CODE)
                                    529 	.area CSEG    (CODE)
                                    530 ;--------------------------------------------------------
                                    531 ; interrupt vector 
                                    532 ;--------------------------------------------------------
                                    533 	.area HOME    (CODE)
      002000                        534 __interrupt_vect:
      002000 02 20 11         [24]  535 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  536 	reti
      002004                        537 	.ds	7
      00200B 02 32 BB         [24]  538 	ljmp	_timer0_isr
                                    539 ;--------------------------------------------------------
                                    540 ; global & static initialisations
                                    541 ;--------------------------------------------------------
                                    542 	.area HOME    (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 	.area GSFINAL (CODE)
                                    545 	.area GSINIT  (CODE)
                                    546 	.globl __sdcc_gsinit_startup
                                    547 	.globl __sdcc_program_startup
                                    548 	.globl __start__stack
                                    549 	.globl __mcs51_genXINIT
                                    550 	.globl __mcs51_genXRAMCLEAR
                                    551 	.globl __mcs51_genRAMCLEAR
                                    552 	.area GSFINAL (CODE)
      00206A 02 20 0E         [24]  553 	ljmp	__sdcc_program_startup
                                    554 ;--------------------------------------------------------
                                    555 ; Home
                                    556 ;--------------------------------------------------------
                                    557 	.area HOME    (CODE)
                                    558 	.area HOME    (CODE)
      00200E                        559 __sdcc_program_startup:
      00200E 02 30 B8         [24]  560 	ljmp	_main
                                    561 ;	return from main will return to caller
                                    562 ;--------------------------------------------------------
                                    563 ; code
                                    564 ;--------------------------------------------------------
                                    565 	.area CSEG    (CODE)
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'main'
                                    568 ;------------------------------------------------------------
                                    569 ;input                     Allocated with name '_main_input_65537_72'
                                    570 ;x                         Allocated with name '_main_x_196609_75'
                                    571 ;row                       Allocated with name '_main_row_196610_76'
                                    572 ;column                    Allocated with name '_main_column_196611_78'
                                    573 ;ad                        Allocated with name '_main_ad_196612_80'
                                    574 ;inputWrite                Allocated with name '_main_inputWrite_196613_81'
                                    575 ;stringRead                Allocated with name '_main_stringRead_196609_87'
                                    576 ;------------------------------------------------------------
                                    577 ;	main.c:19: void main()
                                    578 ;	-----------------------------------------
                                    579 ;	 function main
                                    580 ;	-----------------------------------------
      0030B8                        581 _main:
                           000007   582 	ar7 = 0x07
                           000006   583 	ar6 = 0x06
                           000005   584 	ar5 = 0x05
                           000004   585 	ar4 = 0x04
                           000003   586 	ar3 = 0x03
                           000002   587 	ar2 = 0x02
                           000001   588 	ar1 = 0x01
                           000000   589 	ar0 = 0x00
                                    590 ;	main.c:21: check = 0;
      0030B8 90 00 2B         [24]  591 	mov	dptr,#_check
      0030BB E4               [12]  592 	clr	a
      0030BC F0               [24]  593 	movx	@dptr,a
                                    594 ;	main.c:22: partSec = 0;
      0030BD 90 00 26         [24]  595 	mov	dptr,#_partSec
      0030C0 F0               [24]  596 	movx	@dptr,a
                                    597 ;	main.c:23: sec = 0;
      0030C1 90 00 27         [24]  598 	mov	dptr,#_sec
      0030C4 F0               [24]  599 	movx	@dptr,a
                                    600 ;	main.c:24: min = 0;
      0030C5 90 00 28         [24]  601 	mov	dptr,#_min
      0030C8 F0               [24]  602 	movx	@dptr,a
                                    603 ;	main.c:25: hour = 0;
      0030C9 90 00 29         [24]  604 	mov	dptr,#_hour
      0030CC F0               [24]  605 	movx	@dptr,a
                                    606 ;	main.c:26: x2 = 0;
      0030CD 90 00 2A         [24]  607 	mov	dptr,#_x2
      0030D0 F0               [24]  608 	movx	@dptr,a
                                    609 ;	main.c:28: memset(input, '\0',60 * sizeof(char));
      0030D1 90 00 A5         [24]  610 	mov	dptr,#_memset_PARM_2
      0030D4 F0               [24]  611 	movx	@dptr,a
      0030D5 90 00 A6         [24]  612 	mov	dptr,#_memset_PARM_3
      0030D8 74 3C            [12]  613 	mov	a,#0x3c
      0030DA F0               [24]  614 	movx	@dptr,a
      0030DB E4               [12]  615 	clr	a
      0030DC A3               [24]  616 	inc	dptr
      0030DD F0               [24]  617 	movx	@dptr,a
      0030DE 90 00 2D         [24]  618 	mov	dptr,#_main_input_65537_72
      0030E1 75 F0 00         [24]  619 	mov	b,#0x00
      0030E4 12 34 3E         [24]  620 	lcall	_memset
                                    621 ;	main.c:29: lcdInit();
      0030E7 12 20 97         [24]  622 	lcall	_lcdInit
                                    623 ;	main.c:30: lcdClear();
      0030EA 12 21 0D         [24]  624 	lcall	_lcdClear
                                    625 ;	main.c:31: printMenu();
      0030ED 12 2F EA         [24]  626 	lcall	_printMenu
                                    627 ;	main.c:32: timerInit();
      0030F0 12 20 7B         [24]  628 	lcall	_timerInit
                                    629 ;	main.c:33: while(1)
      0030F3                        630 00128$:
                                    631 ;	main.c:35: ch = getchar();
      0030F3 12 33 6A         [24]  632 	lcall	_getchar
      0030F6 AE 82            [24]  633 	mov	r6,dpl
      0030F8 90 00 2C         [24]  634 	mov	dptr,#_ch
      0030FB EE               [12]  635 	mov	a,r6
      0030FC F0               [24]  636 	movx	@dptr,a
                                    637 ;	main.c:36: if(check == 1)
      0030FD 90 00 2B         [24]  638 	mov	dptr,#_check
      003100 E0               [24]  639 	movx	a,@dptr
      003101 FF               [12]  640 	mov	r7,a
      003102 BF 01 08         [24]  641 	cjne	r7,#0x01,00102$
                                    642 ;	main.c:38: check = 0;
      003105 90 00 2B         [24]  643 	mov	dptr,#_check
      003108 E4               [12]  644 	clr	a
      003109 F0               [24]  645 	movx	@dptr,a
                                    646 ;	main.c:39: printTimeStamp();
      00310A 12 33 8C         [24]  647 	lcall	_printTimeStamp
      00310D                        648 00102$:
                                    649 ;	main.c:42: if(ch == 'w')
      00310D 90 00 2C         [24]  650 	mov	dptr,#_ch
      003110 E0               [24]  651 	movx	a,@dptr
      003111 FF               [12]  652 	mov	r7,a
      003112 BF 77 02         [24]  653 	cjne	r7,#0x77,00190$
      003115 80 03            [24]  654 	sjmp	00191$
      003117                        655 00190$:
      003117 02 32 1E         [24]  656 	ljmp	00108$
      00311A                        657 00191$:
                                    658 ;	main.c:46: memset(x,'\0',10 * sizeof(char));
      00311A 90 00 A5         [24]  659 	mov	dptr,#_memset_PARM_2
      00311D E4               [12]  660 	clr	a
      00311E F0               [24]  661 	movx	@dptr,a
      00311F 90 00 A6         [24]  662 	mov	dptr,#_memset_PARM_3
      003122 74 0A            [12]  663 	mov	a,#0x0a
      003124 F0               [24]  664 	movx	@dptr,a
      003125 E4               [12]  665 	clr	a
      003126 A3               [24]  666 	inc	dptr
      003127 F0               [24]  667 	movx	@dptr,a
      003128 90 00 69         [24]  668 	mov	dptr,#_main_x_196609_75
      00312B 75 F0 00         [24]  669 	mov	b,#0x00
      00312E 12 34 3E         [24]  670 	lcall	_memset
                                    671 ;	main.c:47: printf_tiny("\n\rEnter the row number from 0 to 2\n\r");
      003131 74 6A            [12]  672 	mov	a,#___str_0
      003133 C0 E0            [24]  673 	push	acc
      003135 74 47            [12]  674 	mov	a,#(___str_0 >> 8)
      003137 C0 E0            [24]  675 	push	acc
      003139 12 35 A1         [24]  676 	lcall	_printf_tiny
      00313C 15 81            [12]  677 	dec	sp
      00313E 15 81            [12]  678 	dec	sp
                                    679 ;	main.c:48: uint8_t row = getchar();
      003140 12 33 6A         [24]  680 	lcall	_getchar
      003143 AE 82            [24]  681 	mov	r6,dpl
                                    682 ;	main.c:49: putchar(row);
      003145 8E 05            [24]  683 	mov	ar5,r6
      003147 7F 00            [12]  684 	mov	r7,#0x00
      003149 8D 82            [24]  685 	mov	dpl,r5
      00314B 8F 83            [24]  686 	mov	dph,r7
      00314D C0 06            [24]  687 	push	ar6
      00314F 12 33 39         [24]  688 	lcall	_putchar
      003152 D0 06            [24]  689 	pop	ar6
                                    690 ;	main.c:50: row = row - '0';
      003154 EE               [12]  691 	mov	a,r6
      003155 24 D0            [12]  692 	add	a,#0xd0
                                    693 ;	main.c:51: if(row > 2)
      003157 FF               [12]  694 	mov	r7,a
      003158 24 FD            [12]  695 	add	a,#0xff - 0x02
      00315A 50 14            [24]  696 	jnc	00104$
                                    697 ;	main.c:53: printf_tiny("\n\rEntered Row is incorrect\n\r");
      00315C 74 8F            [12]  698 	mov	a,#___str_1
      00315E C0 E0            [24]  699 	push	acc
      003160 74 47            [12]  700 	mov	a,#(___str_1 >> 8)
      003162 C0 E0            [24]  701 	push	acc
      003164 12 35 A1         [24]  702 	lcall	_printf_tiny
      003167 15 81            [12]  703 	dec	sp
      003169 15 81            [12]  704 	dec	sp
                                    705 ;	main.c:54: printMenu();
      00316B 12 2F EA         [24]  706 	lcall	_printMenu
                                    707 ;	main.c:55: continue;
      00316E 80 83            [24]  708 	sjmp	00128$
      003170                        709 00104$:
                                    710 ;	main.c:57: printf_tiny("\n\rEnter the column number from 0 to 15\n\r");
      003170 C0 07            [24]  711 	push	ar7
      003172 74 AC            [12]  712 	mov	a,#___str_2
      003174 C0 E0            [24]  713 	push	acc
      003176 74 47            [12]  714 	mov	a,#(___str_2 >> 8)
      003178 C0 E0            [24]  715 	push	acc
      00317A 12 35 A1         [24]  716 	lcall	_printf_tiny
      00317D 15 81            [12]  717 	dec	sp
      00317F 15 81            [12]  718 	dec	sp
                                    719 ;	main.c:58: gets(x);
      003181 90 00 69         [24]  720 	mov	dptr,#_main_x_196609_75
      003184 75 F0 00         [24]  721 	mov	b,#0x00
      003187 12 26 BA         [24]  722 	lcall	_gets
                                    723 ;	main.c:59: uint8_t column = atoi(x);
      00318A 90 00 69         [24]  724 	mov	dptr,#_main_x_196609_75
      00318D 75 F0 00         [24]  725 	mov	b,#0x00
      003190 12 34 66         [24]  726 	lcall	_atoi
      003193 AD 82            [24]  727 	mov	r5,dpl
      003195 D0 07            [24]  728 	pop	ar7
                                    729 ;	main.c:61: if(column > 15)
      003197 ED               [12]  730 	mov	a,r5
      003198 24 F0            [12]  731 	add	a,#0xff - 0x0f
      00319A 50 15            [24]  732 	jnc	00106$
                                    733 ;	main.c:63: printf_tiny("\n\rEntered Column is incorrect\n\r");
      00319C 74 D5            [12]  734 	mov	a,#___str_3
      00319E C0 E0            [24]  735 	push	acc
      0031A0 74 47            [12]  736 	mov	a,#(___str_3 >> 8)
      0031A2 C0 E0            [24]  737 	push	acc
      0031A4 12 35 A1         [24]  738 	lcall	_printf_tiny
      0031A7 15 81            [12]  739 	dec	sp
      0031A9 15 81            [12]  740 	dec	sp
                                    741 ;	main.c:64: printMenu();
      0031AB 12 2F EA         [24]  742 	lcall	_printMenu
                                    743 ;	main.c:65: continue;
      0031AE 02 30 F3         [24]  744 	ljmp	00128$
      0031B1                        745 00106$:
                                    746 ;	main.c:67: uint8_t ad = lookUpTable1[row][column];
      0031B1 EF               [12]  747 	mov	a,r7
      0031B2 75 F0 10         [24]  748 	mov	b,#0x10
      0031B5 A4               [48]  749 	mul	ab
      0031B6 24 2A            [12]  750 	add	a,#_lookUpTable1
      0031B8 FC               [12]  751 	mov	r4,a
      0031B9 74 47            [12]  752 	mov	a,#(_lookUpTable1 >> 8)
      0031BB 35 F0            [12]  753 	addc	a,b
      0031BD FE               [12]  754 	mov	r6,a
      0031BE ED               [12]  755 	mov	a,r5
      0031BF 2C               [12]  756 	add	a,r4
      0031C0 F5 82            [12]  757 	mov	dpl,a
      0031C2 E4               [12]  758 	clr	a
      0031C3 3E               [12]  759 	addc	a,r6
      0031C4 F5 83            [12]  760 	mov	dph,a
      0031C6 E4               [12]  761 	clr	a
      0031C7 93               [24]  762 	movc	a,@a+dptr
                                    763 ;	main.c:68: printf("%d %d %d", row, column, ad);
      0031C8 FE               [12]  764 	mov	r6,a
      0031C9 FB               [12]  765 	mov	r3,a
      0031CA 7C 00            [12]  766 	mov	r4,#0x00
      0031CC 7A 00            [12]  767 	mov	r2,#0x00
      0031CE 8F 01            [24]  768 	mov	ar1,r7
      0031D0 7F 00            [12]  769 	mov	r7,#0x00
      0031D2 C0 06            [24]  770 	push	ar6
      0031D4 C0 03            [24]  771 	push	ar3
      0031D6 C0 04            [24]  772 	push	ar4
      0031D8 C0 05            [24]  773 	push	ar5
      0031DA C0 02            [24]  774 	push	ar2
      0031DC C0 01            [24]  775 	push	ar1
      0031DE C0 07            [24]  776 	push	ar7
      0031E0 74 F5            [12]  777 	mov	a,#___str_4
      0031E2 C0 E0            [24]  778 	push	acc
      0031E4 74 47            [12]  779 	mov	a,#(___str_4 >> 8)
      0031E6 C0 E0            [24]  780 	push	acc
      0031E8 74 80            [12]  781 	mov	a,#0x80
      0031EA C0 E0            [24]  782 	push	acc
      0031EC 12 39 2B         [24]  783 	lcall	_printf
      0031EF E5 81            [12]  784 	mov	a,sp
      0031F1 24 F7            [12]  785 	add	a,#0xf7
      0031F3 F5 81            [12]  786 	mov	sp,a
      0031F5 D0 06            [24]  787 	pop	ar6
                                    788 ;	main.c:69: goToAddr(ad);
      0031F7 8E 82            [24]  789 	mov	dpl,r6
      0031F9 12 21 1A         [24]  790 	lcall	_goToAddr
                                    791 ;	main.c:70: busyWait();
      0031FC 12 20 8B         [24]  792 	lcall	_busyWait
                                    793 ;	main.c:71: printf_tiny("\n\rEnter the character\n\r");
      0031FF 74 FE            [12]  794 	mov	a,#___str_5
      003201 C0 E0            [24]  795 	push	acc
      003203 74 47            [12]  796 	mov	a,#(___str_5 >> 8)
      003205 C0 E0            [24]  797 	push	acc
      003207 12 35 A1         [24]  798 	lcall	_printf_tiny
      00320A 15 81            [12]  799 	dec	sp
      00320C 15 81            [12]  800 	dec	sp
                                    801 ;	main.c:72: uint8_t inputWrite = getchar();
      00320E 12 33 6A         [24]  802 	lcall	_getchar
                                    803 ;	main.c:73: putchar(inputWrite);
      003211 7F 00            [12]  804 	mov	r7,#0x00
      003213 8F 83            [24]  805 	mov	dph,r7
      003215 12 33 39         [24]  806 	lcall	_putchar
                                    807 ;	main.c:74: lcdPutCh(48);
      003218 75 82 30         [24]  808 	mov	dpl,#0x30
      00321B 12 20 F8         [24]  809 	lcall	_lcdPutCh
      00321E                        810 00108$:
                                    811 ;	main.c:77: if (ch == 'm')
      00321E 90 00 2C         [24]  812 	mov	dptr,#_ch
      003221 E0               [24]  813 	movx	a,@dptr
      003222 FF               [12]  814 	mov	r7,a
      003223 BF 6D 03         [24]  815 	cjne	r7,#0x6d,00110$
                                    816 ;	main.c:79: printMenu();
      003226 12 2F EA         [24]  817 	lcall	_printMenu
      003229                        818 00110$:
                                    819 ;	main.c:82: if( ch == 'p')
      003229 90 00 2C         [24]  820 	mov	dptr,#_ch
      00322C E0               [24]  821 	movx	a,@dptr
      00322D FF               [12]  822 	mov	r7,a
      00322E BF 70 03         [24]  823 	cjne	r7,#0x70,00112$
                                    824 ;	main.c:83: gamePacman();
      003231 12 29 78         [24]  825 	lcall	_gamePacman
      003234                        826 00112$:
                                    827 ;	main.c:85: if(ch == 'x')
      003234 90 00 2C         [24]  828 	mov	dptr,#_ch
      003237 E0               [24]  829 	movx	a,@dptr
      003238 FF               [12]  830 	mov	r7,a
      003239 BF 78 19         [24]  831 	cjne	r7,#0x78,00114$
                                    832 ;	main.c:87: check = 0;
      00323C 90 00 2B         [24]  833 	mov	dptr,#_check
      00323F E4               [12]  834 	clr	a
      003240 F0               [24]  835 	movx	@dptr,a
                                    836 ;	main.c:88: partSec = 0;
      003241 90 00 26         [24]  837 	mov	dptr,#_partSec
      003244 F0               [24]  838 	movx	@dptr,a
                                    839 ;	main.c:89: sec = 0;
      003245 90 00 27         [24]  840 	mov	dptr,#_sec
      003248 F0               [24]  841 	movx	@dptr,a
                                    842 ;	main.c:90: min = 0;
      003249 90 00 28         [24]  843 	mov	dptr,#_min
      00324C F0               [24]  844 	movx	@dptr,a
                                    845 ;	main.c:91: hour = 0;
      00324D 90 00 29         [24]  846 	mov	dptr,#_hour
      003250 F0               [24]  847 	movx	@dptr,a
                                    848 ;	main.c:92: x2 = 0;
      003251 90 00 2A         [24]  849 	mov	dptr,#_x2
      003254 F0               [24]  850 	movx	@dptr,a
      003255                        851 00114$:
                                    852 ;	main.c:95: if(ch == 'y')
      003255 90 00 2C         [24]  853 	mov	dptr,#_ch
      003258 E0               [24]  854 	movx	a,@dptr
      003259 FF               [12]  855 	mov	r7,a
      00325A BF 79 02         [24]  856 	cjne	r7,#0x79,00116$
                                    857 ;	main.c:97: TR0 = 0;
                                    858 ;	assignBit
      00325D C2 8C            [12]  859 	clr	_TR0
      00325F                        860 00116$:
                                    861 ;	main.c:100: if(ch == 'z')
      00325F 90 00 2C         [24]  862 	mov	dptr,#_ch
      003262 E0               [24]  863 	movx	a,@dptr
      003263 FF               [12]  864 	mov	r7,a
      003264 BF 7A 02         [24]  865 	cjne	r7,#0x7a,00118$
                                    866 ;	main.c:102: TR0 = 1;
                                    867 ;	assignBit
      003267 D2 8C            [12]  868 	setb	_TR0
      003269                        869 00118$:
                                    870 ;	main.c:105: if(ch == 'c')
      003269 90 00 2C         [24]  871 	mov	dptr,#_ch
      00326C E0               [24]  872 	movx	a,@dptr
      00326D FF               [12]  873 	mov	r7,a
      00326E BF 63 03         [24]  874 	cjne	r7,#0x63,00120$
                                    875 ;	main.c:107: lcdClear();
      003271 12 21 0D         [24]  876 	lcall	_lcdClear
      003274                        877 00120$:
                                    878 ;	main.c:110: if(ch == 's')
      003274 90 00 2C         [24]  879 	mov	dptr,#_ch
      003277 E0               [24]  880 	movx	a,@dptr
      003278 FF               [12]  881 	mov	r7,a
      003279 BF 73 21         [24]  882 	cjne	r7,#0x73,00122$
                                    883 ;	main.c:113: printf_tiny("\n\rEnter the string\n\r");
      00327C 74 16            [12]  884 	mov	a,#___str_6
      00327E C0 E0            [24]  885 	push	acc
      003280 74 48            [12]  886 	mov	a,#(___str_6 >> 8)
      003282 C0 E0            [24]  887 	push	acc
      003284 12 35 A1         [24]  888 	lcall	_printf_tiny
      003287 15 81            [12]  889 	dec	sp
      003289 15 81            [12]  890 	dec	sp
                                    891 ;	main.c:114: gets(stringRead);
      00328B 90 00 73         [24]  892 	mov	dptr,#_main_stringRead_196609_87
      00328E 75 F0 00         [24]  893 	mov	b,#0x00
      003291 12 26 BA         [24]  894 	lcall	_gets
                                    895 ;	main.c:116: putsLCD(stringRead);
      003294 90 00 73         [24]  896 	mov	dptr,#_main_stringRead_196609_87
      003297 75 F0 00         [24]  897 	mov	b,#0x00
      00329A 12 25 4F         [24]  898 	lcall	_putsLCD
      00329D                        899 00122$:
                                    900 ;	main.c:119: if(ch == 'd')
      00329D 90 00 2C         [24]  901 	mov	dptr,#_ch
      0032A0 E0               [24]  902 	movx	a,@dptr
      0032A1 FF               [12]  903 	mov	r7,a
      0032A2 BF 64 03         [24]  904 	cjne	r7,#0x64,00124$
                                    905 ;	main.c:121: ramDump();
      0032A5 12 27 CD         [24]  906 	lcall	_ramDump
      0032A8                        907 00124$:
                                    908 ;	main.c:124: if(ch == 'g')
      0032A8 90 00 2C         [24]  909 	mov	dptr,#_ch
      0032AB E0               [24]  910 	movx	a,@dptr
      0032AC FF               [12]  911 	mov	r7,a
      0032AD BF 67 02         [24]  912 	cjne	r7,#0x67,00210$
      0032B0 80 03            [24]  913 	sjmp	00211$
      0032B2                        914 00210$:
      0032B2 02 30 F3         [24]  915 	ljmp	00128$
      0032B5                        916 00211$:
                                    917 ;	main.c:126: customCharacter();
      0032B5 12 21 60         [24]  918 	lcall	_customCharacter
                                    919 ;	main.c:130: }
      0032B8 02 30 F3         [24]  920 	ljmp	00128$
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function 'timer0_isr'
                                    923 ;------------------------------------------------------------
                                    924 ;	main.c:132: void timer0_isr() __interrupt (1)
                                    925 ;	-----------------------------------------
                                    926 ;	 function timer0_isr
                                    927 ;	-----------------------------------------
      0032BB                        928 _timer0_isr:
      0032BB C0 E0            [24]  929 	push	acc
      0032BD C0 82            [24]  930 	push	dpl
      0032BF C0 83            [24]  931 	push	dph
      0032C1 C0 07            [24]  932 	push	ar7
      0032C3 C0 D0            [24]  933 	push	psw
      0032C5 75 D0 00         [24]  934 	mov	psw,#0x00
                                    935 ;	main.c:134: TH0 = 0x4B;
      0032C8 75 8C 4B         [24]  936 	mov	_TH0,#0x4b
                                    937 ;	main.c:135: TL0 = 0xFC;
      0032CB 75 8A FC         [24]  938 	mov	_TL0,#0xfc
                                    939 ;	main.c:136: x2++;
      0032CE 90 00 2A         [24]  940 	mov	dptr,#_x2
      0032D1 E0               [24]  941 	movx	a,@dptr
      0032D2 24 01            [12]  942 	add	a,#0x01
      0032D4 F0               [24]  943 	movx	@dptr,a
                                    944 ;	main.c:137: if(x2 == 2)
      0032D5 E0               [24]  945 	movx	a,@dptr
      0032D6 FF               [12]  946 	mov	r7,a
      0032D7 BF 02 54         [24]  947 	cjne	r7,#0x02,00111$
                                    948 ;	main.c:139: if(partSec > 9)
      0032DA 90 00 26         [24]  949 	mov	dptr,#_partSec
      0032DD E0               [24]  950 	movx	a,@dptr
      0032DE FF               [12]  951 	mov  r7,a
      0032DF 24 F6            [12]  952 	add	a,#0xff - 0x09
      0032E1 50 3A            [24]  953 	jnc	00108$
                                    954 ;	main.c:141: sec++;
      0032E3 90 00 27         [24]  955 	mov	dptr,#_sec
      0032E6 E0               [24]  956 	movx	a,@dptr
      0032E7 24 01            [12]  957 	add	a,#0x01
      0032E9 F0               [24]  958 	movx	@dptr,a
                                    959 ;	main.c:142: if( sec > 59)
      0032EA E0               [24]  960 	movx	a,@dptr
      0032EB FF               [12]  961 	mov  r7,a
      0032EC 24 C4            [12]  962 	add	a,#0xff - 0x3b
      0032EE 50 28            [24]  963 	jnc	00106$
                                    964 ;	main.c:144: min++;
      0032F0 90 00 28         [24]  965 	mov	dptr,#_min
      0032F3 E0               [24]  966 	movx	a,@dptr
      0032F4 24 01            [12]  967 	add	a,#0x01
      0032F6 F0               [24]  968 	movx	@dptr,a
                                    969 ;	main.c:145: if( min == 59)
      0032F7 E0               [24]  970 	movx	a,@dptr
      0032F8 FF               [12]  971 	mov	r7,a
      0032F9 BF 3B 17         [24]  972 	cjne	r7,#0x3b,00104$
                                    973 ;	main.c:147: hour++;
      0032FC 90 00 29         [24]  974 	mov	dptr,#_hour
      0032FF E0               [24]  975 	movx	a,@dptr
      003300 24 01            [12]  976 	add	a,#0x01
      003302 F0               [24]  977 	movx	@dptr,a
                                    978 ;	main.c:148: if(hour > 23)
      003303 E0               [24]  979 	movx	a,@dptr
      003304 FF               [12]  980 	mov  r7,a
      003305 24 E8            [12]  981 	add	a,#0xff - 0x17
      003307 50 05            [24]  982 	jnc	00102$
                                    983 ;	main.c:150: hour = 0;
      003309 90 00 29         [24]  984 	mov	dptr,#_hour
      00330C E4               [12]  985 	clr	a
      00330D F0               [24]  986 	movx	@dptr,a
      00330E                        987 00102$:
                                    988 ;	main.c:152: min = 0;
      00330E 90 00 28         [24]  989 	mov	dptr,#_min
      003311 E4               [12]  990 	clr	a
      003312 F0               [24]  991 	movx	@dptr,a
      003313                        992 00104$:
                                    993 ;	main.c:154: sec = 0;
      003313 90 00 27         [24]  994 	mov	dptr,#_sec
      003316 E4               [12]  995 	clr	a
      003317 F0               [24]  996 	movx	@dptr,a
      003318                        997 00106$:
                                    998 ;	main.c:156: partSec = 0;
      003318 90 00 26         [24]  999 	mov	dptr,#_partSec
      00331B E4               [12] 1000 	clr	a
      00331C F0               [24] 1001 	movx	@dptr,a
      00331D                       1002 00108$:
                                   1003 ;	main.c:158: partSec++;
      00331D 90 00 26         [24] 1004 	mov	dptr,#_partSec
      003320 E0               [24] 1005 	movx	a,@dptr
      003321 24 01            [12] 1006 	add	a,#0x01
      003323 F0               [24] 1007 	movx	@dptr,a
                                   1008 ;	main.c:159: x2 = 0;
      003324 90 00 2A         [24] 1009 	mov	dptr,#_x2
      003327 E4               [12] 1010 	clr	a
      003328 F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	main.c:160: check = 1;
      003329 90 00 2B         [24] 1013 	mov	dptr,#_check
      00332C 04               [12] 1014 	inc	a
      00332D F0               [24] 1015 	movx	@dptr,a
      00332E                       1016 00111$:
                                   1017 ;	main.c:162: }
      00332E D0 D0            [24] 1018 	pop	psw
      003330 D0 07            [24] 1019 	pop	ar7
      003332 D0 83            [24] 1020 	pop	dph
      003334 D0 82            [24] 1021 	pop	dpl
      003336 D0 E0            [24] 1022 	pop	acc
      003338 32               [24] 1023 	reti
                                   1024 ;	eliminated unneeded push/pop b
                                   1025 ;------------------------------------------------------------
                                   1026 ;Allocation info for local variables in function 'putchar'
                                   1027 ;------------------------------------------------------------
                                   1028 ;c                         Allocated with name '_putchar_c_65536_96'
                                   1029 ;------------------------------------------------------------
                                   1030 ;	main.c:165: int putchar (int c)
                                   1031 ;	-----------------------------------------
                                   1032 ;	 function putchar
                                   1033 ;	-----------------------------------------
      003339                       1034 _putchar:
      003339 AF 83            [24] 1035 	mov	r7,dph
      00333B E5 82            [12] 1036 	mov	a,dpl
      00333D 90 00 A3         [24] 1037 	mov	dptr,#_putchar_c_65536_96
      003340 F0               [24] 1038 	movx	@dptr,a
      003341 EF               [12] 1039 	mov	a,r7
      003342 A3               [24] 1040 	inc	dptr
      003343 F0               [24] 1041 	movx	@dptr,a
                                   1042 ;	main.c:167: while ((SCON & 0x02) == 0)    // wait for TX ready, spin on TI
      003344                       1043 00103$:
      003344 E5 98            [12] 1044 	mov	a,_SCON
      003346 20 E1 12         [24] 1045 	jb	acc.1,00105$
                                   1046 ;	main.c:169: if(check == 1)
      003349 90 00 2B         [24] 1047 	mov	dptr,#_check
      00334C E0               [24] 1048 	movx	a,@dptr
      00334D FF               [12] 1049 	mov	r7,a
      00334E BF 01 F3         [24] 1050 	cjne	r7,#0x01,00103$
                                   1051 ;	main.c:171: check = 0;
      003351 90 00 2B         [24] 1052 	mov	dptr,#_check
      003354 E4               [12] 1053 	clr	a
      003355 F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	main.c:172: printTimeStamp();
      003356 12 33 8C         [24] 1056 	lcall	_printTimeStamp
      003359 80 E9            [24] 1057 	sjmp	00103$
      00335B                       1058 00105$:
                                   1059 ;	main.c:175: SBUF = c;  	// load serial port with transmit value
      00335B 90 00 A3         [24] 1060 	mov	dptr,#_putchar_c_65536_96
      00335E E0               [24] 1061 	movx	a,@dptr
      00335F FE               [12] 1062 	mov	r6,a
      003360 A3               [24] 1063 	inc	dptr
      003361 E0               [24] 1064 	movx	a,@dptr
      003362 8E 99            [24] 1065 	mov	_SBUF,r6
                                   1066 ;	main.c:176: TI = 0;  	// clear TI flag
                                   1067 ;	assignBit
      003364 C2 99            [12] 1068 	clr	_TI
                                   1069 ;	main.c:177: return 0;
      003366 90 00 00         [24] 1070 	mov	dptr,#0x0000
                                   1071 ;	main.c:178: }
      003369 22               [24] 1072 	ret
                                   1073 ;------------------------------------------------------------
                                   1074 ;Allocation info for local variables in function 'getchar'
                                   1075 ;------------------------------------------------------------
                                   1076 ;	main.c:180: int getchar ()
                                   1077 ;	-----------------------------------------
                                   1078 ;	 function getchar
                                   1079 ;	-----------------------------------------
      00336A                       1080 _getchar:
                                   1081 ;	main.c:182: while ((SCON & 0x01) == 0)  // wait for character to be received, spin on RI
      00336A                       1082 00103$:
      00336A E5 98            [12] 1083 	mov	a,_SCON
      00336C 20 E0 12         [24] 1084 	jb	acc.0,00105$
                                   1085 ;	main.c:184: if(check == 1)
      00336F 90 00 2B         [24] 1086 	mov	dptr,#_check
      003372 E0               [24] 1087 	movx	a,@dptr
      003373 FF               [12] 1088 	mov	r7,a
      003374 BF 01 F3         [24] 1089 	cjne	r7,#0x01,00103$
                                   1090 ;	main.c:186: check = 0;
      003377 90 00 2B         [24] 1091 	mov	dptr,#_check
      00337A E4               [12] 1092 	clr	a
      00337B F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	main.c:187: printTimeStamp();
      00337C 12 33 8C         [24] 1095 	lcall	_printTimeStamp
      00337F 80 E9            [24] 1096 	sjmp	00103$
      003381                       1097 00105$:
                                   1098 ;	main.c:190: RI = 0;			// clear RI flag
                                   1099 ;	assignBit
      003381 C2 98            [12] 1100 	clr	_RI
                                   1101 ;	main.c:191: return SBUF;  	// return character from SBUF
      003383 AE 99            [24] 1102 	mov	r6,_SBUF
      003385 7F 00            [12] 1103 	mov	r7,#0x00
      003387 8E 82            [24] 1104 	mov	dpl,r6
      003389 8F 83            [24] 1105 	mov	dph,r7
                                   1106 ;	main.c:192: }
      00338B 22               [24] 1107 	ret
                                   1108 ;------------------------------------------------------------
                                   1109 ;Allocation info for local variables in function 'printTimeStamp'
                                   1110 ;------------------------------------------------------------
                                   1111 ;	main.c:194: void printTimeStamp()
                                   1112 ;	-----------------------------------------
                                   1113 ;	 function printTimeStamp
                                   1114 ;	-----------------------------------------
      00338C                       1115 _printTimeStamp:
                                   1116 ;	main.c:196: goToAddr(0x57);
      00338C 75 82 57         [24] 1117 	mov	dpl,#0x57
      00338F 12 21 1A         [24] 1118 	lcall	_goToAddr
                                   1119 ;	main.c:197: lcdPutCh(hour + '0');
      003392 90 00 29         [24] 1120 	mov	dptr,#_hour
      003395 E0               [24] 1121 	movx	a,@dptr
      003396 24 30            [12] 1122 	add	a,#0x30
      003398 F5 82            [12] 1123 	mov	dpl,a
      00339A 12 20 F8         [24] 1124 	lcall	_lcdPutCh
                                   1125 ;	main.c:198: lcdPutCh(':');
      00339D 75 82 3A         [24] 1126 	mov	dpl,#0x3a
      0033A0 12 20 F8         [24] 1127 	lcall	_lcdPutCh
                                   1128 ;	main.c:199: lcdPutCh(min / 10 + '0');
      0033A3 90 00 28         [24] 1129 	mov	dptr,#_min
      0033A6 E0               [24] 1130 	movx	a,@dptr
      0033A7 FF               [12] 1131 	mov	r7,a
      0033A8 7E 00            [12] 1132 	mov	r6,#0x00
      0033AA 90 00 BA         [24] 1133 	mov	dptr,#__divsint_PARM_2
      0033AD 74 0A            [12] 1134 	mov	a,#0x0a
      0033AF F0               [24] 1135 	movx	@dptr,a
      0033B0 E4               [12] 1136 	clr	a
      0033B1 A3               [24] 1137 	inc	dptr
      0033B2 F0               [24] 1138 	movx	@dptr,a
      0033B3 8F 82            [24] 1139 	mov	dpl,r7
      0033B5 8E 83            [24] 1140 	mov	dph,r6
      0033B7 12 37 DE         [24] 1141 	lcall	__divsint
      0033BA AE 82            [24] 1142 	mov	r6,dpl
      0033BC 74 30            [12] 1143 	mov	a,#0x30
      0033BE 2E               [12] 1144 	add	a,r6
      0033BF F5 82            [12] 1145 	mov	dpl,a
      0033C1 12 20 F8         [24] 1146 	lcall	_lcdPutCh
                                   1147 ;	main.c:200: lcdPutCh(min % 10 + '0');
      0033C4 90 00 28         [24] 1148 	mov	dptr,#_min
      0033C7 E0               [24] 1149 	movx	a,@dptr
      0033C8 FF               [12] 1150 	mov	r7,a
      0033C9 7E 00            [12] 1151 	mov	r6,#0x00
      0033CB 90 00 B1         [24] 1152 	mov	dptr,#__modsint_PARM_2
      0033CE 74 0A            [12] 1153 	mov	a,#0x0a
      0033D0 F0               [24] 1154 	movx	@dptr,a
      0033D1 E4               [12] 1155 	clr	a
      0033D2 A3               [24] 1156 	inc	dptr
      0033D3 F0               [24] 1157 	movx	@dptr,a
      0033D4 8F 82            [24] 1158 	mov	dpl,r7
      0033D6 8E 83            [24] 1159 	mov	dph,r6
      0033D8 12 36 CA         [24] 1160 	lcall	__modsint
      0033DB AE 82            [24] 1161 	mov	r6,dpl
      0033DD 74 30            [12] 1162 	mov	a,#0x30
      0033DF 2E               [12] 1163 	add	a,r6
      0033E0 F5 82            [12] 1164 	mov	dpl,a
      0033E2 12 20 F8         [24] 1165 	lcall	_lcdPutCh
                                   1166 ;	main.c:201: lcdPutCh(':');
      0033E5 75 82 3A         [24] 1167 	mov	dpl,#0x3a
      0033E8 12 20 F8         [24] 1168 	lcall	_lcdPutCh
                                   1169 ;	main.c:202: lcdPutCh(sec / 10 + '0');
      0033EB 90 00 27         [24] 1170 	mov	dptr,#_sec
      0033EE E0               [24] 1171 	movx	a,@dptr
      0033EF FF               [12] 1172 	mov	r7,a
      0033F0 7E 00            [12] 1173 	mov	r6,#0x00
      0033F2 90 00 BA         [24] 1174 	mov	dptr,#__divsint_PARM_2
      0033F5 74 0A            [12] 1175 	mov	a,#0x0a
      0033F7 F0               [24] 1176 	movx	@dptr,a
      0033F8 E4               [12] 1177 	clr	a
      0033F9 A3               [24] 1178 	inc	dptr
      0033FA F0               [24] 1179 	movx	@dptr,a
      0033FB 8F 82            [24] 1180 	mov	dpl,r7
      0033FD 8E 83            [24] 1181 	mov	dph,r6
      0033FF 12 37 DE         [24] 1182 	lcall	__divsint
      003402 AE 82            [24] 1183 	mov	r6,dpl
      003404 74 30            [12] 1184 	mov	a,#0x30
      003406 2E               [12] 1185 	add	a,r6
      003407 F5 82            [12] 1186 	mov	dpl,a
      003409 12 20 F8         [24] 1187 	lcall	_lcdPutCh
                                   1188 ;	main.c:203: lcdPutCh(sec % 10 + '0');
      00340C 90 00 27         [24] 1189 	mov	dptr,#_sec
      00340F E0               [24] 1190 	movx	a,@dptr
      003410 FF               [12] 1191 	mov	r7,a
      003411 7E 00            [12] 1192 	mov	r6,#0x00
      003413 90 00 B1         [24] 1193 	mov	dptr,#__modsint_PARM_2
      003416 74 0A            [12] 1194 	mov	a,#0x0a
      003418 F0               [24] 1195 	movx	@dptr,a
      003419 E4               [12] 1196 	clr	a
      00341A A3               [24] 1197 	inc	dptr
      00341B F0               [24] 1198 	movx	@dptr,a
      00341C 8F 82            [24] 1199 	mov	dpl,r7
      00341E 8E 83            [24] 1200 	mov	dph,r6
      003420 12 36 CA         [24] 1201 	lcall	__modsint
      003423 AE 82            [24] 1202 	mov	r6,dpl
      003425 74 30            [12] 1203 	mov	a,#0x30
      003427 2E               [12] 1204 	add	a,r6
      003428 F5 82            [12] 1205 	mov	dpl,a
      00342A 12 20 F8         [24] 1206 	lcall	_lcdPutCh
                                   1207 ;	main.c:204: lcdPutCh('.');
      00342D 75 82 2E         [24] 1208 	mov	dpl,#0x2e
      003430 12 20 F8         [24] 1209 	lcall	_lcdPutCh
                                   1210 ;	main.c:205: lcdPutCh(partSec + '0');
      003433 90 00 26         [24] 1211 	mov	dptr,#_partSec
      003436 E0               [24] 1212 	movx	a,@dptr
      003437 24 30            [12] 1213 	add	a,#0x30
      003439 F5 82            [12] 1214 	mov	dpl,a
                                   1215 ;	main.c:206: }
      00343B 02 20 F8         [24] 1216 	ljmp	_lcdPutCh
                                   1217 	.area CSEG    (CODE)
                                   1218 	.area CONST   (CODE)
      00472A                       1219 _lookUpTable1:
      00472A 00                    1220 	.db #0x00	; 0
      00472B 01                    1221 	.db #0x01	; 1
      00472C 02                    1222 	.db #0x02	; 2
      00472D 03                    1223 	.db #0x03	; 3
      00472E 04                    1224 	.db #0x04	; 4
      00472F 05                    1225 	.db #0x05	; 5
      004730 06                    1226 	.db #0x06	; 6
      004731 07                    1227 	.db #0x07	; 7
      004732 08                    1228 	.db #0x08	; 8
      004733 09                    1229 	.db #0x09	; 9
      004734 0A                    1230 	.db #0x0a	; 10
      004735 0B                    1231 	.db #0x0b	; 11
      004736 0C                    1232 	.db #0x0c	; 12
      004737 0D                    1233 	.db #0x0d	; 13
      004738 0E                    1234 	.db #0x0e	; 14
      004739 0F                    1235 	.db #0x0f	; 15
      00473A 40                    1236 	.db #0x40	; 64
      00473B 41                    1237 	.db #0x41	; 65	'A'
      00473C 42                    1238 	.db #0x42	; 66	'B'
      00473D 43                    1239 	.db #0x43	; 67	'C'
      00473E 44                    1240 	.db #0x44	; 68	'D'
      00473F 45                    1241 	.db #0x45	; 69	'E'
      004740 46                    1242 	.db #0x46	; 70	'F'
      004741 47                    1243 	.db #0x47	; 71	'G'
      004742 48                    1244 	.db #0x48	; 72	'H'
      004743 49                    1245 	.db #0x49	; 73	'I'
      004744 4A                    1246 	.db #0x4a	; 74	'J'
      004745 4B                    1247 	.db #0x4b	; 75	'K'
      004746 4C                    1248 	.db #0x4c	; 76	'L'
      004747 4D                    1249 	.db #0x4d	; 77	'M'
      004748 4E                    1250 	.db #0x4e	; 78	'N'
      004749 4F                    1251 	.db #0x4f	; 79	'O'
      00474A 10                    1252 	.db #0x10	; 16
      00474B 11                    1253 	.db #0x11	; 17
      00474C 12                    1254 	.db #0x12	; 18
      00474D 13                    1255 	.db #0x13	; 19
      00474E 14                    1256 	.db #0x14	; 20
      00474F 15                    1257 	.db #0x15	; 21
      004750 16                    1258 	.db #0x16	; 22
      004751 17                    1259 	.db #0x17	; 23
      004752 18                    1260 	.db #0x18	; 24
      004753 19                    1261 	.db #0x19	; 25
      004754 1A                    1262 	.db #0x1a	; 26
      004755 1B                    1263 	.db #0x1b	; 27
      004756 1C                    1264 	.db #0x1c	; 28
      004757 1D                    1265 	.db #0x1d	; 29
      004758 1E                    1266 	.db #0x1e	; 30
      004759 1F                    1267 	.db #0x1f	; 31
      00475A 50                    1268 	.db #0x50	; 80	'P'
      00475B 51                    1269 	.db #0x51	; 81	'Q'
      00475C 52                    1270 	.db #0x52	; 82	'R'
      00475D 53                    1271 	.db #0x53	; 83	'S'
      00475E 54                    1272 	.db #0x54	; 84	'T'
      00475F 55                    1273 	.db #0x55	; 85	'U'
      004760 56                    1274 	.db #0x56	; 86	'V'
      004761 57                    1275 	.db #0x57	; 87	'W'
      004762 58                    1276 	.db #0x58	; 88	'X'
      004763 59                    1277 	.db #0x59	; 89	'Y'
      004764 5A                    1278 	.db #0x5a	; 90	'Z'
      004765 5B                    1279 	.db #0x5b	; 91
      004766 5C                    1280 	.db #0x5c	; 92
      004767 5D                    1281 	.db #0x5d	; 93
      004768 5E                    1282 	.db #0x5e	; 94
      004769 5F                    1283 	.db #0x5f	; 95
                                   1284 	.area CONST   (CODE)
      00476A                       1285 ___str_0:
      00476A 0A                    1286 	.db 0x0a
      00476B 0D                    1287 	.db 0x0d
      00476C 45 6E 74 65 72 20 74  1288 	.ascii "Enter the row number from 0 to 2"
             68 65 20 72 6F 77 20
             6E 75 6D 62 65 72 20
             66 72 6F 6D 20 30 20
             74 6F 20 32
      00478C 0A                    1289 	.db 0x0a
      00478D 0D                    1290 	.db 0x0d
      00478E 00                    1291 	.db 0x00
                                   1292 	.area CSEG    (CODE)
                                   1293 	.area CONST   (CODE)
      00478F                       1294 ___str_1:
      00478F 0A                    1295 	.db 0x0a
      004790 0D                    1296 	.db 0x0d
      004791 45 6E 74 65 72 65 64  1297 	.ascii "Entered Row is incorrect"
             20 52 6F 77 20 69 73
             20 69 6E 63 6F 72 72
             65 63 74
      0047A9 0A                    1298 	.db 0x0a
      0047AA 0D                    1299 	.db 0x0d
      0047AB 00                    1300 	.db 0x00
                                   1301 	.area CSEG    (CODE)
                                   1302 	.area CONST   (CODE)
      0047AC                       1303 ___str_2:
      0047AC 0A                    1304 	.db 0x0a
      0047AD 0D                    1305 	.db 0x0d
      0047AE 45 6E 74 65 72 20 74  1306 	.ascii "Enter the column number from 0 to 15"
             68 65 20 63 6F 6C 75
             6D 6E 20 6E 75 6D 62
             65 72 20 66 72 6F 6D
             20 30 20 74 6F 20 31
             35
      0047D2 0A                    1307 	.db 0x0a
      0047D3 0D                    1308 	.db 0x0d
      0047D4 00                    1309 	.db 0x00
                                   1310 	.area CSEG    (CODE)
                                   1311 	.area CONST   (CODE)
      0047D5                       1312 ___str_3:
      0047D5 0A                    1313 	.db 0x0a
      0047D6 0D                    1314 	.db 0x0d
      0047D7 45 6E 74 65 72 65 64  1315 	.ascii "Entered Column is incorrect"
             20 43 6F 6C 75 6D 6E
             20 69 73 20 69 6E 63
             6F 72 72 65 63 74
      0047F2 0A                    1316 	.db 0x0a
      0047F3 0D                    1317 	.db 0x0d
      0047F4 00                    1318 	.db 0x00
                                   1319 	.area CSEG    (CODE)
                                   1320 	.area CONST   (CODE)
      0047F5                       1321 ___str_4:
      0047F5 25 64 20 25 64 20 25  1322 	.ascii "%d %d %d"
             64
      0047FD 00                    1323 	.db 0x00
                                   1324 	.area CSEG    (CODE)
                                   1325 	.area CONST   (CODE)
      0047FE                       1326 ___str_5:
      0047FE 0A                    1327 	.db 0x0a
      0047FF 0D                    1328 	.db 0x0d
      004800 45 6E 74 65 72 20 74  1329 	.ascii "Enter the character"
             68 65 20 63 68 61 72
             61 63 74 65 72
      004813 0A                    1330 	.db 0x0a
      004814 0D                    1331 	.db 0x0d
      004815 00                    1332 	.db 0x00
                                   1333 	.area CSEG    (CODE)
                                   1334 	.area CONST   (CODE)
      004816                       1335 ___str_6:
      004816 0A                    1336 	.db 0x0a
      004817 0D                    1337 	.db 0x0d
      004818 45 6E 74 65 72 20 74  1338 	.ascii "Enter the string"
             68 65 20 73 74 72 69
             6E 67
      004828 0A                    1339 	.db 0x0a
      004829 0D                    1340 	.db 0x0d
      00482A 00                    1341 	.db 0x00
                                   1342 	.area CSEG    (CODE)
                                   1343 	.area XINIT   (CODE)
                                   1344 	.area CABS    (ABS,CODE)
