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
                                     11 	.globl _atoi
                                     12 	.globl _memset
                                     13 	.globl _printf_tiny
                                     14 	.globl _printf
                                     15 	.globl _P5_7
                                     16 	.globl _P5_6
                                     17 	.globl _P5_5
                                     18 	.globl _P5_4
                                     19 	.globl _P5_3
                                     20 	.globl _P5_2
                                     21 	.globl _P5_1
                                     22 	.globl _P5_0
                                     23 	.globl _P4_7
                                     24 	.globl _P4_6
                                     25 	.globl _P4_5
                                     26 	.globl _P4_4
                                     27 	.globl _P4_3
                                     28 	.globl _P4_2
                                     29 	.globl _P4_1
                                     30 	.globl _P4_0
                                     31 	.globl _PX0L
                                     32 	.globl _PT0L
                                     33 	.globl _PX1L
                                     34 	.globl _PT1L
                                     35 	.globl _PSL
                                     36 	.globl _PT2L
                                     37 	.globl _PPCL
                                     38 	.globl _EC
                                     39 	.globl _CCF0
                                     40 	.globl _CCF1
                                     41 	.globl _CCF2
                                     42 	.globl _CCF3
                                     43 	.globl _CCF4
                                     44 	.globl _CR
                                     45 	.globl _CF
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _T2CON_7
                                     55 	.globl _T2CON_6
                                     56 	.globl _T2CON_5
                                     57 	.globl _T2CON_4
                                     58 	.globl _T2CON_3
                                     59 	.globl _T2CON_2
                                     60 	.globl _T2CON_1
                                     61 	.globl _T2CON_0
                                     62 	.globl _PT2
                                     63 	.globl _ET2
                                     64 	.globl _CY
                                     65 	.globl _AC
                                     66 	.globl _F0
                                     67 	.globl _RS1
                                     68 	.globl _RS0
                                     69 	.globl _OV
                                     70 	.globl _F1
                                     71 	.globl _P
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _P2_7
                                    100 	.globl _P2_6
                                    101 	.globl _P2_5
                                    102 	.globl _P2_4
                                    103 	.globl _P2_3
                                    104 	.globl _P2_2
                                    105 	.globl _P2_1
                                    106 	.globl _P2_0
                                    107 	.globl _SM0
                                    108 	.globl _SM1
                                    109 	.globl _SM2
                                    110 	.globl _REN
                                    111 	.globl _TB8
                                    112 	.globl _RB8
                                    113 	.globl _TI
                                    114 	.globl _RI
                                    115 	.globl _P1_7
                                    116 	.globl _P1_6
                                    117 	.globl _P1_5
                                    118 	.globl _P1_4
                                    119 	.globl _P1_3
                                    120 	.globl _P1_2
                                    121 	.globl _P1_1
                                    122 	.globl _P1_0
                                    123 	.globl _TF1
                                    124 	.globl _TR1
                                    125 	.globl _TF0
                                    126 	.globl _TR0
                                    127 	.globl _IE1
                                    128 	.globl _IT1
                                    129 	.globl _IE0
                                    130 	.globl _IT0
                                    131 	.globl _P0_7
                                    132 	.globl _P0_6
                                    133 	.globl _P0_5
                                    134 	.globl _P0_4
                                    135 	.globl _P0_3
                                    136 	.globl _P0_2
                                    137 	.globl _P0_1
                                    138 	.globl _P0_0
                                    139 	.globl _EECON
                                    140 	.globl _KBF
                                    141 	.globl _KBE
                                    142 	.globl _KBLS
                                    143 	.globl _BRL
                                    144 	.globl _BDRCON
                                    145 	.globl _T2MOD
                                    146 	.globl _SPDAT
                                    147 	.globl _SPSTA
                                    148 	.globl _SPCON
                                    149 	.globl _SADEN
                                    150 	.globl _SADDR
                                    151 	.globl _WDTPRG
                                    152 	.globl _WDTRST
                                    153 	.globl _P5
                                    154 	.globl _P4
                                    155 	.globl _IPH1
                                    156 	.globl _IPL1
                                    157 	.globl _IPH0
                                    158 	.globl _IPL0
                                    159 	.globl _IEN1
                                    160 	.globl _IEN0
                                    161 	.globl _CMOD
                                    162 	.globl _CL
                                    163 	.globl _CH
                                    164 	.globl _CCON
                                    165 	.globl _CCAPM4
                                    166 	.globl _CCAPM3
                                    167 	.globl _CCAPM2
                                    168 	.globl _CCAPM1
                                    169 	.globl _CCAPM0
                                    170 	.globl _CCAP4L
                                    171 	.globl _CCAP3L
                                    172 	.globl _CCAP2L
                                    173 	.globl _CCAP1L
                                    174 	.globl _CCAP0L
                                    175 	.globl _CCAP4H
                                    176 	.globl _CCAP3H
                                    177 	.globl _CCAP2H
                                    178 	.globl _CCAP1H
                                    179 	.globl _CCAP0H
                                    180 	.globl _CKCON1
                                    181 	.globl _CKCON0
                                    182 	.globl _CKRL
                                    183 	.globl _AUXR1
                                    184 	.globl _AUXR
                                    185 	.globl _TH2
                                    186 	.globl _TL2
                                    187 	.globl _RCAP2H
                                    188 	.globl _RCAP2L
                                    189 	.globl _T2CON
                                    190 	.globl _B
                                    191 	.globl _ACC
                                    192 	.globl _PSW
                                    193 	.globl _IP
                                    194 	.globl _P3
                                    195 	.globl _IE
                                    196 	.globl _P2
                                    197 	.globl _SBUF
                                    198 	.globl _SCON
                                    199 	.globl _P1
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TL1
                                    203 	.globl _TL0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _PCON
                                    207 	.globl _DPH
                                    208 	.globl _DPL
                                    209 	.globl _SP
                                    210 	.globl _P0
                                    211 	.globl _lookUpTable
                                    212 	.globl _goToXY_PARM_2
                                    213 	.globl _temp
                                    214 	.globl _readCharacter
                                    215 	.globl _writeCharacter
                                    216 	.globl _busyPoll
                                    217 	.globl _lcdGeneral
                                    218 	.globl _delay
                                    219 	.globl _timerInit
                                    220 	.globl _busyWait
                                    221 	.globl _lcdInit
                                    222 	.globl _lcdPutCh
                                    223 	.globl _lcdClear
                                    224 	.globl _goToAddr
                                    225 	.globl _goToXY
                                    226 	.globl _customCharacter
                                    227 	.globl _readLCD
                                    228 	.globl _putsLCD
                                    229 	.globl _getchar
                                    230 	.globl _putchar
                                    231 	.globl _gets
                                    232 	.globl _atoh
                                    233 	.globl _gamePacman
                                    234 	.globl _makePacmanRight
                                    235 	.globl _makePacmanLeft
                                    236 	.globl _printBinary
                                    237 ;--------------------------------------------------------
                                    238 ; special function registers
                                    239 ;--------------------------------------------------------
                                    240 	.area RSEG    (ABS,DATA)
      000000                        241 	.org 0x0000
                           000080   242 _P0	=	0x0080
                           000081   243 _SP	=	0x0081
                           000082   244 _DPL	=	0x0082
                           000083   245 _DPH	=	0x0083
                           000087   246 _PCON	=	0x0087
                           000088   247 _TCON	=	0x0088
                           000089   248 _TMOD	=	0x0089
                           00008A   249 _TL0	=	0x008a
                           00008B   250 _TL1	=	0x008b
                           00008C   251 _TH0	=	0x008c
                           00008D   252 _TH1	=	0x008d
                           000090   253 _P1	=	0x0090
                           000098   254 _SCON	=	0x0098
                           000099   255 _SBUF	=	0x0099
                           0000A0   256 _P2	=	0x00a0
                           0000A8   257 _IE	=	0x00a8
                           0000B0   258 _P3	=	0x00b0
                           0000B8   259 _IP	=	0x00b8
                           0000D0   260 _PSW	=	0x00d0
                           0000E0   261 _ACC	=	0x00e0
                           0000F0   262 _B	=	0x00f0
                           0000C8   263 _T2CON	=	0x00c8
                           0000CA   264 _RCAP2L	=	0x00ca
                           0000CB   265 _RCAP2H	=	0x00cb
                           0000CC   266 _TL2	=	0x00cc
                           0000CD   267 _TH2	=	0x00cd
                           00008E   268 _AUXR	=	0x008e
                           0000A2   269 _AUXR1	=	0x00a2
                           000097   270 _CKRL	=	0x0097
                           00008F   271 _CKCON0	=	0x008f
                           0000AF   272 _CKCON1	=	0x00af
                           0000FA   273 _CCAP0H	=	0x00fa
                           0000FB   274 _CCAP1H	=	0x00fb
                           0000FC   275 _CCAP2H	=	0x00fc
                           0000FD   276 _CCAP3H	=	0x00fd
                           0000FE   277 _CCAP4H	=	0x00fe
                           0000EA   278 _CCAP0L	=	0x00ea
                           0000EB   279 _CCAP1L	=	0x00eb
                           0000EC   280 _CCAP2L	=	0x00ec
                           0000ED   281 _CCAP3L	=	0x00ed
                           0000EE   282 _CCAP4L	=	0x00ee
                           0000DA   283 _CCAPM0	=	0x00da
                           0000DB   284 _CCAPM1	=	0x00db
                           0000DC   285 _CCAPM2	=	0x00dc
                           0000DD   286 _CCAPM3	=	0x00dd
                           0000DE   287 _CCAPM4	=	0x00de
                           0000D8   288 _CCON	=	0x00d8
                           0000F9   289 _CH	=	0x00f9
                           0000E9   290 _CL	=	0x00e9
                           0000D9   291 _CMOD	=	0x00d9
                           0000A8   292 _IEN0	=	0x00a8
                           0000B1   293 _IEN1	=	0x00b1
                           0000B8   294 _IPL0	=	0x00b8
                           0000B7   295 _IPH0	=	0x00b7
                           0000B2   296 _IPL1	=	0x00b2
                           0000B3   297 _IPH1	=	0x00b3
                           0000C0   298 _P4	=	0x00c0
                           0000E8   299 _P5	=	0x00e8
                           0000A6   300 _WDTRST	=	0x00a6
                           0000A7   301 _WDTPRG	=	0x00a7
                           0000A9   302 _SADDR	=	0x00a9
                           0000B9   303 _SADEN	=	0x00b9
                           0000C3   304 _SPCON	=	0x00c3
                           0000C4   305 _SPSTA	=	0x00c4
                           0000C5   306 _SPDAT	=	0x00c5
                           0000C9   307 _T2MOD	=	0x00c9
                           00009B   308 _BDRCON	=	0x009b
                           00009A   309 _BRL	=	0x009a
                           00009C   310 _KBLS	=	0x009c
                           00009D   311 _KBE	=	0x009d
                           00009E   312 _KBF	=	0x009e
                           0000D2   313 _EECON	=	0x00d2
                                    314 ;--------------------------------------------------------
                                    315 ; special function bits
                                    316 ;--------------------------------------------------------
                                    317 	.area RSEG    (ABS,DATA)
      000000                        318 	.org 0x0000
                           000080   319 _P0_0	=	0x0080
                           000081   320 _P0_1	=	0x0081
                           000082   321 _P0_2	=	0x0082
                           000083   322 _P0_3	=	0x0083
                           000084   323 _P0_4	=	0x0084
                           000085   324 _P0_5	=	0x0085
                           000086   325 _P0_6	=	0x0086
                           000087   326 _P0_7	=	0x0087
                           000088   327 _IT0	=	0x0088
                           000089   328 _IE0	=	0x0089
                           00008A   329 _IT1	=	0x008a
                           00008B   330 _IE1	=	0x008b
                           00008C   331 _TR0	=	0x008c
                           00008D   332 _TF0	=	0x008d
                           00008E   333 _TR1	=	0x008e
                           00008F   334 _TF1	=	0x008f
                           000090   335 _P1_0	=	0x0090
                           000091   336 _P1_1	=	0x0091
                           000092   337 _P1_2	=	0x0092
                           000093   338 _P1_3	=	0x0093
                           000094   339 _P1_4	=	0x0094
                           000095   340 _P1_5	=	0x0095
                           000096   341 _P1_6	=	0x0096
                           000097   342 _P1_7	=	0x0097
                           000098   343 _RI	=	0x0098
                           000099   344 _TI	=	0x0099
                           00009A   345 _RB8	=	0x009a
                           00009B   346 _TB8	=	0x009b
                           00009C   347 _REN	=	0x009c
                           00009D   348 _SM2	=	0x009d
                           00009E   349 _SM1	=	0x009e
                           00009F   350 _SM0	=	0x009f
                           0000A0   351 _P2_0	=	0x00a0
                           0000A1   352 _P2_1	=	0x00a1
                           0000A2   353 _P2_2	=	0x00a2
                           0000A3   354 _P2_3	=	0x00a3
                           0000A4   355 _P2_4	=	0x00a4
                           0000A5   356 _P2_5	=	0x00a5
                           0000A6   357 _P2_6	=	0x00a6
                           0000A7   358 _P2_7	=	0x00a7
                           0000A8   359 _EX0	=	0x00a8
                           0000A9   360 _ET0	=	0x00a9
                           0000AA   361 _EX1	=	0x00aa
                           0000AB   362 _ET1	=	0x00ab
                           0000AC   363 _ES	=	0x00ac
                           0000AF   364 _EA	=	0x00af
                           0000B0   365 _P3_0	=	0x00b0
                           0000B1   366 _P3_1	=	0x00b1
                           0000B2   367 _P3_2	=	0x00b2
                           0000B3   368 _P3_3	=	0x00b3
                           0000B4   369 _P3_4	=	0x00b4
                           0000B5   370 _P3_5	=	0x00b5
                           0000B6   371 _P3_6	=	0x00b6
                           0000B7   372 _P3_7	=	0x00b7
                           0000B0   373 _RXD	=	0x00b0
                           0000B1   374 _TXD	=	0x00b1
                           0000B2   375 _INT0	=	0x00b2
                           0000B3   376 _INT1	=	0x00b3
                           0000B4   377 _T0	=	0x00b4
                           0000B5   378 _T1	=	0x00b5
                           0000B6   379 _WR	=	0x00b6
                           0000B7   380 _RD	=	0x00b7
                           0000B8   381 _PX0	=	0x00b8
                           0000B9   382 _PT0	=	0x00b9
                           0000BA   383 _PX1	=	0x00ba
                           0000BB   384 _PT1	=	0x00bb
                           0000BC   385 _PS	=	0x00bc
                           0000D0   386 _P	=	0x00d0
                           0000D1   387 _F1	=	0x00d1
                           0000D2   388 _OV	=	0x00d2
                           0000D3   389 _RS0	=	0x00d3
                           0000D4   390 _RS1	=	0x00d4
                           0000D5   391 _F0	=	0x00d5
                           0000D6   392 _AC	=	0x00d6
                           0000D7   393 _CY	=	0x00d7
                           0000AD   394 _ET2	=	0x00ad
                           0000BD   395 _PT2	=	0x00bd
                           0000C8   396 _T2CON_0	=	0x00c8
                           0000C9   397 _T2CON_1	=	0x00c9
                           0000CA   398 _T2CON_2	=	0x00ca
                           0000CB   399 _T2CON_3	=	0x00cb
                           0000CC   400 _T2CON_4	=	0x00cc
                           0000CD   401 _T2CON_5	=	0x00cd
                           0000CE   402 _T2CON_6	=	0x00ce
                           0000CF   403 _T2CON_7	=	0x00cf
                           0000C8   404 _CP_RL2	=	0x00c8
                           0000C9   405 _C_T2	=	0x00c9
                           0000CA   406 _TR2	=	0x00ca
                           0000CB   407 _EXEN2	=	0x00cb
                           0000CC   408 _TCLK	=	0x00cc
                           0000CD   409 _RCLK	=	0x00cd
                           0000CE   410 _EXF2	=	0x00ce
                           0000CF   411 _TF2	=	0x00cf
                           0000DF   412 _CF	=	0x00df
                           0000DE   413 _CR	=	0x00de
                           0000DC   414 _CCF4	=	0x00dc
                           0000DB   415 _CCF3	=	0x00db
                           0000DA   416 _CCF2	=	0x00da
                           0000D9   417 _CCF1	=	0x00d9
                           0000D8   418 _CCF0	=	0x00d8
                           0000AE   419 _EC	=	0x00ae
                           0000BE   420 _PPCL	=	0x00be
                           0000BD   421 _PT2L	=	0x00bd
                           0000BC   422 _PSL	=	0x00bc
                           0000BB   423 _PT1L	=	0x00bb
                           0000BA   424 _PX1L	=	0x00ba
                           0000B9   425 _PT0L	=	0x00b9
                           0000B8   426 _PX0L	=	0x00b8
                           0000C0   427 _P4_0	=	0x00c0
                           0000C1   428 _P4_1	=	0x00c1
                           0000C2   429 _P4_2	=	0x00c2
                           0000C3   430 _P4_3	=	0x00c3
                           0000C4   431 _P4_4	=	0x00c4
                           0000C5   432 _P4_5	=	0x00c5
                           0000C6   433 _P4_6	=	0x00c6
                           0000C7   434 _P4_7	=	0x00c7
                           0000E8   435 _P5_0	=	0x00e8
                           0000E9   436 _P5_1	=	0x00e9
                           0000EA   437 _P5_2	=	0x00ea
                           0000EB   438 _P5_3	=	0x00eb
                           0000EC   439 _P5_4	=	0x00ec
                           0000ED   440 _P5_5	=	0x00ed
                           0000EE   441 _P5_6	=	0x00ee
                           0000EF   442 _P5_7	=	0x00ef
                                    443 ;--------------------------------------------------------
                                    444 ; overlayable register banks
                                    445 ;--------------------------------------------------------
                                    446 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        447 	.ds 8
                                    448 ;--------------------------------------------------------
                                    449 ; internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area DSEG    (DATA)
      000008                        452 _putsLCD_sloc0_1_0:
      000008                        453 	.ds 2
      00000A                        454 _putsLCD_sloc1_1_0:
      00000A                        455 	.ds 3
                                    456 ;--------------------------------------------------------
                                    457 ; overlayable items in internal ram 
                                    458 ;--------------------------------------------------------
                                    459 ;--------------------------------------------------------
                                    460 ; indirectly addressable internal ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area ISEG    (DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; absolute internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area IABS    (ABS,DATA)
                                    467 	.area IABS    (ABS,DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; bit data
                                    470 ;--------------------------------------------------------
                                    471 	.area BSEG    (BIT)
                                    472 ;--------------------------------------------------------
                                    473 ; paged external ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area PSEG    (PAG,XDATA)
                                    476 ;--------------------------------------------------------
                                    477 ; external ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area XSEG    (XDATA)
                           00F000   480 _lcdGeneral	=	0xf000
                           00F200   481 _busyPoll	=	0xf200
                           00F100   482 _writeCharacter	=	0xf100
                           00F300   483 _readCharacter	=	0xf300
      000001                        484 _temp::
      000001                        485 	.ds 1
      000002                        486 _lcdPutCh_x_65536_75:
      000002                        487 	.ds 1
      000003                        488 _goToAddr_x_65536_78:
      000003                        489 	.ds 1
      000004                        490 _goToXY_PARM_2:
      000004                        491 	.ds 1
      000005                        492 _goToXY_x_65536_80:
      000005                        493 	.ds 1
      000006                        494 _customCharacter_x_65536_82:
      000006                        495 	.ds 8
      00000E                        496 _putsLCD_y_65536_84:
      00000E                        497 	.ds 3
      000011                        498 _putsLCD_i_65536_85:
      000011                        499 	.ds 2
      000013                        500 _putchar_c_65536_89:
      000013                        501 	.ds 2
      000015                        502 _gets_s_65536_91:
      000015                        503 	.ds 3
      000018                        504 _gets_count_65536_92:
      000018                        505 	.ds 2
      00001A                        506 _atoh_ap_65536_97:
      00001A                        507 	.ds 3
      00001D                        508 _atoh_p_65536_98:
      00001D                        509 	.ds 3
      000020                        510 _atoh_n_65536_98:
      000020                        511 	.ds 2
      000022                        512 _atoh_lcase_65536_98:
      000022                        513 	.ds 2
      000024                        514 _gamePacman_i_65536_100:
      000024                        515 	.ds 2
      000026                        516 _printBinary_x_65536_108:
      000026                        517 	.ds 2
                                    518 ;--------------------------------------------------------
                                    519 ; absolute external ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area XABS    (ABS,XDATA)
                                    522 ;--------------------------------------------------------
                                    523 ; external initialized ram data
                                    524 ;--------------------------------------------------------
                                    525 	.area XISEG   (XDATA)
      0000C1                        526 _lookUpTable::
      0000C1                        527 	.ds 64
                                    528 	.area HOME    (CODE)
                                    529 	.area GSINIT0 (CODE)
                                    530 	.area GSINIT1 (CODE)
                                    531 	.area GSINIT2 (CODE)
                                    532 	.area GSINIT3 (CODE)
                                    533 	.area GSINIT4 (CODE)
                                    534 	.area GSINIT5 (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 	.area GSFINAL (CODE)
                                    537 	.area CSEG    (CODE)
                                    538 ;--------------------------------------------------------
                                    539 ; global & static initialisations
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 ;--------------------------------------------------------
                                    546 ; Home
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
                                    549 	.area HOME    (CODE)
                                    550 ;--------------------------------------------------------
                                    551 ; code
                                    552 ;--------------------------------------------------------
                                    553 	.area CSEG    (CODE)
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'delay'
                                    556 ;------------------------------------------------------------
                                    557 ;i                         Allocated with name '_delay_i_65536_70'
                                    558 ;------------------------------------------------------------
                                    559 ;	lcdCommands.c:7: void delay()
                                    560 ;	-----------------------------------------
                                    561 ;	 function delay
                                    562 ;	-----------------------------------------
      00206D                        563 _delay:
                           000007   564 	ar7 = 0x07
                           000006   565 	ar6 = 0x06
                           000005   566 	ar5 = 0x05
                           000004   567 	ar4 = 0x04
                           000003   568 	ar3 = 0x03
                           000002   569 	ar2 = 0x02
                           000001   570 	ar1 = 0x01
                           000000   571 	ar0 = 0x00
                                    572 ;	lcdCommands.c:10: for ( i = 0 ; i < 1000; i++);
      00206D 7E E8            [12]  573 	mov	r6,#0xe8
      00206F 7F 03            [12]  574 	mov	r7,#0x03
      002071                        575 00104$:
      002071 1E               [12]  576 	dec	r6
      002072 BE FF 01         [24]  577 	cjne	r6,#0xff,00113$
      002075 1F               [12]  578 	dec	r7
      002076                        579 00113$:
      002076 EE               [12]  580 	mov	a,r6
      002077 4F               [12]  581 	orl	a,r7
      002078 70 F7            [24]  582 	jnz	00104$
                                    583 ;	lcdCommands.c:11: }
      00207A 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'timerInit'
                                    587 ;------------------------------------------------------------
                                    588 ;	lcdCommands.c:13: void timerInit()
                                    589 ;	-----------------------------------------
                                    590 ;	 function timerInit
                                    591 ;	-----------------------------------------
      00207B                        592 _timerInit:
                                    593 ;	lcdCommands.c:15: TMOD |= 0x01;
      00207B 43 89 01         [24]  594 	orl	_TMOD,#0x01
                                    595 ;	lcdCommands.c:16: TH0 = 0x4B;
      00207E 75 8C 4B         [24]  596 	mov	_TH0,#0x4b
                                    597 ;	lcdCommands.c:17: TL0 = 0xFC;
      002081 75 8A FC         [24]  598 	mov	_TL0,#0xfc
                                    599 ;	lcdCommands.c:18: TR0 = 1;           //turn ON Timer zero
                                    600 ;	assignBit
      002084 D2 8C            [12]  601 	setb	_TR0
                                    602 ;	lcdCommands.c:19: EA = 1;            //Enable Global Interrupt bit
                                    603 ;	assignBit
      002086 D2 AF            [12]  604 	setb	_EA
                                    605 ;	lcdCommands.c:20: ET0 = 1;           //Enable TImer0 Interrupt
                                    606 ;	assignBit
      002088 D2 A9            [12]  607 	setb	_ET0
                                    608 ;	lcdCommands.c:21: }
      00208A 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'busyWait'
                                    612 ;------------------------------------------------------------
                                    613 ;	lcdCommands.c:23: void busyWait()
                                    614 ;	-----------------------------------------
                                    615 ;	 function busyWait
                                    616 ;	-----------------------------------------
      00208B                        617 _busyWait:
                                    618 ;	lcdCommands.c:25: while (busyPoll & 0x80);
      00208B                        619 00101$:
      00208B 90 F2 00         [24]  620 	mov	dptr,#_busyPoll
      00208E E0               [24]  621 	movx	a,@dptr
      00208F FE               [12]  622 	mov	r6,a
      002090 A3               [24]  623 	inc	dptr
      002091 E0               [24]  624 	movx	a,@dptr
      002092 EE               [12]  625 	mov	a,r6
      002093 20 E7 F5         [24]  626 	jb	acc.7,00101$
                                    627 ;	lcdCommands.c:26: }
      002096 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'lcdInit'
                                    631 ;------------------------------------------------------------
                                    632 ;	lcdCommands.c:28: void lcdInit()
                                    633 ;	-----------------------------------------
                                    634 ;	 function lcdInit
                                    635 ;	-----------------------------------------
      002097                        636 _lcdInit:
                                    637 ;	lcdCommands.c:30: delay();
      002097 12 20 6D         [24]  638 	lcall	_delay
                                    639 ;	lcdCommands.c:31: lcdGeneral = 0x30;
      00209A 90 F0 00         [24]  640 	mov	dptr,#_lcdGeneral
      00209D 74 30            [12]  641 	mov	a,#0x30
      00209F F0               [24]  642 	movx	@dptr,a
      0020A0 E4               [12]  643 	clr	a
      0020A1 A3               [24]  644 	inc	dptr
      0020A2 F0               [24]  645 	movx	@dptr,a
                                    646 ;	lcdCommands.c:32: delay();
      0020A3 12 20 6D         [24]  647 	lcall	_delay
                                    648 ;	lcdCommands.c:33: lcdGeneral = 0x30;
      0020A6 90 F0 00         [24]  649 	mov	dptr,#_lcdGeneral
      0020A9 74 30            [12]  650 	mov	a,#0x30
      0020AB F0               [24]  651 	movx	@dptr,a
      0020AC E4               [12]  652 	clr	a
      0020AD A3               [24]  653 	inc	dptr
      0020AE F0               [24]  654 	movx	@dptr,a
                                    655 ;	lcdCommands.c:34: delay();
      0020AF 12 20 6D         [24]  656 	lcall	_delay
                                    657 ;	lcdCommands.c:35: lcdGeneral = 0x30;
      0020B2 90 F0 00         [24]  658 	mov	dptr,#_lcdGeneral
      0020B5 74 30            [12]  659 	mov	a,#0x30
      0020B7 F0               [24]  660 	movx	@dptr,a
      0020B8 E4               [12]  661 	clr	a
      0020B9 A3               [24]  662 	inc	dptr
      0020BA F0               [24]  663 	movx	@dptr,a
                                    664 ;	lcdCommands.c:36: busyWait();
      0020BB 12 20 8B         [24]  665 	lcall	_busyWait
                                    666 ;	lcdCommands.c:37: lcdGeneral = 0x38;
      0020BE 90 F0 00         [24]  667 	mov	dptr,#_lcdGeneral
      0020C1 74 38            [12]  668 	mov	a,#0x38
      0020C3 F0               [24]  669 	movx	@dptr,a
      0020C4 E4               [12]  670 	clr	a
      0020C5 A3               [24]  671 	inc	dptr
      0020C6 F0               [24]  672 	movx	@dptr,a
                                    673 ;	lcdCommands.c:38: busyWait();
      0020C7 12 20 8B         [24]  674 	lcall	_busyWait
                                    675 ;	lcdCommands.c:39: lcdGeneral = 0x08;
      0020CA 90 F0 00         [24]  676 	mov	dptr,#_lcdGeneral
      0020CD 74 08            [12]  677 	mov	a,#0x08
      0020CF F0               [24]  678 	movx	@dptr,a
      0020D0 E4               [12]  679 	clr	a
      0020D1 A3               [24]  680 	inc	dptr
      0020D2 F0               [24]  681 	movx	@dptr,a
                                    682 ;	lcdCommands.c:40: busyWait();
      0020D3 12 20 8B         [24]  683 	lcall	_busyWait
                                    684 ;	lcdCommands.c:41: lcdGeneral = 0x0C;
      0020D6 90 F0 00         [24]  685 	mov	dptr,#_lcdGeneral
      0020D9 74 0C            [12]  686 	mov	a,#0x0c
      0020DB F0               [24]  687 	movx	@dptr,a
      0020DC E4               [12]  688 	clr	a
      0020DD A3               [24]  689 	inc	dptr
      0020DE F0               [24]  690 	movx	@dptr,a
                                    691 ;	lcdCommands.c:42: busyWait();
      0020DF 12 20 8B         [24]  692 	lcall	_busyWait
                                    693 ;	lcdCommands.c:43: lcdGeneral = 0x06;
      0020E2 90 F0 00         [24]  694 	mov	dptr,#_lcdGeneral
      0020E5 74 06            [12]  695 	mov	a,#0x06
      0020E7 F0               [24]  696 	movx	@dptr,a
      0020E8 E4               [12]  697 	clr	a
      0020E9 A3               [24]  698 	inc	dptr
      0020EA F0               [24]  699 	movx	@dptr,a
                                    700 ;	lcdCommands.c:44: busyWait();
      0020EB 12 20 8B         [24]  701 	lcall	_busyWait
                                    702 ;	lcdCommands.c:45: lcdGeneral = 0x01;
      0020EE 90 F0 00         [24]  703 	mov	dptr,#_lcdGeneral
      0020F1 74 01            [12]  704 	mov	a,#0x01
      0020F3 F0               [24]  705 	movx	@dptr,a
      0020F4 E4               [12]  706 	clr	a
      0020F5 A3               [24]  707 	inc	dptr
      0020F6 F0               [24]  708 	movx	@dptr,a
                                    709 ;	lcdCommands.c:46: }
      0020F7 22               [24]  710 	ret
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'lcdPutCh'
                                    713 ;------------------------------------------------------------
                                    714 ;x                         Allocated with name '_lcdPutCh_x_65536_75'
                                    715 ;------------------------------------------------------------
                                    716 ;	lcdCommands.c:48: void lcdPutCh(uint8_t x)
                                    717 ;	-----------------------------------------
                                    718 ;	 function lcdPutCh
                                    719 ;	-----------------------------------------
      0020F8                        720 _lcdPutCh:
      0020F8 E5 82            [12]  721 	mov	a,dpl
      0020FA 90 00 02         [24]  722 	mov	dptr,#_lcdPutCh_x_65536_75
      0020FD F0               [24]  723 	movx	@dptr,a
                                    724 ;	lcdCommands.c:50: busyWait();
      0020FE 12 20 8B         [24]  725 	lcall	_busyWait
                                    726 ;	lcdCommands.c:51: writeCharacter = x;
      002101 90 00 02         [24]  727 	mov	dptr,#_lcdPutCh_x_65536_75
      002104 E0               [24]  728 	movx	a,@dptr
      002105 90 F1 00         [24]  729 	mov	dptr,#_writeCharacter
      002108 F0               [24]  730 	movx	@dptr,a
      002109 E4               [12]  731 	clr	a
      00210A A3               [24]  732 	inc	dptr
      00210B F0               [24]  733 	movx	@dptr,a
                                    734 ;	lcdCommands.c:52: }
      00210C 22               [24]  735 	ret
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'lcdClear'
                                    738 ;------------------------------------------------------------
                                    739 ;	lcdCommands.c:54: void lcdClear()
                                    740 ;	-----------------------------------------
                                    741 ;	 function lcdClear
                                    742 ;	-----------------------------------------
      00210D                        743 _lcdClear:
                                    744 ;	lcdCommands.c:56: busyWait();
      00210D 12 20 8B         [24]  745 	lcall	_busyWait
                                    746 ;	lcdCommands.c:57: lcdGeneral = 0x01;
      002110 90 F0 00         [24]  747 	mov	dptr,#_lcdGeneral
      002113 74 01            [12]  748 	mov	a,#0x01
      002115 F0               [24]  749 	movx	@dptr,a
      002116 E4               [12]  750 	clr	a
      002117 A3               [24]  751 	inc	dptr
      002118 F0               [24]  752 	movx	@dptr,a
                                    753 ;	lcdCommands.c:58: }
      002119 22               [24]  754 	ret
                                    755 ;------------------------------------------------------------
                                    756 ;Allocation info for local variables in function 'goToAddr'
                                    757 ;------------------------------------------------------------
                                    758 ;x                         Allocated with name '_goToAddr_x_65536_78'
                                    759 ;------------------------------------------------------------
                                    760 ;	lcdCommands.c:60: void goToAddr(uint8_t x)
                                    761 ;	-----------------------------------------
                                    762 ;	 function goToAddr
                                    763 ;	-----------------------------------------
      00211A                        764 _goToAddr:
      00211A E5 82            [12]  765 	mov	a,dpl
      00211C 90 00 03         [24]  766 	mov	dptr,#_goToAddr_x_65536_78
      00211F F0               [24]  767 	movx	@dptr,a
                                    768 ;	lcdCommands.c:62: busyWait();
      002120 12 20 8B         [24]  769 	lcall	_busyWait
                                    770 ;	lcdCommands.c:63: lcdGeneral = 0x80 | x;
      002123 90 00 03         [24]  771 	mov	dptr,#_goToAddr_x_65536_78
      002126 E0               [24]  772 	movx	a,@dptr
      002127 FF               [12]  773 	mov	r7,a
      002128 7E 00            [12]  774 	mov	r6,#0x00
      00212A 90 F0 00         [24]  775 	mov	dptr,#_lcdGeneral
      00212D 74 80            [12]  776 	mov	a,#0x80
      00212F 4F               [12]  777 	orl	a,r7
      002130 F0               [24]  778 	movx	@dptr,a
      002131 EE               [12]  779 	mov	a,r6
      002132 A3               [24]  780 	inc	dptr
      002133 F0               [24]  781 	movx	@dptr,a
                                    782 ;	lcdCommands.c:64: }
      002134 22               [24]  783 	ret
                                    784 ;------------------------------------------------------------
                                    785 ;Allocation info for local variables in function 'goToXY'
                                    786 ;------------------------------------------------------------
                                    787 ;y                         Allocated with name '_goToXY_PARM_2'
                                    788 ;x                         Allocated with name '_goToXY_x_65536_80'
                                    789 ;------------------------------------------------------------
                                    790 ;	lcdCommands.c:66: void goToXY(uint8_t x, uint8_t y)
                                    791 ;	-----------------------------------------
                                    792 ;	 function goToXY
                                    793 ;	-----------------------------------------
      002135                        794 _goToXY:
      002135 E5 82            [12]  795 	mov	a,dpl
      002137 90 00 05         [24]  796 	mov	dptr,#_goToXY_x_65536_80
      00213A F0               [24]  797 	movx	@dptr,a
                                    798 ;	lcdCommands.c:68: busyWait();
      00213B 12 20 8B         [24]  799 	lcall	_busyWait
                                    800 ;	lcdCommands.c:69: goToAddr(lookUpTable[x][y]);
      00213E 90 00 05         [24]  801 	mov	dptr,#_goToXY_x_65536_80
      002141 E0               [24]  802 	movx	a,@dptr
      002142 75 F0 10         [24]  803 	mov	b,#0x10
      002145 A4               [48]  804 	mul	ab
      002146 24 C1            [12]  805 	add	a,#_lookUpTable
      002148 FE               [12]  806 	mov	r6,a
      002149 74 00            [12]  807 	mov	a,#(_lookUpTable >> 8)
      00214B 35 F0            [12]  808 	addc	a,b
      00214D FF               [12]  809 	mov	r7,a
      00214E 90 00 04         [24]  810 	mov	dptr,#_goToXY_PARM_2
      002151 E0               [24]  811 	movx	a,@dptr
      002152 2E               [12]  812 	add	a,r6
      002153 F5 82            [12]  813 	mov	dpl,a
      002155 E4               [12]  814 	clr	a
      002156 3F               [12]  815 	addc	a,r7
      002157 F5 83            [12]  816 	mov	dph,a
      002159 E0               [24]  817 	movx	a,@dptr
      00215A F5 82            [12]  818 	mov	dpl,a
                                    819 ;	lcdCommands.c:70: }
      00215C 02 21 1A         [24]  820 	ljmp	_goToAddr
                                    821 ;------------------------------------------------------------
                                    822 ;Allocation info for local variables in function 'customCharacter'
                                    823 ;------------------------------------------------------------
                                    824 ;temp                      Allocated with name '_customCharacter_temp_65536_82'
                                    825 ;decimal                   Allocated with name '_customCharacter_decimal_65536_82'
                                    826 ;x                         Allocated with name '_customCharacter_x_65536_82'
                                    827 ;------------------------------------------------------------
                                    828 ;	lcdCommands.c:72: void customCharacter()
                                    829 ;	-----------------------------------------
                                    830 ;	 function customCharacter
                                    831 ;	-----------------------------------------
      00215F                        832 _customCharacter:
                                    833 ;	lcdCommands.c:77: busyWait();
      00215F 12 20 8B         [24]  834 	lcall	_busyWait
                                    835 ;	lcdCommands.c:78: lcdGeneral = 0x40 | 0x00;
      002162 90 F0 00         [24]  836 	mov	dptr,#_lcdGeneral
      002165 74 40            [12]  837 	mov	a,#0x40
      002167 F0               [24]  838 	movx	@dptr,a
      002168 E4               [12]  839 	clr	a
      002169 A3               [24]  840 	inc	dptr
      00216A F0               [24]  841 	movx	@dptr,a
                                    842 ;	lcdCommands.c:79: busyWait();
      00216B 12 20 8B         [24]  843 	lcall	_busyWait
                                    844 ;	lcdCommands.c:80: printf_tiny("\n\rEnter value for Row 1\n\r");
      00216E 74 96            [12]  845 	mov	a,#___str_0
      002170 C0 E0            [24]  846 	push	acc
      002172 74 3E            [12]  847 	mov	a,#(___str_0 >> 8)
      002174 C0 E0            [24]  848 	push	acc
      002176 12 30 CA         [24]  849 	lcall	_printf_tiny
      002179 15 81            [12]  850 	dec	sp
      00217B 15 81            [12]  851 	dec	sp
                                    852 ;	lcdCommands.c:81: gets(x);
      00217D 90 00 06         [24]  853 	mov	dptr,#_customCharacter_x_65536_82
      002180 75 F0 00         [24]  854 	mov	b,#0x00
      002183 12 26 4E         [24]  855 	lcall	_gets
                                    856 ;	lcdCommands.c:82: temp = atoh(x);
      002186 90 00 06         [24]  857 	mov	dptr,#_customCharacter_x_65536_82
      002189 75 F0 00         [24]  858 	mov	b,#0x00
      00218C 12 27 61         [24]  859 	lcall	_atoh
      00218F AE 82            [24]  860 	mov	r6,dpl
      002191 AF 83            [24]  861 	mov	r7,dph
                                    862 ;	lcdCommands.c:83: decimal = ((temp / 10) * 16) + (temp % 10);
      002193 90 00 7F         [24]  863 	mov	dptr,#__divsint_PARM_2
      002196 74 0A            [12]  864 	mov	a,#0x0a
      002198 F0               [24]  865 	movx	@dptr,a
      002199 E4               [12]  866 	clr	a
      00219A A3               [24]  867 	inc	dptr
      00219B F0               [24]  868 	movx	@dptr,a
      00219C 8E 82            [24]  869 	mov	dpl,r6
      00219E 8F 83            [24]  870 	mov	dph,r7
      0021A0 C0 07            [24]  871 	push	ar7
      0021A2 C0 06            [24]  872 	push	ar6
      0021A4 12 33 07         [24]  873 	lcall	__divsint
      0021A7 AC 82            [24]  874 	mov	r4,dpl
      0021A9 AD 83            [24]  875 	mov	r5,dph
      0021AB D0 06            [24]  876 	pop	ar6
      0021AD D0 07            [24]  877 	pop	ar7
      0021AF ED               [12]  878 	mov	a,r5
      0021B0 C4               [12]  879 	swap	a
      0021B1 54 F0            [12]  880 	anl	a,#0xf0
      0021B3 CC               [12]  881 	xch	a,r4
      0021B4 C4               [12]  882 	swap	a
      0021B5 CC               [12]  883 	xch	a,r4
      0021B6 6C               [12]  884 	xrl	a,r4
      0021B7 CC               [12]  885 	xch	a,r4
      0021B8 54 F0            [12]  886 	anl	a,#0xf0
      0021BA CC               [12]  887 	xch	a,r4
      0021BB 6C               [12]  888 	xrl	a,r4
      0021BC FD               [12]  889 	mov	r5,a
      0021BD 90 00 76         [24]  890 	mov	dptr,#__modsint_PARM_2
      0021C0 74 0A            [12]  891 	mov	a,#0x0a
      0021C2 F0               [24]  892 	movx	@dptr,a
      0021C3 E4               [12]  893 	clr	a
      0021C4 A3               [24]  894 	inc	dptr
      0021C5 F0               [24]  895 	movx	@dptr,a
      0021C6 8E 82            [24]  896 	mov	dpl,r6
      0021C8 8F 83            [24]  897 	mov	dph,r7
      0021CA C0 07            [24]  898 	push	ar7
      0021CC C0 06            [24]  899 	push	ar6
      0021CE C0 05            [24]  900 	push	ar5
      0021D0 C0 04            [24]  901 	push	ar4
      0021D2 12 31 F3         [24]  902 	lcall	__modsint
      0021D5 AA 82            [24]  903 	mov	r2,dpl
      0021D7 AB 83            [24]  904 	mov	r3,dph
      0021D9 D0 04            [24]  905 	pop	ar4
      0021DB D0 05            [24]  906 	pop	ar5
      0021DD EA               [12]  907 	mov	a,r2
      0021DE 2C               [12]  908 	add	a,r4
      0021DF FC               [12]  909 	mov	r4,a
      0021E0 EB               [12]  910 	mov	a,r3
      0021E1 3D               [12]  911 	addc	a,r5
      0021E2 FD               [12]  912 	mov	r5,a
                                    913 ;	lcdCommands.c:84: printBinary(decimal);
      0021E3 8C 82            [24]  914 	mov	dpl,r4
      0021E5 8D 83            [24]  915 	mov	dph,r5
      0021E7 12 2D 7E         [24]  916 	lcall	_printBinary
                                    917 ;	lcdCommands.c:85: memset(x,'\0',8 * sizeof(char));
      0021EA 90 00 6A         [24]  918 	mov	dptr,#_memset_PARM_2
      0021ED E4               [12]  919 	clr	a
      0021EE F0               [24]  920 	movx	@dptr,a
      0021EF 90 00 6B         [24]  921 	mov	dptr,#_memset_PARM_3
      0021F2 74 08            [12]  922 	mov	a,#0x08
      0021F4 F0               [24]  923 	movx	@dptr,a
      0021F5 E4               [12]  924 	clr	a
      0021F6 A3               [24]  925 	inc	dptr
      0021F7 F0               [24]  926 	movx	@dptr,a
      0021F8 90 00 06         [24]  927 	mov	dptr,#_customCharacter_x_65536_82
      0021FB 75 F0 00         [24]  928 	mov	b,#0x00
      0021FE 12 2F 67         [24]  929 	lcall	_memset
      002201 D0 06            [24]  930 	pop	ar6
      002203 D0 07            [24]  931 	pop	ar7
                                    932 ;	lcdCommands.c:86: writeCharacter = temp & 0xFF;
      002205 90 F1 00         [24]  933 	mov	dptr,#_writeCharacter
      002208 EE               [12]  934 	mov	a,r6
      002209 F0               [24]  935 	movx	@dptr,a
      00220A E4               [12]  936 	clr	a
      00220B A3               [24]  937 	inc	dptr
      00220C F0               [24]  938 	movx	@dptr,a
                                    939 ;	lcdCommands.c:87: busyWait();
      00220D 12 20 8B         [24]  940 	lcall	_busyWait
                                    941 ;	lcdCommands.c:88: lcdGeneral = 0x40 | 0x01;
      002210 90 F0 00         [24]  942 	mov	dptr,#_lcdGeneral
      002213 74 41            [12]  943 	mov	a,#0x41
      002215 F0               [24]  944 	movx	@dptr,a
      002216 E4               [12]  945 	clr	a
      002217 A3               [24]  946 	inc	dptr
      002218 F0               [24]  947 	movx	@dptr,a
                                    948 ;	lcdCommands.c:89: busyWait();
      002219 12 20 8B         [24]  949 	lcall	_busyWait
                                    950 ;	lcdCommands.c:91: printf_tiny("\n\rEnter value for Row 2\n\r");
      00221C 74 B0            [12]  951 	mov	a,#___str_1
      00221E C0 E0            [24]  952 	push	acc
      002220 74 3E            [12]  953 	mov	a,#(___str_1 >> 8)
      002222 C0 E0            [24]  954 	push	acc
      002224 12 30 CA         [24]  955 	lcall	_printf_tiny
      002227 15 81            [12]  956 	dec	sp
      002229 15 81            [12]  957 	dec	sp
                                    958 ;	lcdCommands.c:92: gets(x);
      00222B 90 00 06         [24]  959 	mov	dptr,#_customCharacter_x_65536_82
      00222E 75 F0 00         [24]  960 	mov	b,#0x00
      002231 12 26 4E         [24]  961 	lcall	_gets
                                    962 ;	lcdCommands.c:93: decimal = atoi(x);
      002234 90 00 06         [24]  963 	mov	dptr,#_customCharacter_x_65536_82
      002237 75 F0 00         [24]  964 	mov	b,#0x00
      00223A 12 2F 8F         [24]  965 	lcall	_atoi
                                    966 ;	lcdCommands.c:94: printBinary(decimal);
      00223D 12 2D 7E         [24]  967 	lcall	_printBinary
                                    968 ;	lcdCommands.c:95: temp = atoh(x);
      002240 90 00 06         [24]  969 	mov	dptr,#_customCharacter_x_65536_82
      002243 75 F0 00         [24]  970 	mov	b,#0x00
      002246 12 27 61         [24]  971 	lcall	_atoh
      002249 AE 82            [24]  972 	mov	r6,dpl
      00224B AF 83            [24]  973 	mov	r7,dph
                                    974 ;	lcdCommands.c:96: memset(x,'\0',8 * sizeof(char));
      00224D 90 00 6A         [24]  975 	mov	dptr,#_memset_PARM_2
      002250 E4               [12]  976 	clr	a
      002251 F0               [24]  977 	movx	@dptr,a
      002252 90 00 6B         [24]  978 	mov	dptr,#_memset_PARM_3
      002255 74 08            [12]  979 	mov	a,#0x08
      002257 F0               [24]  980 	movx	@dptr,a
      002258 E4               [12]  981 	clr	a
      002259 A3               [24]  982 	inc	dptr
      00225A F0               [24]  983 	movx	@dptr,a
      00225B 90 00 06         [24]  984 	mov	dptr,#_customCharacter_x_65536_82
      00225E 75 F0 00         [24]  985 	mov	b,#0x00
      002261 C0 07            [24]  986 	push	ar7
      002263 C0 06            [24]  987 	push	ar6
      002265 12 2F 67         [24]  988 	lcall	_memset
      002268 D0 06            [24]  989 	pop	ar6
      00226A D0 07            [24]  990 	pop	ar7
                                    991 ;	lcdCommands.c:97: writeCharacter = temp & 0xFF;
      00226C 90 F1 00         [24]  992 	mov	dptr,#_writeCharacter
      00226F EE               [12]  993 	mov	a,r6
      002270 F0               [24]  994 	movx	@dptr,a
      002271 E4               [12]  995 	clr	a
      002272 A3               [24]  996 	inc	dptr
      002273 F0               [24]  997 	movx	@dptr,a
                                    998 ;	lcdCommands.c:98: busyWait();
      002274 12 20 8B         [24]  999 	lcall	_busyWait
                                   1000 ;	lcdCommands.c:99: lcdGeneral = 0x40 | 0x02;
      002277 90 F0 00         [24] 1001 	mov	dptr,#_lcdGeneral
      00227A 74 42            [12] 1002 	mov	a,#0x42
      00227C F0               [24] 1003 	movx	@dptr,a
      00227D E4               [12] 1004 	clr	a
      00227E A3               [24] 1005 	inc	dptr
      00227F F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	lcdCommands.c:100: busyWait();
      002280 12 20 8B         [24] 1008 	lcall	_busyWait
                                   1009 ;	lcdCommands.c:101: printf_tiny("\n\rEnter value for Row 3\n\r");
      002283 74 CA            [12] 1010 	mov	a,#___str_2
      002285 C0 E0            [24] 1011 	push	acc
      002287 74 3E            [12] 1012 	mov	a,#(___str_2 >> 8)
      002289 C0 E0            [24] 1013 	push	acc
      00228B 12 30 CA         [24] 1014 	lcall	_printf_tiny
      00228E 15 81            [12] 1015 	dec	sp
      002290 15 81            [12] 1016 	dec	sp
                                   1017 ;	lcdCommands.c:102: gets(x);
      002292 90 00 06         [24] 1018 	mov	dptr,#_customCharacter_x_65536_82
      002295 75 F0 00         [24] 1019 	mov	b,#0x00
      002298 12 26 4E         [24] 1020 	lcall	_gets
                                   1021 ;	lcdCommands.c:103: decimal = atoi(x);
      00229B 90 00 06         [24] 1022 	mov	dptr,#_customCharacter_x_65536_82
      00229E 75 F0 00         [24] 1023 	mov	b,#0x00
      0022A1 12 2F 8F         [24] 1024 	lcall	_atoi
                                   1025 ;	lcdCommands.c:104: printBinary(decimal);
      0022A4 12 2D 7E         [24] 1026 	lcall	_printBinary
                                   1027 ;	lcdCommands.c:105: temp = atoh(x);
      0022A7 90 00 06         [24] 1028 	mov	dptr,#_customCharacter_x_65536_82
      0022AA 75 F0 00         [24] 1029 	mov	b,#0x00
      0022AD 12 27 61         [24] 1030 	lcall	_atoh
      0022B0 AE 82            [24] 1031 	mov	r6,dpl
      0022B2 AF 83            [24] 1032 	mov	r7,dph
                                   1033 ;	lcdCommands.c:106: memset(x,'\0',8 * sizeof(char));
      0022B4 90 00 6A         [24] 1034 	mov	dptr,#_memset_PARM_2
      0022B7 E4               [12] 1035 	clr	a
      0022B8 F0               [24] 1036 	movx	@dptr,a
      0022B9 90 00 6B         [24] 1037 	mov	dptr,#_memset_PARM_3
      0022BC 74 08            [12] 1038 	mov	a,#0x08
      0022BE F0               [24] 1039 	movx	@dptr,a
      0022BF E4               [12] 1040 	clr	a
      0022C0 A3               [24] 1041 	inc	dptr
      0022C1 F0               [24] 1042 	movx	@dptr,a
      0022C2 90 00 06         [24] 1043 	mov	dptr,#_customCharacter_x_65536_82
      0022C5 75 F0 00         [24] 1044 	mov	b,#0x00
      0022C8 C0 07            [24] 1045 	push	ar7
      0022CA C0 06            [24] 1046 	push	ar6
      0022CC 12 2F 67         [24] 1047 	lcall	_memset
      0022CF D0 06            [24] 1048 	pop	ar6
      0022D1 D0 07            [24] 1049 	pop	ar7
                                   1050 ;	lcdCommands.c:107: writeCharacter = temp & 0xFF;
      0022D3 90 F1 00         [24] 1051 	mov	dptr,#_writeCharacter
      0022D6 EE               [12] 1052 	mov	a,r6
      0022D7 F0               [24] 1053 	movx	@dptr,a
      0022D8 E4               [12] 1054 	clr	a
      0022D9 A3               [24] 1055 	inc	dptr
      0022DA F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	lcdCommands.c:108: busyWait();
      0022DB 12 20 8B         [24] 1058 	lcall	_busyWait
                                   1059 ;	lcdCommands.c:109: lcdGeneral = 0x40 | 0x03;
      0022DE 90 F0 00         [24] 1060 	mov	dptr,#_lcdGeneral
      0022E1 74 43            [12] 1061 	mov	a,#0x43
      0022E3 F0               [24] 1062 	movx	@dptr,a
      0022E4 E4               [12] 1063 	clr	a
      0022E5 A3               [24] 1064 	inc	dptr
      0022E6 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	lcdCommands.c:110: busyWait();
      0022E7 12 20 8B         [24] 1067 	lcall	_busyWait
                                   1068 ;	lcdCommands.c:111: printf_tiny("\n\rEnter value for Row 4\n\r");
      0022EA 74 E4            [12] 1069 	mov	a,#___str_3
      0022EC C0 E0            [24] 1070 	push	acc
      0022EE 74 3E            [12] 1071 	mov	a,#(___str_3 >> 8)
      0022F0 C0 E0            [24] 1072 	push	acc
      0022F2 12 30 CA         [24] 1073 	lcall	_printf_tiny
      0022F5 15 81            [12] 1074 	dec	sp
      0022F7 15 81            [12] 1075 	dec	sp
                                   1076 ;	lcdCommands.c:112: gets(x);
      0022F9 90 00 06         [24] 1077 	mov	dptr,#_customCharacter_x_65536_82
      0022FC 75 F0 00         [24] 1078 	mov	b,#0x00
      0022FF 12 26 4E         [24] 1079 	lcall	_gets
                                   1080 ;	lcdCommands.c:113: temp = atoh(x);
      002302 90 00 06         [24] 1081 	mov	dptr,#_customCharacter_x_65536_82
      002305 75 F0 00         [24] 1082 	mov	b,#0x00
      002308 12 27 61         [24] 1083 	lcall	_atoh
      00230B AE 82            [24] 1084 	mov	r6,dpl
      00230D AF 83            [24] 1085 	mov	r7,dph
                                   1086 ;	lcdCommands.c:114: memset(x,'\0',8 * sizeof(char));
      00230F 90 00 6A         [24] 1087 	mov	dptr,#_memset_PARM_2
      002312 E4               [12] 1088 	clr	a
      002313 F0               [24] 1089 	movx	@dptr,a
      002314 90 00 6B         [24] 1090 	mov	dptr,#_memset_PARM_3
      002317 74 08            [12] 1091 	mov	a,#0x08
      002319 F0               [24] 1092 	movx	@dptr,a
      00231A E4               [12] 1093 	clr	a
      00231B A3               [24] 1094 	inc	dptr
      00231C F0               [24] 1095 	movx	@dptr,a
      00231D 90 00 06         [24] 1096 	mov	dptr,#_customCharacter_x_65536_82
      002320 75 F0 00         [24] 1097 	mov	b,#0x00
      002323 C0 07            [24] 1098 	push	ar7
      002325 C0 06            [24] 1099 	push	ar6
      002327 12 2F 67         [24] 1100 	lcall	_memset
      00232A D0 06            [24] 1101 	pop	ar6
      00232C D0 07            [24] 1102 	pop	ar7
                                   1103 ;	lcdCommands.c:115: writeCharacter = temp & 0xFF;
      00232E 90 F1 00         [24] 1104 	mov	dptr,#_writeCharacter
      002331 EE               [12] 1105 	mov	a,r6
      002332 F0               [24] 1106 	movx	@dptr,a
      002333 E4               [12] 1107 	clr	a
      002334 A3               [24] 1108 	inc	dptr
      002335 F0               [24] 1109 	movx	@dptr,a
                                   1110 ;	lcdCommands.c:116: busyWait();
      002336 12 20 8B         [24] 1111 	lcall	_busyWait
                                   1112 ;	lcdCommands.c:117: lcdGeneral = 0x40 | 0x04;
      002339 90 F0 00         [24] 1113 	mov	dptr,#_lcdGeneral
      00233C 74 44            [12] 1114 	mov	a,#0x44
      00233E F0               [24] 1115 	movx	@dptr,a
      00233F E4               [12] 1116 	clr	a
      002340 A3               [24] 1117 	inc	dptr
      002341 F0               [24] 1118 	movx	@dptr,a
                                   1119 ;	lcdCommands.c:118: busyWait();
      002342 12 20 8B         [24] 1120 	lcall	_busyWait
                                   1121 ;	lcdCommands.c:119: printf_tiny("\n\rEnter value for Row 5\n\r");
      002345 74 FE            [12] 1122 	mov	a,#___str_4
      002347 C0 E0            [24] 1123 	push	acc
      002349 74 3E            [12] 1124 	mov	a,#(___str_4 >> 8)
      00234B C0 E0            [24] 1125 	push	acc
      00234D 12 30 CA         [24] 1126 	lcall	_printf_tiny
      002350 15 81            [12] 1127 	dec	sp
      002352 15 81            [12] 1128 	dec	sp
                                   1129 ;	lcdCommands.c:120: gets(x);
      002354 90 00 06         [24] 1130 	mov	dptr,#_customCharacter_x_65536_82
      002357 75 F0 00         [24] 1131 	mov	b,#0x00
      00235A 12 26 4E         [24] 1132 	lcall	_gets
                                   1133 ;	lcdCommands.c:121: temp = atoh(x);
      00235D 90 00 06         [24] 1134 	mov	dptr,#_customCharacter_x_65536_82
      002360 75 F0 00         [24] 1135 	mov	b,#0x00
      002363 12 27 61         [24] 1136 	lcall	_atoh
      002366 AE 82            [24] 1137 	mov	r6,dpl
      002368 AF 83            [24] 1138 	mov	r7,dph
                                   1139 ;	lcdCommands.c:122: memset(x,'\0',8 * sizeof(char));
      00236A 90 00 6A         [24] 1140 	mov	dptr,#_memset_PARM_2
      00236D E4               [12] 1141 	clr	a
      00236E F0               [24] 1142 	movx	@dptr,a
      00236F 90 00 6B         [24] 1143 	mov	dptr,#_memset_PARM_3
      002372 74 08            [12] 1144 	mov	a,#0x08
      002374 F0               [24] 1145 	movx	@dptr,a
      002375 E4               [12] 1146 	clr	a
      002376 A3               [24] 1147 	inc	dptr
      002377 F0               [24] 1148 	movx	@dptr,a
      002378 90 00 06         [24] 1149 	mov	dptr,#_customCharacter_x_65536_82
      00237B 75 F0 00         [24] 1150 	mov	b,#0x00
      00237E C0 07            [24] 1151 	push	ar7
      002380 C0 06            [24] 1152 	push	ar6
      002382 12 2F 67         [24] 1153 	lcall	_memset
      002385 D0 06            [24] 1154 	pop	ar6
      002387 D0 07            [24] 1155 	pop	ar7
                                   1156 ;	lcdCommands.c:123: writeCharacter = temp & 0xFF;
      002389 90 F1 00         [24] 1157 	mov	dptr,#_writeCharacter
      00238C EE               [12] 1158 	mov	a,r6
      00238D F0               [24] 1159 	movx	@dptr,a
      00238E E4               [12] 1160 	clr	a
      00238F A3               [24] 1161 	inc	dptr
      002390 F0               [24] 1162 	movx	@dptr,a
                                   1163 ;	lcdCommands.c:124: busyWait();
      002391 12 20 8B         [24] 1164 	lcall	_busyWait
                                   1165 ;	lcdCommands.c:125: lcdGeneral = 0x40 | 0x05;
      002394 90 F0 00         [24] 1166 	mov	dptr,#_lcdGeneral
      002397 74 45            [12] 1167 	mov	a,#0x45
      002399 F0               [24] 1168 	movx	@dptr,a
      00239A E4               [12] 1169 	clr	a
      00239B A3               [24] 1170 	inc	dptr
      00239C F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	lcdCommands.c:126: busyWait();
      00239D 12 20 8B         [24] 1173 	lcall	_busyWait
                                   1174 ;	lcdCommands.c:127: printf_tiny("\n\rEnter value for Row 6\n\r");
      0023A0 74 18            [12] 1175 	mov	a,#___str_5
      0023A2 C0 E0            [24] 1176 	push	acc
      0023A4 74 3F            [12] 1177 	mov	a,#(___str_5 >> 8)
      0023A6 C0 E0            [24] 1178 	push	acc
      0023A8 12 30 CA         [24] 1179 	lcall	_printf_tiny
      0023AB 15 81            [12] 1180 	dec	sp
      0023AD 15 81            [12] 1181 	dec	sp
                                   1182 ;	lcdCommands.c:128: gets(x);
      0023AF 90 00 06         [24] 1183 	mov	dptr,#_customCharacter_x_65536_82
      0023B2 75 F0 00         [24] 1184 	mov	b,#0x00
      0023B5 12 26 4E         [24] 1185 	lcall	_gets
                                   1186 ;	lcdCommands.c:129: temp = atoh(x);
      0023B8 90 00 06         [24] 1187 	mov	dptr,#_customCharacter_x_65536_82
      0023BB 75 F0 00         [24] 1188 	mov	b,#0x00
      0023BE 12 27 61         [24] 1189 	lcall	_atoh
      0023C1 AE 82            [24] 1190 	mov	r6,dpl
      0023C3 AF 83            [24] 1191 	mov	r7,dph
                                   1192 ;	lcdCommands.c:130: memset(x,'\0',8 * sizeof(char));
      0023C5 90 00 6A         [24] 1193 	mov	dptr,#_memset_PARM_2
      0023C8 E4               [12] 1194 	clr	a
      0023C9 F0               [24] 1195 	movx	@dptr,a
      0023CA 90 00 6B         [24] 1196 	mov	dptr,#_memset_PARM_3
      0023CD 74 08            [12] 1197 	mov	a,#0x08
      0023CF F0               [24] 1198 	movx	@dptr,a
      0023D0 E4               [12] 1199 	clr	a
      0023D1 A3               [24] 1200 	inc	dptr
      0023D2 F0               [24] 1201 	movx	@dptr,a
      0023D3 90 00 06         [24] 1202 	mov	dptr,#_customCharacter_x_65536_82
      0023D6 75 F0 00         [24] 1203 	mov	b,#0x00
      0023D9 C0 07            [24] 1204 	push	ar7
      0023DB C0 06            [24] 1205 	push	ar6
      0023DD 12 2F 67         [24] 1206 	lcall	_memset
      0023E0 D0 06            [24] 1207 	pop	ar6
      0023E2 D0 07            [24] 1208 	pop	ar7
                                   1209 ;	lcdCommands.c:131: writeCharacter = temp & 0xFF;
      0023E4 90 F1 00         [24] 1210 	mov	dptr,#_writeCharacter
      0023E7 EE               [12] 1211 	mov	a,r6
      0023E8 F0               [24] 1212 	movx	@dptr,a
      0023E9 E4               [12] 1213 	clr	a
      0023EA A3               [24] 1214 	inc	dptr
      0023EB F0               [24] 1215 	movx	@dptr,a
                                   1216 ;	lcdCommands.c:132: busyWait();
      0023EC 12 20 8B         [24] 1217 	lcall	_busyWait
                                   1218 ;	lcdCommands.c:133: lcdGeneral = 0x40 | 0x06;
      0023EF 90 F0 00         [24] 1219 	mov	dptr,#_lcdGeneral
      0023F2 74 46            [12] 1220 	mov	a,#0x46
      0023F4 F0               [24] 1221 	movx	@dptr,a
      0023F5 E4               [12] 1222 	clr	a
      0023F6 A3               [24] 1223 	inc	dptr
      0023F7 F0               [24] 1224 	movx	@dptr,a
                                   1225 ;	lcdCommands.c:134: busyWait();
      0023F8 12 20 8B         [24] 1226 	lcall	_busyWait
                                   1227 ;	lcdCommands.c:135: printf_tiny("\n\rEnter value for Row 7\n\r");
      0023FB 74 32            [12] 1228 	mov	a,#___str_6
      0023FD C0 E0            [24] 1229 	push	acc
      0023FF 74 3F            [12] 1230 	mov	a,#(___str_6 >> 8)
      002401 C0 E0            [24] 1231 	push	acc
      002403 12 30 CA         [24] 1232 	lcall	_printf_tiny
      002406 15 81            [12] 1233 	dec	sp
      002408 15 81            [12] 1234 	dec	sp
                                   1235 ;	lcdCommands.c:136: gets(x);
      00240A 90 00 06         [24] 1236 	mov	dptr,#_customCharacter_x_65536_82
      00240D 75 F0 00         [24] 1237 	mov	b,#0x00
      002410 12 26 4E         [24] 1238 	lcall	_gets
                                   1239 ;	lcdCommands.c:137: temp = atoh(x);
      002413 90 00 06         [24] 1240 	mov	dptr,#_customCharacter_x_65536_82
      002416 75 F0 00         [24] 1241 	mov	b,#0x00
      002419 12 27 61         [24] 1242 	lcall	_atoh
      00241C AE 82            [24] 1243 	mov	r6,dpl
      00241E AF 83            [24] 1244 	mov	r7,dph
                                   1245 ;	lcdCommands.c:138: memset(x,'\0',8 * sizeof(char));
      002420 90 00 6A         [24] 1246 	mov	dptr,#_memset_PARM_2
      002423 E4               [12] 1247 	clr	a
      002424 F0               [24] 1248 	movx	@dptr,a
      002425 90 00 6B         [24] 1249 	mov	dptr,#_memset_PARM_3
      002428 74 08            [12] 1250 	mov	a,#0x08
      00242A F0               [24] 1251 	movx	@dptr,a
      00242B E4               [12] 1252 	clr	a
      00242C A3               [24] 1253 	inc	dptr
      00242D F0               [24] 1254 	movx	@dptr,a
      00242E 90 00 06         [24] 1255 	mov	dptr,#_customCharacter_x_65536_82
      002431 75 F0 00         [24] 1256 	mov	b,#0x00
      002434 C0 07            [24] 1257 	push	ar7
      002436 C0 06            [24] 1258 	push	ar6
      002438 12 2F 67         [24] 1259 	lcall	_memset
      00243B D0 06            [24] 1260 	pop	ar6
      00243D D0 07            [24] 1261 	pop	ar7
                                   1262 ;	lcdCommands.c:139: writeCharacter = temp & 0xFF;
      00243F 90 F1 00         [24] 1263 	mov	dptr,#_writeCharacter
      002442 EE               [12] 1264 	mov	a,r6
      002443 F0               [24] 1265 	movx	@dptr,a
      002444 E4               [12] 1266 	clr	a
      002445 A3               [24] 1267 	inc	dptr
      002446 F0               [24] 1268 	movx	@dptr,a
                                   1269 ;	lcdCommands.c:140: busyWait();
      002447 12 20 8B         [24] 1270 	lcall	_busyWait
                                   1271 ;	lcdCommands.c:141: lcdGeneral = 0x40 | 0x07;
      00244A 90 F0 00         [24] 1272 	mov	dptr,#_lcdGeneral
      00244D 74 47            [12] 1273 	mov	a,#0x47
      00244F F0               [24] 1274 	movx	@dptr,a
      002450 E4               [12] 1275 	clr	a
      002451 A3               [24] 1276 	inc	dptr
      002452 F0               [24] 1277 	movx	@dptr,a
                                   1278 ;	lcdCommands.c:142: busyWait();
      002453 12 20 8B         [24] 1279 	lcall	_busyWait
                                   1280 ;	lcdCommands.c:143: printf_tiny("\n\rEnter value for Row 8\n\r");
      002456 74 4C            [12] 1281 	mov	a,#___str_7
      002458 C0 E0            [24] 1282 	push	acc
      00245A 74 3F            [12] 1283 	mov	a,#(___str_7 >> 8)
      00245C C0 E0            [24] 1284 	push	acc
      00245E 12 30 CA         [24] 1285 	lcall	_printf_tiny
      002461 15 81            [12] 1286 	dec	sp
      002463 15 81            [12] 1287 	dec	sp
                                   1288 ;	lcdCommands.c:144: gets(x);
      002465 90 00 06         [24] 1289 	mov	dptr,#_customCharacter_x_65536_82
      002468 75 F0 00         [24] 1290 	mov	b,#0x00
      00246B 12 26 4E         [24] 1291 	lcall	_gets
                                   1292 ;	lcdCommands.c:145: temp = atoh(x);
      00246E 90 00 06         [24] 1293 	mov	dptr,#_customCharacter_x_65536_82
      002471 75 F0 00         [24] 1294 	mov	b,#0x00
      002474 12 27 61         [24] 1295 	lcall	_atoh
      002477 AE 82            [24] 1296 	mov	r6,dpl
      002479 AF 83            [24] 1297 	mov	r7,dph
                                   1298 ;	lcdCommands.c:146: memset(x,'\0',8 * sizeof(char));
      00247B 90 00 6A         [24] 1299 	mov	dptr,#_memset_PARM_2
      00247E E4               [12] 1300 	clr	a
      00247F F0               [24] 1301 	movx	@dptr,a
      002480 90 00 6B         [24] 1302 	mov	dptr,#_memset_PARM_3
      002483 74 08            [12] 1303 	mov	a,#0x08
      002485 F0               [24] 1304 	movx	@dptr,a
      002486 E4               [12] 1305 	clr	a
      002487 A3               [24] 1306 	inc	dptr
      002488 F0               [24] 1307 	movx	@dptr,a
      002489 90 00 06         [24] 1308 	mov	dptr,#_customCharacter_x_65536_82
      00248C 75 F0 00         [24] 1309 	mov	b,#0x00
      00248F C0 07            [24] 1310 	push	ar7
      002491 C0 06            [24] 1311 	push	ar6
      002493 12 2F 67         [24] 1312 	lcall	_memset
      002496 D0 06            [24] 1313 	pop	ar6
      002498 D0 07            [24] 1314 	pop	ar7
                                   1315 ;	lcdCommands.c:147: writeCharacter = temp & 0xFF;
      00249A 90 F1 00         [24] 1316 	mov	dptr,#_writeCharacter
      00249D EE               [12] 1317 	mov	a,r6
      00249E F0               [24] 1318 	movx	@dptr,a
      00249F E4               [12] 1319 	clr	a
      0024A0 A3               [24] 1320 	inc	dptr
      0024A1 F0               [24] 1321 	movx	@dptr,a
                                   1322 ;	lcdCommands.c:148: busyWait();
      0024A2 12 20 8B         [24] 1323 	lcall	_busyWait
                                   1324 ;	lcdCommands.c:149: goToXY(3,1);
      0024A5 90 00 04         [24] 1325 	mov	dptr,#_goToXY_PARM_2
      0024A8 74 01            [12] 1326 	mov	a,#0x01
      0024AA F0               [24] 1327 	movx	@dptr,a
      0024AB 75 82 03         [24] 1328 	mov	dpl,#0x03
      0024AE 12 21 35         [24] 1329 	lcall	_goToXY
                                   1330 ;	lcdCommands.c:150: busyWait();
      0024B1 12 20 8B         [24] 1331 	lcall	_busyWait
                                   1332 ;	lcdCommands.c:151: lcdGeneral = 0x80 | 0x00;
      0024B4 90 F0 00         [24] 1333 	mov	dptr,#_lcdGeneral
      0024B7 74 80            [12] 1334 	mov	a,#0x80
      0024B9 F0               [24] 1335 	movx	@dptr,a
      0024BA E4               [12] 1336 	clr	a
      0024BB A3               [24] 1337 	inc	dptr
      0024BC F0               [24] 1338 	movx	@dptr,a
                                   1339 ;	lcdCommands.c:152: busyWait();
      0024BD 12 20 8B         [24] 1340 	lcall	_busyWait
                                   1341 ;	lcdCommands.c:153: writeCharacter = 0x00;
      0024C0 90 F1 00         [24] 1342 	mov	dptr,#_writeCharacter
      0024C3 E4               [12] 1343 	clr	a
      0024C4 F0               [24] 1344 	movx	@dptr,a
      0024C5 A3               [24] 1345 	inc	dptr
      0024C6 F0               [24] 1346 	movx	@dptr,a
                                   1347 ;	lcdCommands.c:154: }
      0024C7 22               [24] 1348 	ret
                                   1349 ;------------------------------------------------------------
                                   1350 ;Allocation info for local variables in function 'readLCD'
                                   1351 ;------------------------------------------------------------
                                   1352 ;	lcdCommands.c:156: uint8_t readLCD()
                                   1353 ;	-----------------------------------------
                                   1354 ;	 function readLCD
                                   1355 ;	-----------------------------------------
      0024C8                       1356 _readLCD:
                                   1357 ;	lcdCommands.c:158: busyWait();
      0024C8 12 20 8B         [24] 1358 	lcall	_busyWait
                                   1359 ;	lcdCommands.c:159: temp = readCharacter;
      0024CB 90 F3 00         [24] 1360 	mov	dptr,#_readCharacter
      0024CE E0               [24] 1361 	movx	a,@dptr
      0024CF FE               [12] 1362 	mov	r6,a
      0024D0 A3               [24] 1363 	inc	dptr
      0024D1 E0               [24] 1364 	movx	a,@dptr
      0024D2 90 00 01         [24] 1365 	mov	dptr,#_temp
      0024D5 EE               [12] 1366 	mov	a,r6
      0024D6 F0               [24] 1367 	movx	@dptr,a
                                   1368 ;	lcdCommands.c:160: putchar(temp);
      0024D7 7F 00            [12] 1369 	mov	r7,#0x00
      0024D9 8E 82            [24] 1370 	mov	dpl,r6
      0024DB 8F 83            [24] 1371 	mov	dph,r7
      0024DD 12 26 2F         [24] 1372 	lcall	_putchar
                                   1373 ;	lcdCommands.c:161: return temp;
      0024E0 90 00 01         [24] 1374 	mov	dptr,#_temp
      0024E3 E0               [24] 1375 	movx	a,@dptr
                                   1376 ;	lcdCommands.c:162: }
      0024E4 F5 82            [12] 1377 	mov	dpl,a
      0024E6 22               [24] 1378 	ret
                                   1379 ;------------------------------------------------------------
                                   1380 ;Allocation info for local variables in function 'putsLCD'
                                   1381 ;------------------------------------------------------------
                                   1382 ;sloc0                     Allocated with name '_putsLCD_sloc0_1_0'
                                   1383 ;sloc1                     Allocated with name '_putsLCD_sloc1_1_0'
                                   1384 ;y                         Allocated with name '_putsLCD_y_65536_84'
                                   1385 ;i                         Allocated with name '_putsLCD_i_65536_85'
                                   1386 ;j                         Allocated with name '_putsLCD_j_65536_85'
                                   1387 ;k                         Allocated with name '_putsLCD_k_65536_85'
                                   1388 ;------------------------------------------------------------
                                   1389 ;	lcdCommands.c:164: void putsLCD(char* y)
                                   1390 ;	-----------------------------------------
                                   1391 ;	 function putsLCD
                                   1392 ;	-----------------------------------------
      0024E7                       1393 _putsLCD:
      0024E7 AF F0            [24] 1394 	mov	r7,b
      0024E9 AE 83            [24] 1395 	mov	r6,dph
      0024EB E5 82            [12] 1396 	mov	a,dpl
      0024ED 90 00 0E         [24] 1397 	mov	dptr,#_putsLCD_y_65536_84
      0024F0 F0               [24] 1398 	movx	@dptr,a
      0024F1 EE               [12] 1399 	mov	a,r6
      0024F2 A3               [24] 1400 	inc	dptr
      0024F3 F0               [24] 1401 	movx	@dptr,a
      0024F4 EF               [12] 1402 	mov	a,r7
      0024F5 A3               [24] 1403 	inc	dptr
      0024F6 F0               [24] 1404 	movx	@dptr,a
                                   1405 ;	lcdCommands.c:166: int i = 0,j = 0, k =0;
      0024F7 90 00 11         [24] 1406 	mov	dptr,#_putsLCD_i_65536_85
      0024FA E4               [12] 1407 	clr	a
      0024FB F0               [24] 1408 	movx	@dptr,a
      0024FC A3               [24] 1409 	inc	dptr
      0024FD F0               [24] 1410 	movx	@dptr,a
                                   1411 ;	lcdCommands.c:167: while(y[i + (j * 16)] != '\0')
      0024FE 90 00 0E         [24] 1412 	mov	dptr,#_putsLCD_y_65536_84
      002501 E0               [24] 1413 	movx	a,@dptr
      002502 F5 0A            [12] 1414 	mov	_putsLCD_sloc1_1_0,a
      002504 A3               [24] 1415 	inc	dptr
      002505 E0               [24] 1416 	movx	a,@dptr
      002506 F5 0B            [12] 1417 	mov	(_putsLCD_sloc1_1_0 + 1),a
      002508 A3               [24] 1418 	inc	dptr
      002509 E0               [24] 1419 	movx	a,@dptr
      00250A F5 0C            [12] 1420 	mov	(_putsLCD_sloc1_1_0 + 2),a
      00250C AA 0A            [24] 1421 	mov	r2,_putsLCD_sloc1_1_0
      00250E AB 0B            [24] 1422 	mov	r3,(_putsLCD_sloc1_1_0 + 1)
      002510 AC 0C            [24] 1423 	mov	r4,(_putsLCD_sloc1_1_0 + 2)
      002512 78 00            [12] 1424 	mov	r0,#0x00
      002514 79 00            [12] 1425 	mov	r1,#0x00
      002516                       1426 00103$:
      002516 88 06            [24] 1427 	mov	ar6,r0
      002518 E9               [12] 1428 	mov	a,r1
      002519 C4               [12] 1429 	swap	a
      00251A 54 F0            [12] 1430 	anl	a,#0xf0
      00251C CE               [12] 1431 	xch	a,r6
      00251D C4               [12] 1432 	swap	a
      00251E CE               [12] 1433 	xch	a,r6
      00251F 6E               [12] 1434 	xrl	a,r6
      002520 CE               [12] 1435 	xch	a,r6
      002521 54 F0            [12] 1436 	anl	a,#0xf0
      002523 CE               [12] 1437 	xch	a,r6
      002524 6E               [12] 1438 	xrl	a,r6
      002525 FF               [12] 1439 	mov	r7,a
      002526 90 00 11         [24] 1440 	mov	dptr,#_putsLCD_i_65536_85
      002529 E0               [24] 1441 	movx	a,@dptr
      00252A F5 08            [12] 1442 	mov	_putsLCD_sloc0_1_0,a
      00252C A3               [24] 1443 	inc	dptr
      00252D E0               [24] 1444 	movx	a,@dptr
      00252E F5 09            [12] 1445 	mov	(_putsLCD_sloc0_1_0 + 1),a
      002530 EE               [12] 1446 	mov	a,r6
      002531 25 08            [12] 1447 	add	a,_putsLCD_sloc0_1_0
      002533 FE               [12] 1448 	mov	r6,a
      002534 EF               [12] 1449 	mov	a,r7
      002535 35 09            [12] 1450 	addc	a,(_putsLCD_sloc0_1_0 + 1)
      002537 FF               [12] 1451 	mov	r7,a
      002538 EE               [12] 1452 	mov	a,r6
      002539 2A               [12] 1453 	add	a,r2
      00253A FE               [12] 1454 	mov	r6,a
      00253B EF               [12] 1455 	mov	a,r7
      00253C 3B               [12] 1456 	addc	a,r3
      00253D FF               [12] 1457 	mov	r7,a
      00253E 8C 05            [24] 1458 	mov	ar5,r4
      002540 8E 82            [24] 1459 	mov	dpl,r6
      002542 8F 83            [24] 1460 	mov	dph,r7
      002544 8D F0            [24] 1461 	mov	b,r5
      002546 12 3E 76         [24] 1462 	lcall	__gptrget
      002549 70 01            [24] 1463 	jnz	00121$
      00254B 22               [24] 1464 	ret
      00254C                       1465 00121$:
                                   1466 ;	lcdCommands.c:169: busyWait();
      00254C C0 04            [24] 1467 	push	ar4
      00254E C0 03            [24] 1468 	push	ar3
      002550 C0 02            [24] 1469 	push	ar2
      002552 C0 01            [24] 1470 	push	ar1
      002554 C0 00            [24] 1471 	push	ar0
      002556 12 20 8B         [24] 1472 	lcall	_busyWait
      002559 D0 00            [24] 1473 	pop	ar0
      00255B D0 01            [24] 1474 	pop	ar1
      00255D D0 02            [24] 1475 	pop	ar2
      00255F D0 03            [24] 1476 	pop	ar3
      002561 D0 04            [24] 1477 	pop	ar4
                                   1478 ;	lcdCommands.c:170: if( i > 15)
      002563 C3               [12] 1479 	clr	c
      002564 74 0F            [12] 1480 	mov	a,#0x0f
      002566 95 08            [12] 1481 	subb	a,_putsLCD_sloc0_1_0
      002568 74 80            [12] 1482 	mov	a,#(0x00 ^ 0x80)
      00256A 85 09 F0         [24] 1483 	mov	b,(_putsLCD_sloc0_1_0 + 1)
      00256D 63 F0 80         [24] 1484 	xrl	b,#0x80
      002570 95 F0            [12] 1485 	subb	a,b
      002572 50 0C            [24] 1486 	jnc	00102$
                                   1487 ;	lcdCommands.c:172: j++;
      002574 08               [12] 1488 	inc	r0
      002575 B8 00 01         [24] 1489 	cjne	r0,#0x00,00123$
      002578 09               [12] 1490 	inc	r1
      002579                       1491 00123$:
                                   1492 ;	lcdCommands.c:173: i = 0;
      002579 90 00 11         [24] 1493 	mov	dptr,#_putsLCD_i_65536_85
      00257C E4               [12] 1494 	clr	a
      00257D F0               [24] 1495 	movx	@dptr,a
      00257E A3               [24] 1496 	inc	dptr
      00257F F0               [24] 1497 	movx	@dptr,a
      002580                       1498 00102$:
                                   1499 ;	lcdCommands.c:176: goToAddr(lookUpTable[j][i]);
      002580 C0 02            [24] 1500 	push	ar2
      002582 C0 03            [24] 1501 	push	ar3
      002584 C0 04            [24] 1502 	push	ar4
      002586 88 03            [24] 1503 	mov	ar3,r0
      002588 E9               [12] 1504 	mov	a,r1
      002589 C4               [12] 1505 	swap	a
      00258A 54 F0            [12] 1506 	anl	a,#0xf0
      00258C CB               [12] 1507 	xch	a,r3
      00258D C4               [12] 1508 	swap	a
      00258E CB               [12] 1509 	xch	a,r3
      00258F 6B               [12] 1510 	xrl	a,r3
      002590 CB               [12] 1511 	xch	a,r3
      002591 54 F0            [12] 1512 	anl	a,#0xf0
      002593 CB               [12] 1513 	xch	a,r3
      002594 6B               [12] 1514 	xrl	a,r3
      002595 FC               [12] 1515 	mov	r4,a
      002596 EB               [12] 1516 	mov	a,r3
      002597 24 C1            [12] 1517 	add	a,#_lookUpTable
      002599 FA               [12] 1518 	mov	r2,a
      00259A EC               [12] 1519 	mov	a,r4
      00259B 34 00            [12] 1520 	addc	a,#(_lookUpTable >> 8)
      00259D FF               [12] 1521 	mov	r7,a
      00259E 90 00 11         [24] 1522 	mov	dptr,#_putsLCD_i_65536_85
      0025A1 E0               [24] 1523 	movx	a,@dptr
      0025A2 FD               [12] 1524 	mov	r5,a
      0025A3 A3               [24] 1525 	inc	dptr
      0025A4 E0               [24] 1526 	movx	a,@dptr
      0025A5 FE               [12] 1527 	mov	r6,a
      0025A6 ED               [12] 1528 	mov	a,r5
      0025A7 2A               [12] 1529 	add	a,r2
      0025A8 F5 82            [12] 1530 	mov	dpl,a
      0025AA EE               [12] 1531 	mov	a,r6
      0025AB 3F               [12] 1532 	addc	a,r7
      0025AC F5 83            [12] 1533 	mov	dph,a
      0025AE E0               [24] 1534 	movx	a,@dptr
      0025AF F5 82            [12] 1535 	mov	dpl,a
      0025B1 C0 06            [24] 1536 	push	ar6
      0025B3 C0 05            [24] 1537 	push	ar5
      0025B5 C0 04            [24] 1538 	push	ar4
      0025B7 C0 03            [24] 1539 	push	ar3
      0025B9 C0 02            [24] 1540 	push	ar2
      0025BB C0 01            [24] 1541 	push	ar1
      0025BD C0 00            [24] 1542 	push	ar0
      0025BF 12 21 1A         [24] 1543 	lcall	_goToAddr
      0025C2 D0 00            [24] 1544 	pop	ar0
      0025C4 D0 01            [24] 1545 	pop	ar1
      0025C6 D0 02            [24] 1546 	pop	ar2
      0025C8 D0 03            [24] 1547 	pop	ar3
      0025CA D0 04            [24] 1548 	pop	ar4
      0025CC D0 05            [24] 1549 	pop	ar5
      0025CE D0 06            [24] 1550 	pop	ar6
                                   1551 ;	lcdCommands.c:177: lcdPutCh(y[i + (j * 16)]);
      0025D0 EB               [12] 1552 	mov	a,r3
      0025D1 2D               [12] 1553 	add	a,r5
      0025D2 FB               [12] 1554 	mov	r3,a
      0025D3 EC               [12] 1555 	mov	a,r4
      0025D4 3E               [12] 1556 	addc	a,r6
      0025D5 FC               [12] 1557 	mov	r4,a
      0025D6 EB               [12] 1558 	mov	a,r3
      0025D7 25 0A            [12] 1559 	add	a,_putsLCD_sloc1_1_0
      0025D9 FB               [12] 1560 	mov	r3,a
      0025DA EC               [12] 1561 	mov	a,r4
      0025DB 35 0B            [12] 1562 	addc	a,(_putsLCD_sloc1_1_0 + 1)
      0025DD FC               [12] 1563 	mov	r4,a
      0025DE AF 0C            [24] 1564 	mov	r7,(_putsLCD_sloc1_1_0 + 2)
      0025E0 8B 82            [24] 1565 	mov	dpl,r3
      0025E2 8C 83            [24] 1566 	mov	dph,r4
      0025E4 8F F0            [24] 1567 	mov	b,r7
      0025E6 12 3E 76         [24] 1568 	lcall	__gptrget
      0025E9 FB               [12] 1569 	mov	r3,a
      0025EA F5 82            [12] 1570 	mov	dpl,a
      0025EC C0 06            [24] 1571 	push	ar6
      0025EE C0 05            [24] 1572 	push	ar5
      0025F0 C0 04            [24] 1573 	push	ar4
      0025F2 C0 03            [24] 1574 	push	ar3
      0025F4 C0 02            [24] 1575 	push	ar2
      0025F6 C0 01            [24] 1576 	push	ar1
      0025F8 C0 00            [24] 1577 	push	ar0
      0025FA 12 20 F8         [24] 1578 	lcall	_lcdPutCh
      0025FD D0 00            [24] 1579 	pop	ar0
      0025FF D0 01            [24] 1580 	pop	ar1
      002601 D0 02            [24] 1581 	pop	ar2
      002603 D0 03            [24] 1582 	pop	ar3
      002605 D0 04            [24] 1583 	pop	ar4
      002607 D0 05            [24] 1584 	pop	ar5
      002609 D0 06            [24] 1585 	pop	ar6
                                   1586 ;	lcdCommands.c:178: i++;
      00260B 90 00 11         [24] 1587 	mov	dptr,#_putsLCD_i_65536_85
      00260E 74 01            [12] 1588 	mov	a,#0x01
      002610 2D               [12] 1589 	add	a,r5
      002611 F0               [24] 1590 	movx	@dptr,a
      002612 E4               [12] 1591 	clr	a
      002613 3E               [12] 1592 	addc	a,r6
      002614 A3               [24] 1593 	inc	dptr
      002615 F0               [24] 1594 	movx	@dptr,a
      002616 D0 04            [24] 1595 	pop	ar4
      002618 D0 03            [24] 1596 	pop	ar3
      00261A D0 02            [24] 1597 	pop	ar2
                                   1598 ;	lcdCommands.c:181: }
      00261C 02 25 16         [24] 1599 	ljmp	00103$
                                   1600 ;------------------------------------------------------------
                                   1601 ;Allocation info for local variables in function 'getchar'
                                   1602 ;------------------------------------------------------------
                                   1603 ;	lcdCommands.c:183: int getchar ()
                                   1604 ;	-----------------------------------------
                                   1605 ;	 function getchar
                                   1606 ;	-----------------------------------------
      00261F                       1607 _getchar:
                                   1608 ;	lcdCommands.c:185: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
      00261F                       1609 00101$:
      00261F E5 98            [12] 1610 	mov	a,_SCON
      002621 30 E0 FB         [24] 1611 	jnb	acc.0,00101$
                                   1612 ;	lcdCommands.c:186: RI = 0;			// clear RI flag
                                   1613 ;	assignBit
      002624 C2 98            [12] 1614 	clr	_RI
                                   1615 ;	lcdCommands.c:187: return SBUF;  	// return character from SBUF
      002626 AE 99            [24] 1616 	mov	r6,_SBUF
      002628 7F 00            [12] 1617 	mov	r7,#0x00
      00262A 8E 82            [24] 1618 	mov	dpl,r6
      00262C 8F 83            [24] 1619 	mov	dph,r7
                                   1620 ;	lcdCommands.c:188: }
      00262E 22               [24] 1621 	ret
                                   1622 ;------------------------------------------------------------
                                   1623 ;Allocation info for local variables in function 'putchar'
                                   1624 ;------------------------------------------------------------
                                   1625 ;c                         Allocated with name '_putchar_c_65536_89'
                                   1626 ;------------------------------------------------------------
                                   1627 ;	lcdCommands.c:190: int putchar (int c)
                                   1628 ;	-----------------------------------------
                                   1629 ;	 function putchar
                                   1630 ;	-----------------------------------------
      00262F                       1631 _putchar:
      00262F AF 83            [24] 1632 	mov	r7,dph
      002631 E5 82            [12] 1633 	mov	a,dpl
      002633 90 00 13         [24] 1634 	mov	dptr,#_putchar_c_65536_89
      002636 F0               [24] 1635 	movx	@dptr,a
      002637 EF               [12] 1636 	mov	a,r7
      002638 A3               [24] 1637 	inc	dptr
      002639 F0               [24] 1638 	movx	@dptr,a
                                   1639 ;	lcdCommands.c:192: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
      00263A                       1640 00101$:
      00263A E5 98            [12] 1641 	mov	a,_SCON
      00263C 30 E1 FB         [24] 1642 	jnb	acc.1,00101$
                                   1643 ;	lcdCommands.c:193: SBUF = c;  	// load serial port with transmit value
      00263F 90 00 13         [24] 1644 	mov	dptr,#_putchar_c_65536_89
      002642 E0               [24] 1645 	movx	a,@dptr
      002643 FE               [12] 1646 	mov	r6,a
      002644 A3               [24] 1647 	inc	dptr
      002645 E0               [24] 1648 	movx	a,@dptr
      002646 8E 99            [24] 1649 	mov	_SBUF,r6
                                   1650 ;	lcdCommands.c:194: TI = 0;  	// clear TI flag
                                   1651 ;	assignBit
      002648 C2 99            [12] 1652 	clr	_TI
                                   1653 ;	lcdCommands.c:195: return 0;
      00264A 90 00 00         [24] 1654 	mov	dptr,#0x0000
                                   1655 ;	lcdCommands.c:196: }
      00264D 22               [24] 1656 	ret
                                   1657 ;------------------------------------------------------------
                                   1658 ;Allocation info for local variables in function 'gets'
                                   1659 ;------------------------------------------------------------
                                   1660 ;s                         Allocated with name '_gets_s_65536_91'
                                   1661 ;c                         Allocated with name '_gets_c_65536_92'
                                   1662 ;count                     Allocated with name '_gets_count_65536_92'
                                   1663 ;------------------------------------------------------------
                                   1664 ;	lcdCommands.c:198: char *gets (char *s)
                                   1665 ;	-----------------------------------------
                                   1666 ;	 function gets
                                   1667 ;	-----------------------------------------
      00264E                       1668 _gets:
      00264E AF F0            [24] 1669 	mov	r7,b
      002650 AE 83            [24] 1670 	mov	r6,dph
      002652 E5 82            [12] 1671 	mov	a,dpl
      002654 90 00 15         [24] 1672 	mov	dptr,#_gets_s_65536_91
      002657 F0               [24] 1673 	movx	@dptr,a
      002658 EE               [12] 1674 	mov	a,r6
      002659 A3               [24] 1675 	inc	dptr
      00265A F0               [24] 1676 	movx	@dptr,a
      00265B EF               [12] 1677 	mov	a,r7
      00265C A3               [24] 1678 	inc	dptr
      00265D F0               [24] 1679 	movx	@dptr,a
                                   1680 ;	lcdCommands.c:201: unsigned int count = 0;
      00265E 90 00 18         [24] 1681 	mov	dptr,#_gets_count_65536_92
      002661 E4               [12] 1682 	clr	a
      002662 F0               [24] 1683 	movx	@dptr,a
      002663 A3               [24] 1684 	inc	dptr
      002664 F0               [24] 1685 	movx	@dptr,a
                                   1686 ;	lcdCommands.c:203: while (1)
      002665                       1687 00111$:
                                   1688 ;	lcdCommands.c:205: c = getchar ();
      002665 12 26 1F         [24] 1689 	lcall	_getchar
      002668 AE 82            [24] 1690 	mov	r6,dpl
      00266A AF 83            [24] 1691 	mov	r7,dph
                                   1692 ;	lcdCommands.c:206: switch(c)
      00266C BE 08 02         [24] 1693 	cjne	r6,#0x08,00139$
      00266F 80 0D            [24] 1694 	sjmp	00101$
      002671                       1695 00139$:
      002671 BE 0A 02         [24] 1696 	cjne	r6,#0x0a,00140$
      002674 80 62            [24] 1697 	sjmp	00105$
      002676                       1698 00140$:
      002676 BE 0D 02         [24] 1699 	cjne	r6,#0x0d,00141$
      002679 80 5D            [24] 1700 	sjmp	00105$
      00267B                       1701 00141$:
      00267B 02 27 00         [24] 1702 	ljmp	00106$
                                   1703 ;	lcdCommands.c:208: case '\b': /* backspace */
      00267E                       1704 00101$:
                                   1705 ;	lcdCommands.c:209: if (count)
      00267E 90 00 18         [24] 1706 	mov	dptr,#_gets_count_65536_92
      002681 E0               [24] 1707 	movx	a,@dptr
      002682 FD               [12] 1708 	mov	r5,a
      002683 A3               [24] 1709 	inc	dptr
      002684 E0               [24] 1710 	movx	a,@dptr
      002685 FF               [12] 1711 	mov	r7,a
      002686 90 00 18         [24] 1712 	mov	dptr,#_gets_count_65536_92
      002689 E0               [24] 1713 	movx	a,@dptr
      00268A F5 F0            [12] 1714 	mov	b,a
      00268C A3               [24] 1715 	inc	dptr
      00268D E0               [24] 1716 	movx	a,@dptr
      00268E 45 F0            [12] 1717 	orl	a,b
      002690 70 03            [24] 1718 	jnz	00142$
      002692 02 27 38         [24] 1719 	ljmp	00107$
      002695                       1720 00142$:
                                   1721 ;	lcdCommands.c:211: putchar ('\b');
      002695 90 00 08         [24] 1722 	mov	dptr,#0x0008
      002698 C0 07            [24] 1723 	push	ar7
      00269A C0 05            [24] 1724 	push	ar5
      00269C 12 26 2F         [24] 1725 	lcall	_putchar
                                   1726 ;	lcdCommands.c:212: putchar (' ');
      00269F 90 00 20         [24] 1727 	mov	dptr,#0x0020
      0026A2 12 26 2F         [24] 1728 	lcall	_putchar
                                   1729 ;	lcdCommands.c:213: putchar ('\b');
      0026A5 90 00 08         [24] 1730 	mov	dptr,#0x0008
      0026A8 12 26 2F         [24] 1731 	lcall	_putchar
      0026AB D0 05            [24] 1732 	pop	ar5
      0026AD D0 07            [24] 1733 	pop	ar7
                                   1734 ;	lcdCommands.c:214: --s;
      0026AF 90 00 15         [24] 1735 	mov	dptr,#_gets_s_65536_91
      0026B2 E0               [24] 1736 	movx	a,@dptr
      0026B3 24 FF            [12] 1737 	add	a,#0xff
      0026B5 FA               [12] 1738 	mov	r2,a
      0026B6 A3               [24] 1739 	inc	dptr
      0026B7 E0               [24] 1740 	movx	a,@dptr
      0026B8 34 FF            [12] 1741 	addc	a,#0xff
      0026BA FB               [12] 1742 	mov	r3,a
      0026BB A3               [24] 1743 	inc	dptr
      0026BC E0               [24] 1744 	movx	a,@dptr
      0026BD FC               [12] 1745 	mov	r4,a
      0026BE 90 00 15         [24] 1746 	mov	dptr,#_gets_s_65536_91
      0026C1 EA               [12] 1747 	mov	a,r2
      0026C2 F0               [24] 1748 	movx	@dptr,a
      0026C3 EB               [12] 1749 	mov	a,r3
      0026C4 A3               [24] 1750 	inc	dptr
      0026C5 F0               [24] 1751 	movx	@dptr,a
      0026C6 EC               [12] 1752 	mov	a,r4
      0026C7 A3               [24] 1753 	inc	dptr
      0026C8 F0               [24] 1754 	movx	@dptr,a
                                   1755 ;	lcdCommands.c:215: --count;
      0026C9 1D               [12] 1756 	dec	r5
      0026CA BD FF 01         [24] 1757 	cjne	r5,#0xff,00143$
      0026CD 1F               [12] 1758 	dec	r7
      0026CE                       1759 00143$:
      0026CE 90 00 18         [24] 1760 	mov	dptr,#_gets_count_65536_92
      0026D1 ED               [12] 1761 	mov	a,r5
      0026D2 F0               [24] 1762 	movx	@dptr,a
      0026D3 EF               [12] 1763 	mov	a,r7
      0026D4 A3               [24] 1764 	inc	dptr
      0026D5 F0               [24] 1765 	movx	@dptr,a
                                   1766 ;	lcdCommands.c:217: break;
                                   1767 ;	lcdCommands.c:220: case '\r': /* CR or LF */
      0026D6 80 60            [24] 1768 	sjmp	00107$
      0026D8                       1769 00105$:
                                   1770 ;	lcdCommands.c:221: putchar ('\r');
      0026D8 90 00 0D         [24] 1771 	mov	dptr,#0x000d
      0026DB 12 26 2F         [24] 1772 	lcall	_putchar
                                   1773 ;	lcdCommands.c:222: putchar ('\n');
      0026DE 90 00 0A         [24] 1774 	mov	dptr,#0x000a
      0026E1 12 26 2F         [24] 1775 	lcall	_putchar
                                   1776 ;	lcdCommands.c:223: *s = 0;
      0026E4 90 00 15         [24] 1777 	mov	dptr,#_gets_s_65536_91
      0026E7 E0               [24] 1778 	movx	a,@dptr
      0026E8 FC               [12] 1779 	mov	r4,a
      0026E9 A3               [24] 1780 	inc	dptr
      0026EA E0               [24] 1781 	movx	a,@dptr
      0026EB FD               [12] 1782 	mov	r5,a
      0026EC A3               [24] 1783 	inc	dptr
      0026ED E0               [24] 1784 	movx	a,@dptr
      0026EE FF               [12] 1785 	mov	r7,a
      0026EF 8C 82            [24] 1786 	mov	dpl,r4
      0026F1 8D 83            [24] 1787 	mov	dph,r5
      0026F3 8F F0            [24] 1788 	mov	b,r7
      0026F5 E4               [12] 1789 	clr	a
      0026F6 12 30 AF         [24] 1790 	lcall	__gptrput
                                   1791 ;	lcdCommands.c:224: return s;
      0026F9 8C 82            [24] 1792 	mov	dpl,r4
      0026FB 8D 83            [24] 1793 	mov	dph,r5
      0026FD 8F F0            [24] 1794 	mov	b,r7
                                   1795 ;	lcdCommands.c:226: default:
      0026FF 22               [24] 1796 	ret
      002700                       1797 00106$:
                                   1798 ;	lcdCommands.c:227: *s++ = c;
      002700 90 00 15         [24] 1799 	mov	dptr,#_gets_s_65536_91
      002703 E0               [24] 1800 	movx	a,@dptr
      002704 FC               [12] 1801 	mov	r4,a
      002705 A3               [24] 1802 	inc	dptr
      002706 E0               [24] 1803 	movx	a,@dptr
      002707 FD               [12] 1804 	mov	r5,a
      002708 A3               [24] 1805 	inc	dptr
      002709 E0               [24] 1806 	movx	a,@dptr
      00270A FF               [12] 1807 	mov	r7,a
      00270B 8C 82            [24] 1808 	mov	dpl,r4
      00270D 8D 83            [24] 1809 	mov	dph,r5
      00270F 8F F0            [24] 1810 	mov	b,r7
      002711 EE               [12] 1811 	mov	a,r6
      002712 12 30 AF         [24] 1812 	lcall	__gptrput
      002715 90 00 15         [24] 1813 	mov	dptr,#_gets_s_65536_91
      002718 74 01            [12] 1814 	mov	a,#0x01
      00271A 2C               [12] 1815 	add	a,r4
      00271B F0               [24] 1816 	movx	@dptr,a
      00271C E4               [12] 1817 	clr	a
      00271D 3D               [12] 1818 	addc	a,r5
      00271E A3               [24] 1819 	inc	dptr
      00271F F0               [24] 1820 	movx	@dptr,a
      002720 EF               [12] 1821 	mov	a,r7
      002721 A3               [24] 1822 	inc	dptr
      002722 F0               [24] 1823 	movx	@dptr,a
                                   1824 ;	lcdCommands.c:228: ++count;
      002723 90 00 18         [24] 1825 	mov	dptr,#_gets_count_65536_92
      002726 E0               [24] 1826 	movx	a,@dptr
      002727 24 01            [12] 1827 	add	a,#0x01
      002729 F0               [24] 1828 	movx	@dptr,a
      00272A A3               [24] 1829 	inc	dptr
      00272B E0               [24] 1830 	movx	a,@dptr
      00272C 34 00            [12] 1831 	addc	a,#0x00
      00272E F0               [24] 1832 	movx	@dptr,a
                                   1833 ;	lcdCommands.c:229: putchar (c);
      00272F 7F 00            [12] 1834 	mov	r7,#0x00
      002731 8E 82            [24] 1835 	mov	dpl,r6
      002733 8F 83            [24] 1836 	mov	dph,r7
      002735 12 26 2F         [24] 1837 	lcall	_putchar
                                   1838 ;	lcdCommands.c:231: }
      002738                       1839 00107$:
                                   1840 ;	lcdCommands.c:232: if (count == 48)
      002738 90 00 18         [24] 1841 	mov	dptr,#_gets_count_65536_92
      00273B E0               [24] 1842 	movx	a,@dptr
      00273C FE               [12] 1843 	mov	r6,a
      00273D A3               [24] 1844 	inc	dptr
      00273E E0               [24] 1845 	movx	a,@dptr
      00273F FF               [12] 1846 	mov	r7,a
      002740 BE 30 05         [24] 1847 	cjne	r6,#0x30,00144$
      002743 BF 00 02         [24] 1848 	cjne	r7,#0x00,00144$
      002746 80 03            [24] 1849 	sjmp	00145$
      002748                       1850 00144$:
      002748 02 26 65         [24] 1851 	ljmp	00111$
      00274B                       1852 00145$:
                                   1853 ;	lcdCommands.c:234: printf("\n\rPlease Input a maximum of 64 digits\n\r");
      00274B 74 66            [12] 1854 	mov	a,#___str_8
      00274D C0 E0            [24] 1855 	push	acc
      00274F 74 3F            [12] 1856 	mov	a,#(___str_8 >> 8)
      002751 C0 E0            [24] 1857 	push	acc
      002753 74 80            [12] 1858 	mov	a,#0x80
      002755 C0 E0            [24] 1859 	push	acc
      002757 12 34 54         [24] 1860 	lcall	_printf
      00275A 15 81            [12] 1861 	dec	sp
      00275C 15 81            [12] 1862 	dec	sp
      00275E 15 81            [12] 1863 	dec	sp
                                   1864 ;	lcdCommands.c:235: break;
                                   1865 ;	lcdCommands.c:238: }
      002760 22               [24] 1866 	ret
                                   1867 ;------------------------------------------------------------
                                   1868 ;Allocation info for local variables in function 'atoh'
                                   1869 ;------------------------------------------------------------
                                   1870 ;ap                        Allocated with name '_atoh_ap_65536_97'
                                   1871 ;p                         Allocated with name '_atoh_p_65536_98'
                                   1872 ;n                         Allocated with name '_atoh_n_65536_98'
                                   1873 ;digit                     Allocated with name '_atoh_digit_65536_98'
                                   1874 ;lcase                     Allocated with name '_atoh_lcase_65536_98'
                                   1875 ;------------------------------------------------------------
                                   1876 ;	lcdCommands.c:239: int atoh(char *ap)
                                   1877 ;	-----------------------------------------
                                   1878 ;	 function atoh
                                   1879 ;	-----------------------------------------
      002761                       1880 _atoh:
      002761 AF F0            [24] 1881 	mov	r7,b
      002763 AE 83            [24] 1882 	mov	r6,dph
      002765 E5 82            [12] 1883 	mov	a,dpl
      002767 90 00 1A         [24] 1884 	mov	dptr,#_atoh_ap_65536_97
      00276A F0               [24] 1885 	movx	@dptr,a
      00276B EE               [12] 1886 	mov	a,r6
      00276C A3               [24] 1887 	inc	dptr
      00276D F0               [24] 1888 	movx	@dptr,a
      00276E EF               [12] 1889 	mov	a,r7
      00276F A3               [24] 1890 	inc	dptr
      002770 F0               [24] 1891 	movx	@dptr,a
                                   1892 ;	lcdCommands.c:245: p = ap;
      002771 90 00 1A         [24] 1893 	mov	dptr,#_atoh_ap_65536_97
      002774 E0               [24] 1894 	movx	a,@dptr
      002775 FD               [12] 1895 	mov	r5,a
      002776 A3               [24] 1896 	inc	dptr
      002777 E0               [24] 1897 	movx	a,@dptr
      002778 FE               [12] 1898 	mov	r6,a
      002779 A3               [24] 1899 	inc	dptr
      00277A E0               [24] 1900 	movx	a,@dptr
      00277B FF               [12] 1901 	mov	r7,a
                                   1902 ;	lcdCommands.c:246: n = 0;
      00277C 90 00 20         [24] 1903 	mov	dptr,#_atoh_n_65536_98
      00277F E4               [12] 1904 	clr	a
      002780 F0               [24] 1905 	movx	@dptr,a
      002781 A3               [24] 1906 	inc	dptr
      002782 F0               [24] 1907 	movx	@dptr,a
                                   1908 ;	lcdCommands.c:247: while(*p == ' ' || *p == '	')
      002783                       1909 00102$:
      002783 8D 82            [24] 1910 	mov	dpl,r5
      002785 8E 83            [24] 1911 	mov	dph,r6
      002787 8F F0            [24] 1912 	mov	b,r7
      002789 12 3E 76         [24] 1913 	lcall	__gptrget
      00278C FC               [12] 1914 	mov	r4,a
      00278D BC 20 02         [24] 1915 	cjne	r4,#0x20,00178$
      002790 80 03            [24] 1916 	sjmp	00103$
      002792                       1917 00178$:
      002792 BC 09 07         [24] 1918 	cjne	r4,#0x09,00141$
      002795                       1919 00103$:
                                   1920 ;	lcdCommands.c:248: p++;
      002795 0D               [12] 1921 	inc	r5
      002796 BD 00 EA         [24] 1922 	cjne	r5,#0x00,00102$
      002799 0E               [12] 1923 	inc	r6
      00279A 80 E7            [24] 1924 	sjmp	00102$
      00279C                       1925 00141$:
      00279C 90 00 1D         [24] 1926 	mov	dptr,#_atoh_p_65536_98
      00279F ED               [12] 1927 	mov	a,r5
      0027A0 F0               [24] 1928 	movx	@dptr,a
      0027A1 EE               [12] 1929 	mov	a,r6
      0027A2 A3               [24] 1930 	inc	dptr
      0027A3 F0               [24] 1931 	movx	@dptr,a
      0027A4 EF               [12] 1932 	mov	a,r7
      0027A5 A3               [24] 1933 	inc	dptr
      0027A6 F0               [24] 1934 	movx	@dptr,a
                                   1935 ;	lcdCommands.c:250: if(*p == '0' && ((*(p+1) == 'x') || (*(p+1) == 'X')))
      0027A7 BC 30 29         [24] 1936 	cjne	r4,#0x30,00118$
      0027AA 74 01            [12] 1937 	mov	a,#0x01
      0027AC 2D               [12] 1938 	add	a,r5
      0027AD FA               [12] 1939 	mov	r2,a
      0027AE E4               [12] 1940 	clr	a
      0027AF 3E               [12] 1941 	addc	a,r6
      0027B0 FB               [12] 1942 	mov	r3,a
      0027B1 8F 04            [24] 1943 	mov	ar4,r7
      0027B3 8A 82            [24] 1944 	mov	dpl,r2
      0027B5 8B 83            [24] 1945 	mov	dph,r3
      0027B7 8C F0            [24] 1946 	mov	b,r4
      0027B9 12 3E 76         [24] 1947 	lcall	__gptrget
      0027BC FC               [12] 1948 	mov	r4,a
      0027BD BC 78 02         [24] 1949 	cjne	r4,#0x78,00184$
      0027C0 80 03            [24] 1950 	sjmp	00105$
      0027C2                       1951 00184$:
      0027C2 BC 58 0E         [24] 1952 	cjne	r4,#0x58,00118$
      0027C5                       1953 00105$:
                                   1954 ;	lcdCommands.c:251: p+=2;
      0027C5 90 00 1D         [24] 1955 	mov	dptr,#_atoh_p_65536_98
      0027C8 74 02            [12] 1956 	mov	a,#0x02
      0027CA 2D               [12] 1957 	add	a,r5
      0027CB F0               [24] 1958 	movx	@dptr,a
      0027CC E4               [12] 1959 	clr	a
      0027CD 3E               [12] 1960 	addc	a,r6
      0027CE A3               [24] 1961 	inc	dptr
      0027CF F0               [24] 1962 	movx	@dptr,a
      0027D0 EF               [12] 1963 	mov	a,r7
      0027D1 A3               [24] 1964 	inc	dptr
      0027D2 F0               [24] 1965 	movx	@dptr,a
                                   1966 ;	lcdCommands.c:253: while ((digit = (*p >= '0' && *p <= '9')) ||
      0027D3                       1967 00118$:
      0027D3 90 00 1D         [24] 1968 	mov	dptr,#_atoh_p_65536_98
      0027D6 E0               [24] 1969 	movx	a,@dptr
      0027D7 FD               [12] 1970 	mov	r5,a
      0027D8 A3               [24] 1971 	inc	dptr
      0027D9 E0               [24] 1972 	movx	a,@dptr
      0027DA FE               [12] 1973 	mov	r6,a
      0027DB A3               [24] 1974 	inc	dptr
      0027DC E0               [24] 1975 	movx	a,@dptr
      0027DD FF               [12] 1976 	mov	r7,a
      0027DE 8D 82            [24] 1977 	mov	dpl,r5
      0027E0 8E 83            [24] 1978 	mov	dph,r6
      0027E2 8F F0            [24] 1979 	mov	b,r7
      0027E4 12 3E 76         [24] 1980 	lcall	__gptrget
      0027E7 FF               [12] 1981 	mov	r7,a
      0027E8 BF 30 00         [24] 1982 	cjne	r7,#0x30,00187$
      0027EB                       1983 00187$:
      0027EB 40 05            [24] 1984 	jc	00123$
      0027ED EF               [12] 1985 	mov	a,r7
      0027EE 24 C6            [12] 1986 	add	a,#0xff - 0x39
      0027F0 50 04            [24] 1987 	jnc	00124$
      0027F2                       1988 00123$:
      0027F2 7F 00            [12] 1989 	mov	r7,#0x00
      0027F4 80 02            [24] 1990 	sjmp	00125$
      0027F6                       1991 00124$:
      0027F6 7F 01            [12] 1992 	mov	r7,#0x01
      0027F8                       1993 00125$:
      0027F8 EF               [12] 1994 	mov	a,r7
      0027F9 FD               [12] 1995 	mov	r5,a
      0027FA 33               [12] 1996 	rlc	a
      0027FB 95 E0            [12] 1997 	subb	a,acc
      0027FD FE               [12] 1998 	mov	r6,a
      0027FE EF               [12] 1999 	mov	a,r7
      0027FF 70 5C            [24] 2000 	jnz	00119$
                                   2001 ;	lcdCommands.c:254: (lcase = (*p >= 'a' && *p <= 'f')) ||
      002801 90 00 1D         [24] 2002 	mov	dptr,#_atoh_p_65536_98
      002804 E0               [24] 2003 	movx	a,@dptr
      002805 FB               [12] 2004 	mov	r3,a
      002806 A3               [24] 2005 	inc	dptr
      002807 E0               [24] 2006 	movx	a,@dptr
      002808 FC               [12] 2007 	mov	r4,a
      002809 A3               [24] 2008 	inc	dptr
      00280A E0               [24] 2009 	movx	a,@dptr
      00280B FF               [12] 2010 	mov	r7,a
      00280C 8B 82            [24] 2011 	mov	dpl,r3
      00280E 8C 83            [24] 2012 	mov	dph,r4
      002810 8F F0            [24] 2013 	mov	b,r7
      002812 12 3E 76         [24] 2014 	lcall	__gptrget
      002815 FF               [12] 2015 	mov	r7,a
      002816 BF 61 00         [24] 2016 	cjne	r7,#0x61,00191$
      002819                       2017 00191$:
      002819 40 05            [24] 2018 	jc	00126$
      00281B EF               [12] 2019 	mov	a,r7
      00281C 24 99            [12] 2020 	add	a,#0xff - 0x66
      00281E 50 04            [24] 2021 	jnc	00127$
      002820                       2022 00126$:
      002820 7F 00            [12] 2023 	mov	r7,#0x00
      002822 80 02            [24] 2024 	sjmp	00128$
      002824                       2025 00127$:
      002824 7F 01            [12] 2026 	mov	r7,#0x01
      002826                       2027 00128$:
      002826 EF               [12] 2028 	mov	a,r7
      002827 FC               [12] 2029 	mov	r4,a
      002828 33               [12] 2030 	rlc	a
      002829 95 E0            [12] 2031 	subb	a,acc
      00282B FF               [12] 2032 	mov	r7,a
      00282C 90 00 22         [24] 2033 	mov	dptr,#_atoh_lcase_65536_98
      00282F EC               [12] 2034 	mov	a,r4
      002830 F0               [24] 2035 	movx	@dptr,a
      002831 EF               [12] 2036 	mov	a,r7
      002832 A3               [24] 2037 	inc	dptr
      002833 F0               [24] 2038 	movx	@dptr,a
      002834 EC               [12] 2039 	mov	a,r4
      002835 4F               [12] 2040 	orl	a,r7
      002836 70 25            [24] 2041 	jnz	00119$
                                   2042 ;	lcdCommands.c:255: (*p >= 'A' && *p <= 'F')) {
      002838 90 00 1D         [24] 2043 	mov	dptr,#_atoh_p_65536_98
      00283B E0               [24] 2044 	movx	a,@dptr
      00283C FB               [12] 2045 	mov	r3,a
      00283D A3               [24] 2046 	inc	dptr
      00283E E0               [24] 2047 	movx	a,@dptr
      00283F FC               [12] 2048 	mov	r4,a
      002840 A3               [24] 2049 	inc	dptr
      002841 E0               [24] 2050 	movx	a,@dptr
      002842 FF               [12] 2051 	mov	r7,a
      002843 8B 82            [24] 2052 	mov	dpl,r3
      002845 8C 83            [24] 2053 	mov	dph,r4
      002847 8F F0            [24] 2054 	mov	b,r7
      002849 12 3E 76         [24] 2055 	lcall	__gptrget
      00284C FF               [12] 2056 	mov	r7,a
      00284D BF 41 00         [24] 2057 	cjne	r7,#0x41,00195$
      002850                       2058 00195$:
      002850 50 03            [24] 2059 	jnc	00196$
      002852 02 29 4F         [24] 2060 	ljmp	00120$
      002855                       2061 00196$:
      002855 EF               [12] 2062 	mov	a,r7
      002856 24 B9            [12] 2063 	add	a,#0xff - 0x46
      002858 50 03            [24] 2064 	jnc	00197$
      00285A 02 29 4F         [24] 2065 	ljmp	00120$
      00285D                       2066 00197$:
      00285D                       2067 00119$:
                                   2068 ;	lcdCommands.c:256: n *= 16;
      00285D 90 00 20         [24] 2069 	mov	dptr,#_atoh_n_65536_98
      002860 E0               [24] 2070 	movx	a,@dptr
      002861 FC               [12] 2071 	mov	r4,a
      002862 A3               [24] 2072 	inc	dptr
      002863 E0               [24] 2073 	movx	a,@dptr
      002864 C4               [12] 2074 	swap	a
      002865 54 F0            [12] 2075 	anl	a,#0xf0
      002867 CC               [12] 2076 	xch	a,r4
      002868 C4               [12] 2077 	swap	a
      002869 CC               [12] 2078 	xch	a,r4
      00286A 6C               [12] 2079 	xrl	a,r4
      00286B CC               [12] 2080 	xch	a,r4
      00286C 54 F0            [12] 2081 	anl	a,#0xf0
      00286E CC               [12] 2082 	xch	a,r4
      00286F 6C               [12] 2083 	xrl	a,r4
      002870 FF               [12] 2084 	mov	r7,a
      002871 90 00 20         [24] 2085 	mov	dptr,#_atoh_n_65536_98
      002874 EC               [12] 2086 	mov	a,r4
      002875 F0               [24] 2087 	movx	@dptr,a
      002876 EF               [12] 2088 	mov	a,r7
      002877 A3               [24] 2089 	inc	dptr
      002878 F0               [24] 2090 	movx	@dptr,a
                                   2091 ;	lcdCommands.c:257: if (digit)	n += *p++ - '0';
      002879 ED               [12] 2092 	mov	a,r5
      00287A 4E               [12] 2093 	orl	a,r6
      00287B 60 42            [24] 2094 	jz	00113$
      00287D 90 00 1D         [24] 2095 	mov	dptr,#_atoh_p_65536_98
      002880 E0               [24] 2096 	movx	a,@dptr
      002881 FD               [12] 2097 	mov	r5,a
      002882 A3               [24] 2098 	inc	dptr
      002883 E0               [24] 2099 	movx	a,@dptr
      002884 FE               [12] 2100 	mov	r6,a
      002885 A3               [24] 2101 	inc	dptr
      002886 E0               [24] 2102 	movx	a,@dptr
      002887 FF               [12] 2103 	mov	r7,a
      002888 8D 82            [24] 2104 	mov	dpl,r5
      00288A 8E 83            [24] 2105 	mov	dph,r6
      00288C 8F F0            [24] 2106 	mov	b,r7
      00288E 12 3E 76         [24] 2107 	lcall	__gptrget
      002891 FC               [12] 2108 	mov	r4,a
      002892 90 00 1D         [24] 2109 	mov	dptr,#_atoh_p_65536_98
      002895 74 01            [12] 2110 	mov	a,#0x01
      002897 2D               [12] 2111 	add	a,r5
      002898 F0               [24] 2112 	movx	@dptr,a
      002899 E4               [12] 2113 	clr	a
      00289A 3E               [12] 2114 	addc	a,r6
      00289B A3               [24] 2115 	inc	dptr
      00289C F0               [24] 2116 	movx	@dptr,a
      00289D EF               [12] 2117 	mov	a,r7
      00289E A3               [24] 2118 	inc	dptr
      00289F F0               [24] 2119 	movx	@dptr,a
      0028A0 7F 00            [12] 2120 	mov	r7,#0x00
      0028A2 EC               [12] 2121 	mov	a,r4
      0028A3 24 D0            [12] 2122 	add	a,#0xd0
      0028A5 FC               [12] 2123 	mov	r4,a
      0028A6 EF               [12] 2124 	mov	a,r7
      0028A7 34 FF            [12] 2125 	addc	a,#0xff
      0028A9 FF               [12] 2126 	mov	r7,a
      0028AA 90 00 20         [24] 2127 	mov	dptr,#_atoh_n_65536_98
      0028AD E0               [24] 2128 	movx	a,@dptr
      0028AE FD               [12] 2129 	mov	r5,a
      0028AF A3               [24] 2130 	inc	dptr
      0028B0 E0               [24] 2131 	movx	a,@dptr
      0028B1 FE               [12] 2132 	mov	r6,a
      0028B2 90 00 20         [24] 2133 	mov	dptr,#_atoh_n_65536_98
      0028B5 EC               [12] 2134 	mov	a,r4
      0028B6 2D               [12] 2135 	add	a,r5
      0028B7 F0               [24] 2136 	movx	@dptr,a
      0028B8 EF               [12] 2137 	mov	a,r7
      0028B9 3E               [12] 2138 	addc	a,r6
      0028BA A3               [24] 2139 	inc	dptr
      0028BB F0               [24] 2140 	movx	@dptr,a
      0028BC 02 27 D3         [24] 2141 	ljmp	00118$
      0028BF                       2142 00113$:
                                   2143 ;	lcdCommands.c:258: else if (lcase)	n += 10 + (*p++ - 'a');
      0028BF 90 00 22         [24] 2144 	mov	dptr,#_atoh_lcase_65536_98
      0028C2 E0               [24] 2145 	movx	a,@dptr
      0028C3 F5 F0            [12] 2146 	mov	b,a
      0028C5 A3               [24] 2147 	inc	dptr
      0028C6 E0               [24] 2148 	movx	a,@dptr
      0028C7 45 F0            [12] 2149 	orl	a,b
      0028C9 60 42            [24] 2150 	jz	00110$
      0028CB 90 00 1D         [24] 2151 	mov	dptr,#_atoh_p_65536_98
      0028CE E0               [24] 2152 	movx	a,@dptr
      0028CF FD               [12] 2153 	mov	r5,a
      0028D0 A3               [24] 2154 	inc	dptr
      0028D1 E0               [24] 2155 	movx	a,@dptr
      0028D2 FE               [12] 2156 	mov	r6,a
      0028D3 A3               [24] 2157 	inc	dptr
      0028D4 E0               [24] 2158 	movx	a,@dptr
      0028D5 FF               [12] 2159 	mov	r7,a
      0028D6 8D 82            [24] 2160 	mov	dpl,r5
      0028D8 8E 83            [24] 2161 	mov	dph,r6
      0028DA 8F F0            [24] 2162 	mov	b,r7
      0028DC 12 3E 76         [24] 2163 	lcall	__gptrget
      0028DF FC               [12] 2164 	mov	r4,a
      0028E0 90 00 1D         [24] 2165 	mov	dptr,#_atoh_p_65536_98
      0028E3 74 01            [12] 2166 	mov	a,#0x01
      0028E5 2D               [12] 2167 	add	a,r5
      0028E6 F0               [24] 2168 	movx	@dptr,a
      0028E7 E4               [12] 2169 	clr	a
      0028E8 3E               [12] 2170 	addc	a,r6
      0028E9 A3               [24] 2171 	inc	dptr
      0028EA F0               [24] 2172 	movx	@dptr,a
      0028EB EF               [12] 2173 	mov	a,r7
      0028EC A3               [24] 2174 	inc	dptr
      0028ED F0               [24] 2175 	movx	@dptr,a
      0028EE 7F 00            [12] 2176 	mov	r7,#0x00
      0028F0 74 A9            [12] 2177 	mov	a,#0xa9
      0028F2 2C               [12] 2178 	add	a,r4
      0028F3 FC               [12] 2179 	mov	r4,a
      0028F4 74 FF            [12] 2180 	mov	a,#0xff
      0028F6 3F               [12] 2181 	addc	a,r7
      0028F7 FF               [12] 2182 	mov	r7,a
      0028F8 90 00 20         [24] 2183 	mov	dptr,#_atoh_n_65536_98
      0028FB E0               [24] 2184 	movx	a,@dptr
      0028FC FD               [12] 2185 	mov	r5,a
      0028FD A3               [24] 2186 	inc	dptr
      0028FE E0               [24] 2187 	movx	a,@dptr
      0028FF FE               [12] 2188 	mov	r6,a
      002900 90 00 20         [24] 2189 	mov	dptr,#_atoh_n_65536_98
      002903 EC               [12] 2190 	mov	a,r4
      002904 2D               [12] 2191 	add	a,r5
      002905 F0               [24] 2192 	movx	@dptr,a
      002906 EF               [12] 2193 	mov	a,r7
      002907 3E               [12] 2194 	addc	a,r6
      002908 A3               [24] 2195 	inc	dptr
      002909 F0               [24] 2196 	movx	@dptr,a
      00290A 02 27 D3         [24] 2197 	ljmp	00118$
      00290D                       2198 00110$:
                                   2199 ;	lcdCommands.c:259: else		n += 10 + (*p++ - 'A');
      00290D 90 00 1D         [24] 2200 	mov	dptr,#_atoh_p_65536_98
      002910 E0               [24] 2201 	movx	a,@dptr
      002911 FD               [12] 2202 	mov	r5,a
      002912 A3               [24] 2203 	inc	dptr
      002913 E0               [24] 2204 	movx	a,@dptr
      002914 FE               [12] 2205 	mov	r6,a
      002915 A3               [24] 2206 	inc	dptr
      002916 E0               [24] 2207 	movx	a,@dptr
      002917 FF               [12] 2208 	mov	r7,a
      002918 8D 82            [24] 2209 	mov	dpl,r5
      00291A 8E 83            [24] 2210 	mov	dph,r6
      00291C 8F F0            [24] 2211 	mov	b,r7
      00291E 12 3E 76         [24] 2212 	lcall	__gptrget
      002921 FC               [12] 2213 	mov	r4,a
      002922 90 00 1D         [24] 2214 	mov	dptr,#_atoh_p_65536_98
      002925 74 01            [12] 2215 	mov	a,#0x01
      002927 2D               [12] 2216 	add	a,r5
      002928 F0               [24] 2217 	movx	@dptr,a
      002929 E4               [12] 2218 	clr	a
      00292A 3E               [12] 2219 	addc	a,r6
      00292B A3               [24] 2220 	inc	dptr
      00292C F0               [24] 2221 	movx	@dptr,a
      00292D EF               [12] 2222 	mov	a,r7
      00292E A3               [24] 2223 	inc	dptr
      00292F F0               [24] 2224 	movx	@dptr,a
      002930 7F 00            [12] 2225 	mov	r7,#0x00
      002932 74 C9            [12] 2226 	mov	a,#0xc9
      002934 2C               [12] 2227 	add	a,r4
      002935 FC               [12] 2228 	mov	r4,a
      002936 74 FF            [12] 2229 	mov	a,#0xff
      002938 3F               [12] 2230 	addc	a,r7
      002939 FF               [12] 2231 	mov	r7,a
      00293A 90 00 20         [24] 2232 	mov	dptr,#_atoh_n_65536_98
      00293D E0               [24] 2233 	movx	a,@dptr
      00293E FD               [12] 2234 	mov	r5,a
      00293F A3               [24] 2235 	inc	dptr
      002940 E0               [24] 2236 	movx	a,@dptr
      002941 FE               [12] 2237 	mov	r6,a
      002942 90 00 20         [24] 2238 	mov	dptr,#_atoh_n_65536_98
      002945 EC               [12] 2239 	mov	a,r4
      002946 2D               [12] 2240 	add	a,r5
      002947 F0               [24] 2241 	movx	@dptr,a
      002948 EF               [12] 2242 	mov	a,r7
      002949 3E               [12] 2243 	addc	a,r6
      00294A A3               [24] 2244 	inc	dptr
      00294B F0               [24] 2245 	movx	@dptr,a
      00294C 02 27 D3         [24] 2246 	ljmp	00118$
      00294F                       2247 00120$:
                                   2248 ;	lcdCommands.c:261: return(n);
      00294F 90 00 20         [24] 2249 	mov	dptr,#_atoh_n_65536_98
      002952 E0               [24] 2250 	movx	a,@dptr
      002953 FE               [12] 2251 	mov	r6,a
      002954 A3               [24] 2252 	inc	dptr
      002955 E0               [24] 2253 	movx	a,@dptr
                                   2254 ;	lcdCommands.c:262: }
      002956 8E 82            [24] 2255 	mov	dpl,r6
      002958 F5 83            [12] 2256 	mov	dph,a
      00295A 22               [24] 2257 	ret
                                   2258 ;------------------------------------------------------------
                                   2259 ;Allocation info for local variables in function 'gamePacman'
                                   2260 ;------------------------------------------------------------
                                   2261 ;ch                        Allocated with name '_gamePacman_ch_65536_100'
                                   2262 ;i                         Allocated with name '_gamePacman_i_65536_100'
                                   2263 ;------------------------------------------------------------
                                   2264 ;	lcdCommands.c:264: void gamePacman()
                                   2265 ;	-----------------------------------------
                                   2266 ;	 function gamePacman
                                   2267 ;	-----------------------------------------
      00295B                       2268 _gamePacman:
                                   2269 ;	lcdCommands.c:267: int i = 1;
      00295B 90 00 24         [24] 2270 	mov	dptr,#_gamePacman_i_65536_100
      00295E 74 01            [12] 2271 	mov	a,#0x01
      002960 F0               [24] 2272 	movx	@dptr,a
      002961 E4               [12] 2273 	clr	a
      002962 A3               [24] 2274 	inc	dptr
      002963 F0               [24] 2275 	movx	@dptr,a
                                   2276 ;	lcdCommands.c:268: makePacmanRight();
      002964 12 2B C3         [24] 2277 	lcall	_makePacmanRight
                                   2278 ;	lcdCommands.c:269: makePacmanLeft();
      002967 12 2C A9         [24] 2279 	lcall	_makePacmanLeft
                                   2280 ;	lcdCommands.c:270: goToAddr(lookUpTable[0][4]);
      00296A 90 00 C5         [24] 2281 	mov	dptr,#(_lookUpTable + 0x0004)
      00296D E0               [24] 2282 	movx	a,@dptr
      00296E F5 82            [12] 2283 	mov	dpl,a
      002970 12 21 1A         [24] 2284 	lcall	_goToAddr
                                   2285 ;	lcdCommands.c:271: lcdPutCh('*');
      002973 75 82 2A         [24] 2286 	mov	dpl,#0x2a
      002976 12 20 F8         [24] 2287 	lcall	_lcdPutCh
                                   2288 ;	lcdCommands.c:272: goToAddr(lookUpTable[0][5]);
      002979 90 00 C6         [24] 2289 	mov	dptr,#(_lookUpTable + 0x0005)
      00297C E0               [24] 2290 	movx	a,@dptr
      00297D F5 82            [12] 2291 	mov	dpl,a
      00297F 12 21 1A         [24] 2292 	lcall	_goToAddr
                                   2293 ;	lcdCommands.c:273: lcdPutCh('*');
      002982 75 82 2A         [24] 2294 	mov	dpl,#0x2a
      002985 12 20 F8         [24] 2295 	lcall	_lcdPutCh
                                   2296 ;	lcdCommands.c:274: goToAddr(lookUpTable[0][8]);
      002988 90 00 C9         [24] 2297 	mov	dptr,#(_lookUpTable + 0x0008)
      00298B E0               [24] 2298 	movx	a,@dptr
      00298C F5 82            [12] 2299 	mov	dpl,a
      00298E 12 21 1A         [24] 2300 	lcall	_goToAddr
                                   2301 ;	lcdCommands.c:275: lcdPutCh('*');
      002991 75 82 2A         [24] 2302 	mov	dpl,#0x2a
      002994 12 20 F8         [24] 2303 	lcall	_lcdPutCh
                                   2304 ;	lcdCommands.c:276: goToAddr(lookUpTable[0][9]);
      002997 90 00 CA         [24] 2305 	mov	dptr,#(_lookUpTable + 0x0009)
      00299A E0               [24] 2306 	movx	a,@dptr
      00299B F5 82            [12] 2307 	mov	dpl,a
      00299D 12 21 1A         [24] 2308 	lcall	_goToAddr
                                   2309 ;	lcdCommands.c:277: lcdPutCh('*');
      0029A0 75 82 2A         [24] 2310 	mov	dpl,#0x2a
      0029A3 12 20 F8         [24] 2311 	lcall	_lcdPutCh
                                   2312 ;	lcdCommands.c:278: goToAddr(lookUpTable[0][12]);
      0029A6 90 00 CD         [24] 2313 	mov	dptr,#(_lookUpTable + 0x000c)
      0029A9 E0               [24] 2314 	movx	a,@dptr
      0029AA F5 82            [12] 2315 	mov	dpl,a
      0029AC 12 21 1A         [24] 2316 	lcall	_goToAddr
                                   2317 ;	lcdCommands.c:279: lcdPutCh('*');
      0029AF 75 82 2A         [24] 2318 	mov	dpl,#0x2a
      0029B2 12 20 F8         [24] 2319 	lcall	_lcdPutCh
                                   2320 ;	lcdCommands.c:280: goToAddr(lookUpTable[0][13]);
      0029B5 90 00 CE         [24] 2321 	mov	dptr,#(_lookUpTable + 0x000d)
      0029B8 E0               [24] 2322 	movx	a,@dptr
      0029B9 F5 82            [12] 2323 	mov	dpl,a
      0029BB 12 21 1A         [24] 2324 	lcall	_goToAddr
                                   2325 ;	lcdCommands.c:281: lcdPutCh('*');
      0029BE 75 82 2A         [24] 2326 	mov	dpl,#0x2a
      0029C1 12 20 F8         [24] 2327 	lcall	_lcdPutCh
                                   2328 ;	lcdCommands.c:282: goToAddr(lookUpTable[0][14]);
      0029C4 90 00 CF         [24] 2329 	mov	dptr,#(_lookUpTable + 0x000e)
      0029C7 E0               [24] 2330 	movx	a,@dptr
      0029C8 F5 82            [12] 2331 	mov	dpl,a
      0029CA 12 21 1A         [24] 2332 	lcall	_goToAddr
                                   2333 ;	lcdCommands.c:283: lcdPutCh('*');
      0029CD 75 82 2A         [24] 2334 	mov	dpl,#0x2a
      0029D0 12 20 F8         [24] 2335 	lcall	_lcdPutCh
                                   2336 ;	lcdCommands.c:284: goToAddr(lookUpTable[1][1]);
      0029D3 90 00 D2         [24] 2337 	mov	dptr,#(_lookUpTable + 0x0011)
      0029D6 E0               [24] 2338 	movx	a,@dptr
      0029D7 F5 82            [12] 2339 	mov	dpl,a
      0029D9 12 21 1A         [24] 2340 	lcall	_goToAddr
                                   2341 ;	lcdCommands.c:285: lcdPutCh('*');
      0029DC 75 82 2A         [24] 2342 	mov	dpl,#0x2a
      0029DF 12 20 F8         [24] 2343 	lcall	_lcdPutCh
                                   2344 ;	lcdCommands.c:286: goToAddr(lookUpTable[1][2]);
      0029E2 90 00 D3         [24] 2345 	mov	dptr,#(_lookUpTable + 0x0012)
      0029E5 E0               [24] 2346 	movx	a,@dptr
      0029E6 F5 82            [12] 2347 	mov	dpl,a
      0029E8 12 21 1A         [24] 2348 	lcall	_goToAddr
                                   2349 ;	lcdCommands.c:287: lcdPutCh('*');
      0029EB 75 82 2A         [24] 2350 	mov	dpl,#0x2a
      0029EE 12 20 F8         [24] 2351 	lcall	_lcdPutCh
                                   2352 ;	lcdCommands.c:288: goToAddr(lookUpTable[1][3]);
      0029F1 90 00 D4         [24] 2353 	mov	dptr,#(_lookUpTable + 0x0013)
      0029F4 E0               [24] 2354 	movx	a,@dptr
      0029F5 F5 82            [12] 2355 	mov	dpl,a
      0029F7 12 21 1A         [24] 2356 	lcall	_goToAddr
                                   2357 ;	lcdCommands.c:289: lcdPutCh('*');
      0029FA 75 82 2A         [24] 2358 	mov	dpl,#0x2a
      0029FD 12 20 F8         [24] 2359 	lcall	_lcdPutCh
                                   2360 ;	lcdCommands.c:290: goToAddr(lookUpTable[1][12]);
      002A00 90 00 DD         [24] 2361 	mov	dptr,#(_lookUpTable + 0x001c)
      002A03 E0               [24] 2362 	movx	a,@dptr
      002A04 F5 82            [12] 2363 	mov	dpl,a
      002A06 12 21 1A         [24] 2364 	lcall	_goToAddr
                                   2365 ;	lcdCommands.c:291: lcdPutCh('*');
      002A09 75 82 2A         [24] 2366 	mov	dpl,#0x2a
      002A0C 12 20 F8         [24] 2367 	lcall	_lcdPutCh
                                   2368 ;	lcdCommands.c:292: goToAddr(lookUpTable[1][13]);
      002A0F 90 00 DE         [24] 2369 	mov	dptr,#(_lookUpTable + 0x001d)
      002A12 E0               [24] 2370 	movx	a,@dptr
      002A13 F5 82            [12] 2371 	mov	dpl,a
      002A15 12 21 1A         [24] 2372 	lcall	_goToAddr
                                   2373 ;	lcdCommands.c:293: lcdPutCh('*');
      002A18 75 82 2A         [24] 2374 	mov	dpl,#0x2a
      002A1B 12 20 F8         [24] 2375 	lcall	_lcdPutCh
                                   2376 ;	lcdCommands.c:294: printf_tiny("\n\rEnter w to go up, s to go down, a to go left and d to go right and q to quit\n\r");
      002A1E 74 8E            [12] 2377 	mov	a,#___str_9
      002A20 C0 E0            [24] 2378 	push	acc
      002A22 74 3F            [12] 2379 	mov	a,#(___str_9 >> 8)
      002A24 C0 E0            [24] 2380 	push	acc
      002A26 12 30 CA         [24] 2381 	lcall	_printf_tiny
      002A29 15 81            [12] 2382 	dec	sp
      002A2B 15 81            [12] 2383 	dec	sp
                                   2384 ;	lcdCommands.c:295: do{
      002A2D                       2385 00109$:
                                   2386 ;	lcdCommands.c:296: ch = getchar();
      002A2D 12 26 1F         [24] 2387 	lcall	_getchar
      002A30 AE 82            [24] 2388 	mov	r6,dpl
      002A32 AF 83            [24] 2389 	mov	r7,dph
                                   2390 ;	lcdCommands.c:297: if(ch == 'd')
      002A34 BE 64 02         [24] 2391 	cjne	r6,#0x64,00134$
      002A37 80 03            [24] 2392 	sjmp	00135$
      002A39                       2393 00134$:
      002A39 02 2A E1         [24] 2394 	ljmp	00104$
      002A3C                       2395 00135$:
                                   2396 ;	lcdCommands.c:299: putchar(7);
      002A3C 90 00 07         [24] 2397 	mov	dptr,#0x0007
      002A3F C0 06            [24] 2398 	push	ar6
      002A41 12 26 2F         [24] 2399 	lcall	_putchar
      002A44 D0 06            [24] 2400 	pop	ar6
                                   2401 ;	lcdCommands.c:300: goToAddr(lookUpTable[0][i-1]);
      002A46 90 00 24         [24] 2402 	mov	dptr,#_gamePacman_i_65536_100
      002A49 E0               [24] 2403 	movx	a,@dptr
      002A4A FD               [12] 2404 	mov	r5,a
      002A4B A3               [24] 2405 	inc	dptr
      002A4C E0               [24] 2406 	movx	a,@dptr
      002A4D FF               [12] 2407 	mov	r7,a
      002A4E 8D 04            [24] 2408 	mov	ar4,r5
      002A50 EC               [12] 2409 	mov	a,r4
      002A51 14               [12] 2410 	dec	a
      002A52 24 C1            [12] 2411 	add	a,#_lookUpTable
      002A54 F5 82            [12] 2412 	mov	dpl,a
      002A56 E4               [12] 2413 	clr	a
      002A57 34 00            [12] 2414 	addc	a,#(_lookUpTable >> 8)
      002A59 F5 83            [12] 2415 	mov	dph,a
      002A5B E0               [24] 2416 	movx	a,@dptr
      002A5C F5 82            [12] 2417 	mov	dpl,a
      002A5E C0 07            [24] 2418 	push	ar7
      002A60 C0 06            [24] 2419 	push	ar6
      002A62 C0 05            [24] 2420 	push	ar5
      002A64 12 21 1A         [24] 2421 	lcall	_goToAddr
                                   2422 ;	lcdCommands.c:301: busyWait();
      002A67 12 20 8B         [24] 2423 	lcall	_busyWait
                                   2424 ;	lcdCommands.c:302: lcdPutCh(' ');
      002A6A 75 82 20         [24] 2425 	mov	dpl,#0x20
      002A6D 12 20 F8         [24] 2426 	lcall	_lcdPutCh
                                   2427 ;	lcdCommands.c:303: busyWait();
      002A70 12 20 8B         [24] 2428 	lcall	_busyWait
      002A73 D0 05            [24] 2429 	pop	ar5
      002A75 D0 06            [24] 2430 	pop	ar6
      002A77 D0 07            [24] 2431 	pop	ar7
                                   2432 ;	lcdCommands.c:304: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      002A79 ED               [12] 2433 	mov	a,r5
      002A7A 24 C1            [12] 2434 	add	a,#_lookUpTable
      002A7C F5 82            [12] 2435 	mov	dpl,a
      002A7E EF               [12] 2436 	mov	a,r7
      002A7F 34 00            [12] 2437 	addc	a,#(_lookUpTable >> 8)
      002A81 F5 83            [12] 2438 	mov	dph,a
      002A83 E0               [24] 2439 	movx	a,@dptr
      002A84 FC               [12] 2440 	mov	r4,a
      002A85 7B 00            [12] 2441 	mov	r3,#0x00
      002A87 90 F0 00         [24] 2442 	mov	dptr,#_lcdGeneral
      002A8A 74 80            [12] 2443 	mov	a,#0x80
      002A8C 4C               [12] 2444 	orl	a,r4
      002A8D F0               [24] 2445 	movx	@dptr,a
      002A8E EB               [12] 2446 	mov	a,r3
      002A8F A3               [24] 2447 	inc	dptr
      002A90 F0               [24] 2448 	movx	@dptr,a
                                   2449 ;	lcdCommands.c:305: busyWait();
      002A91 C0 07            [24] 2450 	push	ar7
      002A93 C0 06            [24] 2451 	push	ar6
      002A95 C0 05            [24] 2452 	push	ar5
      002A97 12 20 8B         [24] 2453 	lcall	_busyWait
                                   2454 ;	lcdCommands.c:306: writeCharacter = 0x00;
      002A9A 90 F1 00         [24] 2455 	mov	dptr,#_writeCharacter
      002A9D E4               [12] 2456 	clr	a
      002A9E F0               [24] 2457 	movx	@dptr,a
      002A9F A3               [24] 2458 	inc	dptr
      002AA0 F0               [24] 2459 	movx	@dptr,a
                                   2460 ;	lcdCommands.c:307: busyWait();
      002AA1 12 20 8B         [24] 2461 	lcall	_busyWait
      002AA4 D0 05            [24] 2462 	pop	ar5
      002AA6 D0 06            [24] 2463 	pop	ar6
      002AA8 D0 07            [24] 2464 	pop	ar7
                                   2465 ;	lcdCommands.c:308: if(i >= 47)
      002AAA C3               [12] 2466 	clr	c
      002AAB ED               [12] 2467 	mov	a,r5
      002AAC 94 2F            [12] 2468 	subb	a,#0x2f
      002AAE EF               [12] 2469 	mov	a,r7
      002AAF 64 80            [12] 2470 	xrl	a,#0x80
      002AB1 94 80            [12] 2471 	subb	a,#0x80
      002AB3 40 20            [24] 2472 	jc	00102$
                                   2473 ;	lcdCommands.c:310: goToAddr(lookUpTable[2][15]);
      002AB5 90 00 F0         [24] 2474 	mov	dptr,#(_lookUpTable + 0x002f)
      002AB8 E0               [24] 2475 	movx	a,@dptr
      002AB9 F5 82            [12] 2476 	mov	dpl,a
      002ABB C0 06            [24] 2477 	push	ar6
      002ABD 12 21 1A         [24] 2478 	lcall	_goToAddr
                                   2479 ;	lcdCommands.c:311: busyWait();
      002AC0 12 20 8B         [24] 2480 	lcall	_busyWait
                                   2481 ;	lcdCommands.c:312: lcdPutCh(' ');
      002AC3 75 82 20         [24] 2482 	mov	dpl,#0x20
      002AC6 12 20 F8         [24] 2483 	lcall	_lcdPutCh
                                   2484 ;	lcdCommands.c:313: busyWait();
      002AC9 12 20 8B         [24] 2485 	lcall	_busyWait
      002ACC D0 06            [24] 2486 	pop	ar6
                                   2487 ;	lcdCommands.c:314: i = 0;
      002ACE 90 00 24         [24] 2488 	mov	dptr,#_gamePacman_i_65536_100
      002AD1 E4               [12] 2489 	clr	a
      002AD2 F0               [24] 2490 	movx	@dptr,a
      002AD3 A3               [24] 2491 	inc	dptr
      002AD4 F0               [24] 2492 	movx	@dptr,a
      002AD5                       2493 00102$:
                                   2494 ;	lcdCommands.c:316: i++;
      002AD5 90 00 24         [24] 2495 	mov	dptr,#_gamePacman_i_65536_100
      002AD8 E0               [24] 2496 	movx	a,@dptr
      002AD9 24 01            [12] 2497 	add	a,#0x01
      002ADB F0               [24] 2498 	movx	@dptr,a
      002ADC A3               [24] 2499 	inc	dptr
      002ADD E0               [24] 2500 	movx	a,@dptr
      002ADE 34 00            [12] 2501 	addc	a,#0x00
      002AE0 F0               [24] 2502 	movx	@dptr,a
      002AE1                       2503 00104$:
                                   2504 ;	lcdCommands.c:318: i--;
      002AE1 90 00 24         [24] 2505 	mov	dptr,#_gamePacman_i_65536_100
      002AE4 E0               [24] 2506 	movx	a,@dptr
      002AE5 24 FF            [12] 2507 	add	a,#0xff
      002AE7 FD               [12] 2508 	mov	r5,a
      002AE8 A3               [24] 2509 	inc	dptr
      002AE9 E0               [24] 2510 	movx	a,@dptr
      002AEA 34 FF            [12] 2511 	addc	a,#0xff
      002AEC FF               [12] 2512 	mov	r7,a
      002AED 90 00 24         [24] 2513 	mov	dptr,#_gamePacman_i_65536_100
      002AF0 ED               [12] 2514 	mov	a,r5
      002AF1 F0               [24] 2515 	movx	@dptr,a
      002AF2 EF               [12] 2516 	mov	a,r7
      002AF3 A3               [24] 2517 	inc	dptr
      002AF4 F0               [24] 2518 	movx	@dptr,a
                                   2519 ;	lcdCommands.c:320: if(ch == 'a')
      002AF5 BE 61 02         [24] 2520 	cjne	r6,#0x61,00137$
      002AF8 80 03            [24] 2521 	sjmp	00138$
      002AFA                       2522 00137$:
      002AFA 02 2B AF         [24] 2523 	ljmp	00108$
      002AFD                       2524 00138$:
                                   2525 ;	lcdCommands.c:322: putchar(7);
      002AFD 90 00 07         [24] 2526 	mov	dptr,#0x0007
      002B00 C0 06            [24] 2527 	push	ar6
      002B02 12 26 2F         [24] 2528 	lcall	_putchar
      002B05 D0 06            [24] 2529 	pop	ar6
                                   2530 ;	lcdCommands.c:323: goToAddr(lookUpTable[0][i+1]);
      002B07 90 00 24         [24] 2531 	mov	dptr,#_gamePacman_i_65536_100
      002B0A E0               [24] 2532 	movx	a,@dptr
      002B0B FD               [12] 2533 	mov	r5,a
      002B0C A3               [24] 2534 	inc	dptr
      002B0D E0               [24] 2535 	movx	a,@dptr
      002B0E FF               [12] 2536 	mov	r7,a
      002B0F 8D 04            [24] 2537 	mov	ar4,r5
      002B11 EC               [12] 2538 	mov	a,r4
      002B12 04               [12] 2539 	inc	a
      002B13 24 C1            [12] 2540 	add	a,#_lookUpTable
      002B15 F5 82            [12] 2541 	mov	dpl,a
      002B17 E4               [12] 2542 	clr	a
      002B18 34 00            [12] 2543 	addc	a,#(_lookUpTable >> 8)
      002B1A F5 83            [12] 2544 	mov	dph,a
      002B1C E0               [24] 2545 	movx	a,@dptr
      002B1D F5 82            [12] 2546 	mov	dpl,a
      002B1F C0 07            [24] 2547 	push	ar7
      002B21 C0 06            [24] 2548 	push	ar6
      002B23 C0 05            [24] 2549 	push	ar5
      002B25 12 21 1A         [24] 2550 	lcall	_goToAddr
                                   2551 ;	lcdCommands.c:324: busyWait();
      002B28 12 20 8B         [24] 2552 	lcall	_busyWait
                                   2553 ;	lcdCommands.c:325: lcdPutCh(' ');
      002B2B 75 82 20         [24] 2554 	mov	dpl,#0x20
      002B2E 12 20 F8         [24] 2555 	lcall	_lcdPutCh
                                   2556 ;	lcdCommands.c:326: busyWait();
      002B31 12 20 8B         [24] 2557 	lcall	_busyWait
      002B34 D0 05            [24] 2558 	pop	ar5
      002B36 D0 06            [24] 2559 	pop	ar6
      002B38 D0 07            [24] 2560 	pop	ar7
                                   2561 ;	lcdCommands.c:327: lcdGeneral = 0x80 | (lookUpTable[0][i]);
      002B3A ED               [12] 2562 	mov	a,r5
      002B3B 24 C1            [12] 2563 	add	a,#_lookUpTable
      002B3D F5 82            [12] 2564 	mov	dpl,a
      002B3F EF               [12] 2565 	mov	a,r7
      002B40 34 00            [12] 2566 	addc	a,#(_lookUpTable >> 8)
      002B42 F5 83            [12] 2567 	mov	dph,a
      002B44 E0               [24] 2568 	movx	a,@dptr
      002B45 FC               [12] 2569 	mov	r4,a
      002B46 7B 00            [12] 2570 	mov	r3,#0x00
      002B48 90 F0 00         [24] 2571 	mov	dptr,#_lcdGeneral
      002B4B 74 80            [12] 2572 	mov	a,#0x80
      002B4D 4C               [12] 2573 	orl	a,r4
      002B4E F0               [24] 2574 	movx	@dptr,a
      002B4F EB               [12] 2575 	mov	a,r3
      002B50 A3               [24] 2576 	inc	dptr
      002B51 F0               [24] 2577 	movx	@dptr,a
                                   2578 ;	lcdCommands.c:328: busyWait();
      002B52 C0 07            [24] 2579 	push	ar7
      002B54 C0 06            [24] 2580 	push	ar6
      002B56 C0 05            [24] 2581 	push	ar5
      002B58 12 20 8B         [24] 2582 	lcall	_busyWait
                                   2583 ;	lcdCommands.c:329: writeCharacter = 0x00;
      002B5B 90 F1 00         [24] 2584 	mov	dptr,#_writeCharacter
      002B5E E4               [12] 2585 	clr	a
      002B5F F0               [24] 2586 	movx	@dptr,a
      002B60 A3               [24] 2587 	inc	dptr
      002B61 F0               [24] 2588 	movx	@dptr,a
                                   2589 ;	lcdCommands.c:330: busyWait();
      002B62 12 20 8B         [24] 2590 	lcall	_busyWait
      002B65 D0 05            [24] 2591 	pop	ar5
      002B67 D0 06            [24] 2592 	pop	ar6
      002B69 D0 07            [24] 2593 	pop	ar7
                                   2594 ;	lcdCommands.c:331: if( i <= 0)
      002B6B C3               [12] 2595 	clr	c
      002B6C E4               [12] 2596 	clr	a
      002B6D 9D               [12] 2597 	subb	a,r5
      002B6E 74 80            [12] 2598 	mov	a,#(0x00 ^ 0x80)
      002B70 8F F0            [24] 2599 	mov	b,r7
      002B72 63 F0 80         [24] 2600 	xrl	b,#0x80
      002B75 95 F0            [12] 2601 	subb	a,b
      002B77 40 22            [24] 2602 	jc	00106$
                                   2603 ;	lcdCommands.c:333: goToAddr(lookUpTable[0][0]);
      002B79 90 00 C1         [24] 2604 	mov	dptr,#_lookUpTable
      002B7C E0               [24] 2605 	movx	a,@dptr
      002B7D F5 82            [12] 2606 	mov	dpl,a
      002B7F C0 06            [24] 2607 	push	ar6
      002B81 12 21 1A         [24] 2608 	lcall	_goToAddr
                                   2609 ;	lcdCommands.c:334: busyWait();
      002B84 12 20 8B         [24] 2610 	lcall	_busyWait
                                   2611 ;	lcdCommands.c:335: lcdPutCh(' ');
      002B87 75 82 20         [24] 2612 	mov	dpl,#0x20
      002B8A 12 20 F8         [24] 2613 	lcall	_lcdPutCh
                                   2614 ;	lcdCommands.c:336: busyWait();
      002B8D 12 20 8B         [24] 2615 	lcall	_busyWait
      002B90 D0 06            [24] 2616 	pop	ar6
                                   2617 ;	lcdCommands.c:337: i = 47;
      002B92 90 00 24         [24] 2618 	mov	dptr,#_gamePacman_i_65536_100
      002B95 74 2F            [12] 2619 	mov	a,#0x2f
      002B97 F0               [24] 2620 	movx	@dptr,a
      002B98 E4               [12] 2621 	clr	a
      002B99 A3               [24] 2622 	inc	dptr
      002B9A F0               [24] 2623 	movx	@dptr,a
      002B9B                       2624 00106$:
                                   2625 ;	lcdCommands.c:339: i--;
      002B9B 90 00 24         [24] 2626 	mov	dptr,#_gamePacman_i_65536_100
      002B9E E0               [24] 2627 	movx	a,@dptr
      002B9F 24 FF            [12] 2628 	add	a,#0xff
      002BA1 FD               [12] 2629 	mov	r5,a
      002BA2 A3               [24] 2630 	inc	dptr
      002BA3 E0               [24] 2631 	movx	a,@dptr
      002BA4 34 FF            [12] 2632 	addc	a,#0xff
      002BA6 FF               [12] 2633 	mov	r7,a
      002BA7 90 00 24         [24] 2634 	mov	dptr,#_gamePacman_i_65536_100
      002BAA ED               [12] 2635 	mov	a,r5
      002BAB F0               [24] 2636 	movx	@dptr,a
      002BAC EF               [12] 2637 	mov	a,r7
      002BAD A3               [24] 2638 	inc	dptr
      002BAE F0               [24] 2639 	movx	@dptr,a
      002BAF                       2640 00108$:
                                   2641 ;	lcdCommands.c:341: i++;
      002BAF 90 00 24         [24] 2642 	mov	dptr,#_gamePacman_i_65536_100
      002BB2 E0               [24] 2643 	movx	a,@dptr
      002BB3 24 01            [12] 2644 	add	a,#0x01
      002BB5 F0               [24] 2645 	movx	@dptr,a
      002BB6 A3               [24] 2646 	inc	dptr
      002BB7 E0               [24] 2647 	movx	a,@dptr
      002BB8 34 00            [12] 2648 	addc	a,#0x00
      002BBA F0               [24] 2649 	movx	@dptr,a
                                   2650 ;	lcdCommands.c:342: }while(ch != 'q');
      002BBB BE 71 01         [24] 2651 	cjne	r6,#0x71,00140$
      002BBE 22               [24] 2652 	ret
      002BBF                       2653 00140$:
      002BBF 02 2A 2D         [24] 2654 	ljmp	00109$
                                   2655 ;	lcdCommands.c:343: }
      002BC2 22               [24] 2656 	ret
                                   2657 ;------------------------------------------------------------
                                   2658 ;Allocation info for local variables in function 'makePacmanRight'
                                   2659 ;------------------------------------------------------------
                                   2660 ;	lcdCommands.c:345: void makePacmanRight()
                                   2661 ;	-----------------------------------------
                                   2662 ;	 function makePacmanRight
                                   2663 ;	-----------------------------------------
      002BC3                       2664 _makePacmanRight:
                                   2665 ;	lcdCommands.c:347: busyWait();
      002BC3 12 20 8B         [24] 2666 	lcall	_busyWait
                                   2667 ;	lcdCommands.c:348: lcdGeneral = 0x40 | 0x00;
      002BC6 90 F0 00         [24] 2668 	mov	dptr,#_lcdGeneral
      002BC9 74 40            [12] 2669 	mov	a,#0x40
      002BCB F0               [24] 2670 	movx	@dptr,a
      002BCC E4               [12] 2671 	clr	a
      002BCD A3               [24] 2672 	inc	dptr
      002BCE F0               [24] 2673 	movx	@dptr,a
                                   2674 ;	lcdCommands.c:349: busyWait();
      002BCF 12 20 8B         [24] 2675 	lcall	_busyWait
                                   2676 ;	lcdCommands.c:350: writeCharacter = 0x06;
      002BD2 90 F1 00         [24] 2677 	mov	dptr,#_writeCharacter
      002BD5 74 06            [12] 2678 	mov	a,#0x06
      002BD7 F0               [24] 2679 	movx	@dptr,a
      002BD8 E4               [12] 2680 	clr	a
      002BD9 A3               [24] 2681 	inc	dptr
      002BDA F0               [24] 2682 	movx	@dptr,a
                                   2683 ;	lcdCommands.c:351: busyWait();
      002BDB 12 20 8B         [24] 2684 	lcall	_busyWait
                                   2685 ;	lcdCommands.c:352: lcdGeneral = 0x40 | 0x01;
      002BDE 90 F0 00         [24] 2686 	mov	dptr,#_lcdGeneral
      002BE1 74 41            [12] 2687 	mov	a,#0x41
      002BE3 F0               [24] 2688 	movx	@dptr,a
      002BE4 E4               [12] 2689 	clr	a
      002BE5 A3               [24] 2690 	inc	dptr
      002BE6 F0               [24] 2691 	movx	@dptr,a
                                   2692 ;	lcdCommands.c:353: busyWait();
      002BE7 12 20 8B         [24] 2693 	lcall	_busyWait
                                   2694 ;	lcdCommands.c:354: writeCharacter = 0x09;
      002BEA 90 F1 00         [24] 2695 	mov	dptr,#_writeCharacter
      002BED 74 09            [12] 2696 	mov	a,#0x09
      002BEF F0               [24] 2697 	movx	@dptr,a
      002BF0 E4               [12] 2698 	clr	a
      002BF1 A3               [24] 2699 	inc	dptr
      002BF2 F0               [24] 2700 	movx	@dptr,a
                                   2701 ;	lcdCommands.c:355: busyWait();
      002BF3 12 20 8B         [24] 2702 	lcall	_busyWait
                                   2703 ;	lcdCommands.c:356: lcdGeneral = 0x40 | 0x02;
      002BF6 90 F0 00         [24] 2704 	mov	dptr,#_lcdGeneral
      002BF9 74 42            [12] 2705 	mov	a,#0x42
      002BFB F0               [24] 2706 	movx	@dptr,a
      002BFC E4               [12] 2707 	clr	a
      002BFD A3               [24] 2708 	inc	dptr
      002BFE F0               [24] 2709 	movx	@dptr,a
                                   2710 ;	lcdCommands.c:357: busyWait();
      002BFF 12 20 8B         [24] 2711 	lcall	_busyWait
                                   2712 ;	lcdCommands.c:358: writeCharacter = 0x12;
      002C02 90 F1 00         [24] 2713 	mov	dptr,#_writeCharacter
      002C05 74 12            [12] 2714 	mov	a,#0x12
      002C07 F0               [24] 2715 	movx	@dptr,a
      002C08 E4               [12] 2716 	clr	a
      002C09 A3               [24] 2717 	inc	dptr
      002C0A F0               [24] 2718 	movx	@dptr,a
                                   2719 ;	lcdCommands.c:359: busyWait();
      002C0B 12 20 8B         [24] 2720 	lcall	_busyWait
                                   2721 ;	lcdCommands.c:360: lcdGeneral = 0x40 | 0x03;
      002C0E 90 F0 00         [24] 2722 	mov	dptr,#_lcdGeneral
      002C11 74 43            [12] 2723 	mov	a,#0x43
      002C13 F0               [24] 2724 	movx	@dptr,a
      002C14 E4               [12] 2725 	clr	a
      002C15 A3               [24] 2726 	inc	dptr
      002C16 F0               [24] 2727 	movx	@dptr,a
                                   2728 ;	lcdCommands.c:361: busyWait();
      002C17 12 20 8B         [24] 2729 	lcall	_busyWait
                                   2730 ;	lcdCommands.c:362: writeCharacter = 0x14;
      002C1A 90 F1 00         [24] 2731 	mov	dptr,#_writeCharacter
      002C1D 74 14            [12] 2732 	mov	a,#0x14
      002C1F F0               [24] 2733 	movx	@dptr,a
      002C20 E4               [12] 2734 	clr	a
      002C21 A3               [24] 2735 	inc	dptr
      002C22 F0               [24] 2736 	movx	@dptr,a
                                   2737 ;	lcdCommands.c:363: busyWait();
      002C23 12 20 8B         [24] 2738 	lcall	_busyWait
                                   2739 ;	lcdCommands.c:364: lcdGeneral = 0x40 | 0x04;
      002C26 90 F0 00         [24] 2740 	mov	dptr,#_lcdGeneral
      002C29 74 44            [12] 2741 	mov	a,#0x44
      002C2B F0               [24] 2742 	movx	@dptr,a
      002C2C E4               [12] 2743 	clr	a
      002C2D A3               [24] 2744 	inc	dptr
      002C2E F0               [24] 2745 	movx	@dptr,a
                                   2746 ;	lcdCommands.c:365: busyWait();
      002C2F 12 20 8B         [24] 2747 	lcall	_busyWait
                                   2748 ;	lcdCommands.c:366: writeCharacter = 0x14;
      002C32 90 F1 00         [24] 2749 	mov	dptr,#_writeCharacter
      002C35 74 14            [12] 2750 	mov	a,#0x14
      002C37 F0               [24] 2751 	movx	@dptr,a
      002C38 E4               [12] 2752 	clr	a
      002C39 A3               [24] 2753 	inc	dptr
      002C3A F0               [24] 2754 	movx	@dptr,a
                                   2755 ;	lcdCommands.c:367: busyWait();
      002C3B 12 20 8B         [24] 2756 	lcall	_busyWait
                                   2757 ;	lcdCommands.c:368: lcdGeneral = 0x40 | 0x05;
      002C3E 90 F0 00         [24] 2758 	mov	dptr,#_lcdGeneral
      002C41 74 45            [12] 2759 	mov	a,#0x45
      002C43 F0               [24] 2760 	movx	@dptr,a
      002C44 E4               [12] 2761 	clr	a
      002C45 A3               [24] 2762 	inc	dptr
      002C46 F0               [24] 2763 	movx	@dptr,a
                                   2764 ;	lcdCommands.c:369: busyWait();
      002C47 12 20 8B         [24] 2765 	lcall	_busyWait
                                   2766 ;	lcdCommands.c:370: writeCharacter = 0x12;
      002C4A 90 F1 00         [24] 2767 	mov	dptr,#_writeCharacter
      002C4D 74 12            [12] 2768 	mov	a,#0x12
      002C4F F0               [24] 2769 	movx	@dptr,a
      002C50 E4               [12] 2770 	clr	a
      002C51 A3               [24] 2771 	inc	dptr
      002C52 F0               [24] 2772 	movx	@dptr,a
                                   2773 ;	lcdCommands.c:371: busyWait();
      002C53 12 20 8B         [24] 2774 	lcall	_busyWait
                                   2775 ;	lcdCommands.c:372: lcdGeneral = 0x40 | 0x06;
      002C56 90 F0 00         [24] 2776 	mov	dptr,#_lcdGeneral
      002C59 74 46            [12] 2777 	mov	a,#0x46
      002C5B F0               [24] 2778 	movx	@dptr,a
      002C5C E4               [12] 2779 	clr	a
      002C5D A3               [24] 2780 	inc	dptr
      002C5E F0               [24] 2781 	movx	@dptr,a
                                   2782 ;	lcdCommands.c:373: busyWait();
      002C5F 12 20 8B         [24] 2783 	lcall	_busyWait
                                   2784 ;	lcdCommands.c:374: writeCharacter = 0x09;
      002C62 90 F1 00         [24] 2785 	mov	dptr,#_writeCharacter
      002C65 74 09            [12] 2786 	mov	a,#0x09
      002C67 F0               [24] 2787 	movx	@dptr,a
      002C68 E4               [12] 2788 	clr	a
      002C69 A3               [24] 2789 	inc	dptr
      002C6A F0               [24] 2790 	movx	@dptr,a
                                   2791 ;	lcdCommands.c:375: busyWait();
      002C6B 12 20 8B         [24] 2792 	lcall	_busyWait
                                   2793 ;	lcdCommands.c:376: lcdGeneral = 0x40 | 0x07;
      002C6E 90 F0 00         [24] 2794 	mov	dptr,#_lcdGeneral
      002C71 74 47            [12] 2795 	mov	a,#0x47
      002C73 F0               [24] 2796 	movx	@dptr,a
      002C74 E4               [12] 2797 	clr	a
      002C75 A3               [24] 2798 	inc	dptr
      002C76 F0               [24] 2799 	movx	@dptr,a
                                   2800 ;	lcdCommands.c:377: busyWait();
      002C77 12 20 8B         [24] 2801 	lcall	_busyWait
                                   2802 ;	lcdCommands.c:378: writeCharacter = 0x06;
      002C7A 90 F1 00         [24] 2803 	mov	dptr,#_writeCharacter
      002C7D 74 06            [12] 2804 	mov	a,#0x06
      002C7F F0               [24] 2805 	movx	@dptr,a
      002C80 E4               [12] 2806 	clr	a
      002C81 A3               [24] 2807 	inc	dptr
      002C82 F0               [24] 2808 	movx	@dptr,a
                                   2809 ;	lcdCommands.c:379: busyWait();
      002C83 12 20 8B         [24] 2810 	lcall	_busyWait
                                   2811 ;	lcdCommands.c:380: goToXY(3,1);
      002C86 90 00 04         [24] 2812 	mov	dptr,#_goToXY_PARM_2
      002C89 74 01            [12] 2813 	mov	a,#0x01
      002C8B F0               [24] 2814 	movx	@dptr,a
      002C8C 75 82 03         [24] 2815 	mov	dpl,#0x03
      002C8F 12 21 35         [24] 2816 	lcall	_goToXY
                                   2817 ;	lcdCommands.c:381: busyWait();
      002C92 12 20 8B         [24] 2818 	lcall	_busyWait
                                   2819 ;	lcdCommands.c:382: lcdGeneral = 0x80 | 0x00;
      002C95 90 F0 00         [24] 2820 	mov	dptr,#_lcdGeneral
      002C98 74 80            [12] 2821 	mov	a,#0x80
      002C9A F0               [24] 2822 	movx	@dptr,a
      002C9B E4               [12] 2823 	clr	a
      002C9C A3               [24] 2824 	inc	dptr
      002C9D F0               [24] 2825 	movx	@dptr,a
                                   2826 ;	lcdCommands.c:383: busyWait();
      002C9E 12 20 8B         [24] 2827 	lcall	_busyWait
                                   2828 ;	lcdCommands.c:384: writeCharacter = 0x00;
      002CA1 90 F1 00         [24] 2829 	mov	dptr,#_writeCharacter
      002CA4 E4               [12] 2830 	clr	a
      002CA5 F0               [24] 2831 	movx	@dptr,a
      002CA6 A3               [24] 2832 	inc	dptr
      002CA7 F0               [24] 2833 	movx	@dptr,a
                                   2834 ;	lcdCommands.c:385: }
      002CA8 22               [24] 2835 	ret
                                   2836 ;------------------------------------------------------------
                                   2837 ;Allocation info for local variables in function 'makePacmanLeft'
                                   2838 ;------------------------------------------------------------
                                   2839 ;	lcdCommands.c:386: void makePacmanLeft()
                                   2840 ;	-----------------------------------------
                                   2841 ;	 function makePacmanLeft
                                   2842 ;	-----------------------------------------
      002CA9                       2843 _makePacmanLeft:
                                   2844 ;	lcdCommands.c:388: busyWait();
      002CA9 12 20 8B         [24] 2845 	lcall	_busyWait
                                   2846 ;	lcdCommands.c:389: lcdGeneral = 0x40 | 0x30;
      002CAC 90 F0 00         [24] 2847 	mov	dptr,#_lcdGeneral
      002CAF 74 70            [12] 2848 	mov	a,#0x70
      002CB1 F0               [24] 2849 	movx	@dptr,a
      002CB2 E4               [12] 2850 	clr	a
      002CB3 A3               [24] 2851 	inc	dptr
      002CB4 F0               [24] 2852 	movx	@dptr,a
                                   2853 ;	lcdCommands.c:390: busyWait();
      002CB5 12 20 8B         [24] 2854 	lcall	_busyWait
                                   2855 ;	lcdCommands.c:391: writeCharacter = 0x0C;
      002CB8 90 F1 00         [24] 2856 	mov	dptr,#_writeCharacter
      002CBB 74 0C            [12] 2857 	mov	a,#0x0c
      002CBD F0               [24] 2858 	movx	@dptr,a
      002CBE E4               [12] 2859 	clr	a
      002CBF A3               [24] 2860 	inc	dptr
      002CC0 F0               [24] 2861 	movx	@dptr,a
                                   2862 ;	lcdCommands.c:392: busyWait();
      002CC1 12 20 8B         [24] 2863 	lcall	_busyWait
                                   2864 ;	lcdCommands.c:393: lcdGeneral = 0x40 | 0x31;
      002CC4 90 F0 00         [24] 2865 	mov	dptr,#_lcdGeneral
      002CC7 74 71            [12] 2866 	mov	a,#0x71
      002CC9 F0               [24] 2867 	movx	@dptr,a
      002CCA E4               [12] 2868 	clr	a
      002CCB A3               [24] 2869 	inc	dptr
      002CCC F0               [24] 2870 	movx	@dptr,a
                                   2871 ;	lcdCommands.c:394: busyWait();
      002CCD 12 20 8B         [24] 2872 	lcall	_busyWait
                                   2873 ;	lcdCommands.c:395: writeCharacter = 0x12;
      002CD0 90 F1 00         [24] 2874 	mov	dptr,#_writeCharacter
      002CD3 74 12            [12] 2875 	mov	a,#0x12
      002CD5 F0               [24] 2876 	movx	@dptr,a
      002CD6 E4               [12] 2877 	clr	a
      002CD7 A3               [24] 2878 	inc	dptr
      002CD8 F0               [24] 2879 	movx	@dptr,a
                                   2880 ;	lcdCommands.c:396: busyWait();
      002CD9 12 20 8B         [24] 2881 	lcall	_busyWait
                                   2882 ;	lcdCommands.c:397: lcdGeneral = 0x40 | 0x32;
      002CDC 90 F0 00         [24] 2883 	mov	dptr,#_lcdGeneral
      002CDF 74 72            [12] 2884 	mov	a,#0x72
      002CE1 F0               [24] 2885 	movx	@dptr,a
      002CE2 E4               [12] 2886 	clr	a
      002CE3 A3               [24] 2887 	inc	dptr
      002CE4 F0               [24] 2888 	movx	@dptr,a
                                   2889 ;	lcdCommands.c:398: busyWait();
      002CE5 12 20 8B         [24] 2890 	lcall	_busyWait
                                   2891 ;	lcdCommands.c:399: writeCharacter = 0x09;
      002CE8 90 F1 00         [24] 2892 	mov	dptr,#_writeCharacter
      002CEB 74 09            [12] 2893 	mov	a,#0x09
      002CED F0               [24] 2894 	movx	@dptr,a
      002CEE E4               [12] 2895 	clr	a
      002CEF A3               [24] 2896 	inc	dptr
      002CF0 F0               [24] 2897 	movx	@dptr,a
                                   2898 ;	lcdCommands.c:400: busyWait();
      002CF1 12 20 8B         [24] 2899 	lcall	_busyWait
                                   2900 ;	lcdCommands.c:401: lcdGeneral = 0x40 | 0x33;
      002CF4 90 F0 00         [24] 2901 	mov	dptr,#_lcdGeneral
      002CF7 74 73            [12] 2902 	mov	a,#0x73
      002CF9 F0               [24] 2903 	movx	@dptr,a
      002CFA E4               [12] 2904 	clr	a
      002CFB A3               [24] 2905 	inc	dptr
      002CFC F0               [24] 2906 	movx	@dptr,a
                                   2907 ;	lcdCommands.c:402: busyWait();
      002CFD 12 20 8B         [24] 2908 	lcall	_busyWait
                                   2909 ;	lcdCommands.c:403: writeCharacter = 0x05;
      002D00 90 F1 00         [24] 2910 	mov	dptr,#_writeCharacter
      002D03 74 05            [12] 2911 	mov	a,#0x05
      002D05 F0               [24] 2912 	movx	@dptr,a
      002D06 E4               [12] 2913 	clr	a
      002D07 A3               [24] 2914 	inc	dptr
      002D08 F0               [24] 2915 	movx	@dptr,a
                                   2916 ;	lcdCommands.c:404: busyWait();
      002D09 12 20 8B         [24] 2917 	lcall	_busyWait
                                   2918 ;	lcdCommands.c:405: lcdGeneral = 0x40 | 0x34;
      002D0C 90 F0 00         [24] 2919 	mov	dptr,#_lcdGeneral
      002D0F 74 74            [12] 2920 	mov	a,#0x74
      002D11 F0               [24] 2921 	movx	@dptr,a
      002D12 E4               [12] 2922 	clr	a
      002D13 A3               [24] 2923 	inc	dptr
      002D14 F0               [24] 2924 	movx	@dptr,a
                                   2925 ;	lcdCommands.c:406: busyWait();
      002D15 12 20 8B         [24] 2926 	lcall	_busyWait
                                   2927 ;	lcdCommands.c:407: writeCharacter = 0x05;
      002D18 90 F1 00         [24] 2928 	mov	dptr,#_writeCharacter
      002D1B 74 05            [12] 2929 	mov	a,#0x05
      002D1D F0               [24] 2930 	movx	@dptr,a
      002D1E E4               [12] 2931 	clr	a
      002D1F A3               [24] 2932 	inc	dptr
      002D20 F0               [24] 2933 	movx	@dptr,a
                                   2934 ;	lcdCommands.c:408: busyWait();
      002D21 12 20 8B         [24] 2935 	lcall	_busyWait
                                   2936 ;	lcdCommands.c:409: lcdGeneral = 0x40 | 0x35;
      002D24 90 F0 00         [24] 2937 	mov	dptr,#_lcdGeneral
      002D27 74 75            [12] 2938 	mov	a,#0x75
      002D29 F0               [24] 2939 	movx	@dptr,a
      002D2A E4               [12] 2940 	clr	a
      002D2B A3               [24] 2941 	inc	dptr
      002D2C F0               [24] 2942 	movx	@dptr,a
                                   2943 ;	lcdCommands.c:410: busyWait();
      002D2D 12 20 8B         [24] 2944 	lcall	_busyWait
                                   2945 ;	lcdCommands.c:411: writeCharacter = 0x09;
      002D30 90 F1 00         [24] 2946 	mov	dptr,#_writeCharacter
      002D33 74 09            [12] 2947 	mov	a,#0x09
      002D35 F0               [24] 2948 	movx	@dptr,a
      002D36 E4               [12] 2949 	clr	a
      002D37 A3               [24] 2950 	inc	dptr
      002D38 F0               [24] 2951 	movx	@dptr,a
                                   2952 ;	lcdCommands.c:412: busyWait();
      002D39 12 20 8B         [24] 2953 	lcall	_busyWait
                                   2954 ;	lcdCommands.c:413: lcdGeneral = 0x40 | 0x36;
      002D3C 90 F0 00         [24] 2955 	mov	dptr,#_lcdGeneral
      002D3F 74 76            [12] 2956 	mov	a,#0x76
      002D41 F0               [24] 2957 	movx	@dptr,a
      002D42 E4               [12] 2958 	clr	a
      002D43 A3               [24] 2959 	inc	dptr
      002D44 F0               [24] 2960 	movx	@dptr,a
                                   2961 ;	lcdCommands.c:414: busyWait();
      002D45 12 20 8B         [24] 2962 	lcall	_busyWait
                                   2963 ;	lcdCommands.c:415: writeCharacter = 0x12;
      002D48 90 F1 00         [24] 2964 	mov	dptr,#_writeCharacter
      002D4B 74 12            [12] 2965 	mov	a,#0x12
      002D4D F0               [24] 2966 	movx	@dptr,a
      002D4E E4               [12] 2967 	clr	a
      002D4F A3               [24] 2968 	inc	dptr
      002D50 F0               [24] 2969 	movx	@dptr,a
                                   2970 ;	lcdCommands.c:416: busyWait();
      002D51 12 20 8B         [24] 2971 	lcall	_busyWait
                                   2972 ;	lcdCommands.c:417: lcdGeneral = 0x40 | 0x37;
      002D54 90 F0 00         [24] 2973 	mov	dptr,#_lcdGeneral
      002D57 74 77            [12] 2974 	mov	a,#0x77
      002D59 F0               [24] 2975 	movx	@dptr,a
      002D5A E4               [12] 2976 	clr	a
      002D5B A3               [24] 2977 	inc	dptr
      002D5C F0               [24] 2978 	movx	@dptr,a
                                   2979 ;	lcdCommands.c:418: busyWait();
      002D5D 12 20 8B         [24] 2980 	lcall	_busyWait
                                   2981 ;	lcdCommands.c:419: writeCharacter = 0x0C;
      002D60 90 F1 00         [24] 2982 	mov	dptr,#_writeCharacter
      002D63 74 0C            [12] 2983 	mov	a,#0x0c
      002D65 F0               [24] 2984 	movx	@dptr,a
      002D66 E4               [12] 2985 	clr	a
      002D67 A3               [24] 2986 	inc	dptr
      002D68 F0               [24] 2987 	movx	@dptr,a
                                   2988 ;	lcdCommands.c:420: busyWait();
      002D69 12 20 8B         [24] 2989 	lcall	_busyWait
                                   2990 ;	lcdCommands.c:421: goToXY(3,1);
      002D6C 90 00 04         [24] 2991 	mov	dptr,#_goToXY_PARM_2
      002D6F 74 01            [12] 2992 	mov	a,#0x01
      002D71 F0               [24] 2993 	movx	@dptr,a
      002D72 75 82 03         [24] 2994 	mov	dpl,#0x03
      002D75 12 21 35         [24] 2995 	lcall	_goToXY
                                   2996 ;	lcdCommands.c:422: busyWait();
      002D78 12 20 8B         [24] 2997 	lcall	_busyWait
                                   2998 ;	lcdCommands.c:424: busyWait();
                                   2999 ;	lcdCommands.c:426: }
      002D7B 02 20 8B         [24] 3000 	ljmp	_busyWait
                                   3001 ;------------------------------------------------------------
                                   3002 ;Allocation info for local variables in function 'printBinary'
                                   3003 ;------------------------------------------------------------
                                   3004 ;x                         Allocated with name '_printBinary_x_65536_108'
                                   3005 ;temp                      Allocated with name '_printBinary_temp_65536_109'
                                   3006 ;------------------------------------------------------------
                                   3007 ;	lcdCommands.c:428: void printBinary(int x)
                                   3008 ;	-----------------------------------------
                                   3009 ;	 function printBinary
                                   3010 ;	-----------------------------------------
      002D7E                       3011 _printBinary:
      002D7E AF 83            [24] 3012 	mov	r7,dph
      002D80 E5 82            [12] 3013 	mov	a,dpl
      002D82 90 00 26         [24] 3014 	mov	dptr,#_printBinary_x_65536_108
      002D85 F0               [24] 3015 	movx	@dptr,a
      002D86 EF               [12] 3016 	mov	a,r7
      002D87 A3               [24] 3017 	inc	dptr
      002D88 F0               [24] 3018 	movx	@dptr,a
                                   3019 ;	lcdCommands.c:431: while(x != 0)
      002D89                       3020 00101$:
      002D89 90 00 26         [24] 3021 	mov	dptr,#_printBinary_x_65536_108
      002D8C E0               [24] 3022 	movx	a,@dptr
      002D8D FE               [12] 3023 	mov	r6,a
      002D8E A3               [24] 3024 	inc	dptr
      002D8F E0               [24] 3025 	movx	a,@dptr
      002D90 FF               [12] 3026 	mov	r7,a
      002D91 4E               [12] 3027 	orl	a,r6
      002D92 60 3A            [24] 3028 	jz	00104$
                                   3029 ;	lcdCommands.c:433: temp = x % 2;
      002D94 90 00 76         [24] 3030 	mov	dptr,#__modsint_PARM_2
      002D97 74 02            [12] 3031 	mov	a,#0x02
      002D99 F0               [24] 3032 	movx	@dptr,a
      002D9A E4               [12] 3033 	clr	a
      002D9B A3               [24] 3034 	inc	dptr
      002D9C F0               [24] 3035 	movx	@dptr,a
                                   3036 ;	lcdCommands.c:434: putchar(temp);
      002D9D 8E 82            [24] 3037 	mov	dpl,r6
      002D9F 8F 83            [24] 3038 	mov	dph,r7
      002DA1 C0 07            [24] 3039 	push	ar7
      002DA3 C0 06            [24] 3040 	push	ar6
      002DA5 12 31 F3         [24] 3041 	lcall	__modsint
      002DA8 12 26 2F         [24] 3042 	lcall	_putchar
      002DAB D0 06            [24] 3043 	pop	ar6
      002DAD D0 07            [24] 3044 	pop	ar7
                                   3045 ;	lcdCommands.c:435: x = x / 2;
      002DAF 90 00 7F         [24] 3046 	mov	dptr,#__divsint_PARM_2
      002DB2 74 02            [12] 3047 	mov	a,#0x02
      002DB4 F0               [24] 3048 	movx	@dptr,a
      002DB5 E4               [12] 3049 	clr	a
      002DB6 A3               [24] 3050 	inc	dptr
      002DB7 F0               [24] 3051 	movx	@dptr,a
      002DB8 8E 82            [24] 3052 	mov	dpl,r6
      002DBA 8F 83            [24] 3053 	mov	dph,r7
      002DBC 12 33 07         [24] 3054 	lcall	__divsint
      002DBF E5 82            [12] 3055 	mov	a,dpl
      002DC1 85 83 F0         [24] 3056 	mov	b,dph
      002DC4 90 00 26         [24] 3057 	mov	dptr,#_printBinary_x_65536_108
      002DC7 F0               [24] 3058 	movx	@dptr,a
      002DC8 E5 F0            [12] 3059 	mov	a,b
      002DCA A3               [24] 3060 	inc	dptr
      002DCB F0               [24] 3061 	movx	@dptr,a
      002DCC 80 BB            [24] 3062 	sjmp	00101$
      002DCE                       3063 00104$:
                                   3064 ;	lcdCommands.c:437: }
      002DCE 22               [24] 3065 	ret
                                   3066 	.area CSEG    (CODE)
                                   3067 	.area CONST   (CODE)
                                   3068 	.area CONST   (CODE)
      003E96                       3069 ___str_0:
      003E96 0A                    3070 	.db 0x0a
      003E97 0D                    3071 	.db 0x0d
      003E98 45 6E 74 65 72 20 76  3072 	.ascii "Enter value for Row 1"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 31
      003EAD 0A                    3073 	.db 0x0a
      003EAE 0D                    3074 	.db 0x0d
      003EAF 00                    3075 	.db 0x00
                                   3076 	.area CSEG    (CODE)
                                   3077 	.area CONST   (CODE)
      003EB0                       3078 ___str_1:
      003EB0 0A                    3079 	.db 0x0a
      003EB1 0D                    3080 	.db 0x0d
      003EB2 45 6E 74 65 72 20 76  3081 	.ascii "Enter value for Row 2"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 32
      003EC7 0A                    3082 	.db 0x0a
      003EC8 0D                    3083 	.db 0x0d
      003EC9 00                    3084 	.db 0x00
                                   3085 	.area CSEG    (CODE)
                                   3086 	.area CONST   (CODE)
      003ECA                       3087 ___str_2:
      003ECA 0A                    3088 	.db 0x0a
      003ECB 0D                    3089 	.db 0x0d
      003ECC 45 6E 74 65 72 20 76  3090 	.ascii "Enter value for Row 3"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 33
      003EE1 0A                    3091 	.db 0x0a
      003EE2 0D                    3092 	.db 0x0d
      003EE3 00                    3093 	.db 0x00
                                   3094 	.area CSEG    (CODE)
                                   3095 	.area CONST   (CODE)
      003EE4                       3096 ___str_3:
      003EE4 0A                    3097 	.db 0x0a
      003EE5 0D                    3098 	.db 0x0d
      003EE6 45 6E 74 65 72 20 76  3099 	.ascii "Enter value for Row 4"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 34
      003EFB 0A                    3100 	.db 0x0a
      003EFC 0D                    3101 	.db 0x0d
      003EFD 00                    3102 	.db 0x00
                                   3103 	.area CSEG    (CODE)
                                   3104 	.area CONST   (CODE)
      003EFE                       3105 ___str_4:
      003EFE 0A                    3106 	.db 0x0a
      003EFF 0D                    3107 	.db 0x0d
      003F00 45 6E 74 65 72 20 76  3108 	.ascii "Enter value for Row 5"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 35
      003F15 0A                    3109 	.db 0x0a
      003F16 0D                    3110 	.db 0x0d
      003F17 00                    3111 	.db 0x00
                                   3112 	.area CSEG    (CODE)
                                   3113 	.area CONST   (CODE)
      003F18                       3114 ___str_5:
      003F18 0A                    3115 	.db 0x0a
      003F19 0D                    3116 	.db 0x0d
      003F1A 45 6E 74 65 72 20 76  3117 	.ascii "Enter value for Row 6"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 36
      003F2F 0A                    3118 	.db 0x0a
      003F30 0D                    3119 	.db 0x0d
      003F31 00                    3120 	.db 0x00
                                   3121 	.area CSEG    (CODE)
                                   3122 	.area CONST   (CODE)
      003F32                       3123 ___str_6:
      003F32 0A                    3124 	.db 0x0a
      003F33 0D                    3125 	.db 0x0d
      003F34 45 6E 74 65 72 20 76  3126 	.ascii "Enter value for Row 7"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 37
      003F49 0A                    3127 	.db 0x0a
      003F4A 0D                    3128 	.db 0x0d
      003F4B 00                    3129 	.db 0x00
                                   3130 	.area CSEG    (CODE)
                                   3131 	.area CONST   (CODE)
      003F4C                       3132 ___str_7:
      003F4C 0A                    3133 	.db 0x0a
      003F4D 0D                    3134 	.db 0x0d
      003F4E 45 6E 74 65 72 20 76  3135 	.ascii "Enter value for Row 8"
             61 6C 75 65 20 66 6F
             72 20 52 6F 77 20 38
      003F63 0A                    3136 	.db 0x0a
      003F64 0D                    3137 	.db 0x0d
      003F65 00                    3138 	.db 0x00
                                   3139 	.area CSEG    (CODE)
                                   3140 	.area CONST   (CODE)
      003F66                       3141 ___str_8:
      003F66 0A                    3142 	.db 0x0a
      003F67 0D                    3143 	.db 0x0d
      003F68 50 6C 65 61 73 65 20  3144 	.ascii "Please Input a maximum of 64 digits"
             49 6E 70 75 74 20 61
             20 6D 61 78 69 6D 75
             6D 20 6F 66 20 36 34
             20 64 69 67 69 74 73
      003F8B 0A                    3145 	.db 0x0a
      003F8C 0D                    3146 	.db 0x0d
      003F8D 00                    3147 	.db 0x00
                                   3148 	.area CSEG    (CODE)
                                   3149 	.area CONST   (CODE)
      003F8E                       3150 ___str_9:
      003F8E 0A                    3151 	.db 0x0a
      003F8F 0D                    3152 	.db 0x0d
      003F90 45 6E 74 65 72 20 77  3153 	.ascii "Enter w to go up, s to go down, a to go left and d to go rig"
             20 74 6F 20 67 6F 20
             75 70 2C 20 73 20 74
             6F 20 67 6F 20 64 6F
             77 6E 2C 20 61 20 74
             6F 20 67 6F 20 6C 65
             66 74 20 61 6E 64 20
             64 20 74 6F 20 67 6F
             20 72 69 67
      003FCC 68 74 20 61 6E 64 20  3154 	.ascii "ht and q to quit"
             71 20 74 6F 20 71 75
             69 74
      003FDC 0A                    3155 	.db 0x0a
      003FDD 0D                    3156 	.db 0x0d
      003FDE 00                    3157 	.db 0x00
                                   3158 	.area CSEG    (CODE)
                                   3159 	.area XINIT   (CODE)
      003FEA                       3160 __xinit__lookUpTable:
      003FEA 00                    3161 	.db #0x00	; 0
      003FEB 01                    3162 	.db #0x01	; 1
      003FEC 02                    3163 	.db #0x02	; 2
      003FED 03                    3164 	.db #0x03	; 3
      003FEE 04                    3165 	.db #0x04	; 4
      003FEF 05                    3166 	.db #0x05	; 5
      003FF0 06                    3167 	.db #0x06	; 6
      003FF1 07                    3168 	.db #0x07	; 7
      003FF2 08                    3169 	.db #0x08	; 8
      003FF3 09                    3170 	.db #0x09	; 9
      003FF4 0A                    3171 	.db #0x0a	; 10
      003FF5 0B                    3172 	.db #0x0b	; 11
      003FF6 0C                    3173 	.db #0x0c	; 12
      003FF7 0D                    3174 	.db #0x0d	; 13
      003FF8 0E                    3175 	.db #0x0e	; 14
      003FF9 0F                    3176 	.db #0x0f	; 15
      003FFA 40                    3177 	.db #0x40	; 64
      003FFB 41                    3178 	.db #0x41	; 65	'A'
      003FFC 42                    3179 	.db #0x42	; 66	'B'
      003FFD 43                    3180 	.db #0x43	; 67	'C'
      003FFE 44                    3181 	.db #0x44	; 68	'D'
      003FFF 45                    3182 	.db #0x45	; 69	'E'
      004000 46                    3183 	.db #0x46	; 70	'F'
      004001 47                    3184 	.db #0x47	; 71	'G'
      004002 48                    3185 	.db #0x48	; 72	'H'
      004003 49                    3186 	.db #0x49	; 73	'I'
      004004 4A                    3187 	.db #0x4a	; 74	'J'
      004005 4B                    3188 	.db #0x4b	; 75	'K'
      004006 4C                    3189 	.db #0x4c	; 76	'L'
      004007 4D                    3190 	.db #0x4d	; 77	'M'
      004008 4E                    3191 	.db #0x4e	; 78	'N'
      004009 4F                    3192 	.db #0x4f	; 79	'O'
      00400A 10                    3193 	.db #0x10	; 16
      00400B 11                    3194 	.db #0x11	; 17
      00400C 12                    3195 	.db #0x12	; 18
      00400D 13                    3196 	.db #0x13	; 19
      00400E 14                    3197 	.db #0x14	; 20
      00400F 15                    3198 	.db #0x15	; 21
      004010 16                    3199 	.db #0x16	; 22
      004011 17                    3200 	.db #0x17	; 23
      004012 18                    3201 	.db #0x18	; 24
      004013 19                    3202 	.db #0x19	; 25
      004014 1A                    3203 	.db #0x1a	; 26
      004015 1B                    3204 	.db #0x1b	; 27
      004016 1C                    3205 	.db #0x1c	; 28
      004017 1D                    3206 	.db #0x1d	; 29
      004018 1E                    3207 	.db #0x1e	; 30
      004019 1F                    3208 	.db #0x1f	; 31
      00401A 50                    3209 	.db #0x50	; 80	'P'
      00401B 51                    3210 	.db #0x51	; 81	'Q'
      00401C 52                    3211 	.db #0x52	; 82	'R'
      00401D 53                    3212 	.db #0x53	; 83	'S'
      00401E 54                    3213 	.db #0x54	; 84	'T'
      00401F 55                    3214 	.db #0x55	; 85	'U'
      004020 56                    3215 	.db #0x56	; 86	'V'
      004021 57                    3216 	.db #0x57	; 87	'W'
      004022 58                    3217 	.db #0x58	; 88	'X'
      004023 59                    3218 	.db #0x59	; 89	'Y'
      004024 5A                    3219 	.db #0x5a	; 90	'Z'
      004025 5B                    3220 	.db #0x5b	; 91
      004026 5C                    3221 	.db #0x5c	; 92
      004027 5D                    3222 	.db #0x5d	; 93
      004028 5E                    3223 	.db #0x5e	; 94
      004029 5F                    3224 	.db #0x5f	; 95
                                   3225 	.area CABS    (ABS,CODE)
