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
                                     11 	.globl _printf_tiny
                                     12 	.globl _printf
                                     13 	.globl _P5_7
                                     14 	.globl _P5_6
                                     15 	.globl _P5_5
                                     16 	.globl _P5_4
                                     17 	.globl _P5_3
                                     18 	.globl _P5_2
                                     19 	.globl _P5_1
                                     20 	.globl _P5_0
                                     21 	.globl _P4_7
                                     22 	.globl _P4_6
                                     23 	.globl _P4_5
                                     24 	.globl _P4_4
                                     25 	.globl _P4_3
                                     26 	.globl _P4_2
                                     27 	.globl _P4_1
                                     28 	.globl _P4_0
                                     29 	.globl _PX0L
                                     30 	.globl _PT0L
                                     31 	.globl _PX1L
                                     32 	.globl _PT1L
                                     33 	.globl _PSL
                                     34 	.globl _PT2L
                                     35 	.globl _PPCL
                                     36 	.globl _EC
                                     37 	.globl _CCF0
                                     38 	.globl _CCF1
                                     39 	.globl _CCF2
                                     40 	.globl _CCF3
                                     41 	.globl _CCF4
                                     42 	.globl _CR
                                     43 	.globl _CF
                                     44 	.globl _TF2
                                     45 	.globl _EXF2
                                     46 	.globl _RCLK
                                     47 	.globl _TCLK
                                     48 	.globl _EXEN2
                                     49 	.globl _TR2
                                     50 	.globl _C_T2
                                     51 	.globl _CP_RL2
                                     52 	.globl _T2CON_7
                                     53 	.globl _T2CON_6
                                     54 	.globl _T2CON_5
                                     55 	.globl _T2CON_4
                                     56 	.globl _T2CON_3
                                     57 	.globl _T2CON_2
                                     58 	.globl _T2CON_1
                                     59 	.globl _T2CON_0
                                     60 	.globl _PT2
                                     61 	.globl _ET2
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _PS
                                     71 	.globl _PT1
                                     72 	.globl _PX1
                                     73 	.globl _PT0
                                     74 	.globl _PX0
                                     75 	.globl _RD
                                     76 	.globl _WR
                                     77 	.globl _T1
                                     78 	.globl _T0
                                     79 	.globl _INT1
                                     80 	.globl _INT0
                                     81 	.globl _TXD
                                     82 	.globl _RXD
                                     83 	.globl _P3_7
                                     84 	.globl _P3_6
                                     85 	.globl _P3_5
                                     86 	.globl _P3_4
                                     87 	.globl _P3_3
                                     88 	.globl _P3_2
                                     89 	.globl _P3_1
                                     90 	.globl _P3_0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _SM0
                                    106 	.globl _SM1
                                    107 	.globl _SM2
                                    108 	.globl _REN
                                    109 	.globl _TB8
                                    110 	.globl _RB8
                                    111 	.globl _TI
                                    112 	.globl _RI
                                    113 	.globl _P1_7
                                    114 	.globl _P1_6
                                    115 	.globl _P1_5
                                    116 	.globl _P1_4
                                    117 	.globl _P1_3
                                    118 	.globl _P1_2
                                    119 	.globl _P1_1
                                    120 	.globl _P1_0
                                    121 	.globl _TF1
                                    122 	.globl _TR1
                                    123 	.globl _TF0
                                    124 	.globl _TR0
                                    125 	.globl _IE1
                                    126 	.globl _IT1
                                    127 	.globl _IE0
                                    128 	.globl _IT0
                                    129 	.globl _P0_7
                                    130 	.globl _P0_6
                                    131 	.globl _P0_5
                                    132 	.globl _P0_4
                                    133 	.globl _P0_3
                                    134 	.globl _P0_2
                                    135 	.globl _P0_1
                                    136 	.globl _P0_0
                                    137 	.globl _EECON
                                    138 	.globl _KBF
                                    139 	.globl _KBE
                                    140 	.globl _KBLS
                                    141 	.globl _BRL
                                    142 	.globl _BDRCON
                                    143 	.globl _T2MOD
                                    144 	.globl _SPDAT
                                    145 	.globl _SPSTA
                                    146 	.globl _SPCON
                                    147 	.globl _SADEN
                                    148 	.globl _SADDR
                                    149 	.globl _WDTPRG
                                    150 	.globl _WDTRST
                                    151 	.globl _P5
                                    152 	.globl _P4
                                    153 	.globl _IPH1
                                    154 	.globl _IPL1
                                    155 	.globl _IPH0
                                    156 	.globl _IPL0
                                    157 	.globl _IEN1
                                    158 	.globl _IEN0
                                    159 	.globl _CMOD
                                    160 	.globl _CL
                                    161 	.globl _CH
                                    162 	.globl _CCON
                                    163 	.globl _CCAPM4
                                    164 	.globl _CCAPM3
                                    165 	.globl _CCAPM2
                                    166 	.globl _CCAPM1
                                    167 	.globl _CCAPM0
                                    168 	.globl _CCAP4L
                                    169 	.globl _CCAP3L
                                    170 	.globl _CCAP2L
                                    171 	.globl _CCAP1L
                                    172 	.globl _CCAP0L
                                    173 	.globl _CCAP4H
                                    174 	.globl _CCAP3H
                                    175 	.globl _CCAP2H
                                    176 	.globl _CCAP1H
                                    177 	.globl _CCAP0H
                                    178 	.globl _CKCON1
                                    179 	.globl _CKCON0
                                    180 	.globl _CKRL
                                    181 	.globl _AUXR1
                                    182 	.globl _AUXR
                                    183 	.globl _TH2
                                    184 	.globl _TL2
                                    185 	.globl _RCAP2H
                                    186 	.globl _RCAP2L
                                    187 	.globl _T2CON
                                    188 	.globl _B
                                    189 	.globl _ACC
                                    190 	.globl _PSW
                                    191 	.globl _IP
                                    192 	.globl _P3
                                    193 	.globl _IE
                                    194 	.globl _P2
                                    195 	.globl _SBUF
                                    196 	.globl _SCON
                                    197 	.globl _P1
                                    198 	.globl _TH1
                                    199 	.globl _TH0
                                    200 	.globl _TL1
                                    201 	.globl _TL0
                                    202 	.globl _TMOD
                                    203 	.globl _TCON
                                    204 	.globl _PCON
                                    205 	.globl _DPH
                                    206 	.globl _DPL
                                    207 	.globl _SP
                                    208 	.globl _P0
                                    209 	.globl _lookUpTable
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
                                    220 	.globl _putsLCD
                                    221 	.globl _getchar
                                    222 	.globl _putchar
                                    223 	.globl _gets
                                    224 ;--------------------------------------------------------
                                    225 ; special function registers
                                    226 ;--------------------------------------------------------
                                    227 	.area RSEG    (ABS,DATA)
      000000                        228 	.org 0x0000
                           000080   229 _P0	=	0x0080
                           000081   230 _SP	=	0x0081
                           000082   231 _DPL	=	0x0082
                           000083   232 _DPH	=	0x0083
                           000087   233 _PCON	=	0x0087
                           000088   234 _TCON	=	0x0088
                           000089   235 _TMOD	=	0x0089
                           00008A   236 _TL0	=	0x008a
                           00008B   237 _TL1	=	0x008b
                           00008C   238 _TH0	=	0x008c
                           00008D   239 _TH1	=	0x008d
                           000090   240 _P1	=	0x0090
                           000098   241 _SCON	=	0x0098
                           000099   242 _SBUF	=	0x0099
                           0000A0   243 _P2	=	0x00a0
                           0000A8   244 _IE	=	0x00a8
                           0000B0   245 _P3	=	0x00b0
                           0000B8   246 _IP	=	0x00b8
                           0000D0   247 _PSW	=	0x00d0
                           0000E0   248 _ACC	=	0x00e0
                           0000F0   249 _B	=	0x00f0
                           0000C8   250 _T2CON	=	0x00c8
                           0000CA   251 _RCAP2L	=	0x00ca
                           0000CB   252 _RCAP2H	=	0x00cb
                           0000CC   253 _TL2	=	0x00cc
                           0000CD   254 _TH2	=	0x00cd
                           00008E   255 _AUXR	=	0x008e
                           0000A2   256 _AUXR1	=	0x00a2
                           000097   257 _CKRL	=	0x0097
                           00008F   258 _CKCON0	=	0x008f
                           0000AF   259 _CKCON1	=	0x00af
                           0000FA   260 _CCAP0H	=	0x00fa
                           0000FB   261 _CCAP1H	=	0x00fb
                           0000FC   262 _CCAP2H	=	0x00fc
                           0000FD   263 _CCAP3H	=	0x00fd
                           0000FE   264 _CCAP4H	=	0x00fe
                           0000EA   265 _CCAP0L	=	0x00ea
                           0000EB   266 _CCAP1L	=	0x00eb
                           0000EC   267 _CCAP2L	=	0x00ec
                           0000ED   268 _CCAP3L	=	0x00ed
                           0000EE   269 _CCAP4L	=	0x00ee
                           0000DA   270 _CCAPM0	=	0x00da
                           0000DB   271 _CCAPM1	=	0x00db
                           0000DC   272 _CCAPM2	=	0x00dc
                           0000DD   273 _CCAPM3	=	0x00dd
                           0000DE   274 _CCAPM4	=	0x00de
                           0000D8   275 _CCON	=	0x00d8
                           0000F9   276 _CH	=	0x00f9
                           0000E9   277 _CL	=	0x00e9
                           0000D9   278 _CMOD	=	0x00d9
                           0000A8   279 _IEN0	=	0x00a8
                           0000B1   280 _IEN1	=	0x00b1
                           0000B8   281 _IPL0	=	0x00b8
                           0000B7   282 _IPH0	=	0x00b7
                           0000B2   283 _IPL1	=	0x00b2
                           0000B3   284 _IPH1	=	0x00b3
                           0000C0   285 _P4	=	0x00c0
                           0000E8   286 _P5	=	0x00e8
                           0000A6   287 _WDTRST	=	0x00a6
                           0000A7   288 _WDTPRG	=	0x00a7
                           0000A9   289 _SADDR	=	0x00a9
                           0000B9   290 _SADEN	=	0x00b9
                           0000C3   291 _SPCON	=	0x00c3
                           0000C4   292 _SPSTA	=	0x00c4
                           0000C5   293 _SPDAT	=	0x00c5
                           0000C9   294 _T2MOD	=	0x00c9
                           00009B   295 _BDRCON	=	0x009b
                           00009A   296 _BRL	=	0x009a
                           00009C   297 _KBLS	=	0x009c
                           00009D   298 _KBE	=	0x009d
                           00009E   299 _KBF	=	0x009e
                           0000D2   300 _EECON	=	0x00d2
                                    301 ;--------------------------------------------------------
                                    302 ; special function bits
                                    303 ;--------------------------------------------------------
                                    304 	.area RSEG    (ABS,DATA)
      000000                        305 	.org 0x0000
                           000080   306 _P0_0	=	0x0080
                           000081   307 _P0_1	=	0x0081
                           000082   308 _P0_2	=	0x0082
                           000083   309 _P0_3	=	0x0083
                           000084   310 _P0_4	=	0x0084
                           000085   311 _P0_5	=	0x0085
                           000086   312 _P0_6	=	0x0086
                           000087   313 _P0_7	=	0x0087
                           000088   314 _IT0	=	0x0088
                           000089   315 _IE0	=	0x0089
                           00008A   316 _IT1	=	0x008a
                           00008B   317 _IE1	=	0x008b
                           00008C   318 _TR0	=	0x008c
                           00008D   319 _TF0	=	0x008d
                           00008E   320 _TR1	=	0x008e
                           00008F   321 _TF1	=	0x008f
                           000090   322 _P1_0	=	0x0090
                           000091   323 _P1_1	=	0x0091
                           000092   324 _P1_2	=	0x0092
                           000093   325 _P1_3	=	0x0093
                           000094   326 _P1_4	=	0x0094
                           000095   327 _P1_5	=	0x0095
                           000096   328 _P1_6	=	0x0096
                           000097   329 _P1_7	=	0x0097
                           000098   330 _RI	=	0x0098
                           000099   331 _TI	=	0x0099
                           00009A   332 _RB8	=	0x009a
                           00009B   333 _TB8	=	0x009b
                           00009C   334 _REN	=	0x009c
                           00009D   335 _SM2	=	0x009d
                           00009E   336 _SM1	=	0x009e
                           00009F   337 _SM0	=	0x009f
                           0000A0   338 _P2_0	=	0x00a0
                           0000A1   339 _P2_1	=	0x00a1
                           0000A2   340 _P2_2	=	0x00a2
                           0000A3   341 _P2_3	=	0x00a3
                           0000A4   342 _P2_4	=	0x00a4
                           0000A5   343 _P2_5	=	0x00a5
                           0000A6   344 _P2_6	=	0x00a6
                           0000A7   345 _P2_7	=	0x00a7
                           0000A8   346 _EX0	=	0x00a8
                           0000A9   347 _ET0	=	0x00a9
                           0000AA   348 _EX1	=	0x00aa
                           0000AB   349 _ET1	=	0x00ab
                           0000AC   350 _ES	=	0x00ac
                           0000AF   351 _EA	=	0x00af
                           0000B0   352 _P3_0	=	0x00b0
                           0000B1   353 _P3_1	=	0x00b1
                           0000B2   354 _P3_2	=	0x00b2
                           0000B3   355 _P3_3	=	0x00b3
                           0000B4   356 _P3_4	=	0x00b4
                           0000B5   357 _P3_5	=	0x00b5
                           0000B6   358 _P3_6	=	0x00b6
                           0000B7   359 _P3_7	=	0x00b7
                           0000B0   360 _RXD	=	0x00b0
                           0000B1   361 _TXD	=	0x00b1
                           0000B2   362 _INT0	=	0x00b2
                           0000B3   363 _INT1	=	0x00b3
                           0000B4   364 _T0	=	0x00b4
                           0000B5   365 _T1	=	0x00b5
                           0000B6   366 _WR	=	0x00b6
                           0000B7   367 _RD	=	0x00b7
                           0000B8   368 _PX0	=	0x00b8
                           0000B9   369 _PT0	=	0x00b9
                           0000BA   370 _PX1	=	0x00ba
                           0000BB   371 _PT1	=	0x00bb
                           0000BC   372 _PS	=	0x00bc
                           0000D0   373 _P	=	0x00d0
                           0000D1   374 _F1	=	0x00d1
                           0000D2   375 _OV	=	0x00d2
                           0000D3   376 _RS0	=	0x00d3
                           0000D4   377 _RS1	=	0x00d4
                           0000D5   378 _F0	=	0x00d5
                           0000D6   379 _AC	=	0x00d6
                           0000D7   380 _CY	=	0x00d7
                           0000AD   381 _ET2	=	0x00ad
                           0000BD   382 _PT2	=	0x00bd
                           0000C8   383 _T2CON_0	=	0x00c8
                           0000C9   384 _T2CON_1	=	0x00c9
                           0000CA   385 _T2CON_2	=	0x00ca
                           0000CB   386 _T2CON_3	=	0x00cb
                           0000CC   387 _T2CON_4	=	0x00cc
                           0000CD   388 _T2CON_5	=	0x00cd
                           0000CE   389 _T2CON_6	=	0x00ce
                           0000CF   390 _T2CON_7	=	0x00cf
                           0000C8   391 _CP_RL2	=	0x00c8
                           0000C9   392 _C_T2	=	0x00c9
                           0000CA   393 _TR2	=	0x00ca
                           0000CB   394 _EXEN2	=	0x00cb
                           0000CC   395 _TCLK	=	0x00cc
                           0000CD   396 _RCLK	=	0x00cd
                           0000CE   397 _EXF2	=	0x00ce
                           0000CF   398 _TF2	=	0x00cf
                           0000DF   399 _CF	=	0x00df
                           0000DE   400 _CR	=	0x00de
                           0000DC   401 _CCF4	=	0x00dc
                           0000DB   402 _CCF3	=	0x00db
                           0000DA   403 _CCF2	=	0x00da
                           0000D9   404 _CCF1	=	0x00d9
                           0000D8   405 _CCF0	=	0x00d8
                           0000AE   406 _EC	=	0x00ae
                           0000BE   407 _PPCL	=	0x00be
                           0000BD   408 _PT2L	=	0x00bd
                           0000BC   409 _PSL	=	0x00bc
                           0000BB   410 _PT1L	=	0x00bb
                           0000BA   411 _PX1L	=	0x00ba
                           0000B9   412 _PT0L	=	0x00b9
                           0000B8   413 _PX0L	=	0x00b8
                           0000C0   414 _P4_0	=	0x00c0
                           0000C1   415 _P4_1	=	0x00c1
                           0000C2   416 _P4_2	=	0x00c2
                           0000C3   417 _P4_3	=	0x00c3
                           0000C4   418 _P4_4	=	0x00c4
                           0000C5   419 _P4_5	=	0x00c5
                           0000C6   420 _P4_6	=	0x00c6
                           0000C7   421 _P4_7	=	0x00c7
                           0000E8   422 _P5_0	=	0x00e8
                           0000E9   423 _P5_1	=	0x00e9
                           0000EA   424 _P5_2	=	0x00ea
                           0000EB   425 _P5_3	=	0x00eb
                           0000EC   426 _P5_4	=	0x00ec
                           0000ED   427 _P5_5	=	0x00ed
                           0000EE   428 _P5_6	=	0x00ee
                           0000EF   429 _P5_7	=	0x00ef
                                    430 ;--------------------------------------------------------
                                    431 ; overlayable register banks
                                    432 ;--------------------------------------------------------
                                    433 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        434 	.ds 8
                                    435 ;--------------------------------------------------------
                                    436 ; internal ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area DSEG    (DATA)
      000008                        439 _putsLCD_sloc0_1_0:
      000008                        440 	.ds 2
      00000A                        441 _putsLCD_sloc1_1_0:
      00000A                        442 	.ds 3
                                    443 ;--------------------------------------------------------
                                    444 ; overlayable items in internal ram 
                                    445 ;--------------------------------------------------------
                                    446 ;--------------------------------------------------------
                                    447 ; indirectly addressable internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area ISEG    (DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; absolute internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area IABS    (ABS,DATA)
                                    454 	.area IABS    (ABS,DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; bit data
                                    457 ;--------------------------------------------------------
                                    458 	.area BSEG    (BIT)
                                    459 ;--------------------------------------------------------
                                    460 ; paged external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area PSEG    (PAG,XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XSEG    (XDATA)
                           00F000   467 _lcdGeneral	=	0xf000
                           00F200   468 _busyPoll	=	0xf200
                           00F100   469 _writeCharacter	=	0xf100
      000001                        470 _lcdPutCh_x_65536_44:
      000001                        471 	.ds 1
      000002                        472 _goToAddr_x_65536_47:
      000002                        473 	.ds 1
      000003                        474 _putsLCD_y_65536_49:
      000003                        475 	.ds 3
      000006                        476 _putsLCD_i_65536_50:
      000006                        477 	.ds 2
      000008                        478 _putchar_c_65536_54:
      000008                        479 	.ds 2
      00000A                        480 _gets_s_65536_56:
      00000A                        481 	.ds 3
      00000D                        482 _gets_count_65536_57:
      00000D                        483 	.ds 2
                                    484 ;--------------------------------------------------------
                                    485 ; absolute external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area XABS    (ABS,XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; external initialized ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XISEG   (XDATA)
      0000A2                        492 _lookUpTable::
      0000A2                        493 	.ds 64
                                    494 	.area HOME    (CODE)
                                    495 	.area GSINIT0 (CODE)
                                    496 	.area GSINIT1 (CODE)
                                    497 	.area GSINIT2 (CODE)
                                    498 	.area GSINIT3 (CODE)
                                    499 	.area GSINIT4 (CODE)
                                    500 	.area GSINIT5 (CODE)
                                    501 	.area GSINIT  (CODE)
                                    502 	.area GSFINAL (CODE)
                                    503 	.area CSEG    (CODE)
                                    504 ;--------------------------------------------------------
                                    505 ; global & static initialisations
                                    506 ;--------------------------------------------------------
                                    507 	.area HOME    (CODE)
                                    508 	.area GSINIT  (CODE)
                                    509 	.area GSFINAL (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 ;--------------------------------------------------------
                                    512 ; Home
                                    513 ;--------------------------------------------------------
                                    514 	.area HOME    (CODE)
                                    515 	.area HOME    (CODE)
                                    516 ;--------------------------------------------------------
                                    517 ; code
                                    518 ;--------------------------------------------------------
                                    519 	.area CSEG    (CODE)
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'delay'
                                    522 ;------------------------------------------------------------
                                    523 ;i                         Allocated with name '_delay_i_65536_39'
                                    524 ;------------------------------------------------------------
                                    525 ;	lcdCommands.c:6: void delay()
                                    526 ;	-----------------------------------------
                                    527 ;	 function delay
                                    528 ;	-----------------------------------------
      00206D                        529 _delay:
                           000007   530 	ar7 = 0x07
                           000006   531 	ar6 = 0x06
                           000005   532 	ar5 = 0x05
                           000004   533 	ar4 = 0x04
                           000003   534 	ar3 = 0x03
                           000002   535 	ar2 = 0x02
                           000001   536 	ar1 = 0x01
                           000000   537 	ar0 = 0x00
                                    538 ;	lcdCommands.c:9: for ( i = 0 ; i < 1000; i++);
      00206D 7E E8            [12]  539 	mov	r6,#0xe8
      00206F 7F 03            [12]  540 	mov	r7,#0x03
      002071                        541 00104$:
      002071 1E               [12]  542 	dec	r6
      002072 BE FF 01         [24]  543 	cjne	r6,#0xff,00113$
      002075 1F               [12]  544 	dec	r7
      002076                        545 00113$:
      002076 EE               [12]  546 	mov	a,r6
      002077 4F               [12]  547 	orl	a,r7
      002078 70 F7            [24]  548 	jnz	00104$
                                    549 ;	lcdCommands.c:10: }
      00207A 22               [24]  550 	ret
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'timerInit'
                                    553 ;------------------------------------------------------------
                                    554 ;	lcdCommands.c:12: void timerInit()
                                    555 ;	-----------------------------------------
                                    556 ;	 function timerInit
                                    557 ;	-----------------------------------------
      00207B                        558 _timerInit:
                                    559 ;	lcdCommands.c:14: TMOD |= 0x01;
      00207B 43 89 01         [24]  560 	orl	_TMOD,#0x01
                                    561 ;	lcdCommands.c:15: TH0 = 0x4B;
      00207E 75 8C 4B         [24]  562 	mov	_TH0,#0x4b
                                    563 ;	lcdCommands.c:16: TL0 = 0xFC;
      002081 75 8A FC         [24]  564 	mov	_TL0,#0xfc
                                    565 ;	lcdCommands.c:17: TR0 = 1;           //turn ON Timer zero
                                    566 ;	assignBit
      002084 D2 8C            [12]  567 	setb	_TR0
                                    568 ;	lcdCommands.c:18: EA = 1;            //Enable Global Interrupt bit
                                    569 ;	assignBit
      002086 D2 AF            [12]  570 	setb	_EA
                                    571 ;	lcdCommands.c:19: ET0 = 1;           //Enable TImer0 Interrupt
                                    572 ;	assignBit
      002088 D2 A9            [12]  573 	setb	_ET0
                                    574 ;	lcdCommands.c:20: }
      00208A 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'busyWait'
                                    578 ;------------------------------------------------------------
                                    579 ;	lcdCommands.c:22: void busyWait()
                                    580 ;	-----------------------------------------
                                    581 ;	 function busyWait
                                    582 ;	-----------------------------------------
      00208B                        583 _busyWait:
                                    584 ;	lcdCommands.c:24: while (busyPoll & 0x80);
      00208B                        585 00101$:
      00208B 90 F2 00         [24]  586 	mov	dptr,#_busyPoll
      00208E E0               [24]  587 	movx	a,@dptr
      00208F FE               [12]  588 	mov	r6,a
      002090 A3               [24]  589 	inc	dptr
      002091 E0               [24]  590 	movx	a,@dptr
      002092 EE               [12]  591 	mov	a,r6
      002093 20 E7 F5         [24]  592 	jb	acc.7,00101$
                                    593 ;	lcdCommands.c:25: }
      002096 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'lcdInit'
                                    597 ;------------------------------------------------------------
                                    598 ;	lcdCommands.c:27: void lcdInit()
                                    599 ;	-----------------------------------------
                                    600 ;	 function lcdInit
                                    601 ;	-----------------------------------------
      002097                        602 _lcdInit:
                                    603 ;	lcdCommands.c:29: delay();
      002097 12 20 6D         [24]  604 	lcall	_delay
                                    605 ;	lcdCommands.c:30: lcdGeneral = 0x30;
      00209A 90 F0 00         [24]  606 	mov	dptr,#_lcdGeneral
      00209D 74 30            [12]  607 	mov	a,#0x30
      00209F F0               [24]  608 	movx	@dptr,a
      0020A0 E4               [12]  609 	clr	a
      0020A1 A3               [24]  610 	inc	dptr
      0020A2 F0               [24]  611 	movx	@dptr,a
                                    612 ;	lcdCommands.c:31: delay();
      0020A3 12 20 6D         [24]  613 	lcall	_delay
                                    614 ;	lcdCommands.c:32: lcdGeneral = 0x30;
      0020A6 90 F0 00         [24]  615 	mov	dptr,#_lcdGeneral
      0020A9 74 30            [12]  616 	mov	a,#0x30
      0020AB F0               [24]  617 	movx	@dptr,a
      0020AC E4               [12]  618 	clr	a
      0020AD A3               [24]  619 	inc	dptr
      0020AE F0               [24]  620 	movx	@dptr,a
                                    621 ;	lcdCommands.c:33: delay();
      0020AF 12 20 6D         [24]  622 	lcall	_delay
                                    623 ;	lcdCommands.c:34: lcdGeneral = 0x30;
      0020B2 90 F0 00         [24]  624 	mov	dptr,#_lcdGeneral
      0020B5 74 30            [12]  625 	mov	a,#0x30
      0020B7 F0               [24]  626 	movx	@dptr,a
      0020B8 E4               [12]  627 	clr	a
      0020B9 A3               [24]  628 	inc	dptr
      0020BA F0               [24]  629 	movx	@dptr,a
                                    630 ;	lcdCommands.c:35: busyWait();
      0020BB 12 20 8B         [24]  631 	lcall	_busyWait
                                    632 ;	lcdCommands.c:36: lcdGeneral = 0x38;
      0020BE 90 F0 00         [24]  633 	mov	dptr,#_lcdGeneral
      0020C1 74 38            [12]  634 	mov	a,#0x38
      0020C3 F0               [24]  635 	movx	@dptr,a
      0020C4 E4               [12]  636 	clr	a
      0020C5 A3               [24]  637 	inc	dptr
      0020C6 F0               [24]  638 	movx	@dptr,a
                                    639 ;	lcdCommands.c:37: busyWait();
      0020C7 12 20 8B         [24]  640 	lcall	_busyWait
                                    641 ;	lcdCommands.c:38: lcdGeneral = 0x08;
      0020CA 90 F0 00         [24]  642 	mov	dptr,#_lcdGeneral
      0020CD 74 08            [12]  643 	mov	a,#0x08
      0020CF F0               [24]  644 	movx	@dptr,a
      0020D0 E4               [12]  645 	clr	a
      0020D1 A3               [24]  646 	inc	dptr
      0020D2 F0               [24]  647 	movx	@dptr,a
                                    648 ;	lcdCommands.c:39: busyWait();
      0020D3 12 20 8B         [24]  649 	lcall	_busyWait
                                    650 ;	lcdCommands.c:40: lcdGeneral = 0x0C;
      0020D6 90 F0 00         [24]  651 	mov	dptr,#_lcdGeneral
      0020D9 74 0C            [12]  652 	mov	a,#0x0c
      0020DB F0               [24]  653 	movx	@dptr,a
      0020DC E4               [12]  654 	clr	a
      0020DD A3               [24]  655 	inc	dptr
      0020DE F0               [24]  656 	movx	@dptr,a
                                    657 ;	lcdCommands.c:41: busyWait();
      0020DF 12 20 8B         [24]  658 	lcall	_busyWait
                                    659 ;	lcdCommands.c:42: lcdGeneral = 0x06;
      0020E2 90 F0 00         [24]  660 	mov	dptr,#_lcdGeneral
      0020E5 74 06            [12]  661 	mov	a,#0x06
      0020E7 F0               [24]  662 	movx	@dptr,a
      0020E8 E4               [12]  663 	clr	a
      0020E9 A3               [24]  664 	inc	dptr
      0020EA F0               [24]  665 	movx	@dptr,a
                                    666 ;	lcdCommands.c:43: busyWait();
      0020EB 12 20 8B         [24]  667 	lcall	_busyWait
                                    668 ;	lcdCommands.c:44: lcdGeneral = 0x01;
      0020EE 90 F0 00         [24]  669 	mov	dptr,#_lcdGeneral
      0020F1 74 01            [12]  670 	mov	a,#0x01
      0020F3 F0               [24]  671 	movx	@dptr,a
      0020F4 E4               [12]  672 	clr	a
      0020F5 A3               [24]  673 	inc	dptr
      0020F6 F0               [24]  674 	movx	@dptr,a
                                    675 ;	lcdCommands.c:45: }
      0020F7 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'lcdPutCh'
                                    679 ;------------------------------------------------------------
                                    680 ;x                         Allocated with name '_lcdPutCh_x_65536_44'
                                    681 ;------------------------------------------------------------
                                    682 ;	lcdCommands.c:47: void lcdPutCh(uint8_t x)
                                    683 ;	-----------------------------------------
                                    684 ;	 function lcdPutCh
                                    685 ;	-----------------------------------------
      0020F8                        686 _lcdPutCh:
      0020F8 E5 82            [12]  687 	mov	a,dpl
      0020FA 90 00 01         [24]  688 	mov	dptr,#_lcdPutCh_x_65536_44
      0020FD F0               [24]  689 	movx	@dptr,a
                                    690 ;	lcdCommands.c:49: busyWait();
      0020FE 12 20 8B         [24]  691 	lcall	_busyWait
                                    692 ;	lcdCommands.c:50: writeCharacter = x;
      002101 90 00 01         [24]  693 	mov	dptr,#_lcdPutCh_x_65536_44
      002104 E0               [24]  694 	movx	a,@dptr
      002105 90 F1 00         [24]  695 	mov	dptr,#_writeCharacter
      002108 F0               [24]  696 	movx	@dptr,a
      002109 E4               [12]  697 	clr	a
      00210A A3               [24]  698 	inc	dptr
      00210B F0               [24]  699 	movx	@dptr,a
                                    700 ;	lcdCommands.c:51: }
      00210C 22               [24]  701 	ret
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'lcdClear'
                                    704 ;------------------------------------------------------------
                                    705 ;	lcdCommands.c:53: void lcdClear()
                                    706 ;	-----------------------------------------
                                    707 ;	 function lcdClear
                                    708 ;	-----------------------------------------
      00210D                        709 _lcdClear:
                                    710 ;	lcdCommands.c:55: busyWait();
      00210D 12 20 8B         [24]  711 	lcall	_busyWait
                                    712 ;	lcdCommands.c:56: lcdGeneral = 0x01;
      002110 90 F0 00         [24]  713 	mov	dptr,#_lcdGeneral
      002113 74 01            [12]  714 	mov	a,#0x01
      002115 F0               [24]  715 	movx	@dptr,a
      002116 E4               [12]  716 	clr	a
      002117 A3               [24]  717 	inc	dptr
      002118 F0               [24]  718 	movx	@dptr,a
                                    719 ;	lcdCommands.c:57: }
      002119 22               [24]  720 	ret
                                    721 ;------------------------------------------------------------
                                    722 ;Allocation info for local variables in function 'goToAddr'
                                    723 ;------------------------------------------------------------
                                    724 ;x                         Allocated with name '_goToAddr_x_65536_47'
                                    725 ;------------------------------------------------------------
                                    726 ;	lcdCommands.c:59: void goToAddr(uint8_t x)
                                    727 ;	-----------------------------------------
                                    728 ;	 function goToAddr
                                    729 ;	-----------------------------------------
      00211A                        730 _goToAddr:
      00211A E5 82            [12]  731 	mov	a,dpl
      00211C 90 00 02         [24]  732 	mov	dptr,#_goToAddr_x_65536_47
      00211F F0               [24]  733 	movx	@dptr,a
                                    734 ;	lcdCommands.c:61: busyWait();
      002120 12 20 8B         [24]  735 	lcall	_busyWait
                                    736 ;	lcdCommands.c:62: lcdGeneral = 0x80 | x;
      002123 90 00 02         [24]  737 	mov	dptr,#_goToAddr_x_65536_47
      002126 E0               [24]  738 	movx	a,@dptr
      002127 FF               [12]  739 	mov	r7,a
      002128 7E 00            [12]  740 	mov	r6,#0x00
      00212A 90 F0 00         [24]  741 	mov	dptr,#_lcdGeneral
      00212D 74 80            [12]  742 	mov	a,#0x80
      00212F 4F               [12]  743 	orl	a,r7
      002130 F0               [24]  744 	movx	@dptr,a
      002131 EE               [12]  745 	mov	a,r6
      002132 A3               [24]  746 	inc	dptr
      002133 F0               [24]  747 	movx	@dptr,a
                                    748 ;	lcdCommands.c:63: }
      002134 22               [24]  749 	ret
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'putsLCD'
                                    752 ;------------------------------------------------------------
                                    753 ;sloc0                     Allocated with name '_putsLCD_sloc0_1_0'
                                    754 ;sloc1                     Allocated with name '_putsLCD_sloc1_1_0'
                                    755 ;y                         Allocated with name '_putsLCD_y_65536_49'
                                    756 ;i                         Allocated with name '_putsLCD_i_65536_50'
                                    757 ;j                         Allocated with name '_putsLCD_j_65536_50'
                                    758 ;k                         Allocated with name '_putsLCD_k_65536_50'
                                    759 ;------------------------------------------------------------
                                    760 ;	lcdCommands.c:65: void putsLCD(char* y)
                                    761 ;	-----------------------------------------
                                    762 ;	 function putsLCD
                                    763 ;	-----------------------------------------
      002135                        764 _putsLCD:
      002135 AF F0            [24]  765 	mov	r7,b
      002137 AE 83            [24]  766 	mov	r6,dph
      002139 E5 82            [12]  767 	mov	a,dpl
      00213B 90 00 03         [24]  768 	mov	dptr,#_putsLCD_y_65536_49
      00213E F0               [24]  769 	movx	@dptr,a
      00213F EE               [12]  770 	mov	a,r6
      002140 A3               [24]  771 	inc	dptr
      002141 F0               [24]  772 	movx	@dptr,a
      002142 EF               [12]  773 	mov	a,r7
      002143 A3               [24]  774 	inc	dptr
      002144 F0               [24]  775 	movx	@dptr,a
                                    776 ;	lcdCommands.c:67: int i = 0,j = 0, k =0;
      002145 90 00 06         [24]  777 	mov	dptr,#_putsLCD_i_65536_50
      002148 E4               [12]  778 	clr	a
      002149 F0               [24]  779 	movx	@dptr,a
      00214A A3               [24]  780 	inc	dptr
      00214B F0               [24]  781 	movx	@dptr,a
                                    782 ;	lcdCommands.c:68: while(y[i + (j * 16)] != '\0')
      00214C 90 00 03         [24]  783 	mov	dptr,#_putsLCD_y_65536_49
      00214F E0               [24]  784 	movx	a,@dptr
      002150 F5 0A            [12]  785 	mov	_putsLCD_sloc1_1_0,a
      002152 A3               [24]  786 	inc	dptr
      002153 E0               [24]  787 	movx	a,@dptr
      002154 F5 0B            [12]  788 	mov	(_putsLCD_sloc1_1_0 + 1),a
      002156 A3               [24]  789 	inc	dptr
      002157 E0               [24]  790 	movx	a,@dptr
      002158 F5 0C            [12]  791 	mov	(_putsLCD_sloc1_1_0 + 2),a
      00215A AA 0A            [24]  792 	mov	r2,_putsLCD_sloc1_1_0
      00215C AB 0B            [24]  793 	mov	r3,(_putsLCD_sloc1_1_0 + 1)
      00215E AC 0C            [24]  794 	mov	r4,(_putsLCD_sloc1_1_0 + 2)
      002160 78 00            [12]  795 	mov	r0,#0x00
      002162 79 00            [12]  796 	mov	r1,#0x00
      002164                        797 00103$:
      002164 88 06            [24]  798 	mov	ar6,r0
      002166 E9               [12]  799 	mov	a,r1
      002167 C4               [12]  800 	swap	a
      002168 54 F0            [12]  801 	anl	a,#0xf0
      00216A CE               [12]  802 	xch	a,r6
      00216B C4               [12]  803 	swap	a
      00216C CE               [12]  804 	xch	a,r6
      00216D 6E               [12]  805 	xrl	a,r6
      00216E CE               [12]  806 	xch	a,r6
      00216F 54 F0            [12]  807 	anl	a,#0xf0
      002171 CE               [12]  808 	xch	a,r6
      002172 6E               [12]  809 	xrl	a,r6
      002173 FF               [12]  810 	mov	r7,a
      002174 90 00 06         [24]  811 	mov	dptr,#_putsLCD_i_65536_50
      002177 E0               [24]  812 	movx	a,@dptr
      002178 F5 08            [12]  813 	mov	_putsLCD_sloc0_1_0,a
      00217A A3               [24]  814 	inc	dptr
      00217B E0               [24]  815 	movx	a,@dptr
      00217C F5 09            [12]  816 	mov	(_putsLCD_sloc0_1_0 + 1),a
      00217E EE               [12]  817 	mov	a,r6
      00217F 25 08            [12]  818 	add	a,_putsLCD_sloc0_1_0
      002181 FE               [12]  819 	mov	r6,a
      002182 EF               [12]  820 	mov	a,r7
      002183 35 09            [12]  821 	addc	a,(_putsLCD_sloc0_1_0 + 1)
      002185 FF               [12]  822 	mov	r7,a
      002186 EE               [12]  823 	mov	a,r6
      002187 2A               [12]  824 	add	a,r2
      002188 FE               [12]  825 	mov	r6,a
      002189 EF               [12]  826 	mov	a,r7
      00218A 3B               [12]  827 	addc	a,r3
      00218B FF               [12]  828 	mov	r7,a
      00218C 8C 05            [24]  829 	mov	ar5,r4
      00218E 8E 82            [24]  830 	mov	dpl,r6
      002190 8F 83            [24]  831 	mov	dph,r7
      002192 8D F0            [24]  832 	mov	b,r5
      002194 12 33 6A         [24]  833 	lcall	__gptrget
      002197 70 01            [24]  834 	jnz	00121$
      002199 22               [24]  835 	ret
      00219A                        836 00121$:
                                    837 ;	lcdCommands.c:70: busyWait();
      00219A C0 04            [24]  838 	push	ar4
      00219C C0 03            [24]  839 	push	ar3
      00219E C0 02            [24]  840 	push	ar2
      0021A0 C0 01            [24]  841 	push	ar1
      0021A2 C0 00            [24]  842 	push	ar0
      0021A4 12 20 8B         [24]  843 	lcall	_busyWait
      0021A7 D0 00            [24]  844 	pop	ar0
      0021A9 D0 01            [24]  845 	pop	ar1
      0021AB D0 02            [24]  846 	pop	ar2
      0021AD D0 03            [24]  847 	pop	ar3
      0021AF D0 04            [24]  848 	pop	ar4
                                    849 ;	lcdCommands.c:71: if( i > 15)
      0021B1 C3               [12]  850 	clr	c
      0021B2 74 0F            [12]  851 	mov	a,#0x0f
      0021B4 95 08            [12]  852 	subb	a,_putsLCD_sloc0_1_0
      0021B6 74 80            [12]  853 	mov	a,#(0x00 ^ 0x80)
      0021B8 85 09 F0         [24]  854 	mov	b,(_putsLCD_sloc0_1_0 + 1)
      0021BB 63 F0 80         [24]  855 	xrl	b,#0x80
      0021BE 95 F0            [12]  856 	subb	a,b
      0021C0 50 0C            [24]  857 	jnc	00102$
                                    858 ;	lcdCommands.c:73: j++;
      0021C2 08               [12]  859 	inc	r0
      0021C3 B8 00 01         [24]  860 	cjne	r0,#0x00,00123$
      0021C6 09               [12]  861 	inc	r1
      0021C7                        862 00123$:
                                    863 ;	lcdCommands.c:74: i = 0;
      0021C7 90 00 06         [24]  864 	mov	dptr,#_putsLCD_i_65536_50
      0021CA E4               [12]  865 	clr	a
      0021CB F0               [24]  866 	movx	@dptr,a
      0021CC A3               [24]  867 	inc	dptr
      0021CD F0               [24]  868 	movx	@dptr,a
      0021CE                        869 00102$:
                                    870 ;	lcdCommands.c:77: goToAddr(lookUpTable[j][i]);
      0021CE C0 02            [24]  871 	push	ar2
      0021D0 C0 03            [24]  872 	push	ar3
      0021D2 C0 04            [24]  873 	push	ar4
      0021D4 88 03            [24]  874 	mov	ar3,r0
      0021D6 E9               [12]  875 	mov	a,r1
      0021D7 C4               [12]  876 	swap	a
      0021D8 54 F0            [12]  877 	anl	a,#0xf0
      0021DA CB               [12]  878 	xch	a,r3
      0021DB C4               [12]  879 	swap	a
      0021DC CB               [12]  880 	xch	a,r3
      0021DD 6B               [12]  881 	xrl	a,r3
      0021DE CB               [12]  882 	xch	a,r3
      0021DF 54 F0            [12]  883 	anl	a,#0xf0
      0021E1 CB               [12]  884 	xch	a,r3
      0021E2 6B               [12]  885 	xrl	a,r3
      0021E3 FC               [12]  886 	mov	r4,a
      0021E4 EB               [12]  887 	mov	a,r3
      0021E5 24 A2            [12]  888 	add	a,#_lookUpTable
      0021E7 FA               [12]  889 	mov	r2,a
      0021E8 EC               [12]  890 	mov	a,r4
      0021E9 34 00            [12]  891 	addc	a,#(_lookUpTable >> 8)
      0021EB FF               [12]  892 	mov	r7,a
      0021EC 90 00 06         [24]  893 	mov	dptr,#_putsLCD_i_65536_50
      0021EF E0               [24]  894 	movx	a,@dptr
      0021F0 FD               [12]  895 	mov	r5,a
      0021F1 A3               [24]  896 	inc	dptr
      0021F2 E0               [24]  897 	movx	a,@dptr
      0021F3 FE               [12]  898 	mov	r6,a
      0021F4 ED               [12]  899 	mov	a,r5
      0021F5 2A               [12]  900 	add	a,r2
      0021F6 F5 08            [12]  901 	mov	_putsLCD_sloc0_1_0,a
      0021F8 EE               [12]  902 	mov	a,r6
      0021F9 3F               [12]  903 	addc	a,r7
      0021FA F5 09            [12]  904 	mov	(_putsLCD_sloc0_1_0 + 1),a
      0021FC 85 08 82         [24]  905 	mov	dpl,_putsLCD_sloc0_1_0
      0021FF 85 09 83         [24]  906 	mov	dph,(_putsLCD_sloc0_1_0 + 1)
      002202 E0               [24]  907 	movx	a,@dptr
      002203 F5 82            [12]  908 	mov	dpl,a
      002205 C0 06            [24]  909 	push	ar6
      002207 C0 05            [24]  910 	push	ar5
      002209 C0 04            [24]  911 	push	ar4
      00220B C0 03            [24]  912 	push	ar3
      00220D C0 02            [24]  913 	push	ar2
      00220F C0 01            [24]  914 	push	ar1
      002211 C0 00            [24]  915 	push	ar0
      002213 12 21 1A         [24]  916 	lcall	_goToAddr
      002216 D0 00            [24]  917 	pop	ar0
      002218 D0 01            [24]  918 	pop	ar1
      00221A D0 02            [24]  919 	pop	ar2
                                    920 ;	lcdCommands.c:78: printf_tiny("%x",lookUpTable[j][i]);
      00221C 85 08 82         [24]  921 	mov	dpl,_putsLCD_sloc0_1_0
      00221F 85 09 83         [24]  922 	mov	dph,(_putsLCD_sloc0_1_0 + 1)
      002222 E0               [24]  923 	movx	a,@dptr
      002223 FF               [12]  924 	mov	r7,a
      002224 7A 00            [12]  925 	mov	r2,#0x00
      002226 C0 02            [24]  926 	push	ar2
      002228 C0 01            [24]  927 	push	ar1
      00222A C0 00            [24]  928 	push	ar0
      00222C C0 07            [24]  929 	push	ar7
      00222E C0 02            [24]  930 	push	ar2
      002230 74 8A            [12]  931 	mov	a,#___str_0
      002232 C0 E0            [24]  932 	push	acc
      002234 74 33            [12]  933 	mov	a,#(___str_0 >> 8)
      002236 C0 E0            [24]  934 	push	acc
      002238 12 25 BE         [24]  935 	lcall	_printf_tiny
      00223B E5 81            [12]  936 	mov	a,sp
      00223D 24 FC            [12]  937 	add	a,#0xfc
      00223F F5 81            [12]  938 	mov	sp,a
      002241 D0 00            [24]  939 	pop	ar0
      002243 D0 01            [24]  940 	pop	ar1
      002245 D0 02            [24]  941 	pop	ar2
      002247 D0 03            [24]  942 	pop	ar3
      002249 D0 04            [24]  943 	pop	ar4
      00224B D0 05            [24]  944 	pop	ar5
      00224D D0 06            [24]  945 	pop	ar6
                                    946 ;	lcdCommands.c:79: lcdPutCh(y[i + (j * 16)]);
      00224F EB               [12]  947 	mov	a,r3
      002250 2D               [12]  948 	add	a,r5
      002251 FB               [12]  949 	mov	r3,a
      002252 EC               [12]  950 	mov	a,r4
      002253 3E               [12]  951 	addc	a,r6
      002254 FC               [12]  952 	mov	r4,a
      002255 EB               [12]  953 	mov	a,r3
      002256 25 0A            [12]  954 	add	a,_putsLCD_sloc1_1_0
      002258 FB               [12]  955 	mov	r3,a
      002259 EC               [12]  956 	mov	a,r4
      00225A 35 0B            [12]  957 	addc	a,(_putsLCD_sloc1_1_0 + 1)
      00225C FC               [12]  958 	mov	r4,a
      00225D AF 0C            [24]  959 	mov	r7,(_putsLCD_sloc1_1_0 + 2)
      00225F 8B 82            [24]  960 	mov	dpl,r3
      002261 8C 83            [24]  961 	mov	dph,r4
      002263 8F F0            [24]  962 	mov	b,r7
      002265 12 33 6A         [24]  963 	lcall	__gptrget
      002268 FB               [12]  964 	mov	r3,a
      002269 F5 82            [12]  965 	mov	dpl,a
      00226B C0 06            [24]  966 	push	ar6
      00226D C0 05            [24]  967 	push	ar5
      00226F C0 04            [24]  968 	push	ar4
      002271 C0 03            [24]  969 	push	ar3
      002273 C0 02            [24]  970 	push	ar2
      002275 C0 01            [24]  971 	push	ar1
      002277 C0 00            [24]  972 	push	ar0
      002279 12 20 F8         [24]  973 	lcall	_lcdPutCh
      00227C D0 00            [24]  974 	pop	ar0
      00227E D0 01            [24]  975 	pop	ar1
      002280 D0 02            [24]  976 	pop	ar2
      002282 D0 03            [24]  977 	pop	ar3
      002284 D0 04            [24]  978 	pop	ar4
      002286 D0 05            [24]  979 	pop	ar5
      002288 D0 06            [24]  980 	pop	ar6
                                    981 ;	lcdCommands.c:80: i++;
      00228A 90 00 06         [24]  982 	mov	dptr,#_putsLCD_i_65536_50
      00228D 74 01            [12]  983 	mov	a,#0x01
      00228F 2D               [12]  984 	add	a,r5
      002290 F0               [24]  985 	movx	@dptr,a
      002291 E4               [12]  986 	clr	a
      002292 3E               [12]  987 	addc	a,r6
      002293 A3               [24]  988 	inc	dptr
      002294 F0               [24]  989 	movx	@dptr,a
      002295 D0 04            [24]  990 	pop	ar4
      002297 D0 03            [24]  991 	pop	ar3
      002299 D0 02            [24]  992 	pop	ar2
                                    993 ;	lcdCommands.c:83: }
      00229B 02 21 64         [24]  994 	ljmp	00103$
                                    995 ;------------------------------------------------------------
                                    996 ;Allocation info for local variables in function 'getchar'
                                    997 ;------------------------------------------------------------
                                    998 ;	lcdCommands.c:85: int getchar ()
                                    999 ;	-----------------------------------------
                                   1000 ;	 function getchar
                                   1001 ;	-----------------------------------------
      00229E                       1002 _getchar:
                                   1003 ;	lcdCommands.c:87: while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
      00229E                       1004 00101$:
      00229E E5 98            [12] 1005 	mov	a,_SCON
      0022A0 30 E0 FB         [24] 1006 	jnb	acc.0,00101$
                                   1007 ;	lcdCommands.c:88: RI = 0;			// clear RI flag
                                   1008 ;	assignBit
      0022A3 C2 98            [12] 1009 	clr	_RI
                                   1010 ;	lcdCommands.c:89: return SBUF;  	// return character from SBUF
      0022A5 AE 99            [24] 1011 	mov	r6,_SBUF
      0022A7 7F 00            [12] 1012 	mov	r7,#0x00
      0022A9 8E 82            [24] 1013 	mov	dpl,r6
      0022AB 8F 83            [24] 1014 	mov	dph,r7
                                   1015 ;	lcdCommands.c:90: }
      0022AD 22               [24] 1016 	ret
                                   1017 ;------------------------------------------------------------
                                   1018 ;Allocation info for local variables in function 'putchar'
                                   1019 ;------------------------------------------------------------
                                   1020 ;c                         Allocated with name '_putchar_c_65536_54'
                                   1021 ;------------------------------------------------------------
                                   1022 ;	lcdCommands.c:92: int putchar (int c)
                                   1023 ;	-----------------------------------------
                                   1024 ;	 function putchar
                                   1025 ;	-----------------------------------------
      0022AE                       1026 _putchar:
      0022AE AF 83            [24] 1027 	mov	r7,dph
      0022B0 E5 82            [12] 1028 	mov	a,dpl
      0022B2 90 00 08         [24] 1029 	mov	dptr,#_putchar_c_65536_54
      0022B5 F0               [24] 1030 	movx	@dptr,a
      0022B6 EF               [12] 1031 	mov	a,r7
      0022B7 A3               [24] 1032 	inc	dptr
      0022B8 F0               [24] 1033 	movx	@dptr,a
                                   1034 ;	lcdCommands.c:94: while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
      0022B9                       1035 00101$:
      0022B9 E5 98            [12] 1036 	mov	a,_SCON
      0022BB 30 E1 FB         [24] 1037 	jnb	acc.1,00101$
                                   1038 ;	lcdCommands.c:95: SBUF = c;  	// load serial port with transmit value
      0022BE 90 00 08         [24] 1039 	mov	dptr,#_putchar_c_65536_54
      0022C1 E0               [24] 1040 	movx	a,@dptr
      0022C2 FE               [12] 1041 	mov	r6,a
      0022C3 A3               [24] 1042 	inc	dptr
      0022C4 E0               [24] 1043 	movx	a,@dptr
      0022C5 8E 99            [24] 1044 	mov	_SBUF,r6
                                   1045 ;	lcdCommands.c:96: TI = 0;  	// clear TI flag
                                   1046 ;	assignBit
      0022C7 C2 99            [12] 1047 	clr	_TI
                                   1048 ;	lcdCommands.c:97: return 0;
      0022C9 90 00 00         [24] 1049 	mov	dptr,#0x0000
                                   1050 ;	lcdCommands.c:98: }
      0022CC 22               [24] 1051 	ret
                                   1052 ;------------------------------------------------------------
                                   1053 ;Allocation info for local variables in function 'gets'
                                   1054 ;------------------------------------------------------------
                                   1055 ;s                         Allocated with name '_gets_s_65536_56'
                                   1056 ;c                         Allocated with name '_gets_c_65536_57'
                                   1057 ;count                     Allocated with name '_gets_count_65536_57'
                                   1058 ;------------------------------------------------------------
                                   1059 ;	lcdCommands.c:100: char *gets (char *s)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function gets
                                   1062 ;	-----------------------------------------
      0022CD                       1063 _gets:
      0022CD AF F0            [24] 1064 	mov	r7,b
      0022CF AE 83            [24] 1065 	mov	r6,dph
      0022D1 E5 82            [12] 1066 	mov	a,dpl
      0022D3 90 00 0A         [24] 1067 	mov	dptr,#_gets_s_65536_56
      0022D6 F0               [24] 1068 	movx	@dptr,a
      0022D7 EE               [12] 1069 	mov	a,r6
      0022D8 A3               [24] 1070 	inc	dptr
      0022D9 F0               [24] 1071 	movx	@dptr,a
      0022DA EF               [12] 1072 	mov	a,r7
      0022DB A3               [24] 1073 	inc	dptr
      0022DC F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	lcdCommands.c:103: unsigned int count = 0;
      0022DD 90 00 0D         [24] 1076 	mov	dptr,#_gets_count_65536_57
      0022E0 E4               [12] 1077 	clr	a
      0022E1 F0               [24] 1078 	movx	@dptr,a
      0022E2 A3               [24] 1079 	inc	dptr
      0022E3 F0               [24] 1080 	movx	@dptr,a
                                   1081 ;	lcdCommands.c:105: while (1)
      0022E4                       1082 00111$:
                                   1083 ;	lcdCommands.c:107: c = getchar ();
      0022E4 12 22 9E         [24] 1084 	lcall	_getchar
      0022E7 AE 82            [24] 1085 	mov	r6,dpl
      0022E9 AF 83            [24] 1086 	mov	r7,dph
                                   1087 ;	lcdCommands.c:108: switch(c)
      0022EB BE 08 02         [24] 1088 	cjne	r6,#0x08,00139$
      0022EE 80 0D            [24] 1089 	sjmp	00101$
      0022F0                       1090 00139$:
      0022F0 BE 0A 02         [24] 1091 	cjne	r6,#0x0a,00140$
      0022F3 80 62            [24] 1092 	sjmp	00105$
      0022F5                       1093 00140$:
      0022F5 BE 0D 02         [24] 1094 	cjne	r6,#0x0d,00141$
      0022F8 80 5D            [24] 1095 	sjmp	00105$
      0022FA                       1096 00141$:
      0022FA 02 23 7F         [24] 1097 	ljmp	00106$
                                   1098 ;	lcdCommands.c:110: case '\b': /* backspace */
      0022FD                       1099 00101$:
                                   1100 ;	lcdCommands.c:111: if (count)
      0022FD 90 00 0D         [24] 1101 	mov	dptr,#_gets_count_65536_57
      002300 E0               [24] 1102 	movx	a,@dptr
      002301 FD               [12] 1103 	mov	r5,a
      002302 A3               [24] 1104 	inc	dptr
      002303 E0               [24] 1105 	movx	a,@dptr
      002304 FF               [12] 1106 	mov	r7,a
      002305 90 00 0D         [24] 1107 	mov	dptr,#_gets_count_65536_57
      002308 E0               [24] 1108 	movx	a,@dptr
      002309 F5 F0            [12] 1109 	mov	b,a
      00230B A3               [24] 1110 	inc	dptr
      00230C E0               [24] 1111 	movx	a,@dptr
      00230D 45 F0            [12] 1112 	orl	a,b
      00230F 70 03            [24] 1113 	jnz	00142$
      002311 02 23 B7         [24] 1114 	ljmp	00107$
      002314                       1115 00142$:
                                   1116 ;	lcdCommands.c:113: putchar ('\b');
      002314 90 00 08         [24] 1117 	mov	dptr,#0x0008
      002317 C0 07            [24] 1118 	push	ar7
      002319 C0 05            [24] 1119 	push	ar5
      00231B 12 22 AE         [24] 1120 	lcall	_putchar
                                   1121 ;	lcdCommands.c:114: putchar (' ');
      00231E 90 00 20         [24] 1122 	mov	dptr,#0x0020
      002321 12 22 AE         [24] 1123 	lcall	_putchar
                                   1124 ;	lcdCommands.c:115: putchar ('\b');
      002324 90 00 08         [24] 1125 	mov	dptr,#0x0008
      002327 12 22 AE         [24] 1126 	lcall	_putchar
      00232A D0 05            [24] 1127 	pop	ar5
      00232C D0 07            [24] 1128 	pop	ar7
                                   1129 ;	lcdCommands.c:116: --s;
      00232E 90 00 0A         [24] 1130 	mov	dptr,#_gets_s_65536_56
      002331 E0               [24] 1131 	movx	a,@dptr
      002332 24 FF            [12] 1132 	add	a,#0xff
      002334 FA               [12] 1133 	mov	r2,a
      002335 A3               [24] 1134 	inc	dptr
      002336 E0               [24] 1135 	movx	a,@dptr
      002337 34 FF            [12] 1136 	addc	a,#0xff
      002339 FB               [12] 1137 	mov	r3,a
      00233A A3               [24] 1138 	inc	dptr
      00233B E0               [24] 1139 	movx	a,@dptr
      00233C FC               [12] 1140 	mov	r4,a
      00233D 90 00 0A         [24] 1141 	mov	dptr,#_gets_s_65536_56
      002340 EA               [12] 1142 	mov	a,r2
      002341 F0               [24] 1143 	movx	@dptr,a
      002342 EB               [12] 1144 	mov	a,r3
      002343 A3               [24] 1145 	inc	dptr
      002344 F0               [24] 1146 	movx	@dptr,a
      002345 EC               [12] 1147 	mov	a,r4
      002346 A3               [24] 1148 	inc	dptr
      002347 F0               [24] 1149 	movx	@dptr,a
                                   1150 ;	lcdCommands.c:117: --count;
      002348 1D               [12] 1151 	dec	r5
      002349 BD FF 01         [24] 1152 	cjne	r5,#0xff,00143$
      00234C 1F               [12] 1153 	dec	r7
      00234D                       1154 00143$:
      00234D 90 00 0D         [24] 1155 	mov	dptr,#_gets_count_65536_57
      002350 ED               [12] 1156 	mov	a,r5
      002351 F0               [24] 1157 	movx	@dptr,a
      002352 EF               [12] 1158 	mov	a,r7
      002353 A3               [24] 1159 	inc	dptr
      002354 F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	lcdCommands.c:119: break;
                                   1162 ;	lcdCommands.c:122: case '\r': /* CR or LF */
      002355 80 60            [24] 1163 	sjmp	00107$
      002357                       1164 00105$:
                                   1165 ;	lcdCommands.c:123: putchar ('\r');
      002357 90 00 0D         [24] 1166 	mov	dptr,#0x000d
      00235A 12 22 AE         [24] 1167 	lcall	_putchar
                                   1168 ;	lcdCommands.c:124: putchar ('\n');
      00235D 90 00 0A         [24] 1169 	mov	dptr,#0x000a
      002360 12 22 AE         [24] 1170 	lcall	_putchar
                                   1171 ;	lcdCommands.c:125: *s = 0;
      002363 90 00 0A         [24] 1172 	mov	dptr,#_gets_s_65536_56
      002366 E0               [24] 1173 	movx	a,@dptr
      002367 FC               [12] 1174 	mov	r4,a
      002368 A3               [24] 1175 	inc	dptr
      002369 E0               [24] 1176 	movx	a,@dptr
      00236A FD               [12] 1177 	mov	r5,a
      00236B A3               [24] 1178 	inc	dptr
      00236C E0               [24] 1179 	movx	a,@dptr
      00236D FF               [12] 1180 	mov	r7,a
      00236E 8C 82            [24] 1181 	mov	dpl,r4
      002370 8D 83            [24] 1182 	mov	dph,r5
      002372 8F F0            [24] 1183 	mov	b,r7
      002374 E4               [12] 1184 	clr	a
      002375 12 25 A3         [24] 1185 	lcall	__gptrput
                                   1186 ;	lcdCommands.c:126: return s;
      002378 8C 82            [24] 1187 	mov	dpl,r4
      00237A 8D 83            [24] 1188 	mov	dph,r5
      00237C 8F F0            [24] 1189 	mov	b,r7
                                   1190 ;	lcdCommands.c:128: default:
      00237E 22               [24] 1191 	ret
      00237F                       1192 00106$:
                                   1193 ;	lcdCommands.c:129: *s++ = c;
      00237F 90 00 0A         [24] 1194 	mov	dptr,#_gets_s_65536_56
      002382 E0               [24] 1195 	movx	a,@dptr
      002383 FC               [12] 1196 	mov	r4,a
      002384 A3               [24] 1197 	inc	dptr
      002385 E0               [24] 1198 	movx	a,@dptr
      002386 FD               [12] 1199 	mov	r5,a
      002387 A3               [24] 1200 	inc	dptr
      002388 E0               [24] 1201 	movx	a,@dptr
      002389 FF               [12] 1202 	mov	r7,a
      00238A 8C 82            [24] 1203 	mov	dpl,r4
      00238C 8D 83            [24] 1204 	mov	dph,r5
      00238E 8F F0            [24] 1205 	mov	b,r7
      002390 EE               [12] 1206 	mov	a,r6
      002391 12 25 A3         [24] 1207 	lcall	__gptrput
      002394 90 00 0A         [24] 1208 	mov	dptr,#_gets_s_65536_56
      002397 74 01            [12] 1209 	mov	a,#0x01
      002399 2C               [12] 1210 	add	a,r4
      00239A F0               [24] 1211 	movx	@dptr,a
      00239B E4               [12] 1212 	clr	a
      00239C 3D               [12] 1213 	addc	a,r5
      00239D A3               [24] 1214 	inc	dptr
      00239E F0               [24] 1215 	movx	@dptr,a
      00239F EF               [12] 1216 	mov	a,r7
      0023A0 A3               [24] 1217 	inc	dptr
      0023A1 F0               [24] 1218 	movx	@dptr,a
                                   1219 ;	lcdCommands.c:130: ++count;
      0023A2 90 00 0D         [24] 1220 	mov	dptr,#_gets_count_65536_57
      0023A5 E0               [24] 1221 	movx	a,@dptr
      0023A6 24 01            [12] 1222 	add	a,#0x01
      0023A8 F0               [24] 1223 	movx	@dptr,a
      0023A9 A3               [24] 1224 	inc	dptr
      0023AA E0               [24] 1225 	movx	a,@dptr
      0023AB 34 00            [12] 1226 	addc	a,#0x00
      0023AD F0               [24] 1227 	movx	@dptr,a
                                   1228 ;	lcdCommands.c:131: putchar (c);
      0023AE 7F 00            [12] 1229 	mov	r7,#0x00
      0023B0 8E 82            [24] 1230 	mov	dpl,r6
      0023B2 8F 83            [24] 1231 	mov	dph,r7
      0023B4 12 22 AE         [24] 1232 	lcall	_putchar
                                   1233 ;	lcdCommands.c:133: }
      0023B7                       1234 00107$:
                                   1235 ;	lcdCommands.c:134: if (count == 60)
      0023B7 90 00 0D         [24] 1236 	mov	dptr,#_gets_count_65536_57
      0023BA E0               [24] 1237 	movx	a,@dptr
      0023BB FE               [12] 1238 	mov	r6,a
      0023BC A3               [24] 1239 	inc	dptr
      0023BD E0               [24] 1240 	movx	a,@dptr
      0023BE FF               [12] 1241 	mov	r7,a
      0023BF BE 3C 05         [24] 1242 	cjne	r6,#0x3c,00144$
      0023C2 BF 00 02         [24] 1243 	cjne	r7,#0x00,00144$
      0023C5 80 03            [24] 1244 	sjmp	00145$
      0023C7                       1245 00144$:
      0023C7 02 22 E4         [24] 1246 	ljmp	00111$
      0023CA                       1247 00145$:
                                   1248 ;	lcdCommands.c:136: printf("\n\rPlease Input a maximum of 64 digits\n\r");
      0023CA 74 8D            [12] 1249 	mov	a,#___str_1
      0023CC C0 E0            [24] 1250 	push	acc
      0023CE 74 33            [12] 1251 	mov	a,#(___str_1 >> 8)
      0023D0 C0 E0            [24] 1252 	push	acc
      0023D2 74 80            [12] 1253 	mov	a,#0x80
      0023D4 C0 E0            [24] 1254 	push	acc
      0023D6 12 29 28         [24] 1255 	lcall	_printf
      0023D9 15 81            [12] 1256 	dec	sp
      0023DB 15 81            [12] 1257 	dec	sp
      0023DD 15 81            [12] 1258 	dec	sp
                                   1259 ;	lcdCommands.c:137: break;
                                   1260 ;	lcdCommands.c:140: }
      0023DF 22               [24] 1261 	ret
                                   1262 	.area CSEG    (CODE)
                                   1263 	.area CONST   (CODE)
                                   1264 	.area CONST   (CODE)
      00338A                       1265 ___str_0:
      00338A 25 78                 1266 	.ascii "%x"
      00338C 00                    1267 	.db 0x00
                                   1268 	.area CSEG    (CODE)
                                   1269 	.area CONST   (CODE)
      00338D                       1270 ___str_1:
      00338D 0A                    1271 	.db 0x0a
      00338E 0D                    1272 	.db 0x0d
      00338F 50 6C 65 61 73 65 20  1273 	.ascii "Please Input a maximum of 64 digits"
             49 6E 70 75 74 20 61
             20 6D 61 78 69 6D 75
             6D 20 6F 66 20 36 34
             20 64 69 67 69 74 73
      0033B2 0A                    1274 	.db 0x0a
      0033B3 0D                    1275 	.db 0x0d
      0033B4 00                    1276 	.db 0x00
                                   1277 	.area CSEG    (CODE)
                                   1278 	.area XINIT   (CODE)
      0033CF                       1279 __xinit__lookUpTable:
      0033CF 00                    1280 	.db #0x00	; 0
      0033D0 01                    1281 	.db #0x01	; 1
      0033D1 02                    1282 	.db #0x02	; 2
      0033D2 03                    1283 	.db #0x03	; 3
      0033D3 04                    1284 	.db #0x04	; 4
      0033D4 05                    1285 	.db #0x05	; 5
      0033D5 06                    1286 	.db #0x06	; 6
      0033D6 07                    1287 	.db #0x07	; 7
      0033D7 08                    1288 	.db #0x08	; 8
      0033D8 09                    1289 	.db #0x09	; 9
      0033D9 0A                    1290 	.db #0x0a	; 10
      0033DA 0B                    1291 	.db #0x0b	; 11
      0033DB 0C                    1292 	.db #0x0c	; 12
      0033DC 0D                    1293 	.db #0x0d	; 13
      0033DD 0E                    1294 	.db #0x0e	; 14
      0033DE 0F                    1295 	.db #0x0f	; 15
      0033DF 40                    1296 	.db #0x40	; 64
      0033E0 41                    1297 	.db #0x41	; 65	'A'
      0033E1 42                    1298 	.db #0x42	; 66	'B'
      0033E2 43                    1299 	.db #0x43	; 67	'C'
      0033E3 44                    1300 	.db #0x44	; 68	'D'
      0033E4 45                    1301 	.db #0x45	; 69	'E'
      0033E5 46                    1302 	.db #0x46	; 70	'F'
      0033E6 47                    1303 	.db #0x47	; 71	'G'
      0033E7 48                    1304 	.db #0x48	; 72	'H'
      0033E8 49                    1305 	.db #0x49	; 73	'I'
      0033E9 4A                    1306 	.db #0x4a	; 74	'J'
      0033EA 4B                    1307 	.db #0x4b	; 75	'K'
      0033EB 4C                    1308 	.db #0x4c	; 76	'L'
      0033EC 4D                    1309 	.db #0x4d	; 77	'M'
      0033ED 4E                    1310 	.db #0x4e	; 78	'N'
      0033EE 4F                    1311 	.db #0x4f	; 79	'O'
      0033EF 10                    1312 	.db #0x10	; 16
      0033F0 11                    1313 	.db #0x11	; 17
      0033F1 12                    1314 	.db #0x12	; 18
      0033F2 13                    1315 	.db #0x13	; 19
      0033F3 14                    1316 	.db #0x14	; 20
      0033F4 15                    1317 	.db #0x15	; 21
      0033F5 16                    1318 	.db #0x16	; 22
      0033F6 17                    1319 	.db #0x17	; 23
      0033F7 18                    1320 	.db #0x18	; 24
      0033F8 19                    1321 	.db #0x19	; 25
      0033F9 1A                    1322 	.db #0x1a	; 26
      0033FA 1B                    1323 	.db #0x1b	; 27
      0033FB 1C                    1324 	.db #0x1c	; 28
      0033FC 1D                    1325 	.db #0x1d	; 29
      0033FD 1E                    1326 	.db #0x1e	; 30
      0033FE 1F                    1327 	.db #0x1f	; 31
      0033FF 50                    1328 	.db #0x50	; 80	'P'
      003400 51                    1329 	.db #0x51	; 81	'Q'
      003401 52                    1330 	.db #0x52	; 82	'R'
      003402 53                    1331 	.db #0x53	; 83	'S'
      003403 54                    1332 	.db #0x54	; 84	'T'
      003404 55                    1333 	.db #0x55	; 85	'U'
      003405 56                    1334 	.db #0x56	; 86	'V'
      003406 57                    1335 	.db #0x57	; 87	'W'
      003407 58                    1336 	.db #0x58	; 88	'X'
      003408 59                    1337 	.db #0x59	; 89	'Y'
      003409 5A                    1338 	.db #0x5a	; 90	'Z'
      00340A 5B                    1339 	.db #0x5b	; 91
      00340B 5C                    1340 	.db #0x5c	; 92
      00340C 5D                    1341 	.db #0x5d	; 93
      00340D 5E                    1342 	.db #0x5e	; 94
      00340E 5F                    1343 	.db #0x5f	; 95
                                   1344 	.area CABS    (ABS,CODE)
