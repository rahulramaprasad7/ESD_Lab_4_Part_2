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
      00200B 02 2F C7         [24]  538 	ljmp	_timer0_isr
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
      00200E 02 2D A4         [24]  560 	ljmp	_main
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
      002DA4                        581 _main:
                           000007   582 	ar7 = 0x07
                           000006   583 	ar6 = 0x06
                           000005   584 	ar5 = 0x05
                           000004   585 	ar4 = 0x04
                           000003   586 	ar3 = 0x03
                           000002   587 	ar2 = 0x02
                           000001   588 	ar1 = 0x01
                           000000   589 	ar0 = 0x00
                                    590 ;	main.c:21: check = 0;
      002DA4 90 00 2B         [24]  591 	mov	dptr,#_check
      002DA7 E4               [12]  592 	clr	a
      002DA8 F0               [24]  593 	movx	@dptr,a
                                    594 ;	main.c:22: partSec = 0;
      002DA9 90 00 26         [24]  595 	mov	dptr,#_partSec
      002DAC F0               [24]  596 	movx	@dptr,a
                                    597 ;	main.c:23: sec = 0;
      002DAD 90 00 27         [24]  598 	mov	dptr,#_sec
      002DB0 F0               [24]  599 	movx	@dptr,a
                                    600 ;	main.c:24: min = 0;
      002DB1 90 00 28         [24]  601 	mov	dptr,#_min
      002DB4 F0               [24]  602 	movx	@dptr,a
                                    603 ;	main.c:25: hour = 0;
      002DB5 90 00 29         [24]  604 	mov	dptr,#_hour
      002DB8 F0               [24]  605 	movx	@dptr,a
                                    606 ;	main.c:26: x2 = 0;
      002DB9 90 00 2A         [24]  607 	mov	dptr,#_x2
      002DBC F0               [24]  608 	movx	@dptr,a
                                    609 ;	main.c:28: memset(input, '\0',60 * sizeof(char));
      002DBD 90 00 A5         [24]  610 	mov	dptr,#_memset_PARM_2
      002DC0 F0               [24]  611 	movx	@dptr,a
      002DC1 90 00 A6         [24]  612 	mov	dptr,#_memset_PARM_3
      002DC4 74 3C            [12]  613 	mov	a,#0x3c
      002DC6 F0               [24]  614 	movx	@dptr,a
      002DC7 E4               [12]  615 	clr	a
      002DC8 A3               [24]  616 	inc	dptr
      002DC9 F0               [24]  617 	movx	@dptr,a
      002DCA 90 00 2D         [24]  618 	mov	dptr,#_main_input_65537_72
      002DCD 75 F0 00         [24]  619 	mov	b,#0x00
      002DD0 12 31 4A         [24]  620 	lcall	_memset
                                    621 ;	main.c:29: lcdInit();
      002DD3 12 20 97         [24]  622 	lcall	_lcdInit
                                    623 ;	main.c:30: lcdClear();
      002DD6 12 21 0D         [24]  624 	lcall	_lcdClear
                                    625 ;	main.c:31: printMenu();
      002DD9 12 2C D6         [24]  626 	lcall	_printMenu
                                    627 ;	main.c:32: timerInit();
      002DDC 12 20 7B         [24]  628 	lcall	_timerInit
                                    629 ;	main.c:33: while(1)
      002DDF                        630 00128$:
                                    631 ;	main.c:35: ch = getchar();
      002DDF 12 30 76         [24]  632 	lcall	_getchar
      002DE2 AE 82            [24]  633 	mov	r6,dpl
      002DE4 90 00 2C         [24]  634 	mov	dptr,#_ch
      002DE7 EE               [12]  635 	mov	a,r6
      002DE8 F0               [24]  636 	movx	@dptr,a
                                    637 ;	main.c:36: putchar(ch);
      002DE9 7F 00            [12]  638 	mov	r7,#0x00
      002DEB 8E 82            [24]  639 	mov	dpl,r6
      002DED 8F 83            [24]  640 	mov	dph,r7
      002DEF 12 30 45         [24]  641 	lcall	_putchar
                                    642 ;	main.c:37: if(check == 1)
      002DF2 90 00 2B         [24]  643 	mov	dptr,#_check
      002DF5 E0               [24]  644 	movx	a,@dptr
      002DF6 FF               [12]  645 	mov	r7,a
      002DF7 BF 01 08         [24]  646 	cjne	r7,#0x01,00102$
                                    647 ;	main.c:39: check = 0;
      002DFA 90 00 2B         [24]  648 	mov	dptr,#_check
      002DFD E4               [12]  649 	clr	a
      002DFE F0               [24]  650 	movx	@dptr,a
                                    651 ;	main.c:40: printTimeStamp();
      002DFF 12 30 98         [24]  652 	lcall	_printTimeStamp
      002E02                        653 00102$:
                                    654 ;	main.c:43: if(ch == 'w')
      002E02 90 00 2C         [24]  655 	mov	dptr,#_ch
      002E05 E0               [24]  656 	movx	a,@dptr
      002E06 FF               [12]  657 	mov	r7,a
      002E07 BF 77 02         [24]  658 	cjne	r7,#0x77,00190$
      002E0A 80 03            [24]  659 	sjmp	00191$
      002E0C                        660 00190$:
      002E0C 02 2F 2A         [24]  661 	ljmp	00108$
      002E0F                        662 00191$:
                                    663 ;	main.c:47: memset(x,'\0',10 * sizeof(char));
      002E0F 90 00 A5         [24]  664 	mov	dptr,#_memset_PARM_2
      002E12 E4               [12]  665 	clr	a
      002E13 F0               [24]  666 	movx	@dptr,a
      002E14 90 00 A6         [24]  667 	mov	dptr,#_memset_PARM_3
      002E17 74 0A            [12]  668 	mov	a,#0x0a
      002E19 F0               [24]  669 	movx	@dptr,a
      002E1A E4               [12]  670 	clr	a
      002E1B A3               [24]  671 	inc	dptr
      002E1C F0               [24]  672 	movx	@dptr,a
      002E1D 90 00 69         [24]  673 	mov	dptr,#_main_x_196609_75
      002E20 75 F0 00         [24]  674 	mov	b,#0x00
      002E23 12 31 4A         [24]  675 	lcall	_memset
                                    676 ;	main.c:48: printf_tiny("\n\rEnter the row number from 0 to 2\n\r");
      002E26 74 1E            [12]  677 	mov	a,#___str_0
      002E28 C0 E0            [24]  678 	push	acc
      002E2A 74 44            [12]  679 	mov	a,#(___str_0 >> 8)
      002E2C C0 E0            [24]  680 	push	acc
      002E2E 12 32 AD         [24]  681 	lcall	_printf_tiny
      002E31 15 81            [12]  682 	dec	sp
      002E33 15 81            [12]  683 	dec	sp
                                    684 ;	main.c:49: uint8_t row = getchar();
      002E35 12 30 76         [24]  685 	lcall	_getchar
      002E38 AE 82            [24]  686 	mov	r6,dpl
                                    687 ;	main.c:50: putchar(row);
      002E3A 8E 05            [24]  688 	mov	ar5,r6
      002E3C 7F 00            [12]  689 	mov	r7,#0x00
      002E3E 8D 82            [24]  690 	mov	dpl,r5
      002E40 8F 83            [24]  691 	mov	dph,r7
      002E42 C0 06            [24]  692 	push	ar6
      002E44 12 30 45         [24]  693 	lcall	_putchar
      002E47 D0 06            [24]  694 	pop	ar6
                                    695 ;	main.c:51: row = row - '0';
      002E49 EE               [12]  696 	mov	a,r6
      002E4A 24 D0            [12]  697 	add	a,#0xd0
                                    698 ;	main.c:52: if(row > 2)
      002E4C FF               [12]  699 	mov	r7,a
      002E4D 24 FD            [12]  700 	add	a,#0xff - 0x02
      002E4F 50 15            [24]  701 	jnc	00104$
                                    702 ;	main.c:54: printf_tiny("\n\rEntered Row is incorrect\n\r");
      002E51 74 43            [12]  703 	mov	a,#___str_1
      002E53 C0 E0            [24]  704 	push	acc
      002E55 74 44            [12]  705 	mov	a,#(___str_1 >> 8)
      002E57 C0 E0            [24]  706 	push	acc
      002E59 12 32 AD         [24]  707 	lcall	_printf_tiny
      002E5C 15 81            [12]  708 	dec	sp
      002E5E 15 81            [12]  709 	dec	sp
                                    710 ;	main.c:55: printMenu();
      002E60 12 2C D6         [24]  711 	lcall	_printMenu
                                    712 ;	main.c:56: continue;
      002E63 02 2D DF         [24]  713 	ljmp	00128$
      002E66                        714 00104$:
                                    715 ;	main.c:58: printf_tiny("\n\rEnter the column number from 0 to 15\n\r");
      002E66 C0 07            [24]  716 	push	ar7
      002E68 74 60            [12]  717 	mov	a,#___str_2
      002E6A C0 E0            [24]  718 	push	acc
      002E6C 74 44            [12]  719 	mov	a,#(___str_2 >> 8)
      002E6E C0 E0            [24]  720 	push	acc
      002E70 12 32 AD         [24]  721 	lcall	_printf_tiny
      002E73 15 81            [12]  722 	dec	sp
      002E75 15 81            [12]  723 	dec	sp
                                    724 ;	main.c:59: gets(x);
      002E77 90 00 69         [24]  725 	mov	dptr,#_main_x_196609_75
      002E7A 75 F0 00         [24]  726 	mov	b,#0x00
      002E7D 12 23 85         [24]  727 	lcall	_gets
                                    728 ;	main.c:60: uint8_t column = atoi(x);
      002E80 90 00 69         [24]  729 	mov	dptr,#_main_x_196609_75
      002E83 75 F0 00         [24]  730 	mov	b,#0x00
      002E86 12 31 72         [24]  731 	lcall	_atoi
      002E89 AD 82            [24]  732 	mov	r5,dpl
      002E8B D0 07            [24]  733 	pop	ar7
                                    734 ;	main.c:62: if(column > 15)
      002E8D ED               [12]  735 	mov	a,r5
      002E8E 24 F0            [12]  736 	add	a,#0xff - 0x0f
      002E90 50 15            [24]  737 	jnc	00106$
                                    738 ;	main.c:64: printf_tiny("\n\rEntered Column is incorrect\n\r");
      002E92 74 89            [12]  739 	mov	a,#___str_3
      002E94 C0 E0            [24]  740 	push	acc
      002E96 74 44            [12]  741 	mov	a,#(___str_3 >> 8)
      002E98 C0 E0            [24]  742 	push	acc
      002E9A 12 32 AD         [24]  743 	lcall	_printf_tiny
      002E9D 15 81            [12]  744 	dec	sp
      002E9F 15 81            [12]  745 	dec	sp
                                    746 ;	main.c:65: printMenu();
      002EA1 12 2C D6         [24]  747 	lcall	_printMenu
                                    748 ;	main.c:66: continue;
      002EA4 02 2D DF         [24]  749 	ljmp	00128$
      002EA7                        750 00106$:
                                    751 ;	main.c:68: uint8_t ad = lookUpTable1[row][column];
      002EA7 EF               [12]  752 	mov	a,r7
      002EA8 75 F0 10         [24]  753 	mov	b,#0x10
      002EAB A4               [48]  754 	mul	ab
      002EAC 24 DE            [12]  755 	add	a,#_lookUpTable1
      002EAE FC               [12]  756 	mov	r4,a
      002EAF 74 43            [12]  757 	mov	a,#(_lookUpTable1 >> 8)
      002EB1 35 F0            [12]  758 	addc	a,b
      002EB3 FE               [12]  759 	mov	r6,a
      002EB4 ED               [12]  760 	mov	a,r5
      002EB5 2C               [12]  761 	add	a,r4
      002EB6 F5 82            [12]  762 	mov	dpl,a
      002EB8 E4               [12]  763 	clr	a
      002EB9 3E               [12]  764 	addc	a,r6
      002EBA F5 83            [12]  765 	mov	dph,a
      002EBC E4               [12]  766 	clr	a
      002EBD 93               [24]  767 	movc	a,@a+dptr
                                    768 ;	main.c:69: printf("%d %d %d", row, column, ad);
      002EBE FE               [12]  769 	mov	r6,a
      002EBF FB               [12]  770 	mov	r3,a
      002EC0 7C 00            [12]  771 	mov	r4,#0x00
      002EC2 7A 00            [12]  772 	mov	r2,#0x00
      002EC4 8F 01            [24]  773 	mov	ar1,r7
      002EC6 7F 00            [12]  774 	mov	r7,#0x00
      002EC8 C0 06            [24]  775 	push	ar6
      002ECA C0 03            [24]  776 	push	ar3
      002ECC C0 04            [24]  777 	push	ar4
      002ECE C0 05            [24]  778 	push	ar5
      002ED0 C0 02            [24]  779 	push	ar2
      002ED2 C0 01            [24]  780 	push	ar1
      002ED4 C0 07            [24]  781 	push	ar7
      002ED6 74 A9            [12]  782 	mov	a,#___str_4
      002ED8 C0 E0            [24]  783 	push	acc
      002EDA 74 44            [12]  784 	mov	a,#(___str_4 >> 8)
      002EDC C0 E0            [24]  785 	push	acc
      002EDE 74 80            [12]  786 	mov	a,#0x80
      002EE0 C0 E0            [24]  787 	push	acc
      002EE2 12 36 37         [24]  788 	lcall	_printf
      002EE5 E5 81            [12]  789 	mov	a,sp
      002EE7 24 F7            [12]  790 	add	a,#0xf7
      002EE9 F5 81            [12]  791 	mov	sp,a
      002EEB D0 06            [24]  792 	pop	ar6
                                    793 ;	main.c:70: goToAddr(ad);
      002EED 8E 82            [24]  794 	mov	dpl,r6
      002EEF C0 06            [24]  795 	push	ar6
      002EF1 12 21 1A         [24]  796 	lcall	_goToAddr
                                    797 ;	main.c:71: busyWait();
      002EF4 12 20 8B         [24]  798 	lcall	_busyWait
                                    799 ;	main.c:72: printf_tiny("\n\rEnter the character\n\r");
      002EF7 74 B2            [12]  800 	mov	a,#___str_5
      002EF9 C0 E0            [24]  801 	push	acc
      002EFB 74 44            [12]  802 	mov	a,#(___str_5 >> 8)
      002EFD C0 E0            [24]  803 	push	acc
      002EFF 12 32 AD         [24]  804 	lcall	_printf_tiny
      002F02 15 81            [12]  805 	dec	sp
      002F04 15 81            [12]  806 	dec	sp
                                    807 ;	main.c:73: uint8_t inputWrite = getchar();
      002F06 12 30 76         [24]  808 	lcall	_getchar
      002F09 AD 82            [24]  809 	mov	r5,dpl
                                    810 ;	main.c:74: putchar(inputWrite);
      002F0B 8D 04            [24]  811 	mov	ar4,r5
      002F0D 7F 00            [12]  812 	mov	r7,#0x00
      002F0F 8C 82            [24]  813 	mov	dpl,r4
      002F11 8F 83            [24]  814 	mov	dph,r7
      002F13 C0 05            [24]  815 	push	ar5
      002F15 12 30 45         [24]  816 	lcall	_putchar
      002F18 D0 05            [24]  817 	pop	ar5
      002F1A D0 06            [24]  818 	pop	ar6
                                    819 ;	main.c:75: goToAddr(ad);
      002F1C 8E 82            [24]  820 	mov	dpl,r6
      002F1E C0 05            [24]  821 	push	ar5
      002F20 12 21 1A         [24]  822 	lcall	_goToAddr
      002F23 D0 05            [24]  823 	pop	ar5
                                    824 ;	main.c:76: lcdPutCh(inputWrite);
      002F25 8D 82            [24]  825 	mov	dpl,r5
      002F27 12 20 F8         [24]  826 	lcall	_lcdPutCh
      002F2A                        827 00108$:
                                    828 ;	main.c:79: if (ch == 'm')
      002F2A 90 00 2C         [24]  829 	mov	dptr,#_ch
      002F2D E0               [24]  830 	movx	a,@dptr
      002F2E FF               [12]  831 	mov	r7,a
      002F2F BF 6D 03         [24]  832 	cjne	r7,#0x6d,00110$
                                    833 ;	main.c:81: printMenu();
      002F32 12 2C D6         [24]  834 	lcall	_printMenu
      002F35                        835 00110$:
                                    836 ;	main.c:84: if( ch == 'p')
      002F35 90 00 2C         [24]  837 	mov	dptr,#_ch
      002F38 E0               [24]  838 	movx	a,@dptr
      002F39 FF               [12]  839 	mov	r7,a
      002F3A BF 70 03         [24]  840 	cjne	r7,#0x70,00112$
                                    841 ;	main.c:85: gamePacman();
      002F3D 12 26 29         [24]  842 	lcall	_gamePacman
      002F40                        843 00112$:
                                    844 ;	main.c:87: if(ch == 'x')
      002F40 90 00 2C         [24]  845 	mov	dptr,#_ch
      002F43 E0               [24]  846 	movx	a,@dptr
      002F44 FF               [12]  847 	mov	r7,a
      002F45 BF 78 19         [24]  848 	cjne	r7,#0x78,00114$
                                    849 ;	main.c:89: check = 0;
      002F48 90 00 2B         [24]  850 	mov	dptr,#_check
      002F4B E4               [12]  851 	clr	a
      002F4C F0               [24]  852 	movx	@dptr,a
                                    853 ;	main.c:90: partSec = 0;
      002F4D 90 00 26         [24]  854 	mov	dptr,#_partSec
      002F50 F0               [24]  855 	movx	@dptr,a
                                    856 ;	main.c:91: sec = 0;
      002F51 90 00 27         [24]  857 	mov	dptr,#_sec
      002F54 F0               [24]  858 	movx	@dptr,a
                                    859 ;	main.c:92: min = 0;
      002F55 90 00 28         [24]  860 	mov	dptr,#_min
      002F58 F0               [24]  861 	movx	@dptr,a
                                    862 ;	main.c:93: hour = 0;
      002F59 90 00 29         [24]  863 	mov	dptr,#_hour
      002F5C F0               [24]  864 	movx	@dptr,a
                                    865 ;	main.c:94: x2 = 0;
      002F5D 90 00 2A         [24]  866 	mov	dptr,#_x2
      002F60 F0               [24]  867 	movx	@dptr,a
      002F61                        868 00114$:
                                    869 ;	main.c:97: if(ch == 'y')
      002F61 90 00 2C         [24]  870 	mov	dptr,#_ch
      002F64 E0               [24]  871 	movx	a,@dptr
      002F65 FF               [12]  872 	mov	r7,a
      002F66 BF 79 02         [24]  873 	cjne	r7,#0x79,00116$
                                    874 ;	main.c:99: TR0 = 0;
                                    875 ;	assignBit
      002F69 C2 8C            [12]  876 	clr	_TR0
      002F6B                        877 00116$:
                                    878 ;	main.c:102: if(ch == 'z')
      002F6B 90 00 2C         [24]  879 	mov	dptr,#_ch
      002F6E E0               [24]  880 	movx	a,@dptr
      002F6F FF               [12]  881 	mov	r7,a
      002F70 BF 7A 02         [24]  882 	cjne	r7,#0x7a,00118$
                                    883 ;	main.c:104: TR0 = 1;
                                    884 ;	assignBit
      002F73 D2 8C            [12]  885 	setb	_TR0
      002F75                        886 00118$:
                                    887 ;	main.c:107: if(ch == 'c')
      002F75 90 00 2C         [24]  888 	mov	dptr,#_ch
      002F78 E0               [24]  889 	movx	a,@dptr
      002F79 FF               [12]  890 	mov	r7,a
      002F7A BF 63 03         [24]  891 	cjne	r7,#0x63,00120$
                                    892 ;	main.c:109: lcdClear();
      002F7D 12 21 0D         [24]  893 	lcall	_lcdClear
      002F80                        894 00120$:
                                    895 ;	main.c:112: if(ch == 's')
      002F80 90 00 2C         [24]  896 	mov	dptr,#_ch
      002F83 E0               [24]  897 	movx	a,@dptr
      002F84 FF               [12]  898 	mov	r7,a
      002F85 BF 73 21         [24]  899 	cjne	r7,#0x73,00122$
                                    900 ;	main.c:115: printf_tiny("\n\rEnter the string\n\r");
      002F88 74 CA            [12]  901 	mov	a,#___str_6
      002F8A C0 E0            [24]  902 	push	acc
      002F8C 74 44            [12]  903 	mov	a,#(___str_6 >> 8)
      002F8E C0 E0            [24]  904 	push	acc
      002F90 12 32 AD         [24]  905 	lcall	_printf_tiny
      002F93 15 81            [12]  906 	dec	sp
      002F95 15 81            [12]  907 	dec	sp
                                    908 ;	main.c:116: gets(stringRead);
      002F97 90 00 73         [24]  909 	mov	dptr,#_main_stringRead_196609_87
      002F9A 75 F0 00         [24]  910 	mov	b,#0x00
      002F9D 12 23 85         [24]  911 	lcall	_gets
                                    912 ;	main.c:118: putsLCD(stringRead);
      002FA0 90 00 73         [24]  913 	mov	dptr,#_main_stringRead_196609_87
      002FA3 75 F0 00         [24]  914 	mov	b,#0x00
      002FA6 12 22 4C         [24]  915 	lcall	_putsLCD
      002FA9                        916 00122$:
                                    917 ;	main.c:121: if(ch == 'd')
      002FA9 90 00 2C         [24]  918 	mov	dptr,#_ch
      002FAC E0               [24]  919 	movx	a,@dptr
      002FAD FF               [12]  920 	mov	r7,a
      002FAE BF 64 03         [24]  921 	cjne	r7,#0x64,00124$
                                    922 ;	main.c:123: ramDump();
      002FB1 12 24 98         [24]  923 	lcall	_ramDump
      002FB4                        924 00124$:
                                    925 ;	main.c:126: if(ch == 'g')
      002FB4 90 00 2C         [24]  926 	mov	dptr,#_ch
      002FB7 E0               [24]  927 	movx	a,@dptr
      002FB8 FF               [12]  928 	mov	r7,a
      002FB9 BF 67 02         [24]  929 	cjne	r7,#0x67,00210$
      002FBC 80 03            [24]  930 	sjmp	00211$
      002FBE                        931 00210$:
      002FBE 02 2D DF         [24]  932 	ljmp	00128$
      002FC1                        933 00211$:
                                    934 ;	main.c:128: customCharacter();
      002FC1 12 21 60         [24]  935 	lcall	_customCharacter
                                    936 ;	main.c:132: }
      002FC4 02 2D DF         [24]  937 	ljmp	00128$
                                    938 ;------------------------------------------------------------
                                    939 ;Allocation info for local variables in function 'timer0_isr'
                                    940 ;------------------------------------------------------------
                                    941 ;	main.c:134: void timer0_isr() __interrupt (1)
                                    942 ;	-----------------------------------------
                                    943 ;	 function timer0_isr
                                    944 ;	-----------------------------------------
      002FC7                        945 _timer0_isr:
      002FC7 C0 E0            [24]  946 	push	acc
      002FC9 C0 82            [24]  947 	push	dpl
      002FCB C0 83            [24]  948 	push	dph
      002FCD C0 07            [24]  949 	push	ar7
      002FCF C0 D0            [24]  950 	push	psw
      002FD1 75 D0 00         [24]  951 	mov	psw,#0x00
                                    952 ;	main.c:136: TH0 = 0x4B;
      002FD4 75 8C 4B         [24]  953 	mov	_TH0,#0x4b
                                    954 ;	main.c:137: TL0 = 0xFC;
      002FD7 75 8A FC         [24]  955 	mov	_TL0,#0xfc
                                    956 ;	main.c:138: x2++;
      002FDA 90 00 2A         [24]  957 	mov	dptr,#_x2
      002FDD E0               [24]  958 	movx	a,@dptr
      002FDE 24 01            [12]  959 	add	a,#0x01
      002FE0 F0               [24]  960 	movx	@dptr,a
                                    961 ;	main.c:139: if(x2 == 2)
      002FE1 E0               [24]  962 	movx	a,@dptr
      002FE2 FF               [12]  963 	mov	r7,a
      002FE3 BF 02 54         [24]  964 	cjne	r7,#0x02,00111$
                                    965 ;	main.c:141: if(partSec > 9)
      002FE6 90 00 26         [24]  966 	mov	dptr,#_partSec
      002FE9 E0               [24]  967 	movx	a,@dptr
      002FEA FF               [12]  968 	mov  r7,a
      002FEB 24 F6            [12]  969 	add	a,#0xff - 0x09
      002FED 50 3A            [24]  970 	jnc	00108$
                                    971 ;	main.c:143: sec++;
      002FEF 90 00 27         [24]  972 	mov	dptr,#_sec
      002FF2 E0               [24]  973 	movx	a,@dptr
      002FF3 24 01            [12]  974 	add	a,#0x01
      002FF5 F0               [24]  975 	movx	@dptr,a
                                    976 ;	main.c:144: if( sec > 59)
      002FF6 E0               [24]  977 	movx	a,@dptr
      002FF7 FF               [12]  978 	mov  r7,a
      002FF8 24 C4            [12]  979 	add	a,#0xff - 0x3b
      002FFA 50 28            [24]  980 	jnc	00106$
                                    981 ;	main.c:146: min++;
      002FFC 90 00 28         [24]  982 	mov	dptr,#_min
      002FFF E0               [24]  983 	movx	a,@dptr
      003000 24 01            [12]  984 	add	a,#0x01
      003002 F0               [24]  985 	movx	@dptr,a
                                    986 ;	main.c:147: if( min == 59)
      003003 E0               [24]  987 	movx	a,@dptr
      003004 FF               [12]  988 	mov	r7,a
      003005 BF 3B 17         [24]  989 	cjne	r7,#0x3b,00104$
                                    990 ;	main.c:149: hour++;
      003008 90 00 29         [24]  991 	mov	dptr,#_hour
      00300B E0               [24]  992 	movx	a,@dptr
      00300C 24 01            [12]  993 	add	a,#0x01
      00300E F0               [24]  994 	movx	@dptr,a
                                    995 ;	main.c:150: if(hour > 23)
      00300F E0               [24]  996 	movx	a,@dptr
      003010 FF               [12]  997 	mov  r7,a
      003011 24 E8            [12]  998 	add	a,#0xff - 0x17
      003013 50 05            [24]  999 	jnc	00102$
                                   1000 ;	main.c:152: hour = 0;
      003015 90 00 29         [24] 1001 	mov	dptr,#_hour
      003018 E4               [12] 1002 	clr	a
      003019 F0               [24] 1003 	movx	@dptr,a
      00301A                       1004 00102$:
                                   1005 ;	main.c:154: min = 0;
      00301A 90 00 28         [24] 1006 	mov	dptr,#_min
      00301D E4               [12] 1007 	clr	a
      00301E F0               [24] 1008 	movx	@dptr,a
      00301F                       1009 00104$:
                                   1010 ;	main.c:156: sec = 0;
      00301F 90 00 27         [24] 1011 	mov	dptr,#_sec
      003022 E4               [12] 1012 	clr	a
      003023 F0               [24] 1013 	movx	@dptr,a
      003024                       1014 00106$:
                                   1015 ;	main.c:158: partSec = 0;
      003024 90 00 26         [24] 1016 	mov	dptr,#_partSec
      003027 E4               [12] 1017 	clr	a
      003028 F0               [24] 1018 	movx	@dptr,a
      003029                       1019 00108$:
                                   1020 ;	main.c:160: partSec++;
      003029 90 00 26         [24] 1021 	mov	dptr,#_partSec
      00302C E0               [24] 1022 	movx	a,@dptr
      00302D 24 01            [12] 1023 	add	a,#0x01
      00302F F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	main.c:161: x2 = 0;
      003030 90 00 2A         [24] 1026 	mov	dptr,#_x2
      003033 E4               [12] 1027 	clr	a
      003034 F0               [24] 1028 	movx	@dptr,a
                                   1029 ;	main.c:162: check = 1;
      003035 90 00 2B         [24] 1030 	mov	dptr,#_check
      003038 04               [12] 1031 	inc	a
      003039 F0               [24] 1032 	movx	@dptr,a
      00303A                       1033 00111$:
                                   1034 ;	main.c:164: }
      00303A D0 D0            [24] 1035 	pop	psw
      00303C D0 07            [24] 1036 	pop	ar7
      00303E D0 83            [24] 1037 	pop	dph
      003040 D0 82            [24] 1038 	pop	dpl
      003042 D0 E0            [24] 1039 	pop	acc
      003044 32               [24] 1040 	reti
                                   1041 ;	eliminated unneeded push/pop b
                                   1042 ;------------------------------------------------------------
                                   1043 ;Allocation info for local variables in function 'putchar'
                                   1044 ;------------------------------------------------------------
                                   1045 ;c                         Allocated with name '_putchar_c_65536_96'
                                   1046 ;------------------------------------------------------------
                                   1047 ;	main.c:167: int putchar (int c)
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function putchar
                                   1050 ;	-----------------------------------------
      003045                       1051 _putchar:
      003045 AF 83            [24] 1052 	mov	r7,dph
      003047 E5 82            [12] 1053 	mov	a,dpl
      003049 90 00 A3         [24] 1054 	mov	dptr,#_putchar_c_65536_96
      00304C F0               [24] 1055 	movx	@dptr,a
      00304D EF               [12] 1056 	mov	a,r7
      00304E A3               [24] 1057 	inc	dptr
      00304F F0               [24] 1058 	movx	@dptr,a
                                   1059 ;	main.c:169: while ((SCON & 0x02) == 0)    // wait for TX ready, spin on TI
      003050                       1060 00103$:
      003050 E5 98            [12] 1061 	mov	a,_SCON
      003052 20 E1 12         [24] 1062 	jb	acc.1,00105$
                                   1063 ;	main.c:171: if(check == 1)
      003055 90 00 2B         [24] 1064 	mov	dptr,#_check
      003058 E0               [24] 1065 	movx	a,@dptr
      003059 FF               [12] 1066 	mov	r7,a
      00305A BF 01 F3         [24] 1067 	cjne	r7,#0x01,00103$
                                   1068 ;	main.c:173: check = 0;
      00305D 90 00 2B         [24] 1069 	mov	dptr,#_check
      003060 E4               [12] 1070 	clr	a
      003061 F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	main.c:174: printTimeStamp();
      003062 12 30 98         [24] 1073 	lcall	_printTimeStamp
      003065 80 E9            [24] 1074 	sjmp	00103$
      003067                       1075 00105$:
                                   1076 ;	main.c:177: SBUF = c;  	// load serial port with transmit value
      003067 90 00 A3         [24] 1077 	mov	dptr,#_putchar_c_65536_96
      00306A E0               [24] 1078 	movx	a,@dptr
      00306B FE               [12] 1079 	mov	r6,a
      00306C A3               [24] 1080 	inc	dptr
      00306D E0               [24] 1081 	movx	a,@dptr
      00306E 8E 99            [24] 1082 	mov	_SBUF,r6
                                   1083 ;	main.c:178: TI = 0;  	// clear TI flag
                                   1084 ;	assignBit
      003070 C2 99            [12] 1085 	clr	_TI
                                   1086 ;	main.c:179: return 0;
      003072 90 00 00         [24] 1087 	mov	dptr,#0x0000
                                   1088 ;	main.c:180: }
      003075 22               [24] 1089 	ret
                                   1090 ;------------------------------------------------------------
                                   1091 ;Allocation info for local variables in function 'getchar'
                                   1092 ;------------------------------------------------------------
                                   1093 ;	main.c:182: int getchar ()
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function getchar
                                   1096 ;	-----------------------------------------
      003076                       1097 _getchar:
                                   1098 ;	main.c:184: while ((SCON & 0x01) == 0)  // wait for character to be received, spin on RI
      003076                       1099 00103$:
      003076 E5 98            [12] 1100 	mov	a,_SCON
      003078 20 E0 12         [24] 1101 	jb	acc.0,00105$
                                   1102 ;	main.c:186: if(check == 1)
      00307B 90 00 2B         [24] 1103 	mov	dptr,#_check
      00307E E0               [24] 1104 	movx	a,@dptr
      00307F FF               [12] 1105 	mov	r7,a
      003080 BF 01 F3         [24] 1106 	cjne	r7,#0x01,00103$
                                   1107 ;	main.c:188: check = 0;
      003083 90 00 2B         [24] 1108 	mov	dptr,#_check
      003086 E4               [12] 1109 	clr	a
      003087 F0               [24] 1110 	movx	@dptr,a
                                   1111 ;	main.c:189: printTimeStamp();
      003088 12 30 98         [24] 1112 	lcall	_printTimeStamp
      00308B 80 E9            [24] 1113 	sjmp	00103$
      00308D                       1114 00105$:
                                   1115 ;	main.c:192: RI = 0;			// clear RI flag
                                   1116 ;	assignBit
      00308D C2 98            [12] 1117 	clr	_RI
                                   1118 ;	main.c:193: return SBUF;  	// return character from SBUF
      00308F AE 99            [24] 1119 	mov	r6,_SBUF
      003091 7F 00            [12] 1120 	mov	r7,#0x00
      003093 8E 82            [24] 1121 	mov	dpl,r6
      003095 8F 83            [24] 1122 	mov	dph,r7
                                   1123 ;	main.c:194: }
      003097 22               [24] 1124 	ret
                                   1125 ;------------------------------------------------------------
                                   1126 ;Allocation info for local variables in function 'printTimeStamp'
                                   1127 ;------------------------------------------------------------
                                   1128 ;	main.c:196: void printTimeStamp()
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function printTimeStamp
                                   1131 ;	-----------------------------------------
      003098                       1132 _printTimeStamp:
                                   1133 ;	main.c:198: goToAddr(0x57);
      003098 75 82 57         [24] 1134 	mov	dpl,#0x57
      00309B 12 21 1A         [24] 1135 	lcall	_goToAddr
                                   1136 ;	main.c:199: lcdPutCh(hour + '0');
      00309E 90 00 29         [24] 1137 	mov	dptr,#_hour
      0030A1 E0               [24] 1138 	movx	a,@dptr
      0030A2 24 30            [12] 1139 	add	a,#0x30
      0030A4 F5 82            [12] 1140 	mov	dpl,a
      0030A6 12 20 F8         [24] 1141 	lcall	_lcdPutCh
                                   1142 ;	main.c:200: lcdPutCh(':');
      0030A9 75 82 3A         [24] 1143 	mov	dpl,#0x3a
      0030AC 12 20 F8         [24] 1144 	lcall	_lcdPutCh
                                   1145 ;	main.c:201: lcdPutCh(min / 10 + '0');
      0030AF 90 00 28         [24] 1146 	mov	dptr,#_min
      0030B2 E0               [24] 1147 	movx	a,@dptr
      0030B3 FF               [12] 1148 	mov	r7,a
      0030B4 7E 00            [12] 1149 	mov	r6,#0x00
      0030B6 90 00 BA         [24] 1150 	mov	dptr,#__divsint_PARM_2
      0030B9 74 0A            [12] 1151 	mov	a,#0x0a
      0030BB F0               [24] 1152 	movx	@dptr,a
      0030BC E4               [12] 1153 	clr	a
      0030BD A3               [24] 1154 	inc	dptr
      0030BE F0               [24] 1155 	movx	@dptr,a
      0030BF 8F 82            [24] 1156 	mov	dpl,r7
      0030C1 8E 83            [24] 1157 	mov	dph,r6
      0030C3 12 34 EA         [24] 1158 	lcall	__divsint
      0030C6 AE 82            [24] 1159 	mov	r6,dpl
      0030C8 74 30            [12] 1160 	mov	a,#0x30
      0030CA 2E               [12] 1161 	add	a,r6
      0030CB F5 82            [12] 1162 	mov	dpl,a
      0030CD 12 20 F8         [24] 1163 	lcall	_lcdPutCh
                                   1164 ;	main.c:202: lcdPutCh(min % 10 + '0');
      0030D0 90 00 28         [24] 1165 	mov	dptr,#_min
      0030D3 E0               [24] 1166 	movx	a,@dptr
      0030D4 FF               [12] 1167 	mov	r7,a
      0030D5 7E 00            [12] 1168 	mov	r6,#0x00
      0030D7 90 00 B1         [24] 1169 	mov	dptr,#__modsint_PARM_2
      0030DA 74 0A            [12] 1170 	mov	a,#0x0a
      0030DC F0               [24] 1171 	movx	@dptr,a
      0030DD E4               [12] 1172 	clr	a
      0030DE A3               [24] 1173 	inc	dptr
      0030DF F0               [24] 1174 	movx	@dptr,a
      0030E0 8F 82            [24] 1175 	mov	dpl,r7
      0030E2 8E 83            [24] 1176 	mov	dph,r6
      0030E4 12 33 D6         [24] 1177 	lcall	__modsint
      0030E7 AE 82            [24] 1178 	mov	r6,dpl
      0030E9 74 30            [12] 1179 	mov	a,#0x30
      0030EB 2E               [12] 1180 	add	a,r6
      0030EC F5 82            [12] 1181 	mov	dpl,a
      0030EE 12 20 F8         [24] 1182 	lcall	_lcdPutCh
                                   1183 ;	main.c:203: lcdPutCh(':');
      0030F1 75 82 3A         [24] 1184 	mov	dpl,#0x3a
      0030F4 12 20 F8         [24] 1185 	lcall	_lcdPutCh
                                   1186 ;	main.c:204: lcdPutCh(sec / 10 + '0');
      0030F7 90 00 27         [24] 1187 	mov	dptr,#_sec
      0030FA E0               [24] 1188 	movx	a,@dptr
      0030FB FF               [12] 1189 	mov	r7,a
      0030FC 7E 00            [12] 1190 	mov	r6,#0x00
      0030FE 90 00 BA         [24] 1191 	mov	dptr,#__divsint_PARM_2
      003101 74 0A            [12] 1192 	mov	a,#0x0a
      003103 F0               [24] 1193 	movx	@dptr,a
      003104 E4               [12] 1194 	clr	a
      003105 A3               [24] 1195 	inc	dptr
      003106 F0               [24] 1196 	movx	@dptr,a
      003107 8F 82            [24] 1197 	mov	dpl,r7
      003109 8E 83            [24] 1198 	mov	dph,r6
      00310B 12 34 EA         [24] 1199 	lcall	__divsint
      00310E AE 82            [24] 1200 	mov	r6,dpl
      003110 74 30            [12] 1201 	mov	a,#0x30
      003112 2E               [12] 1202 	add	a,r6
      003113 F5 82            [12] 1203 	mov	dpl,a
      003115 12 20 F8         [24] 1204 	lcall	_lcdPutCh
                                   1205 ;	main.c:205: lcdPutCh(sec % 10 + '0');
      003118 90 00 27         [24] 1206 	mov	dptr,#_sec
      00311B E0               [24] 1207 	movx	a,@dptr
      00311C FF               [12] 1208 	mov	r7,a
      00311D 7E 00            [12] 1209 	mov	r6,#0x00
      00311F 90 00 B1         [24] 1210 	mov	dptr,#__modsint_PARM_2
      003122 74 0A            [12] 1211 	mov	a,#0x0a
      003124 F0               [24] 1212 	movx	@dptr,a
      003125 E4               [12] 1213 	clr	a
      003126 A3               [24] 1214 	inc	dptr
      003127 F0               [24] 1215 	movx	@dptr,a
      003128 8F 82            [24] 1216 	mov	dpl,r7
      00312A 8E 83            [24] 1217 	mov	dph,r6
      00312C 12 33 D6         [24] 1218 	lcall	__modsint
      00312F AE 82            [24] 1219 	mov	r6,dpl
      003131 74 30            [12] 1220 	mov	a,#0x30
      003133 2E               [12] 1221 	add	a,r6
      003134 F5 82            [12] 1222 	mov	dpl,a
      003136 12 20 F8         [24] 1223 	lcall	_lcdPutCh
                                   1224 ;	main.c:206: lcdPutCh('.');
      003139 75 82 2E         [24] 1225 	mov	dpl,#0x2e
      00313C 12 20 F8         [24] 1226 	lcall	_lcdPutCh
                                   1227 ;	main.c:207: lcdPutCh(partSec + '0');
      00313F 90 00 26         [24] 1228 	mov	dptr,#_partSec
      003142 E0               [24] 1229 	movx	a,@dptr
      003143 24 30            [12] 1230 	add	a,#0x30
      003145 F5 82            [12] 1231 	mov	dpl,a
                                   1232 ;	main.c:208: }
      003147 02 20 F8         [24] 1233 	ljmp	_lcdPutCh
                                   1234 	.area CSEG    (CODE)
                                   1235 	.area CONST   (CODE)
      0043DE                       1236 _lookUpTable1:
      0043DE 00                    1237 	.db #0x00	; 0
      0043DF 01                    1238 	.db #0x01	; 1
      0043E0 02                    1239 	.db #0x02	; 2
      0043E1 03                    1240 	.db #0x03	; 3
      0043E2 04                    1241 	.db #0x04	; 4
      0043E3 05                    1242 	.db #0x05	; 5
      0043E4 06                    1243 	.db #0x06	; 6
      0043E5 07                    1244 	.db #0x07	; 7
      0043E6 08                    1245 	.db #0x08	; 8
      0043E7 09                    1246 	.db #0x09	; 9
      0043E8 0A                    1247 	.db #0x0a	; 10
      0043E9 0B                    1248 	.db #0x0b	; 11
      0043EA 0C                    1249 	.db #0x0c	; 12
      0043EB 0D                    1250 	.db #0x0d	; 13
      0043EC 0E                    1251 	.db #0x0e	; 14
      0043ED 0F                    1252 	.db #0x0f	; 15
      0043EE 40                    1253 	.db #0x40	; 64
      0043EF 41                    1254 	.db #0x41	; 65	'A'
      0043F0 42                    1255 	.db #0x42	; 66	'B'
      0043F1 43                    1256 	.db #0x43	; 67	'C'
      0043F2 44                    1257 	.db #0x44	; 68	'D'
      0043F3 45                    1258 	.db #0x45	; 69	'E'
      0043F4 46                    1259 	.db #0x46	; 70	'F'
      0043F5 47                    1260 	.db #0x47	; 71	'G'
      0043F6 48                    1261 	.db #0x48	; 72	'H'
      0043F7 49                    1262 	.db #0x49	; 73	'I'
      0043F8 4A                    1263 	.db #0x4a	; 74	'J'
      0043F9 4B                    1264 	.db #0x4b	; 75	'K'
      0043FA 4C                    1265 	.db #0x4c	; 76	'L'
      0043FB 4D                    1266 	.db #0x4d	; 77	'M'
      0043FC 4E                    1267 	.db #0x4e	; 78	'N'
      0043FD 4F                    1268 	.db #0x4f	; 79	'O'
      0043FE 10                    1269 	.db #0x10	; 16
      0043FF 11                    1270 	.db #0x11	; 17
      004400 12                    1271 	.db #0x12	; 18
      004401 13                    1272 	.db #0x13	; 19
      004402 14                    1273 	.db #0x14	; 20
      004403 15                    1274 	.db #0x15	; 21
      004404 16                    1275 	.db #0x16	; 22
      004405 17                    1276 	.db #0x17	; 23
      004406 18                    1277 	.db #0x18	; 24
      004407 19                    1278 	.db #0x19	; 25
      004408 1A                    1279 	.db #0x1a	; 26
      004409 1B                    1280 	.db #0x1b	; 27
      00440A 1C                    1281 	.db #0x1c	; 28
      00440B 1D                    1282 	.db #0x1d	; 29
      00440C 1E                    1283 	.db #0x1e	; 30
      00440D 1F                    1284 	.db #0x1f	; 31
      00440E 50                    1285 	.db #0x50	; 80	'P'
      00440F 51                    1286 	.db #0x51	; 81	'Q'
      004410 52                    1287 	.db #0x52	; 82	'R'
      004411 53                    1288 	.db #0x53	; 83	'S'
      004412 54                    1289 	.db #0x54	; 84	'T'
      004413 55                    1290 	.db #0x55	; 85	'U'
      004414 56                    1291 	.db #0x56	; 86	'V'
      004415 57                    1292 	.db #0x57	; 87	'W'
      004416 58                    1293 	.db #0x58	; 88	'X'
      004417 59                    1294 	.db #0x59	; 89	'Y'
      004418 5A                    1295 	.db #0x5a	; 90	'Z'
      004419 5B                    1296 	.db #0x5b	; 91
      00441A 5C                    1297 	.db #0x5c	; 92
      00441B 5D                    1298 	.db #0x5d	; 93
      00441C 5E                    1299 	.db #0x5e	; 94
      00441D 5F                    1300 	.db #0x5f	; 95
                                   1301 	.area CONST   (CODE)
      00441E                       1302 ___str_0:
      00441E 0A                    1303 	.db 0x0a
      00441F 0D                    1304 	.db 0x0d
      004420 45 6E 74 65 72 20 74  1305 	.ascii "Enter the row number from 0 to 2"
             68 65 20 72 6F 77 20
             6E 75 6D 62 65 72 20
             66 72 6F 6D 20 30 20
             74 6F 20 32
      004440 0A                    1306 	.db 0x0a
      004441 0D                    1307 	.db 0x0d
      004442 00                    1308 	.db 0x00
                                   1309 	.area CSEG    (CODE)
                                   1310 	.area CONST   (CODE)
      004443                       1311 ___str_1:
      004443 0A                    1312 	.db 0x0a
      004444 0D                    1313 	.db 0x0d
      004445 45 6E 74 65 72 65 64  1314 	.ascii "Entered Row is incorrect"
             20 52 6F 77 20 69 73
             20 69 6E 63 6F 72 72
             65 63 74
      00445D 0A                    1315 	.db 0x0a
      00445E 0D                    1316 	.db 0x0d
      00445F 00                    1317 	.db 0x00
                                   1318 	.area CSEG    (CODE)
                                   1319 	.area CONST   (CODE)
      004460                       1320 ___str_2:
      004460 0A                    1321 	.db 0x0a
      004461 0D                    1322 	.db 0x0d
      004462 45 6E 74 65 72 20 74  1323 	.ascii "Enter the column number from 0 to 15"
             68 65 20 63 6F 6C 75
             6D 6E 20 6E 75 6D 62
             65 72 20 66 72 6F 6D
             20 30 20 74 6F 20 31
             35
      004486 0A                    1324 	.db 0x0a
      004487 0D                    1325 	.db 0x0d
      004488 00                    1326 	.db 0x00
                                   1327 	.area CSEG    (CODE)
                                   1328 	.area CONST   (CODE)
      004489                       1329 ___str_3:
      004489 0A                    1330 	.db 0x0a
      00448A 0D                    1331 	.db 0x0d
      00448B 45 6E 74 65 72 65 64  1332 	.ascii "Entered Column is incorrect"
             20 43 6F 6C 75 6D 6E
             20 69 73 20 69 6E 63
             6F 72 72 65 63 74
      0044A6 0A                    1333 	.db 0x0a
      0044A7 0D                    1334 	.db 0x0d
      0044A8 00                    1335 	.db 0x00
                                   1336 	.area CSEG    (CODE)
                                   1337 	.area CONST   (CODE)
      0044A9                       1338 ___str_4:
      0044A9 25 64 20 25 64 20 25  1339 	.ascii "%d %d %d"
             64
      0044B1 00                    1340 	.db 0x00
                                   1341 	.area CSEG    (CODE)
                                   1342 	.area CONST   (CODE)
      0044B2                       1343 ___str_5:
      0044B2 0A                    1344 	.db 0x0a
      0044B3 0D                    1345 	.db 0x0d
      0044B4 45 6E 74 65 72 20 74  1346 	.ascii "Enter the character"
             68 65 20 63 68 61 72
             61 63 74 65 72
      0044C7 0A                    1347 	.db 0x0a
      0044C8 0D                    1348 	.db 0x0d
      0044C9 00                    1349 	.db 0x00
                                   1350 	.area CSEG    (CODE)
                                   1351 	.area CONST   (CODE)
      0044CA                       1352 ___str_6:
      0044CA 0A                    1353 	.db 0x0a
      0044CB 0D                    1354 	.db 0x0d
      0044CC 45 6E 74 65 72 20 74  1355 	.ascii "Enter the string"
             68 65 20 73 74 72 69
             6E 67
      0044DC 0A                    1356 	.db 0x0a
      0044DD 0D                    1357 	.db 0x0d
      0044DE 00                    1358 	.db 0x00
                                   1359 	.area CSEG    (CODE)
                                   1360 	.area XINIT   (CODE)
                                   1361 	.area CABS    (ABS,CODE)
