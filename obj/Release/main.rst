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
                                     11 	.globl _timer0_isr
                                     12 	.globl _main
                                     13 	.globl _gamePacman
                                     14 	.globl _timerInit
                                     15 	.globl _goToAddr
                                     16 	.globl _lcdClear
                                     17 	.globl _lcdPutCh
                                     18 	.globl _lcdInit
                                     19 	.globl _memset
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
                                    216 	.globl _check
                                    217 	.globl _x2
                                    218 	.globl _hour
                                    219 	.globl _min
                                    220 	.globl _sec
                                    221 	.globl _partSec
                                    222 	.globl _writeCharacter
                                    223 	.globl _busyPoll
                                    224 	.globl _lcdGeneral
                                    225 	.globl _printTimeStamp
                                    226 ;--------------------------------------------------------
                                    227 ; special function registers
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           000080   231 _P0	=	0x0080
                           000081   232 _SP	=	0x0081
                           000082   233 _DPL	=	0x0082
                           000083   234 _DPH	=	0x0083
                           000087   235 _PCON	=	0x0087
                           000088   236 _TCON	=	0x0088
                           000089   237 _TMOD	=	0x0089
                           00008A   238 _TL0	=	0x008a
                           00008B   239 _TL1	=	0x008b
                           00008C   240 _TH0	=	0x008c
                           00008D   241 _TH1	=	0x008d
                           000090   242 _P1	=	0x0090
                           000098   243 _SCON	=	0x0098
                           000099   244 _SBUF	=	0x0099
                           0000A0   245 _P2	=	0x00a0
                           0000A8   246 _IE	=	0x00a8
                           0000B0   247 _P3	=	0x00b0
                           0000B8   248 _IP	=	0x00b8
                           0000D0   249 _PSW	=	0x00d0
                           0000E0   250 _ACC	=	0x00e0
                           0000F0   251 _B	=	0x00f0
                           0000C8   252 _T2CON	=	0x00c8
                           0000CA   253 _RCAP2L	=	0x00ca
                           0000CB   254 _RCAP2H	=	0x00cb
                           0000CC   255 _TL2	=	0x00cc
                           0000CD   256 _TH2	=	0x00cd
                           00008E   257 _AUXR	=	0x008e
                           0000A2   258 _AUXR1	=	0x00a2
                           000097   259 _CKRL	=	0x0097
                           00008F   260 _CKCON0	=	0x008f
                           0000AF   261 _CKCON1	=	0x00af
                           0000FA   262 _CCAP0H	=	0x00fa
                           0000FB   263 _CCAP1H	=	0x00fb
                           0000FC   264 _CCAP2H	=	0x00fc
                           0000FD   265 _CCAP3H	=	0x00fd
                           0000FE   266 _CCAP4H	=	0x00fe
                           0000EA   267 _CCAP0L	=	0x00ea
                           0000EB   268 _CCAP1L	=	0x00eb
                           0000EC   269 _CCAP2L	=	0x00ec
                           0000ED   270 _CCAP3L	=	0x00ed
                           0000EE   271 _CCAP4L	=	0x00ee
                           0000DA   272 _CCAPM0	=	0x00da
                           0000DB   273 _CCAPM1	=	0x00db
                           0000DC   274 _CCAPM2	=	0x00dc
                           0000DD   275 _CCAPM3	=	0x00dd
                           0000DE   276 _CCAPM4	=	0x00de
                           0000D8   277 _CCON	=	0x00d8
                           0000F9   278 _CH	=	0x00f9
                           0000E9   279 _CL	=	0x00e9
                           0000D9   280 _CMOD	=	0x00d9
                           0000A8   281 _IEN0	=	0x00a8
                           0000B1   282 _IEN1	=	0x00b1
                           0000B8   283 _IPL0	=	0x00b8
                           0000B7   284 _IPH0	=	0x00b7
                           0000B2   285 _IPL1	=	0x00b2
                           0000B3   286 _IPH1	=	0x00b3
                           0000C0   287 _P4	=	0x00c0
                           0000E8   288 _P5	=	0x00e8
                           0000A6   289 _WDTRST	=	0x00a6
                           0000A7   290 _WDTPRG	=	0x00a7
                           0000A9   291 _SADDR	=	0x00a9
                           0000B9   292 _SADEN	=	0x00b9
                           0000C3   293 _SPCON	=	0x00c3
                           0000C4   294 _SPSTA	=	0x00c4
                           0000C5   295 _SPDAT	=	0x00c5
                           0000C9   296 _T2MOD	=	0x00c9
                           00009B   297 _BDRCON	=	0x009b
                           00009A   298 _BRL	=	0x009a
                           00009C   299 _KBLS	=	0x009c
                           00009D   300 _KBE	=	0x009d
                           00009E   301 _KBF	=	0x009e
                           0000D2   302 _EECON	=	0x00d2
                                    303 ;--------------------------------------------------------
                                    304 ; special function bits
                                    305 ;--------------------------------------------------------
                                    306 	.area RSEG    (ABS,DATA)
      000000                        307 	.org 0x0000
                           000080   308 _P0_0	=	0x0080
                           000081   309 _P0_1	=	0x0081
                           000082   310 _P0_2	=	0x0082
                           000083   311 _P0_3	=	0x0083
                           000084   312 _P0_4	=	0x0084
                           000085   313 _P0_5	=	0x0085
                           000086   314 _P0_6	=	0x0086
                           000087   315 _P0_7	=	0x0087
                           000088   316 _IT0	=	0x0088
                           000089   317 _IE0	=	0x0089
                           00008A   318 _IT1	=	0x008a
                           00008B   319 _IE1	=	0x008b
                           00008C   320 _TR0	=	0x008c
                           00008D   321 _TF0	=	0x008d
                           00008E   322 _TR1	=	0x008e
                           00008F   323 _TF1	=	0x008f
                           000090   324 _P1_0	=	0x0090
                           000091   325 _P1_1	=	0x0091
                           000092   326 _P1_2	=	0x0092
                           000093   327 _P1_3	=	0x0093
                           000094   328 _P1_4	=	0x0094
                           000095   329 _P1_5	=	0x0095
                           000096   330 _P1_6	=	0x0096
                           000097   331 _P1_7	=	0x0097
                           000098   332 _RI	=	0x0098
                           000099   333 _TI	=	0x0099
                           00009A   334 _RB8	=	0x009a
                           00009B   335 _TB8	=	0x009b
                           00009C   336 _REN	=	0x009c
                           00009D   337 _SM2	=	0x009d
                           00009E   338 _SM1	=	0x009e
                           00009F   339 _SM0	=	0x009f
                           0000A0   340 _P2_0	=	0x00a0
                           0000A1   341 _P2_1	=	0x00a1
                           0000A2   342 _P2_2	=	0x00a2
                           0000A3   343 _P2_3	=	0x00a3
                           0000A4   344 _P2_4	=	0x00a4
                           0000A5   345 _P2_5	=	0x00a5
                           0000A6   346 _P2_6	=	0x00a6
                           0000A7   347 _P2_7	=	0x00a7
                           0000A8   348 _EX0	=	0x00a8
                           0000A9   349 _ET0	=	0x00a9
                           0000AA   350 _EX1	=	0x00aa
                           0000AB   351 _ET1	=	0x00ab
                           0000AC   352 _ES	=	0x00ac
                           0000AF   353 _EA	=	0x00af
                           0000B0   354 _P3_0	=	0x00b0
                           0000B1   355 _P3_1	=	0x00b1
                           0000B2   356 _P3_2	=	0x00b2
                           0000B3   357 _P3_3	=	0x00b3
                           0000B4   358 _P3_4	=	0x00b4
                           0000B5   359 _P3_5	=	0x00b5
                           0000B6   360 _P3_6	=	0x00b6
                           0000B7   361 _P3_7	=	0x00b7
                           0000B0   362 _RXD	=	0x00b0
                           0000B1   363 _TXD	=	0x00b1
                           0000B2   364 _INT0	=	0x00b2
                           0000B3   365 _INT1	=	0x00b3
                           0000B4   366 _T0	=	0x00b4
                           0000B5   367 _T1	=	0x00b5
                           0000B6   368 _WR	=	0x00b6
                           0000B7   369 _RD	=	0x00b7
                           0000B8   370 _PX0	=	0x00b8
                           0000B9   371 _PT0	=	0x00b9
                           0000BA   372 _PX1	=	0x00ba
                           0000BB   373 _PT1	=	0x00bb
                           0000BC   374 _PS	=	0x00bc
                           0000D0   375 _P	=	0x00d0
                           0000D1   376 _F1	=	0x00d1
                           0000D2   377 _OV	=	0x00d2
                           0000D3   378 _RS0	=	0x00d3
                           0000D4   379 _RS1	=	0x00d4
                           0000D5   380 _F0	=	0x00d5
                           0000D6   381 _AC	=	0x00d6
                           0000D7   382 _CY	=	0x00d7
                           0000AD   383 _ET2	=	0x00ad
                           0000BD   384 _PT2	=	0x00bd
                           0000C8   385 _T2CON_0	=	0x00c8
                           0000C9   386 _T2CON_1	=	0x00c9
                           0000CA   387 _T2CON_2	=	0x00ca
                           0000CB   388 _T2CON_3	=	0x00cb
                           0000CC   389 _T2CON_4	=	0x00cc
                           0000CD   390 _T2CON_5	=	0x00cd
                           0000CE   391 _T2CON_6	=	0x00ce
                           0000CF   392 _T2CON_7	=	0x00cf
                           0000C8   393 _CP_RL2	=	0x00c8
                           0000C9   394 _C_T2	=	0x00c9
                           0000CA   395 _TR2	=	0x00ca
                           0000CB   396 _EXEN2	=	0x00cb
                           0000CC   397 _TCLK	=	0x00cc
                           0000CD   398 _RCLK	=	0x00cd
                           0000CE   399 _EXF2	=	0x00ce
                           0000CF   400 _TF2	=	0x00cf
                           0000DF   401 _CF	=	0x00df
                           0000DE   402 _CR	=	0x00de
                           0000DC   403 _CCF4	=	0x00dc
                           0000DB   404 _CCF3	=	0x00db
                           0000DA   405 _CCF2	=	0x00da
                           0000D9   406 _CCF1	=	0x00d9
                           0000D8   407 _CCF0	=	0x00d8
                           0000AE   408 _EC	=	0x00ae
                           0000BE   409 _PPCL	=	0x00be
                           0000BD   410 _PT2L	=	0x00bd
                           0000BC   411 _PSL	=	0x00bc
                           0000BB   412 _PT1L	=	0x00bb
                           0000BA   413 _PX1L	=	0x00ba
                           0000B9   414 _PT0L	=	0x00b9
                           0000B8   415 _PX0L	=	0x00b8
                           0000C0   416 _P4_0	=	0x00c0
                           0000C1   417 _P4_1	=	0x00c1
                           0000C2   418 _P4_2	=	0x00c2
                           0000C3   419 _P4_3	=	0x00c3
                           0000C4   420 _P4_4	=	0x00c4
                           0000C5   421 _P4_5	=	0x00c5
                           0000C6   422 _P4_6	=	0x00c6
                           0000C7   423 _P4_7	=	0x00c7
                           0000E8   424 _P5_0	=	0x00e8
                           0000E9   425 _P5_1	=	0x00e9
                           0000EA   426 _P5_2	=	0x00ea
                           0000EB   427 _P5_3	=	0x00eb
                           0000EC   428 _P5_4	=	0x00ec
                           0000ED   429 _P5_5	=	0x00ed
                           0000EE   430 _P5_6	=	0x00ee
                           0000EF   431 _P5_7	=	0x00ef
                                    432 ;--------------------------------------------------------
                                    433 ; overlayable register banks
                                    434 ;--------------------------------------------------------
                                    435 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        436 	.ds 8
                                    437 ;--------------------------------------------------------
                                    438 ; internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area DSEG    (DATA)
                                    441 ;--------------------------------------------------------
                                    442 ; overlayable items in internal ram 
                                    443 ;--------------------------------------------------------
                                    444 ;--------------------------------------------------------
                                    445 ; Stack segment in internal ram 
                                    446 ;--------------------------------------------------------
                                    447 	.area	SSEG
      000019                        448 __start__stack:
      000019                        449 	.ds	1
                                    450 
                                    451 ;--------------------------------------------------------
                                    452 ; indirectly addressable internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area ISEG    (DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; absolute internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area IABS    (ABS,DATA)
                                    459 	.area IABS    (ABS,DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; bit data
                                    462 ;--------------------------------------------------------
                                    463 	.area BSEG    (BIT)
                                    464 ;--------------------------------------------------------
                                    465 ; paged external ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area PSEG    (PAG,XDATA)
                                    468 ;--------------------------------------------------------
                                    469 ; external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area XSEG    (XDATA)
                           00F000   472 _lcdGeneral	=	0xf000
                           00F200   473 _busyPoll	=	0xf200
                           00F100   474 _writeCharacter	=	0xf100
      000025                        475 _partSec::
      000025                        476 	.ds 1
      000026                        477 _sec::
      000026                        478 	.ds 1
      000027                        479 _min::
      000027                        480 	.ds 1
      000028                        481 _hour::
      000028                        482 	.ds 1
      000029                        483 _x2::
      000029                        484 	.ds 1
      00002A                        485 _check::
      00002A                        486 	.ds 1
      00002B                        487 _main_input_65537_42:
      00002B                        488 	.ds 60
                                    489 ;--------------------------------------------------------
                                    490 ; absolute external ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XABS    (ABS,XDATA)
                                    493 ;--------------------------------------------------------
                                    494 ; external initialized ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area XISEG   (XDATA)
                                    497 	.area HOME    (CODE)
                                    498 	.area GSINIT0 (CODE)
                                    499 	.area GSINIT1 (CODE)
                                    500 	.area GSINIT2 (CODE)
                                    501 	.area GSINIT3 (CODE)
                                    502 	.area GSINIT4 (CODE)
                                    503 	.area GSINIT5 (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 	.area GSFINAL (CODE)
                                    506 	.area CSEG    (CODE)
                                    507 ;--------------------------------------------------------
                                    508 ; interrupt vector 
                                    509 ;--------------------------------------------------------
                                    510 	.area HOME    (CODE)
      002000                        511 __interrupt_vect:
      002000 02 20 11         [24]  512 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  513 	reti
      002004                        514 	.ds	7
      00200B 02 2D 41         [24]  515 	ljmp	_timer0_isr
                                    516 ;--------------------------------------------------------
                                    517 ; global & static initialisations
                                    518 ;--------------------------------------------------------
                                    519 	.area HOME    (CODE)
                                    520 	.area GSINIT  (CODE)
                                    521 	.area GSFINAL (CODE)
                                    522 	.area GSINIT  (CODE)
                                    523 	.globl __sdcc_gsinit_startup
                                    524 	.globl __sdcc_program_startup
                                    525 	.globl __start__stack
                                    526 	.globl __mcs51_genXINIT
                                    527 	.globl __mcs51_genXRAMCLEAR
                                    528 	.globl __mcs51_genRAMCLEAR
                                    529 	.area GSFINAL (CODE)
      00206A 02 20 0E         [24]  530 	ljmp	__sdcc_program_startup
                                    531 ;--------------------------------------------------------
                                    532 ; Home
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
                                    535 	.area HOME    (CODE)
      00200E                        536 __sdcc_program_startup:
      00200E 02 2C F4         [24]  537 	ljmp	_main
                                    538 ;	return from main will return to caller
                                    539 ;--------------------------------------------------------
                                    540 ; code
                                    541 ;--------------------------------------------------------
                                    542 	.area CSEG    (CODE)
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'main'
                                    545 ;------------------------------------------------------------
                                    546 ;input                     Allocated with name '_main_input_65537_42'
                                    547 ;------------------------------------------------------------
                                    548 ;	main.c:12: void main()
                                    549 ;	-----------------------------------------
                                    550 ;	 function main
                                    551 ;	-----------------------------------------
      002CF4                        552 _main:
                           000007   553 	ar7 = 0x07
                           000006   554 	ar6 = 0x06
                           000005   555 	ar5 = 0x05
                           000004   556 	ar4 = 0x04
                           000003   557 	ar3 = 0x03
                           000002   558 	ar2 = 0x02
                           000001   559 	ar1 = 0x01
                           000000   560 	ar0 = 0x00
                                    561 ;	main.c:14: check = 0;
      002CF4 90 00 2A         [24]  562 	mov	dptr,#_check
      002CF7 E4               [12]  563 	clr	a
      002CF8 F0               [24]  564 	movx	@dptr,a
                                    565 ;	main.c:15: partSec = 0;
      002CF9 90 00 25         [24]  566 	mov	dptr,#_partSec
      002CFC F0               [24]  567 	movx	@dptr,a
                                    568 ;	main.c:16: sec = 0;
      002CFD 90 00 26         [24]  569 	mov	dptr,#_sec
      002D00 F0               [24]  570 	movx	@dptr,a
                                    571 ;	main.c:17: min = 0;
      002D01 90 00 27         [24]  572 	mov	dptr,#_min
      002D04 F0               [24]  573 	movx	@dptr,a
                                    574 ;	main.c:18: hour = 0;
      002D05 90 00 28         [24]  575 	mov	dptr,#_hour
      002D08 F0               [24]  576 	movx	@dptr,a
                                    577 ;	main.c:19: x2 = 0;
      002D09 90 00 29         [24]  578 	mov	dptr,#_x2
      002D0C F0               [24]  579 	movx	@dptr,a
                                    580 ;	main.c:21: memset(input, '\0',60 * sizeof(char));
      002D0D 90 00 67         [24]  581 	mov	dptr,#_memset_PARM_2
      002D10 F0               [24]  582 	movx	@dptr,a
      002D11 90 00 68         [24]  583 	mov	dptr,#_memset_PARM_3
      002D14 74 3C            [12]  584 	mov	a,#0x3c
      002D16 F0               [24]  585 	movx	@dptr,a
      002D17 E4               [12]  586 	clr	a
      002D18 A3               [24]  587 	inc	dptr
      002D19 F0               [24]  588 	movx	@dptr,a
      002D1A 90 00 2B         [24]  589 	mov	dptr,#_main_input_65537_42
      002D1D 75 F0 00         [24]  590 	mov	b,#0x00
      002D20 12 2E 71         [24]  591 	lcall	_memset
                                    592 ;	main.c:22: lcdInit();
      002D23 12 20 97         [24]  593 	lcall	_lcdInit
                                    594 ;	main.c:23: lcdClear();
      002D26 12 21 0D         [24]  595 	lcall	_lcdClear
                                    596 ;	main.c:25: gamePacman();
      002D29 12 28 D1         [24]  597 	lcall	_gamePacman
                                    598 ;	main.c:29: timerInit();
      002D2C 12 20 7B         [24]  599 	lcall	_timerInit
                                    600 ;	main.c:30: while(1)
      002D2F                        601 00105$:
                                    602 ;	main.c:32: if(check == 1)
      002D2F 90 00 2A         [24]  603 	mov	dptr,#_check
      002D32 E0               [24]  604 	movx	a,@dptr
      002D33 FF               [12]  605 	mov	r7,a
      002D34 BF 01 F8         [24]  606 	cjne	r7,#0x01,00105$
                                    607 ;	main.c:34: check = 0;
      002D37 90 00 2A         [24]  608 	mov	dptr,#_check
      002D3A E4               [12]  609 	clr	a
      002D3B F0               [24]  610 	movx	@dptr,a
                                    611 ;	main.c:35: printTimeStamp();
      002D3C 12 2D BF         [24]  612 	lcall	_printTimeStamp
                                    613 ;	main.c:38: continue;
                                    614 ;	main.c:40: }
      002D3F 80 EE            [24]  615 	sjmp	00105$
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function 'timer0_isr'
                                    618 ;------------------------------------------------------------
                                    619 ;	main.c:42: void timer0_isr() __interrupt (1)
                                    620 ;	-----------------------------------------
                                    621 ;	 function timer0_isr
                                    622 ;	-----------------------------------------
      002D41                        623 _timer0_isr:
      002D41 C0 E0            [24]  624 	push	acc
      002D43 C0 82            [24]  625 	push	dpl
      002D45 C0 83            [24]  626 	push	dph
      002D47 C0 07            [24]  627 	push	ar7
      002D49 C0 D0            [24]  628 	push	psw
      002D4B 75 D0 00         [24]  629 	mov	psw,#0x00
                                    630 ;	main.c:44: TH0 = 0x4B;
      002D4E 75 8C 4B         [24]  631 	mov	_TH0,#0x4b
                                    632 ;	main.c:45: TL0 = 0xFC;
      002D51 75 8A FC         [24]  633 	mov	_TL0,#0xfc
                                    634 ;	main.c:46: x2++;
      002D54 90 00 29         [24]  635 	mov	dptr,#_x2
      002D57 E0               [24]  636 	movx	a,@dptr
      002D58 24 01            [12]  637 	add	a,#0x01
      002D5A F0               [24]  638 	movx	@dptr,a
                                    639 ;	main.c:47: if(x2 == 2)
      002D5B E0               [24]  640 	movx	a,@dptr
      002D5C FF               [12]  641 	mov	r7,a
      002D5D BF 02 54         [24]  642 	cjne	r7,#0x02,00111$
                                    643 ;	main.c:49: if(partSec > 9)
      002D60 90 00 25         [24]  644 	mov	dptr,#_partSec
      002D63 E0               [24]  645 	movx	a,@dptr
      002D64 FF               [12]  646 	mov  r7,a
      002D65 24 F6            [12]  647 	add	a,#0xff - 0x09
      002D67 50 3A            [24]  648 	jnc	00108$
                                    649 ;	main.c:51: sec++;
      002D69 90 00 26         [24]  650 	mov	dptr,#_sec
      002D6C E0               [24]  651 	movx	a,@dptr
      002D6D 24 01            [12]  652 	add	a,#0x01
      002D6F F0               [24]  653 	movx	@dptr,a
                                    654 ;	main.c:52: if( sec > 59)
      002D70 E0               [24]  655 	movx	a,@dptr
      002D71 FF               [12]  656 	mov  r7,a
      002D72 24 C4            [12]  657 	add	a,#0xff - 0x3b
      002D74 50 28            [24]  658 	jnc	00106$
                                    659 ;	main.c:54: min++;
      002D76 90 00 27         [24]  660 	mov	dptr,#_min
      002D79 E0               [24]  661 	movx	a,@dptr
      002D7A 24 01            [12]  662 	add	a,#0x01
      002D7C F0               [24]  663 	movx	@dptr,a
                                    664 ;	main.c:55: if( min == 59)
      002D7D E0               [24]  665 	movx	a,@dptr
      002D7E FF               [12]  666 	mov	r7,a
      002D7F BF 3B 17         [24]  667 	cjne	r7,#0x3b,00104$
                                    668 ;	main.c:57: hour++;
      002D82 90 00 28         [24]  669 	mov	dptr,#_hour
      002D85 E0               [24]  670 	movx	a,@dptr
      002D86 24 01            [12]  671 	add	a,#0x01
      002D88 F0               [24]  672 	movx	@dptr,a
                                    673 ;	main.c:58: if(hour > 23)
      002D89 E0               [24]  674 	movx	a,@dptr
      002D8A FF               [12]  675 	mov  r7,a
      002D8B 24 E8            [12]  676 	add	a,#0xff - 0x17
      002D8D 50 05            [24]  677 	jnc	00102$
                                    678 ;	main.c:60: hour = 0;
      002D8F 90 00 28         [24]  679 	mov	dptr,#_hour
      002D92 E4               [12]  680 	clr	a
      002D93 F0               [24]  681 	movx	@dptr,a
      002D94                        682 00102$:
                                    683 ;	main.c:62: min = 0;
      002D94 90 00 27         [24]  684 	mov	dptr,#_min
      002D97 E4               [12]  685 	clr	a
      002D98 F0               [24]  686 	movx	@dptr,a
      002D99                        687 00104$:
                                    688 ;	main.c:64: sec = 0;
      002D99 90 00 26         [24]  689 	mov	dptr,#_sec
      002D9C E4               [12]  690 	clr	a
      002D9D F0               [24]  691 	movx	@dptr,a
      002D9E                        692 00106$:
                                    693 ;	main.c:66: partSec = 0;
      002D9E 90 00 25         [24]  694 	mov	dptr,#_partSec
      002DA1 E4               [12]  695 	clr	a
      002DA2 F0               [24]  696 	movx	@dptr,a
      002DA3                        697 00108$:
                                    698 ;	main.c:68: partSec++;
      002DA3 90 00 25         [24]  699 	mov	dptr,#_partSec
      002DA6 E0               [24]  700 	movx	a,@dptr
      002DA7 24 01            [12]  701 	add	a,#0x01
      002DA9 F0               [24]  702 	movx	@dptr,a
                                    703 ;	main.c:69: x2 = 0;
      002DAA 90 00 29         [24]  704 	mov	dptr,#_x2
      002DAD E4               [12]  705 	clr	a
      002DAE F0               [24]  706 	movx	@dptr,a
                                    707 ;	main.c:70: check = 1;
      002DAF 90 00 2A         [24]  708 	mov	dptr,#_check
      002DB2 04               [12]  709 	inc	a
      002DB3 F0               [24]  710 	movx	@dptr,a
      002DB4                        711 00111$:
                                    712 ;	main.c:72: }
      002DB4 D0 D0            [24]  713 	pop	psw
      002DB6 D0 07            [24]  714 	pop	ar7
      002DB8 D0 83            [24]  715 	pop	dph
      002DBA D0 82            [24]  716 	pop	dpl
      002DBC D0 E0            [24]  717 	pop	acc
      002DBE 32               [24]  718 	reti
                                    719 ;	eliminated unneeded push/pop b
                                    720 ;------------------------------------------------------------
                                    721 ;Allocation info for local variables in function 'printTimeStamp'
                                    722 ;------------------------------------------------------------
                                    723 ;	main.c:73: void printTimeStamp()
                                    724 ;	-----------------------------------------
                                    725 ;	 function printTimeStamp
                                    726 ;	-----------------------------------------
      002DBF                        727 _printTimeStamp:
                                    728 ;	main.c:75: goToAddr(0x57);
      002DBF 75 82 57         [24]  729 	mov	dpl,#0x57
      002DC2 12 21 1A         [24]  730 	lcall	_goToAddr
                                    731 ;	main.c:76: lcdPutCh(hour + '0');
      002DC5 90 00 28         [24]  732 	mov	dptr,#_hour
      002DC8 E0               [24]  733 	movx	a,@dptr
      002DC9 24 30            [12]  734 	add	a,#0x30
      002DCB F5 82            [12]  735 	mov	dpl,a
      002DCD 12 20 F8         [24]  736 	lcall	_lcdPutCh
                                    737 ;	main.c:77: lcdPutCh(':');
      002DD0 75 82 3A         [24]  738 	mov	dpl,#0x3a
      002DD3 12 20 F8         [24]  739 	lcall	_lcdPutCh
                                    740 ;	main.c:78: lcdPutCh(min / 10 + '0');
      002DD6 90 00 27         [24]  741 	mov	dptr,#_min
      002DD9 E0               [24]  742 	movx	a,@dptr
      002DDA FF               [12]  743 	mov	r7,a
      002DDB 7E 00            [12]  744 	mov	r6,#0x00
      002DDD 90 00 74         [24]  745 	mov	dptr,#__divsint_PARM_2
      002DE0 74 0A            [12]  746 	mov	a,#0x0a
      002DE2 F0               [24]  747 	movx	@dptr,a
      002DE3 E4               [12]  748 	clr	a
      002DE4 A3               [24]  749 	inc	dptr
      002DE5 F0               [24]  750 	movx	@dptr,a
      002DE6 8F 82            [24]  751 	mov	dpl,r7
      002DE8 8E 83            [24]  752 	mov	dph,r6
      002DEA 12 30 D1         [24]  753 	lcall	__divsint
      002DED AE 82            [24]  754 	mov	r6,dpl
      002DEF 74 30            [12]  755 	mov	a,#0x30
      002DF1 2E               [12]  756 	add	a,r6
      002DF2 F5 82            [12]  757 	mov	dpl,a
      002DF4 12 20 F8         [24]  758 	lcall	_lcdPutCh
                                    759 ;	main.c:79: lcdPutCh(min % 10 + '0');
      002DF7 90 00 27         [24]  760 	mov	dptr,#_min
      002DFA E0               [24]  761 	movx	a,@dptr
      002DFB FF               [12]  762 	mov	r7,a
      002DFC 7E 00            [12]  763 	mov	r6,#0x00
      002DFE 90 00 6B         [24]  764 	mov	dptr,#__modsint_PARM_2
      002E01 74 0A            [12]  765 	mov	a,#0x0a
      002E03 F0               [24]  766 	movx	@dptr,a
      002E04 E4               [12]  767 	clr	a
      002E05 A3               [24]  768 	inc	dptr
      002E06 F0               [24]  769 	movx	@dptr,a
      002E07 8F 82            [24]  770 	mov	dpl,r7
      002E09 8E 83            [24]  771 	mov	dph,r6
      002E0B 12 2F BD         [24]  772 	lcall	__modsint
      002E0E AE 82            [24]  773 	mov	r6,dpl
      002E10 74 30            [12]  774 	mov	a,#0x30
      002E12 2E               [12]  775 	add	a,r6
      002E13 F5 82            [12]  776 	mov	dpl,a
      002E15 12 20 F8         [24]  777 	lcall	_lcdPutCh
                                    778 ;	main.c:80: lcdPutCh(':');
      002E18 75 82 3A         [24]  779 	mov	dpl,#0x3a
      002E1B 12 20 F8         [24]  780 	lcall	_lcdPutCh
                                    781 ;	main.c:81: lcdPutCh(sec / 10 + '0');
      002E1E 90 00 26         [24]  782 	mov	dptr,#_sec
      002E21 E0               [24]  783 	movx	a,@dptr
      002E22 FF               [12]  784 	mov	r7,a
      002E23 7E 00            [12]  785 	mov	r6,#0x00
      002E25 90 00 74         [24]  786 	mov	dptr,#__divsint_PARM_2
      002E28 74 0A            [12]  787 	mov	a,#0x0a
      002E2A F0               [24]  788 	movx	@dptr,a
      002E2B E4               [12]  789 	clr	a
      002E2C A3               [24]  790 	inc	dptr
      002E2D F0               [24]  791 	movx	@dptr,a
      002E2E 8F 82            [24]  792 	mov	dpl,r7
      002E30 8E 83            [24]  793 	mov	dph,r6
      002E32 12 30 D1         [24]  794 	lcall	__divsint
      002E35 AE 82            [24]  795 	mov	r6,dpl
      002E37 74 30            [12]  796 	mov	a,#0x30
      002E39 2E               [12]  797 	add	a,r6
      002E3A F5 82            [12]  798 	mov	dpl,a
      002E3C 12 20 F8         [24]  799 	lcall	_lcdPutCh
                                    800 ;	main.c:82: lcdPutCh(sec % 10 + '0');
      002E3F 90 00 26         [24]  801 	mov	dptr,#_sec
      002E42 E0               [24]  802 	movx	a,@dptr
      002E43 FF               [12]  803 	mov	r7,a
      002E44 7E 00            [12]  804 	mov	r6,#0x00
      002E46 90 00 6B         [24]  805 	mov	dptr,#__modsint_PARM_2
      002E49 74 0A            [12]  806 	mov	a,#0x0a
      002E4B F0               [24]  807 	movx	@dptr,a
      002E4C E4               [12]  808 	clr	a
      002E4D A3               [24]  809 	inc	dptr
      002E4E F0               [24]  810 	movx	@dptr,a
      002E4F 8F 82            [24]  811 	mov	dpl,r7
      002E51 8E 83            [24]  812 	mov	dph,r6
      002E53 12 2F BD         [24]  813 	lcall	__modsint
      002E56 AE 82            [24]  814 	mov	r6,dpl
      002E58 74 30            [12]  815 	mov	a,#0x30
      002E5A 2E               [12]  816 	add	a,r6
      002E5B F5 82            [12]  817 	mov	dpl,a
      002E5D 12 20 F8         [24]  818 	lcall	_lcdPutCh
                                    819 ;	main.c:83: lcdPutCh('.');
      002E60 75 82 2E         [24]  820 	mov	dpl,#0x2e
      002E63 12 20 F8         [24]  821 	lcall	_lcdPutCh
                                    822 ;	main.c:84: lcdPutCh(partSec + '0');
      002E66 90 00 25         [24]  823 	mov	dptr,#_partSec
      002E69 E0               [24]  824 	movx	a,@dptr
      002E6A 24 30            [12]  825 	add	a,#0x30
      002E6C F5 82            [12]  826 	mov	dpl,a
                                    827 ;	main.c:85: }
      002E6E 02 20 F8         [24]  828 	ljmp	_lcdPutCh
                                    829 	.area CSEG    (CODE)
                                    830 	.area CONST   (CODE)
                                    831 	.area XINIT   (CODE)
                                    832 	.area CABS    (ABS,CODE)
