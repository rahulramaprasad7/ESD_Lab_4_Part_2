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
      000027                        490 _partSec::
      000027                        491 	.ds 1
      000028                        492 _sec::
      000028                        493 	.ds 1
      000029                        494 _min::
      000029                        495 	.ds 1
      00002A                        496 _hour::
      00002A                        497 	.ds 1
      00002B                        498 _x2::
      00002B                        499 	.ds 1
      00002C                        500 _check::
      00002C                        501 	.ds 1
      00002D                        502 _ch::
      00002D                        503 	.ds 1
      00002E                        504 _main_input_65537_72:
      00002E                        505 	.ds 60
      00006A                        506 _main_x_196609_75:
      00006A                        507 	.ds 10
      000074                        508 _main_stringRead_196609_87:
      000074                        509 	.ds 48
      0000A4                        510 _putchar_c_65536_96:
      0000A4                        511 	.ds 2
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
      00200B 02 2F D9         [24]  538 	ljmp	_timer0_isr
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
      00200E 02 2D C0         [24]  560 	ljmp	_main
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
      002DC0                        581 _main:
                           000007   582 	ar7 = 0x07
                           000006   583 	ar6 = 0x06
                           000005   584 	ar5 = 0x05
                           000004   585 	ar4 = 0x04
                           000003   586 	ar3 = 0x03
                           000002   587 	ar2 = 0x02
                           000001   588 	ar1 = 0x01
                           000000   589 	ar0 = 0x00
                                    590 ;	main.c:21: check = 0;
      002DC0 90 00 2C         [24]  591 	mov	dptr,#_check
      002DC3 E4               [12]  592 	clr	a
      002DC4 F0               [24]  593 	movx	@dptr,a
                                    594 ;	main.c:22: partSec = 0;
      002DC5 90 00 27         [24]  595 	mov	dptr,#_partSec
      002DC8 F0               [24]  596 	movx	@dptr,a
                                    597 ;	main.c:23: sec = 0;
      002DC9 90 00 28         [24]  598 	mov	dptr,#_sec
      002DCC F0               [24]  599 	movx	@dptr,a
                                    600 ;	main.c:24: min = 0;
      002DCD 90 00 29         [24]  601 	mov	dptr,#_min
      002DD0 F0               [24]  602 	movx	@dptr,a
                                    603 ;	main.c:25: hour = 0;
      002DD1 90 00 2A         [24]  604 	mov	dptr,#_hour
      002DD4 F0               [24]  605 	movx	@dptr,a
                                    606 ;	main.c:26: x2 = 0;
      002DD5 90 00 2B         [24]  607 	mov	dptr,#_x2
      002DD8 F0               [24]  608 	movx	@dptr,a
                                    609 ;	main.c:28: memset(input, '\0',60 * sizeof(char));
      002DD9 90 00 A6         [24]  610 	mov	dptr,#_memset_PARM_2
      002DDC F0               [24]  611 	movx	@dptr,a
      002DDD 90 00 A7         [24]  612 	mov	dptr,#_memset_PARM_3
      002DE0 74 3C            [12]  613 	mov	a,#0x3c
      002DE2 F0               [24]  614 	movx	@dptr,a
      002DE3 E4               [12]  615 	clr	a
      002DE4 A3               [24]  616 	inc	dptr
      002DE5 F0               [24]  617 	movx	@dptr,a
      002DE6 90 00 2E         [24]  618 	mov	dptr,#_main_input_65537_72
      002DE9 75 F0 00         [24]  619 	mov	b,#0x00
      002DEC 12 31 5C         [24]  620 	lcall	_memset
                                    621 ;	main.c:29: lcdInit();
      002DEF 12 20 97         [24]  622 	lcall	_lcdInit
                                    623 ;	main.c:30: lcdClear();
      002DF2 12 21 0D         [24]  624 	lcall	_lcdClear
                                    625 ;	main.c:31: printMenu();
      002DF5 12 2C F2         [24]  626 	lcall	_printMenu
                                    627 ;	main.c:32: timerInit();
      002DF8 12 20 7B         [24]  628 	lcall	_timerInit
                                    629 ;	main.c:33: while(1)
      002DFB                        630 00128$:
                                    631 ;	main.c:35: ch = getchar();
      002DFB 12 30 88         [24]  632 	lcall	_getchar
      002DFE AE 82            [24]  633 	mov	r6,dpl
      002E00 90 00 2D         [24]  634 	mov	dptr,#_ch
      002E03 EE               [12]  635 	mov	a,r6
      002E04 F0               [24]  636 	movx	@dptr,a
                                    637 ;	main.c:36: if(check == 1)
      002E05 90 00 2C         [24]  638 	mov	dptr,#_check
      002E08 E0               [24]  639 	movx	a,@dptr
      002E09 FF               [12]  640 	mov	r7,a
      002E0A BF 01 08         [24]  641 	cjne	r7,#0x01,00102$
                                    642 ;	main.c:38: check = 0;
      002E0D 90 00 2C         [24]  643 	mov	dptr,#_check
      002E10 E4               [12]  644 	clr	a
      002E11 F0               [24]  645 	movx	@dptr,a
                                    646 ;	main.c:39: printTimeStamp();
      002E12 12 30 AA         [24]  647 	lcall	_printTimeStamp
      002E15                        648 00102$:
                                    649 ;	main.c:42: if(ch == 'w')
      002E15 90 00 2D         [24]  650 	mov	dptr,#_ch
      002E18 E0               [24]  651 	movx	a,@dptr
      002E19 FF               [12]  652 	mov	r7,a
      002E1A BF 77 02         [24]  653 	cjne	r7,#0x77,00190$
      002E1D 80 03            [24]  654 	sjmp	00191$
      002E1F                        655 00190$:
      002E1F 02 2F 3C         [24]  656 	ljmp	00108$
      002E22                        657 00191$:
                                    658 ;	main.c:46: memset(x,'\0',10 * sizeof(char));
      002E22 90 00 A6         [24]  659 	mov	dptr,#_memset_PARM_2
      002E25 E4               [12]  660 	clr	a
      002E26 F0               [24]  661 	movx	@dptr,a
      002E27 90 00 A7         [24]  662 	mov	dptr,#_memset_PARM_3
      002E2A 74 0A            [12]  663 	mov	a,#0x0a
      002E2C F0               [24]  664 	movx	@dptr,a
      002E2D E4               [12]  665 	clr	a
      002E2E A3               [24]  666 	inc	dptr
      002E2F F0               [24]  667 	movx	@dptr,a
      002E30 90 00 6A         [24]  668 	mov	dptr,#_main_x_196609_75
      002E33 75 F0 00         [24]  669 	mov	b,#0x00
      002E36 12 31 5C         [24]  670 	lcall	_memset
                                    671 ;	main.c:47: printf_tiny("\n\rEnter the row number from 0 to 2\n\r");
      002E39 74 F4            [12]  672 	mov	a,#___str_0
      002E3B C0 E0            [24]  673 	push	acc
      002E3D 74 43            [12]  674 	mov	a,#(___str_0 >> 8)
      002E3F C0 E0            [24]  675 	push	acc
      002E41 12 32 BF         [24]  676 	lcall	_printf_tiny
      002E44 15 81            [12]  677 	dec	sp
      002E46 15 81            [12]  678 	dec	sp
                                    679 ;	main.c:48: uint8_t row = getchar();
      002E48 12 30 88         [24]  680 	lcall	_getchar
      002E4B AE 82            [24]  681 	mov	r6,dpl
                                    682 ;	main.c:49: putchar(row);
      002E4D 8E 05            [24]  683 	mov	ar5,r6
      002E4F 7F 00            [12]  684 	mov	r7,#0x00
      002E51 8D 82            [24]  685 	mov	dpl,r5
      002E53 8F 83            [24]  686 	mov	dph,r7
      002E55 C0 06            [24]  687 	push	ar6
      002E57 12 30 57         [24]  688 	lcall	_putchar
      002E5A D0 06            [24]  689 	pop	ar6
                                    690 ;	main.c:50: row = row - '0';
      002E5C EE               [12]  691 	mov	a,r6
      002E5D 24 D0            [12]  692 	add	a,#0xd0
                                    693 ;	main.c:51: if(row > 2)
      002E5F FF               [12]  694 	mov	r7,a
      002E60 24 FD            [12]  695 	add	a,#0xff - 0x02
      002E62 50 14            [24]  696 	jnc	00104$
                                    697 ;	main.c:53: printf_tiny("\n\rEntered Row is incorrect\n\r");
      002E64 74 19            [12]  698 	mov	a,#___str_1
      002E66 C0 E0            [24]  699 	push	acc
      002E68 74 44            [12]  700 	mov	a,#(___str_1 >> 8)
      002E6A C0 E0            [24]  701 	push	acc
      002E6C 12 32 BF         [24]  702 	lcall	_printf_tiny
      002E6F 15 81            [12]  703 	dec	sp
      002E71 15 81            [12]  704 	dec	sp
                                    705 ;	main.c:54: printMenu();
      002E73 12 2C F2         [24]  706 	lcall	_printMenu
                                    707 ;	main.c:55: continue;
      002E76 80 83            [24]  708 	sjmp	00128$
      002E78                        709 00104$:
                                    710 ;	main.c:57: printf_tiny("\n\rEnter the column number from 0 to 15\n\r");
      002E78 C0 07            [24]  711 	push	ar7
      002E7A 74 36            [12]  712 	mov	a,#___str_2
      002E7C C0 E0            [24]  713 	push	acc
      002E7E 74 44            [12]  714 	mov	a,#(___str_2 >> 8)
      002E80 C0 E0            [24]  715 	push	acc
      002E82 12 32 BF         [24]  716 	lcall	_printf_tiny
      002E85 15 81            [12]  717 	dec	sp
      002E87 15 81            [12]  718 	dec	sp
                                    719 ;	main.c:58: gets(x);
      002E89 90 00 6A         [24]  720 	mov	dptr,#_main_x_196609_75
      002E8C 75 F0 00         [24]  721 	mov	b,#0x00
      002E8F 12 23 75         [24]  722 	lcall	_gets
                                    723 ;	main.c:59: uint8_t column = atoi(x);
      002E92 90 00 6A         [24]  724 	mov	dptr,#_main_x_196609_75
      002E95 75 F0 00         [24]  725 	mov	b,#0x00
      002E98 12 31 84         [24]  726 	lcall	_atoi
      002E9B AD 82            [24]  727 	mov	r5,dpl
      002E9D D0 07            [24]  728 	pop	ar7
                                    729 ;	main.c:61: if(column > 15)
      002E9F ED               [12]  730 	mov	a,r5
      002EA0 24 F0            [12]  731 	add	a,#0xff - 0x0f
      002EA2 50 15            [24]  732 	jnc	00106$
                                    733 ;	main.c:63: printf_tiny("\n\rEntered Column is incorrect\n\r");
      002EA4 74 5F            [12]  734 	mov	a,#___str_3
      002EA6 C0 E0            [24]  735 	push	acc
      002EA8 74 44            [12]  736 	mov	a,#(___str_3 >> 8)
      002EAA C0 E0            [24]  737 	push	acc
      002EAC 12 32 BF         [24]  738 	lcall	_printf_tiny
      002EAF 15 81            [12]  739 	dec	sp
      002EB1 15 81            [12]  740 	dec	sp
                                    741 ;	main.c:64: printMenu();
      002EB3 12 2C F2         [24]  742 	lcall	_printMenu
                                    743 ;	main.c:65: continue;
      002EB6 02 2D FB         [24]  744 	ljmp	00128$
      002EB9                        745 00106$:
                                    746 ;	main.c:67: uint8_t ad = lookUpTable1[row][column];
      002EB9 EF               [12]  747 	mov	a,r7
      002EBA 75 F0 10         [24]  748 	mov	b,#0x10
      002EBD A4               [48]  749 	mul	ab
      002EBE 24 B4            [12]  750 	add	a,#_lookUpTable1
      002EC0 FC               [12]  751 	mov	r4,a
      002EC1 74 43            [12]  752 	mov	a,#(_lookUpTable1 >> 8)
      002EC3 35 F0            [12]  753 	addc	a,b
      002EC5 FE               [12]  754 	mov	r6,a
      002EC6 ED               [12]  755 	mov	a,r5
      002EC7 2C               [12]  756 	add	a,r4
      002EC8 F5 82            [12]  757 	mov	dpl,a
      002ECA E4               [12]  758 	clr	a
      002ECB 3E               [12]  759 	addc	a,r6
      002ECC F5 83            [12]  760 	mov	dph,a
      002ECE E4               [12]  761 	clr	a
      002ECF 93               [24]  762 	movc	a,@a+dptr
                                    763 ;	main.c:68: printf("%d %d %d", row, column, ad);
      002ED0 FE               [12]  764 	mov	r6,a
      002ED1 FB               [12]  765 	mov	r3,a
      002ED2 7C 00            [12]  766 	mov	r4,#0x00
      002ED4 7A 00            [12]  767 	mov	r2,#0x00
      002ED6 8F 01            [24]  768 	mov	ar1,r7
      002ED8 7F 00            [12]  769 	mov	r7,#0x00
      002EDA C0 06            [24]  770 	push	ar6
      002EDC C0 03            [24]  771 	push	ar3
      002EDE C0 04            [24]  772 	push	ar4
      002EE0 C0 05            [24]  773 	push	ar5
      002EE2 C0 02            [24]  774 	push	ar2
      002EE4 C0 01            [24]  775 	push	ar1
      002EE6 C0 07            [24]  776 	push	ar7
      002EE8 74 7F            [12]  777 	mov	a,#___str_4
      002EEA C0 E0            [24]  778 	push	acc
      002EEC 74 44            [12]  779 	mov	a,#(___str_4 >> 8)
      002EEE C0 E0            [24]  780 	push	acc
      002EF0 74 80            [12]  781 	mov	a,#0x80
      002EF2 C0 E0            [24]  782 	push	acc
      002EF4 12 36 49         [24]  783 	lcall	_printf
      002EF7 E5 81            [12]  784 	mov	a,sp
      002EF9 24 F7            [12]  785 	add	a,#0xf7
      002EFB F5 81            [12]  786 	mov	sp,a
      002EFD D0 06            [24]  787 	pop	ar6
                                    788 ;	main.c:69: goToAddr(ad);
      002EFF 8E 82            [24]  789 	mov	dpl,r6
      002F01 C0 06            [24]  790 	push	ar6
      002F03 12 21 1A         [24]  791 	lcall	_goToAddr
                                    792 ;	main.c:70: busyWait();
      002F06 12 20 8B         [24]  793 	lcall	_busyWait
                                    794 ;	main.c:71: printf_tiny("\n\rEnter the character\n\r");
      002F09 74 88            [12]  795 	mov	a,#___str_5
      002F0B C0 E0            [24]  796 	push	acc
      002F0D 74 44            [12]  797 	mov	a,#(___str_5 >> 8)
      002F0F C0 E0            [24]  798 	push	acc
      002F11 12 32 BF         [24]  799 	lcall	_printf_tiny
      002F14 15 81            [12]  800 	dec	sp
      002F16 15 81            [12]  801 	dec	sp
                                    802 ;	main.c:72: uint8_t inputWrite = getchar();
      002F18 12 30 88         [24]  803 	lcall	_getchar
      002F1B AD 82            [24]  804 	mov	r5,dpl
                                    805 ;	main.c:73: putchar(inputWrite);
      002F1D 8D 04            [24]  806 	mov	ar4,r5
      002F1F 7F 00            [12]  807 	mov	r7,#0x00
      002F21 8C 82            [24]  808 	mov	dpl,r4
      002F23 8F 83            [24]  809 	mov	dph,r7
      002F25 C0 05            [24]  810 	push	ar5
      002F27 12 30 57         [24]  811 	lcall	_putchar
      002F2A D0 05            [24]  812 	pop	ar5
      002F2C D0 06            [24]  813 	pop	ar6
                                    814 ;	main.c:74: goToAddr(ad);
      002F2E 8E 82            [24]  815 	mov	dpl,r6
      002F30 C0 05            [24]  816 	push	ar5
      002F32 12 21 1A         [24]  817 	lcall	_goToAddr
      002F35 D0 05            [24]  818 	pop	ar5
                                    819 ;	main.c:75: lcdPutCh(inputWrite);
      002F37 8D 82            [24]  820 	mov	dpl,r5
      002F39 12 20 F8         [24]  821 	lcall	_lcdPutCh
      002F3C                        822 00108$:
                                    823 ;	main.c:78: if (ch == 'm')
      002F3C 90 00 2D         [24]  824 	mov	dptr,#_ch
      002F3F E0               [24]  825 	movx	a,@dptr
      002F40 FF               [12]  826 	mov	r7,a
      002F41 BF 6D 03         [24]  827 	cjne	r7,#0x6d,00110$
                                    828 ;	main.c:80: printMenu();
      002F44 12 2C F2         [24]  829 	lcall	_printMenu
      002F47                        830 00110$:
                                    831 ;	main.c:83: if( ch == 'p')
      002F47 90 00 2D         [24]  832 	mov	dptr,#_ch
      002F4A E0               [24]  833 	movx	a,@dptr
      002F4B FF               [12]  834 	mov	r7,a
      002F4C BF 70 03         [24]  835 	cjne	r7,#0x70,00112$
                                    836 ;	main.c:84: gamePacman();
      002F4F 12 26 33         [24]  837 	lcall	_gamePacman
      002F52                        838 00112$:
                                    839 ;	main.c:86: if(ch == 'x')
      002F52 90 00 2D         [24]  840 	mov	dptr,#_ch
      002F55 E0               [24]  841 	movx	a,@dptr
      002F56 FF               [12]  842 	mov	r7,a
      002F57 BF 78 19         [24]  843 	cjne	r7,#0x78,00114$
                                    844 ;	main.c:88: check = 0;
      002F5A 90 00 2C         [24]  845 	mov	dptr,#_check
      002F5D E4               [12]  846 	clr	a
      002F5E F0               [24]  847 	movx	@dptr,a
                                    848 ;	main.c:89: partSec = 0;
      002F5F 90 00 27         [24]  849 	mov	dptr,#_partSec
      002F62 F0               [24]  850 	movx	@dptr,a
                                    851 ;	main.c:90: sec = 0;
      002F63 90 00 28         [24]  852 	mov	dptr,#_sec
      002F66 F0               [24]  853 	movx	@dptr,a
                                    854 ;	main.c:91: min = 0;
      002F67 90 00 29         [24]  855 	mov	dptr,#_min
      002F6A F0               [24]  856 	movx	@dptr,a
                                    857 ;	main.c:92: hour = 0;
      002F6B 90 00 2A         [24]  858 	mov	dptr,#_hour
      002F6E F0               [24]  859 	movx	@dptr,a
                                    860 ;	main.c:93: x2 = 0;
      002F6F 90 00 2B         [24]  861 	mov	dptr,#_x2
      002F72 F0               [24]  862 	movx	@dptr,a
      002F73                        863 00114$:
                                    864 ;	main.c:96: if(ch == 'y')
      002F73 90 00 2D         [24]  865 	mov	dptr,#_ch
      002F76 E0               [24]  866 	movx	a,@dptr
      002F77 FF               [12]  867 	mov	r7,a
      002F78 BF 79 02         [24]  868 	cjne	r7,#0x79,00116$
                                    869 ;	main.c:98: TR0 = 0;
                                    870 ;	assignBit
      002F7B C2 8C            [12]  871 	clr	_TR0
      002F7D                        872 00116$:
                                    873 ;	main.c:101: if(ch == 'z')
      002F7D 90 00 2D         [24]  874 	mov	dptr,#_ch
      002F80 E0               [24]  875 	movx	a,@dptr
      002F81 FF               [12]  876 	mov	r7,a
      002F82 BF 7A 02         [24]  877 	cjne	r7,#0x7a,00118$
                                    878 ;	main.c:103: TR0 = 1;
                                    879 ;	assignBit
      002F85 D2 8C            [12]  880 	setb	_TR0
      002F87                        881 00118$:
                                    882 ;	main.c:106: if(ch == 'c')
      002F87 90 00 2D         [24]  883 	mov	dptr,#_ch
      002F8A E0               [24]  884 	movx	a,@dptr
      002F8B FF               [12]  885 	mov	r7,a
      002F8C BF 63 03         [24]  886 	cjne	r7,#0x63,00120$
                                    887 ;	main.c:108: lcdClear();
      002F8F 12 21 0D         [24]  888 	lcall	_lcdClear
      002F92                        889 00120$:
                                    890 ;	main.c:111: if(ch == 's')
      002F92 90 00 2D         [24]  891 	mov	dptr,#_ch
      002F95 E0               [24]  892 	movx	a,@dptr
      002F96 FF               [12]  893 	mov	r7,a
      002F97 BF 73 21         [24]  894 	cjne	r7,#0x73,00122$
                                    895 ;	main.c:114: printf_tiny("\n\rEnter the string\n\r");
      002F9A 74 A0            [12]  896 	mov	a,#___str_6
      002F9C C0 E0            [24]  897 	push	acc
      002F9E 74 44            [12]  898 	mov	a,#(___str_6 >> 8)
      002FA0 C0 E0            [24]  899 	push	acc
      002FA2 12 32 BF         [24]  900 	lcall	_printf_tiny
      002FA5 15 81            [12]  901 	dec	sp
      002FA7 15 81            [12]  902 	dec	sp
                                    903 ;	main.c:115: gets(stringRead);
      002FA9 90 00 74         [24]  904 	mov	dptr,#_main_stringRead_196609_87
      002FAC 75 F0 00         [24]  905 	mov	b,#0x00
      002FAF 12 23 75         [24]  906 	lcall	_gets
                                    907 ;	main.c:117: putsLCD(stringRead);
      002FB2 90 00 74         [24]  908 	mov	dptr,#_main_stringRead_196609_87
      002FB5 75 F0 00         [24]  909 	mov	b,#0x00
      002FB8 12 22 3C         [24]  910 	lcall	_putsLCD
      002FBB                        911 00122$:
                                    912 ;	main.c:120: if(ch == 'd')
      002FBB 90 00 2D         [24]  913 	mov	dptr,#_ch
      002FBE E0               [24]  914 	movx	a,@dptr
      002FBF FF               [12]  915 	mov	r7,a
      002FC0 BF 64 03         [24]  916 	cjne	r7,#0x64,00124$
                                    917 ;	main.c:122: ramDump();
      002FC3 12 24 88         [24]  918 	lcall	_ramDump
      002FC6                        919 00124$:
                                    920 ;	main.c:125: if(ch == 'g')
      002FC6 90 00 2D         [24]  921 	mov	dptr,#_ch
      002FC9 E0               [24]  922 	movx	a,@dptr
      002FCA FF               [12]  923 	mov	r7,a
      002FCB BF 67 02         [24]  924 	cjne	r7,#0x67,00210$
      002FCE 80 03            [24]  925 	sjmp	00211$
      002FD0                        926 00210$:
      002FD0 02 2D FB         [24]  927 	ljmp	00128$
      002FD3                        928 00211$:
                                    929 ;	main.c:127: customCharacter();
      002FD3 12 21 60         [24]  930 	lcall	_customCharacter
                                    931 ;	main.c:131: }
      002FD6 02 2D FB         [24]  932 	ljmp	00128$
                                    933 ;------------------------------------------------------------
                                    934 ;Allocation info for local variables in function 'timer0_isr'
                                    935 ;------------------------------------------------------------
                                    936 ;	main.c:133: void timer0_isr() __interrupt (1)
                                    937 ;	-----------------------------------------
                                    938 ;	 function timer0_isr
                                    939 ;	-----------------------------------------
      002FD9                        940 _timer0_isr:
      002FD9 C0 E0            [24]  941 	push	acc
      002FDB C0 82            [24]  942 	push	dpl
      002FDD C0 83            [24]  943 	push	dph
      002FDF C0 07            [24]  944 	push	ar7
      002FE1 C0 D0            [24]  945 	push	psw
      002FE3 75 D0 00         [24]  946 	mov	psw,#0x00
                                    947 ;	main.c:135: TH0 = 0x4B;
      002FE6 75 8C 4B         [24]  948 	mov	_TH0,#0x4b
                                    949 ;	main.c:136: TL0 = 0xFC;
      002FE9 75 8A FC         [24]  950 	mov	_TL0,#0xfc
                                    951 ;	main.c:137: x2++;
      002FEC 90 00 2B         [24]  952 	mov	dptr,#_x2
      002FEF E0               [24]  953 	movx	a,@dptr
      002FF0 24 01            [12]  954 	add	a,#0x01
      002FF2 F0               [24]  955 	movx	@dptr,a
                                    956 ;	main.c:138: if(x2 == 2)
      002FF3 E0               [24]  957 	movx	a,@dptr
      002FF4 FF               [12]  958 	mov	r7,a
      002FF5 BF 02 54         [24]  959 	cjne	r7,#0x02,00111$
                                    960 ;	main.c:140: if(partSec > 9)
      002FF8 90 00 27         [24]  961 	mov	dptr,#_partSec
      002FFB E0               [24]  962 	movx	a,@dptr
      002FFC FF               [12]  963 	mov  r7,a
      002FFD 24 F6            [12]  964 	add	a,#0xff - 0x09
      002FFF 50 3A            [24]  965 	jnc	00108$
                                    966 ;	main.c:142: sec++;
      003001 90 00 28         [24]  967 	mov	dptr,#_sec
      003004 E0               [24]  968 	movx	a,@dptr
      003005 24 01            [12]  969 	add	a,#0x01
      003007 F0               [24]  970 	movx	@dptr,a
                                    971 ;	main.c:143: if( sec > 59)
      003008 E0               [24]  972 	movx	a,@dptr
      003009 FF               [12]  973 	mov  r7,a
      00300A 24 C4            [12]  974 	add	a,#0xff - 0x3b
      00300C 50 28            [24]  975 	jnc	00106$
                                    976 ;	main.c:145: min++;
      00300E 90 00 29         [24]  977 	mov	dptr,#_min
      003011 E0               [24]  978 	movx	a,@dptr
      003012 24 01            [12]  979 	add	a,#0x01
      003014 F0               [24]  980 	movx	@dptr,a
                                    981 ;	main.c:146: if( min == 59)
      003015 E0               [24]  982 	movx	a,@dptr
      003016 FF               [12]  983 	mov	r7,a
      003017 BF 3B 17         [24]  984 	cjne	r7,#0x3b,00104$
                                    985 ;	main.c:148: hour++;
      00301A 90 00 2A         [24]  986 	mov	dptr,#_hour
      00301D E0               [24]  987 	movx	a,@dptr
      00301E 24 01            [12]  988 	add	a,#0x01
      003020 F0               [24]  989 	movx	@dptr,a
                                    990 ;	main.c:149: if(hour > 23)
      003021 E0               [24]  991 	movx	a,@dptr
      003022 FF               [12]  992 	mov  r7,a
      003023 24 E8            [12]  993 	add	a,#0xff - 0x17
      003025 50 05            [24]  994 	jnc	00102$
                                    995 ;	main.c:151: hour = 0;
      003027 90 00 2A         [24]  996 	mov	dptr,#_hour
      00302A E4               [12]  997 	clr	a
      00302B F0               [24]  998 	movx	@dptr,a
      00302C                        999 00102$:
                                   1000 ;	main.c:153: min = 0;
      00302C 90 00 29         [24] 1001 	mov	dptr,#_min
      00302F E4               [12] 1002 	clr	a
      003030 F0               [24] 1003 	movx	@dptr,a
      003031                       1004 00104$:
                                   1005 ;	main.c:155: sec = 0;
      003031 90 00 28         [24] 1006 	mov	dptr,#_sec
      003034 E4               [12] 1007 	clr	a
      003035 F0               [24] 1008 	movx	@dptr,a
      003036                       1009 00106$:
                                   1010 ;	main.c:157: partSec = 0;
      003036 90 00 27         [24] 1011 	mov	dptr,#_partSec
      003039 E4               [12] 1012 	clr	a
      00303A F0               [24] 1013 	movx	@dptr,a
      00303B                       1014 00108$:
                                   1015 ;	main.c:159: partSec++;
      00303B 90 00 27         [24] 1016 	mov	dptr,#_partSec
      00303E E0               [24] 1017 	movx	a,@dptr
      00303F 24 01            [12] 1018 	add	a,#0x01
      003041 F0               [24] 1019 	movx	@dptr,a
                                   1020 ;	main.c:160: x2 = 0;
      003042 90 00 2B         [24] 1021 	mov	dptr,#_x2
      003045 E4               [12] 1022 	clr	a
      003046 F0               [24] 1023 	movx	@dptr,a
                                   1024 ;	main.c:161: check = 1;
      003047 90 00 2C         [24] 1025 	mov	dptr,#_check
      00304A 04               [12] 1026 	inc	a
      00304B F0               [24] 1027 	movx	@dptr,a
      00304C                       1028 00111$:
                                   1029 ;	main.c:163: }
      00304C D0 D0            [24] 1030 	pop	psw
      00304E D0 07            [24] 1031 	pop	ar7
      003050 D0 83            [24] 1032 	pop	dph
      003052 D0 82            [24] 1033 	pop	dpl
      003054 D0 E0            [24] 1034 	pop	acc
      003056 32               [24] 1035 	reti
                                   1036 ;	eliminated unneeded push/pop b
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'putchar'
                                   1039 ;------------------------------------------------------------
                                   1040 ;c                         Allocated with name '_putchar_c_65536_96'
                                   1041 ;------------------------------------------------------------
                                   1042 ;	main.c:166: int putchar (int c)
                                   1043 ;	-----------------------------------------
                                   1044 ;	 function putchar
                                   1045 ;	-----------------------------------------
      003057                       1046 _putchar:
      003057 AF 83            [24] 1047 	mov	r7,dph
      003059 E5 82            [12] 1048 	mov	a,dpl
      00305B 90 00 A4         [24] 1049 	mov	dptr,#_putchar_c_65536_96
      00305E F0               [24] 1050 	movx	@dptr,a
      00305F EF               [12] 1051 	mov	a,r7
      003060 A3               [24] 1052 	inc	dptr
      003061 F0               [24] 1053 	movx	@dptr,a
                                   1054 ;	main.c:168: while ((SCON & 0x02) == 0)    // wait for TX ready, spin on TI
      003062                       1055 00103$:
      003062 E5 98            [12] 1056 	mov	a,_SCON
      003064 20 E1 12         [24] 1057 	jb	acc.1,00105$
                                   1058 ;	main.c:170: if(check == 1)
      003067 90 00 2C         [24] 1059 	mov	dptr,#_check
      00306A E0               [24] 1060 	movx	a,@dptr
      00306B FF               [12] 1061 	mov	r7,a
      00306C BF 01 F3         [24] 1062 	cjne	r7,#0x01,00103$
                                   1063 ;	main.c:172: check = 0;
      00306F 90 00 2C         [24] 1064 	mov	dptr,#_check
      003072 E4               [12] 1065 	clr	a
      003073 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	main.c:173: printTimeStamp();
      003074 12 30 AA         [24] 1068 	lcall	_printTimeStamp
      003077 80 E9            [24] 1069 	sjmp	00103$
      003079                       1070 00105$:
                                   1071 ;	main.c:176: SBUF = c;  	// load serial port with transmit value
      003079 90 00 A4         [24] 1072 	mov	dptr,#_putchar_c_65536_96
      00307C E0               [24] 1073 	movx	a,@dptr
      00307D FE               [12] 1074 	mov	r6,a
      00307E A3               [24] 1075 	inc	dptr
      00307F E0               [24] 1076 	movx	a,@dptr
      003080 8E 99            [24] 1077 	mov	_SBUF,r6
                                   1078 ;	main.c:177: TI = 0;  	// clear TI flag
                                   1079 ;	assignBit
      003082 C2 99            [12] 1080 	clr	_TI
                                   1081 ;	main.c:178: return 0;
      003084 90 00 00         [24] 1082 	mov	dptr,#0x0000
                                   1083 ;	main.c:179: }
      003087 22               [24] 1084 	ret
                                   1085 ;------------------------------------------------------------
                                   1086 ;Allocation info for local variables in function 'getchar'
                                   1087 ;------------------------------------------------------------
                                   1088 ;	main.c:181: int getchar ()
                                   1089 ;	-----------------------------------------
                                   1090 ;	 function getchar
                                   1091 ;	-----------------------------------------
      003088                       1092 _getchar:
                                   1093 ;	main.c:183: while ((SCON & 0x01) == 0)  // wait for character to be received, spin on RI
      003088                       1094 00103$:
      003088 E5 98            [12] 1095 	mov	a,_SCON
      00308A 20 E0 12         [24] 1096 	jb	acc.0,00105$
                                   1097 ;	main.c:185: if(check == 1)
      00308D 90 00 2C         [24] 1098 	mov	dptr,#_check
      003090 E0               [24] 1099 	movx	a,@dptr
      003091 FF               [12] 1100 	mov	r7,a
      003092 BF 01 F3         [24] 1101 	cjne	r7,#0x01,00103$
                                   1102 ;	main.c:187: check = 0;
      003095 90 00 2C         [24] 1103 	mov	dptr,#_check
      003098 E4               [12] 1104 	clr	a
      003099 F0               [24] 1105 	movx	@dptr,a
                                   1106 ;	main.c:188: printTimeStamp();
      00309A 12 30 AA         [24] 1107 	lcall	_printTimeStamp
      00309D 80 E9            [24] 1108 	sjmp	00103$
      00309F                       1109 00105$:
                                   1110 ;	main.c:191: RI = 0;			// clear RI flag
                                   1111 ;	assignBit
      00309F C2 98            [12] 1112 	clr	_RI
                                   1113 ;	main.c:192: return SBUF;  	// return character from SBUF
      0030A1 AE 99            [24] 1114 	mov	r6,_SBUF
      0030A3 7F 00            [12] 1115 	mov	r7,#0x00
      0030A5 8E 82            [24] 1116 	mov	dpl,r6
      0030A7 8F 83            [24] 1117 	mov	dph,r7
                                   1118 ;	main.c:193: }
      0030A9 22               [24] 1119 	ret
                                   1120 ;------------------------------------------------------------
                                   1121 ;Allocation info for local variables in function 'printTimeStamp'
                                   1122 ;------------------------------------------------------------
                                   1123 ;	main.c:195: void printTimeStamp()
                                   1124 ;	-----------------------------------------
                                   1125 ;	 function printTimeStamp
                                   1126 ;	-----------------------------------------
      0030AA                       1127 _printTimeStamp:
                                   1128 ;	main.c:197: goToAddr(0x57);
      0030AA 75 82 57         [24] 1129 	mov	dpl,#0x57
      0030AD 12 21 1A         [24] 1130 	lcall	_goToAddr
                                   1131 ;	main.c:198: lcdPutCh(hour + '0');
      0030B0 90 00 2A         [24] 1132 	mov	dptr,#_hour
      0030B3 E0               [24] 1133 	movx	a,@dptr
      0030B4 24 30            [12] 1134 	add	a,#0x30
      0030B6 F5 82            [12] 1135 	mov	dpl,a
      0030B8 12 20 F8         [24] 1136 	lcall	_lcdPutCh
                                   1137 ;	main.c:199: lcdPutCh(':');
      0030BB 75 82 3A         [24] 1138 	mov	dpl,#0x3a
      0030BE 12 20 F8         [24] 1139 	lcall	_lcdPutCh
                                   1140 ;	main.c:200: lcdPutCh(min / 10 + '0');
      0030C1 90 00 29         [24] 1141 	mov	dptr,#_min
      0030C4 E0               [24] 1142 	movx	a,@dptr
      0030C5 FF               [12] 1143 	mov	r7,a
      0030C6 7E 00            [12] 1144 	mov	r6,#0x00
      0030C8 90 00 BB         [24] 1145 	mov	dptr,#__divsint_PARM_2
      0030CB 74 0A            [12] 1146 	mov	a,#0x0a
      0030CD F0               [24] 1147 	movx	@dptr,a
      0030CE E4               [12] 1148 	clr	a
      0030CF A3               [24] 1149 	inc	dptr
      0030D0 F0               [24] 1150 	movx	@dptr,a
      0030D1 8F 82            [24] 1151 	mov	dpl,r7
      0030D3 8E 83            [24] 1152 	mov	dph,r6
      0030D5 12 34 FC         [24] 1153 	lcall	__divsint
      0030D8 AE 82            [24] 1154 	mov	r6,dpl
      0030DA 74 30            [12] 1155 	mov	a,#0x30
      0030DC 2E               [12] 1156 	add	a,r6
      0030DD F5 82            [12] 1157 	mov	dpl,a
      0030DF 12 20 F8         [24] 1158 	lcall	_lcdPutCh
                                   1159 ;	main.c:201: lcdPutCh(min % 10 + '0');
      0030E2 90 00 29         [24] 1160 	mov	dptr,#_min
      0030E5 E0               [24] 1161 	movx	a,@dptr
      0030E6 FF               [12] 1162 	mov	r7,a
      0030E7 7E 00            [12] 1163 	mov	r6,#0x00
      0030E9 90 00 B2         [24] 1164 	mov	dptr,#__modsint_PARM_2
      0030EC 74 0A            [12] 1165 	mov	a,#0x0a
      0030EE F0               [24] 1166 	movx	@dptr,a
      0030EF E4               [12] 1167 	clr	a
      0030F0 A3               [24] 1168 	inc	dptr
      0030F1 F0               [24] 1169 	movx	@dptr,a
      0030F2 8F 82            [24] 1170 	mov	dpl,r7
      0030F4 8E 83            [24] 1171 	mov	dph,r6
      0030F6 12 33 E8         [24] 1172 	lcall	__modsint
      0030F9 AE 82            [24] 1173 	mov	r6,dpl
      0030FB 74 30            [12] 1174 	mov	a,#0x30
      0030FD 2E               [12] 1175 	add	a,r6
      0030FE F5 82            [12] 1176 	mov	dpl,a
      003100 12 20 F8         [24] 1177 	lcall	_lcdPutCh
                                   1178 ;	main.c:202: lcdPutCh(':');
      003103 75 82 3A         [24] 1179 	mov	dpl,#0x3a
      003106 12 20 F8         [24] 1180 	lcall	_lcdPutCh
                                   1181 ;	main.c:203: lcdPutCh(sec / 10 + '0');
      003109 90 00 28         [24] 1182 	mov	dptr,#_sec
      00310C E0               [24] 1183 	movx	a,@dptr
      00310D FF               [12] 1184 	mov	r7,a
      00310E 7E 00            [12] 1185 	mov	r6,#0x00
      003110 90 00 BB         [24] 1186 	mov	dptr,#__divsint_PARM_2
      003113 74 0A            [12] 1187 	mov	a,#0x0a
      003115 F0               [24] 1188 	movx	@dptr,a
      003116 E4               [12] 1189 	clr	a
      003117 A3               [24] 1190 	inc	dptr
      003118 F0               [24] 1191 	movx	@dptr,a
      003119 8F 82            [24] 1192 	mov	dpl,r7
      00311B 8E 83            [24] 1193 	mov	dph,r6
      00311D 12 34 FC         [24] 1194 	lcall	__divsint
      003120 AE 82            [24] 1195 	mov	r6,dpl
      003122 74 30            [12] 1196 	mov	a,#0x30
      003124 2E               [12] 1197 	add	a,r6
      003125 F5 82            [12] 1198 	mov	dpl,a
      003127 12 20 F8         [24] 1199 	lcall	_lcdPutCh
                                   1200 ;	main.c:204: lcdPutCh(sec % 10 + '0');
      00312A 90 00 28         [24] 1201 	mov	dptr,#_sec
      00312D E0               [24] 1202 	movx	a,@dptr
      00312E FF               [12] 1203 	mov	r7,a
      00312F 7E 00            [12] 1204 	mov	r6,#0x00
      003131 90 00 B2         [24] 1205 	mov	dptr,#__modsint_PARM_2
      003134 74 0A            [12] 1206 	mov	a,#0x0a
      003136 F0               [24] 1207 	movx	@dptr,a
      003137 E4               [12] 1208 	clr	a
      003138 A3               [24] 1209 	inc	dptr
      003139 F0               [24] 1210 	movx	@dptr,a
      00313A 8F 82            [24] 1211 	mov	dpl,r7
      00313C 8E 83            [24] 1212 	mov	dph,r6
      00313E 12 33 E8         [24] 1213 	lcall	__modsint
      003141 AE 82            [24] 1214 	mov	r6,dpl
      003143 74 30            [12] 1215 	mov	a,#0x30
      003145 2E               [12] 1216 	add	a,r6
      003146 F5 82            [12] 1217 	mov	dpl,a
      003148 12 20 F8         [24] 1218 	lcall	_lcdPutCh
                                   1219 ;	main.c:205: lcdPutCh('.');
      00314B 75 82 2E         [24] 1220 	mov	dpl,#0x2e
      00314E 12 20 F8         [24] 1221 	lcall	_lcdPutCh
                                   1222 ;	main.c:206: lcdPutCh(partSec + '0');
      003151 90 00 27         [24] 1223 	mov	dptr,#_partSec
      003154 E0               [24] 1224 	movx	a,@dptr
      003155 24 30            [12] 1225 	add	a,#0x30
      003157 F5 82            [12] 1226 	mov	dpl,a
                                   1227 ;	main.c:207: }
      003159 02 20 F8         [24] 1228 	ljmp	_lcdPutCh
                                   1229 	.area CSEG    (CODE)
                                   1230 	.area CONST   (CODE)
      0043B4                       1231 _lookUpTable1:
      0043B4 00                    1232 	.db #0x00	; 0
      0043B5 01                    1233 	.db #0x01	; 1
      0043B6 02                    1234 	.db #0x02	; 2
      0043B7 03                    1235 	.db #0x03	; 3
      0043B8 04                    1236 	.db #0x04	; 4
      0043B9 05                    1237 	.db #0x05	; 5
      0043BA 06                    1238 	.db #0x06	; 6
      0043BB 07                    1239 	.db #0x07	; 7
      0043BC 08                    1240 	.db #0x08	; 8
      0043BD 09                    1241 	.db #0x09	; 9
      0043BE 0A                    1242 	.db #0x0a	; 10
      0043BF 0B                    1243 	.db #0x0b	; 11
      0043C0 0C                    1244 	.db #0x0c	; 12
      0043C1 0D                    1245 	.db #0x0d	; 13
      0043C2 0E                    1246 	.db #0x0e	; 14
      0043C3 0F                    1247 	.db #0x0f	; 15
      0043C4 40                    1248 	.db #0x40	; 64
      0043C5 41                    1249 	.db #0x41	; 65	'A'
      0043C6 42                    1250 	.db #0x42	; 66	'B'
      0043C7 43                    1251 	.db #0x43	; 67	'C'
      0043C8 44                    1252 	.db #0x44	; 68	'D'
      0043C9 45                    1253 	.db #0x45	; 69	'E'
      0043CA 46                    1254 	.db #0x46	; 70	'F'
      0043CB 47                    1255 	.db #0x47	; 71	'G'
      0043CC 48                    1256 	.db #0x48	; 72	'H'
      0043CD 49                    1257 	.db #0x49	; 73	'I'
      0043CE 4A                    1258 	.db #0x4a	; 74	'J'
      0043CF 4B                    1259 	.db #0x4b	; 75	'K'
      0043D0 4C                    1260 	.db #0x4c	; 76	'L'
      0043D1 4D                    1261 	.db #0x4d	; 77	'M'
      0043D2 4E                    1262 	.db #0x4e	; 78	'N'
      0043D3 4F                    1263 	.db #0x4f	; 79	'O'
      0043D4 10                    1264 	.db #0x10	; 16
      0043D5 11                    1265 	.db #0x11	; 17
      0043D6 12                    1266 	.db #0x12	; 18
      0043D7 13                    1267 	.db #0x13	; 19
      0043D8 14                    1268 	.db #0x14	; 20
      0043D9 15                    1269 	.db #0x15	; 21
      0043DA 16                    1270 	.db #0x16	; 22
      0043DB 17                    1271 	.db #0x17	; 23
      0043DC 18                    1272 	.db #0x18	; 24
      0043DD 19                    1273 	.db #0x19	; 25
      0043DE 1A                    1274 	.db #0x1a	; 26
      0043DF 1B                    1275 	.db #0x1b	; 27
      0043E0 1C                    1276 	.db #0x1c	; 28
      0043E1 1D                    1277 	.db #0x1d	; 29
      0043E2 1E                    1278 	.db #0x1e	; 30
      0043E3 1F                    1279 	.db #0x1f	; 31
      0043E4 50                    1280 	.db #0x50	; 80	'P'
      0043E5 51                    1281 	.db #0x51	; 81	'Q'
      0043E6 52                    1282 	.db #0x52	; 82	'R'
      0043E7 53                    1283 	.db #0x53	; 83	'S'
      0043E8 54                    1284 	.db #0x54	; 84	'T'
      0043E9 55                    1285 	.db #0x55	; 85	'U'
      0043EA 56                    1286 	.db #0x56	; 86	'V'
      0043EB 57                    1287 	.db #0x57	; 87	'W'
      0043EC 58                    1288 	.db #0x58	; 88	'X'
      0043ED 59                    1289 	.db #0x59	; 89	'Y'
      0043EE 5A                    1290 	.db #0x5a	; 90	'Z'
      0043EF 5B                    1291 	.db #0x5b	; 91
      0043F0 5C                    1292 	.db #0x5c	; 92
      0043F1 5D                    1293 	.db #0x5d	; 93
      0043F2 5E                    1294 	.db #0x5e	; 94
      0043F3 5F                    1295 	.db #0x5f	; 95
                                   1296 	.area CONST   (CODE)
      0043F4                       1297 ___str_0:
      0043F4 0A                    1298 	.db 0x0a
      0043F5 0D                    1299 	.db 0x0d
      0043F6 45 6E 74 65 72 20 74  1300 	.ascii "Enter the row number from 0 to 2"
             68 65 20 72 6F 77 20
             6E 75 6D 62 65 72 20
             66 72 6F 6D 20 30 20
             74 6F 20 32
      004416 0A                    1301 	.db 0x0a
      004417 0D                    1302 	.db 0x0d
      004418 00                    1303 	.db 0x00
                                   1304 	.area CSEG    (CODE)
                                   1305 	.area CONST   (CODE)
      004419                       1306 ___str_1:
      004419 0A                    1307 	.db 0x0a
      00441A 0D                    1308 	.db 0x0d
      00441B 45 6E 74 65 72 65 64  1309 	.ascii "Entered Row is incorrect"
             20 52 6F 77 20 69 73
             20 69 6E 63 6F 72 72
             65 63 74
      004433 0A                    1310 	.db 0x0a
      004434 0D                    1311 	.db 0x0d
      004435 00                    1312 	.db 0x00
                                   1313 	.area CSEG    (CODE)
                                   1314 	.area CONST   (CODE)
      004436                       1315 ___str_2:
      004436 0A                    1316 	.db 0x0a
      004437 0D                    1317 	.db 0x0d
      004438 45 6E 74 65 72 20 74  1318 	.ascii "Enter the column number from 0 to 15"
             68 65 20 63 6F 6C 75
             6D 6E 20 6E 75 6D 62
             65 72 20 66 72 6F 6D
             20 30 20 74 6F 20 31
             35
      00445C 0A                    1319 	.db 0x0a
      00445D 0D                    1320 	.db 0x0d
      00445E 00                    1321 	.db 0x00
                                   1322 	.area CSEG    (CODE)
                                   1323 	.area CONST   (CODE)
      00445F                       1324 ___str_3:
      00445F 0A                    1325 	.db 0x0a
      004460 0D                    1326 	.db 0x0d
      004461 45 6E 74 65 72 65 64  1327 	.ascii "Entered Column is incorrect"
             20 43 6F 6C 75 6D 6E
             20 69 73 20 69 6E 63
             6F 72 72 65 63 74
      00447C 0A                    1328 	.db 0x0a
      00447D 0D                    1329 	.db 0x0d
      00447E 00                    1330 	.db 0x00
                                   1331 	.area CSEG    (CODE)
                                   1332 	.area CONST   (CODE)
      00447F                       1333 ___str_4:
      00447F 25 64 20 25 64 20 25  1334 	.ascii "%d %d %d"
             64
      004487 00                    1335 	.db 0x00
                                   1336 	.area CSEG    (CODE)
                                   1337 	.area CONST   (CODE)
      004488                       1338 ___str_5:
      004488 0A                    1339 	.db 0x0a
      004489 0D                    1340 	.db 0x0d
      00448A 45 6E 74 65 72 20 74  1341 	.ascii "Enter the character"
             68 65 20 63 68 61 72
             61 63 74 65 72
      00449D 0A                    1342 	.db 0x0a
      00449E 0D                    1343 	.db 0x0d
      00449F 00                    1344 	.db 0x00
                                   1345 	.area CSEG    (CODE)
                                   1346 	.area CONST   (CODE)
      0044A0                       1347 ___str_6:
      0044A0 0A                    1348 	.db 0x0a
      0044A1 0D                    1349 	.db 0x0d
      0044A2 45 6E 74 65 72 20 74  1350 	.ascii "Enter the string"
             68 65 20 73 74 72 69
             6E 67
      0044B2 0A                    1351 	.db 0x0a
      0044B3 0D                    1352 	.db 0x0d
      0044B4 00                    1353 	.db 0x00
                                   1354 	.area CSEG    (CODE)
                                   1355 	.area XINIT   (CODE)
                                   1356 	.area CABS    (ABS,CODE)
