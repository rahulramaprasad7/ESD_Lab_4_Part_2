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
                                     13 	.globl _readLCD
                                     14 	.globl _timerInit
                                     15 	.globl _goToAddr
                                     16 	.globl _lcdClear
                                     17 	.globl _lcdPutCh
                                     18 	.globl _busyWait
                                     19 	.globl _lcdInit
                                     20 	.globl _memset
                                     21 	.globl _P5_7
                                     22 	.globl _P5_6
                                     23 	.globl _P5_5
                                     24 	.globl _P5_4
                                     25 	.globl _P5_3
                                     26 	.globl _P5_2
                                     27 	.globl _P5_1
                                     28 	.globl _P5_0
                                     29 	.globl _P4_7
                                     30 	.globl _P4_6
                                     31 	.globl _P4_5
                                     32 	.globl _P4_4
                                     33 	.globl _P4_3
                                     34 	.globl _P4_2
                                     35 	.globl _P4_1
                                     36 	.globl _P4_0
                                     37 	.globl _PX0L
                                     38 	.globl _PT0L
                                     39 	.globl _PX1L
                                     40 	.globl _PT1L
                                     41 	.globl _PSL
                                     42 	.globl _PT2L
                                     43 	.globl _PPCL
                                     44 	.globl _EC
                                     45 	.globl _CCF0
                                     46 	.globl _CCF1
                                     47 	.globl _CCF2
                                     48 	.globl _CCF3
                                     49 	.globl _CCF4
                                     50 	.globl _CR
                                     51 	.globl _CF
                                     52 	.globl _TF2
                                     53 	.globl _EXF2
                                     54 	.globl _RCLK
                                     55 	.globl _TCLK
                                     56 	.globl _EXEN2
                                     57 	.globl _TR2
                                     58 	.globl _C_T2
                                     59 	.globl _CP_RL2
                                     60 	.globl _T2CON_7
                                     61 	.globl _T2CON_6
                                     62 	.globl _T2CON_5
                                     63 	.globl _T2CON_4
                                     64 	.globl _T2CON_3
                                     65 	.globl _T2CON_2
                                     66 	.globl _T2CON_1
                                     67 	.globl _T2CON_0
                                     68 	.globl _PT2
                                     69 	.globl _ET2
                                     70 	.globl _CY
                                     71 	.globl _AC
                                     72 	.globl _F0
                                     73 	.globl _RS1
                                     74 	.globl _RS0
                                     75 	.globl _OV
                                     76 	.globl _F1
                                     77 	.globl _P
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _RD
                                     84 	.globl _WR
                                     85 	.globl _T1
                                     86 	.globl _T0
                                     87 	.globl _INT1
                                     88 	.globl _INT0
                                     89 	.globl _TXD
                                     90 	.globl _RXD
                                     91 	.globl _P3_7
                                     92 	.globl _P3_6
                                     93 	.globl _P3_5
                                     94 	.globl _P3_4
                                     95 	.globl _P3_3
                                     96 	.globl _P3_2
                                     97 	.globl _P3_1
                                     98 	.globl _P3_0
                                     99 	.globl _EA
                                    100 	.globl _ES
                                    101 	.globl _ET1
                                    102 	.globl _EX1
                                    103 	.globl _ET0
                                    104 	.globl _EX0
                                    105 	.globl _P2_7
                                    106 	.globl _P2_6
                                    107 	.globl _P2_5
                                    108 	.globl _P2_4
                                    109 	.globl _P2_3
                                    110 	.globl _P2_2
                                    111 	.globl _P2_1
                                    112 	.globl _P2_0
                                    113 	.globl _SM0
                                    114 	.globl _SM1
                                    115 	.globl _SM2
                                    116 	.globl _REN
                                    117 	.globl _TB8
                                    118 	.globl _RB8
                                    119 	.globl _TI
                                    120 	.globl _RI
                                    121 	.globl _P1_7
                                    122 	.globl _P1_6
                                    123 	.globl _P1_5
                                    124 	.globl _P1_4
                                    125 	.globl _P1_3
                                    126 	.globl _P1_2
                                    127 	.globl _P1_1
                                    128 	.globl _P1_0
                                    129 	.globl _TF1
                                    130 	.globl _TR1
                                    131 	.globl _TF0
                                    132 	.globl _TR0
                                    133 	.globl _IE1
                                    134 	.globl _IT1
                                    135 	.globl _IE0
                                    136 	.globl _IT0
                                    137 	.globl _P0_7
                                    138 	.globl _P0_6
                                    139 	.globl _P0_5
                                    140 	.globl _P0_4
                                    141 	.globl _P0_3
                                    142 	.globl _P0_2
                                    143 	.globl _P0_1
                                    144 	.globl _P0_0
                                    145 	.globl _EECON
                                    146 	.globl _KBF
                                    147 	.globl _KBE
                                    148 	.globl _KBLS
                                    149 	.globl _BRL
                                    150 	.globl _BDRCON
                                    151 	.globl _T2MOD
                                    152 	.globl _SPDAT
                                    153 	.globl _SPSTA
                                    154 	.globl _SPCON
                                    155 	.globl _SADEN
                                    156 	.globl _SADDR
                                    157 	.globl _WDTPRG
                                    158 	.globl _WDTRST
                                    159 	.globl _P5
                                    160 	.globl _P4
                                    161 	.globl _IPH1
                                    162 	.globl _IPL1
                                    163 	.globl _IPH0
                                    164 	.globl _IPL0
                                    165 	.globl _IEN1
                                    166 	.globl _IEN0
                                    167 	.globl _CMOD
                                    168 	.globl _CL
                                    169 	.globl _CH
                                    170 	.globl _CCON
                                    171 	.globl _CCAPM4
                                    172 	.globl _CCAPM3
                                    173 	.globl _CCAPM2
                                    174 	.globl _CCAPM1
                                    175 	.globl _CCAPM0
                                    176 	.globl _CCAP4L
                                    177 	.globl _CCAP3L
                                    178 	.globl _CCAP2L
                                    179 	.globl _CCAP1L
                                    180 	.globl _CCAP0L
                                    181 	.globl _CCAP4H
                                    182 	.globl _CCAP3H
                                    183 	.globl _CCAP2H
                                    184 	.globl _CCAP1H
                                    185 	.globl _CCAP0H
                                    186 	.globl _CKCON1
                                    187 	.globl _CKCON0
                                    188 	.globl _CKRL
                                    189 	.globl _AUXR1
                                    190 	.globl _AUXR
                                    191 	.globl _TH2
                                    192 	.globl _TL2
                                    193 	.globl _RCAP2H
                                    194 	.globl _RCAP2L
                                    195 	.globl _T2CON
                                    196 	.globl _B
                                    197 	.globl _ACC
                                    198 	.globl _PSW
                                    199 	.globl _IP
                                    200 	.globl _P3
                                    201 	.globl _IE
                                    202 	.globl _P2
                                    203 	.globl _SBUF
                                    204 	.globl _SCON
                                    205 	.globl _P1
                                    206 	.globl _TH1
                                    207 	.globl _TH0
                                    208 	.globl _TL1
                                    209 	.globl _TL0
                                    210 	.globl _TMOD
                                    211 	.globl _TCON
                                    212 	.globl _PCON
                                    213 	.globl _DPH
                                    214 	.globl _DPL
                                    215 	.globl _SP
                                    216 	.globl _P0
                                    217 	.globl _check
                                    218 	.globl _x2
                                    219 	.globl _hour
                                    220 	.globl _min
                                    221 	.globl _sec
                                    222 	.globl _partSec
                                    223 	.globl _readCharacter
                                    224 	.globl _writeCharacter
                                    225 	.globl _busyPoll
                                    226 	.globl _lcdGeneral
                                    227 	.globl _printTimeStamp
                                    228 ;--------------------------------------------------------
                                    229 ; special function registers
                                    230 ;--------------------------------------------------------
                                    231 	.area RSEG    (ABS,DATA)
      000000                        232 	.org 0x0000
                           000080   233 _P0	=	0x0080
                           000081   234 _SP	=	0x0081
                           000082   235 _DPL	=	0x0082
                           000083   236 _DPH	=	0x0083
                           000087   237 _PCON	=	0x0087
                           000088   238 _TCON	=	0x0088
                           000089   239 _TMOD	=	0x0089
                           00008A   240 _TL0	=	0x008a
                           00008B   241 _TL1	=	0x008b
                           00008C   242 _TH0	=	0x008c
                           00008D   243 _TH1	=	0x008d
                           000090   244 _P1	=	0x0090
                           000098   245 _SCON	=	0x0098
                           000099   246 _SBUF	=	0x0099
                           0000A0   247 _P2	=	0x00a0
                           0000A8   248 _IE	=	0x00a8
                           0000B0   249 _P3	=	0x00b0
                           0000B8   250 _IP	=	0x00b8
                           0000D0   251 _PSW	=	0x00d0
                           0000E0   252 _ACC	=	0x00e0
                           0000F0   253 _B	=	0x00f0
                           0000C8   254 _T2CON	=	0x00c8
                           0000CA   255 _RCAP2L	=	0x00ca
                           0000CB   256 _RCAP2H	=	0x00cb
                           0000CC   257 _TL2	=	0x00cc
                           0000CD   258 _TH2	=	0x00cd
                           00008E   259 _AUXR	=	0x008e
                           0000A2   260 _AUXR1	=	0x00a2
                           000097   261 _CKRL	=	0x0097
                           00008F   262 _CKCON0	=	0x008f
                           0000AF   263 _CKCON1	=	0x00af
                           0000FA   264 _CCAP0H	=	0x00fa
                           0000FB   265 _CCAP1H	=	0x00fb
                           0000FC   266 _CCAP2H	=	0x00fc
                           0000FD   267 _CCAP3H	=	0x00fd
                           0000FE   268 _CCAP4H	=	0x00fe
                           0000EA   269 _CCAP0L	=	0x00ea
                           0000EB   270 _CCAP1L	=	0x00eb
                           0000EC   271 _CCAP2L	=	0x00ec
                           0000ED   272 _CCAP3L	=	0x00ed
                           0000EE   273 _CCAP4L	=	0x00ee
                           0000DA   274 _CCAPM0	=	0x00da
                           0000DB   275 _CCAPM1	=	0x00db
                           0000DC   276 _CCAPM2	=	0x00dc
                           0000DD   277 _CCAPM3	=	0x00dd
                           0000DE   278 _CCAPM4	=	0x00de
                           0000D8   279 _CCON	=	0x00d8
                           0000F9   280 _CH	=	0x00f9
                           0000E9   281 _CL	=	0x00e9
                           0000D9   282 _CMOD	=	0x00d9
                           0000A8   283 _IEN0	=	0x00a8
                           0000B1   284 _IEN1	=	0x00b1
                           0000B8   285 _IPL0	=	0x00b8
                           0000B7   286 _IPH0	=	0x00b7
                           0000B2   287 _IPL1	=	0x00b2
                           0000B3   288 _IPH1	=	0x00b3
                           0000C0   289 _P4	=	0x00c0
                           0000E8   290 _P5	=	0x00e8
                           0000A6   291 _WDTRST	=	0x00a6
                           0000A7   292 _WDTPRG	=	0x00a7
                           0000A9   293 _SADDR	=	0x00a9
                           0000B9   294 _SADEN	=	0x00b9
                           0000C3   295 _SPCON	=	0x00c3
                           0000C4   296 _SPSTA	=	0x00c4
                           0000C5   297 _SPDAT	=	0x00c5
                           0000C9   298 _T2MOD	=	0x00c9
                           00009B   299 _BDRCON	=	0x009b
                           00009A   300 _BRL	=	0x009a
                           00009C   301 _KBLS	=	0x009c
                           00009D   302 _KBE	=	0x009d
                           00009E   303 _KBF	=	0x009e
                           0000D2   304 _EECON	=	0x00d2
                                    305 ;--------------------------------------------------------
                                    306 ; special function bits
                                    307 ;--------------------------------------------------------
                                    308 	.area RSEG    (ABS,DATA)
      000000                        309 	.org 0x0000
                           000080   310 _P0_0	=	0x0080
                           000081   311 _P0_1	=	0x0081
                           000082   312 _P0_2	=	0x0082
                           000083   313 _P0_3	=	0x0083
                           000084   314 _P0_4	=	0x0084
                           000085   315 _P0_5	=	0x0085
                           000086   316 _P0_6	=	0x0086
                           000087   317 _P0_7	=	0x0087
                           000088   318 _IT0	=	0x0088
                           000089   319 _IE0	=	0x0089
                           00008A   320 _IT1	=	0x008a
                           00008B   321 _IE1	=	0x008b
                           00008C   322 _TR0	=	0x008c
                           00008D   323 _TF0	=	0x008d
                           00008E   324 _TR1	=	0x008e
                           00008F   325 _TF1	=	0x008f
                           000090   326 _P1_0	=	0x0090
                           000091   327 _P1_1	=	0x0091
                           000092   328 _P1_2	=	0x0092
                           000093   329 _P1_3	=	0x0093
                           000094   330 _P1_4	=	0x0094
                           000095   331 _P1_5	=	0x0095
                           000096   332 _P1_6	=	0x0096
                           000097   333 _P1_7	=	0x0097
                           000098   334 _RI	=	0x0098
                           000099   335 _TI	=	0x0099
                           00009A   336 _RB8	=	0x009a
                           00009B   337 _TB8	=	0x009b
                           00009C   338 _REN	=	0x009c
                           00009D   339 _SM2	=	0x009d
                           00009E   340 _SM1	=	0x009e
                           00009F   341 _SM0	=	0x009f
                           0000A0   342 _P2_0	=	0x00a0
                           0000A1   343 _P2_1	=	0x00a1
                           0000A2   344 _P2_2	=	0x00a2
                           0000A3   345 _P2_3	=	0x00a3
                           0000A4   346 _P2_4	=	0x00a4
                           0000A5   347 _P2_5	=	0x00a5
                           0000A6   348 _P2_6	=	0x00a6
                           0000A7   349 _P2_7	=	0x00a7
                           0000A8   350 _EX0	=	0x00a8
                           0000A9   351 _ET0	=	0x00a9
                           0000AA   352 _EX1	=	0x00aa
                           0000AB   353 _ET1	=	0x00ab
                           0000AC   354 _ES	=	0x00ac
                           0000AF   355 _EA	=	0x00af
                           0000B0   356 _P3_0	=	0x00b0
                           0000B1   357 _P3_1	=	0x00b1
                           0000B2   358 _P3_2	=	0x00b2
                           0000B3   359 _P3_3	=	0x00b3
                           0000B4   360 _P3_4	=	0x00b4
                           0000B5   361 _P3_5	=	0x00b5
                           0000B6   362 _P3_6	=	0x00b6
                           0000B7   363 _P3_7	=	0x00b7
                           0000B0   364 _RXD	=	0x00b0
                           0000B1   365 _TXD	=	0x00b1
                           0000B2   366 _INT0	=	0x00b2
                           0000B3   367 _INT1	=	0x00b3
                           0000B4   368 _T0	=	0x00b4
                           0000B5   369 _T1	=	0x00b5
                           0000B6   370 _WR	=	0x00b6
                           0000B7   371 _RD	=	0x00b7
                           0000B8   372 _PX0	=	0x00b8
                           0000B9   373 _PT0	=	0x00b9
                           0000BA   374 _PX1	=	0x00ba
                           0000BB   375 _PT1	=	0x00bb
                           0000BC   376 _PS	=	0x00bc
                           0000D0   377 _P	=	0x00d0
                           0000D1   378 _F1	=	0x00d1
                           0000D2   379 _OV	=	0x00d2
                           0000D3   380 _RS0	=	0x00d3
                           0000D4   381 _RS1	=	0x00d4
                           0000D5   382 _F0	=	0x00d5
                           0000D6   383 _AC	=	0x00d6
                           0000D7   384 _CY	=	0x00d7
                           0000AD   385 _ET2	=	0x00ad
                           0000BD   386 _PT2	=	0x00bd
                           0000C8   387 _T2CON_0	=	0x00c8
                           0000C9   388 _T2CON_1	=	0x00c9
                           0000CA   389 _T2CON_2	=	0x00ca
                           0000CB   390 _T2CON_3	=	0x00cb
                           0000CC   391 _T2CON_4	=	0x00cc
                           0000CD   392 _T2CON_5	=	0x00cd
                           0000CE   393 _T2CON_6	=	0x00ce
                           0000CF   394 _T2CON_7	=	0x00cf
                           0000C8   395 _CP_RL2	=	0x00c8
                           0000C9   396 _C_T2	=	0x00c9
                           0000CA   397 _TR2	=	0x00ca
                           0000CB   398 _EXEN2	=	0x00cb
                           0000CC   399 _TCLK	=	0x00cc
                           0000CD   400 _RCLK	=	0x00cd
                           0000CE   401 _EXF2	=	0x00ce
                           0000CF   402 _TF2	=	0x00cf
                           0000DF   403 _CF	=	0x00df
                           0000DE   404 _CR	=	0x00de
                           0000DC   405 _CCF4	=	0x00dc
                           0000DB   406 _CCF3	=	0x00db
                           0000DA   407 _CCF2	=	0x00da
                           0000D9   408 _CCF1	=	0x00d9
                           0000D8   409 _CCF0	=	0x00d8
                           0000AE   410 _EC	=	0x00ae
                           0000BE   411 _PPCL	=	0x00be
                           0000BD   412 _PT2L	=	0x00bd
                           0000BC   413 _PSL	=	0x00bc
                           0000BB   414 _PT1L	=	0x00bb
                           0000BA   415 _PX1L	=	0x00ba
                           0000B9   416 _PT0L	=	0x00b9
                           0000B8   417 _PX0L	=	0x00b8
                           0000C0   418 _P4_0	=	0x00c0
                           0000C1   419 _P4_1	=	0x00c1
                           0000C2   420 _P4_2	=	0x00c2
                           0000C3   421 _P4_3	=	0x00c3
                           0000C4   422 _P4_4	=	0x00c4
                           0000C5   423 _P4_5	=	0x00c5
                           0000C6   424 _P4_6	=	0x00c6
                           0000C7   425 _P4_7	=	0x00c7
                           0000E8   426 _P5_0	=	0x00e8
                           0000E9   427 _P5_1	=	0x00e9
                           0000EA   428 _P5_2	=	0x00ea
                           0000EB   429 _P5_3	=	0x00eb
                           0000EC   430 _P5_4	=	0x00ec
                           0000ED   431 _P5_5	=	0x00ed
                           0000EE   432 _P5_6	=	0x00ee
                           0000EF   433 _P5_7	=	0x00ef
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable register banks
                                    436 ;--------------------------------------------------------
                                    437 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        438 	.ds 8
                                    439 ;--------------------------------------------------------
                                    440 ; internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area DSEG    (DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; overlayable items in internal ram 
                                    445 ;--------------------------------------------------------
                                    446 ;--------------------------------------------------------
                                    447 ; Stack segment in internal ram 
                                    448 ;--------------------------------------------------------
                                    449 	.area	SSEG
      000019                        450 __start__stack:
      000019                        451 	.ds	1
                                    452 
                                    453 ;--------------------------------------------------------
                                    454 ; indirectly addressable internal ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area ISEG    (DATA)
                                    457 ;--------------------------------------------------------
                                    458 ; absolute internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area IABS    (ABS,DATA)
                                    461 	.area IABS    (ABS,DATA)
                                    462 ;--------------------------------------------------------
                                    463 ; bit data
                                    464 ;--------------------------------------------------------
                                    465 	.area BSEG    (BIT)
                                    466 ;--------------------------------------------------------
                                    467 ; paged external ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area PSEG    (PAG,XDATA)
                                    470 ;--------------------------------------------------------
                                    471 ; external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area XSEG    (XDATA)
                           00F000   474 _lcdGeneral	=	0xf000
                           00F200   475 _busyPoll	=	0xf200
                           00F100   476 _writeCharacter	=	0xf100
                           00F300   477 _readCharacter	=	0xf300
      000028                        478 _partSec::
      000028                        479 	.ds 1
      000029                        480 _sec::
      000029                        481 	.ds 1
      00002A                        482 _min::
      00002A                        483 	.ds 1
      00002B                        484 _hour::
      00002B                        485 	.ds 1
      00002C                        486 _x2::
      00002C                        487 	.ds 1
      00002D                        488 _check::
      00002D                        489 	.ds 1
      00002E                        490 _main_input_65537_71:
      00002E                        491 	.ds 60
                                    492 ;--------------------------------------------------------
                                    493 ; absolute external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XABS    (ABS,XDATA)
                                    496 ;--------------------------------------------------------
                                    497 ; external initialized ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XISEG   (XDATA)
                                    500 	.area HOME    (CODE)
                                    501 	.area GSINIT0 (CODE)
                                    502 	.area GSINIT1 (CODE)
                                    503 	.area GSINIT2 (CODE)
                                    504 	.area GSINIT3 (CODE)
                                    505 	.area GSINIT4 (CODE)
                                    506 	.area GSINIT5 (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.area GSFINAL (CODE)
                                    509 	.area CSEG    (CODE)
                                    510 ;--------------------------------------------------------
                                    511 ; interrupt vector 
                                    512 ;--------------------------------------------------------
                                    513 	.area HOME    (CODE)
      002000                        514 __interrupt_vect:
      002000 02 20 11         [24]  515 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  516 	reti
      002004                        517 	.ds	7
      00200B 02 2E 37         [24]  518 	ljmp	_timer0_isr
                                    519 ;--------------------------------------------------------
                                    520 ; global & static initialisations
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.globl __sdcc_gsinit_startup
                                    527 	.globl __sdcc_program_startup
                                    528 	.globl __start__stack
                                    529 	.globl __mcs51_genXINIT
                                    530 	.globl __mcs51_genXRAMCLEAR
                                    531 	.globl __mcs51_genRAMCLEAR
                                    532 	.area GSFINAL (CODE)
      00206A 02 20 0E         [24]  533 	ljmp	__sdcc_program_startup
                                    534 ;--------------------------------------------------------
                                    535 ; Home
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area HOME    (CODE)
      00200E                        539 __sdcc_program_startup:
      00200E 02 2D CF         [24]  540 	ljmp	_main
                                    541 ;	return from main will return to caller
                                    542 ;--------------------------------------------------------
                                    543 ; code
                                    544 ;--------------------------------------------------------
                                    545 	.area CSEG    (CODE)
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'main'
                                    548 ;------------------------------------------------------------
                                    549 ;input                     Allocated with name '_main_input_65537_71'
                                    550 ;y                         Allocated with name '_main_y_65538_72'
                                    551 ;------------------------------------------------------------
                                    552 ;	main.c:12: void main()
                                    553 ;	-----------------------------------------
                                    554 ;	 function main
                                    555 ;	-----------------------------------------
      002DCF                        556 _main:
                           000007   557 	ar7 = 0x07
                           000006   558 	ar6 = 0x06
                           000005   559 	ar5 = 0x05
                           000004   560 	ar4 = 0x04
                           000003   561 	ar3 = 0x03
                           000002   562 	ar2 = 0x02
                           000001   563 	ar1 = 0x01
                           000000   564 	ar0 = 0x00
                                    565 ;	main.c:14: check = 0;
      002DCF 90 00 2D         [24]  566 	mov	dptr,#_check
      002DD2 E4               [12]  567 	clr	a
      002DD3 F0               [24]  568 	movx	@dptr,a
                                    569 ;	main.c:15: partSec = 0;
      002DD4 90 00 28         [24]  570 	mov	dptr,#_partSec
      002DD7 F0               [24]  571 	movx	@dptr,a
                                    572 ;	main.c:16: sec = 0;
      002DD8 90 00 29         [24]  573 	mov	dptr,#_sec
      002DDB F0               [24]  574 	movx	@dptr,a
                                    575 ;	main.c:17: min = 0;
      002DDC 90 00 2A         [24]  576 	mov	dptr,#_min
      002DDF F0               [24]  577 	movx	@dptr,a
                                    578 ;	main.c:18: hour = 0;
      002DE0 90 00 2B         [24]  579 	mov	dptr,#_hour
      002DE3 F0               [24]  580 	movx	@dptr,a
                                    581 ;	main.c:19: x2 = 0;
      002DE4 90 00 2C         [24]  582 	mov	dptr,#_x2
      002DE7 F0               [24]  583 	movx	@dptr,a
                                    584 ;	main.c:21: memset(input, '\0',60 * sizeof(char));
      002DE8 90 00 6A         [24]  585 	mov	dptr,#_memset_PARM_2
      002DEB F0               [24]  586 	movx	@dptr,a
      002DEC 90 00 6B         [24]  587 	mov	dptr,#_memset_PARM_3
      002DEF 74 3C            [12]  588 	mov	a,#0x3c
      002DF1 F0               [24]  589 	movx	@dptr,a
      002DF2 E4               [12]  590 	clr	a
      002DF3 A3               [24]  591 	inc	dptr
      002DF4 F0               [24]  592 	movx	@dptr,a
      002DF5 90 00 2E         [24]  593 	mov	dptr,#_main_input_65537_71
      002DF8 75 F0 00         [24]  594 	mov	b,#0x00
      002DFB 12 2F 67         [24]  595 	lcall	_memset
                                    596 ;	main.c:22: lcdInit();
      002DFE 12 20 97         [24]  597 	lcall	_lcdInit
                                    598 ;	main.c:23: lcdClear();
      002E01 12 21 0D         [24]  599 	lcall	_lcdClear
                                    600 ;	main.c:26: busyWait();
      002E04 12 20 8B         [24]  601 	lcall	_busyWait
                                    602 ;	main.c:27: goToAddr(0x04);
      002E07 75 82 04         [24]  603 	mov	dpl,#0x04
      002E0A 12 21 1A         [24]  604 	lcall	_goToAddr
                                    605 ;	main.c:28: lcdPutCh('a');
      002E0D 75 82 61         [24]  606 	mov	dpl,#0x61
      002E10 12 20 F8         [24]  607 	lcall	_lcdPutCh
                                    608 ;	main.c:29: busyWait();
      002E13 12 20 8B         [24]  609 	lcall	_busyWait
                                    610 ;	main.c:30: goToAddr(0x04);
      002E16 75 82 04         [24]  611 	mov	dpl,#0x04
      002E19 12 21 1A         [24]  612 	lcall	_goToAddr
                                    613 ;	main.c:31: busyWait();
      002E1C 12 20 8B         [24]  614 	lcall	_busyWait
                                    615 ;	main.c:32: uint8_t y = readLCD();
      002E1F 12 24 C8         [24]  616 	lcall	_readLCD
                                    617 ;	main.c:37: timerInit();
      002E22 12 20 7B         [24]  618 	lcall	_timerInit
                                    619 ;	main.c:38: while(1)
      002E25                        620 00105$:
                                    621 ;	main.c:40: if(check == 1)
      002E25 90 00 2D         [24]  622 	mov	dptr,#_check
      002E28 E0               [24]  623 	movx	a,@dptr
      002E29 FF               [12]  624 	mov	r7,a
      002E2A BF 01 F8         [24]  625 	cjne	r7,#0x01,00105$
                                    626 ;	main.c:42: check = 0;
      002E2D 90 00 2D         [24]  627 	mov	dptr,#_check
      002E30 E4               [12]  628 	clr	a
      002E31 F0               [24]  629 	movx	@dptr,a
                                    630 ;	main.c:43: printTimeStamp();
      002E32 12 2E B5         [24]  631 	lcall	_printTimeStamp
                                    632 ;	main.c:46: continue;
                                    633 ;	main.c:48: }
      002E35 80 EE            [24]  634 	sjmp	00105$
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'timer0_isr'
                                    637 ;------------------------------------------------------------
                                    638 ;	main.c:50: void timer0_isr() __interrupt (1)
                                    639 ;	-----------------------------------------
                                    640 ;	 function timer0_isr
                                    641 ;	-----------------------------------------
      002E37                        642 _timer0_isr:
      002E37 C0 E0            [24]  643 	push	acc
      002E39 C0 82            [24]  644 	push	dpl
      002E3B C0 83            [24]  645 	push	dph
      002E3D C0 07            [24]  646 	push	ar7
      002E3F C0 D0            [24]  647 	push	psw
      002E41 75 D0 00         [24]  648 	mov	psw,#0x00
                                    649 ;	main.c:52: TH0 = 0x4B;
      002E44 75 8C 4B         [24]  650 	mov	_TH0,#0x4b
                                    651 ;	main.c:53: TL0 = 0xFC;
      002E47 75 8A FC         [24]  652 	mov	_TL0,#0xfc
                                    653 ;	main.c:54: x2++;
      002E4A 90 00 2C         [24]  654 	mov	dptr,#_x2
      002E4D E0               [24]  655 	movx	a,@dptr
      002E4E 24 01            [12]  656 	add	a,#0x01
      002E50 F0               [24]  657 	movx	@dptr,a
                                    658 ;	main.c:55: if(x2 == 2)
      002E51 E0               [24]  659 	movx	a,@dptr
      002E52 FF               [12]  660 	mov	r7,a
      002E53 BF 02 54         [24]  661 	cjne	r7,#0x02,00111$
                                    662 ;	main.c:57: if(partSec > 9)
      002E56 90 00 28         [24]  663 	mov	dptr,#_partSec
      002E59 E0               [24]  664 	movx	a,@dptr
      002E5A FF               [12]  665 	mov  r7,a
      002E5B 24 F6            [12]  666 	add	a,#0xff - 0x09
      002E5D 50 3A            [24]  667 	jnc	00108$
                                    668 ;	main.c:59: sec++;
      002E5F 90 00 29         [24]  669 	mov	dptr,#_sec
      002E62 E0               [24]  670 	movx	a,@dptr
      002E63 24 01            [12]  671 	add	a,#0x01
      002E65 F0               [24]  672 	movx	@dptr,a
                                    673 ;	main.c:60: if( sec > 59)
      002E66 E0               [24]  674 	movx	a,@dptr
      002E67 FF               [12]  675 	mov  r7,a
      002E68 24 C4            [12]  676 	add	a,#0xff - 0x3b
      002E6A 50 28            [24]  677 	jnc	00106$
                                    678 ;	main.c:62: min++;
      002E6C 90 00 2A         [24]  679 	mov	dptr,#_min
      002E6F E0               [24]  680 	movx	a,@dptr
      002E70 24 01            [12]  681 	add	a,#0x01
      002E72 F0               [24]  682 	movx	@dptr,a
                                    683 ;	main.c:63: if( min == 59)
      002E73 E0               [24]  684 	movx	a,@dptr
      002E74 FF               [12]  685 	mov	r7,a
      002E75 BF 3B 17         [24]  686 	cjne	r7,#0x3b,00104$
                                    687 ;	main.c:65: hour++;
      002E78 90 00 2B         [24]  688 	mov	dptr,#_hour
      002E7B E0               [24]  689 	movx	a,@dptr
      002E7C 24 01            [12]  690 	add	a,#0x01
      002E7E F0               [24]  691 	movx	@dptr,a
                                    692 ;	main.c:66: if(hour > 23)
      002E7F E0               [24]  693 	movx	a,@dptr
      002E80 FF               [12]  694 	mov  r7,a
      002E81 24 E8            [12]  695 	add	a,#0xff - 0x17
      002E83 50 05            [24]  696 	jnc	00102$
                                    697 ;	main.c:68: hour = 0;
      002E85 90 00 2B         [24]  698 	mov	dptr,#_hour
      002E88 E4               [12]  699 	clr	a
      002E89 F0               [24]  700 	movx	@dptr,a
      002E8A                        701 00102$:
                                    702 ;	main.c:70: min = 0;
      002E8A 90 00 2A         [24]  703 	mov	dptr,#_min
      002E8D E4               [12]  704 	clr	a
      002E8E F0               [24]  705 	movx	@dptr,a
      002E8F                        706 00104$:
                                    707 ;	main.c:72: sec = 0;
      002E8F 90 00 29         [24]  708 	mov	dptr,#_sec
      002E92 E4               [12]  709 	clr	a
      002E93 F0               [24]  710 	movx	@dptr,a
      002E94                        711 00106$:
                                    712 ;	main.c:74: partSec = 0;
      002E94 90 00 28         [24]  713 	mov	dptr,#_partSec
      002E97 E4               [12]  714 	clr	a
      002E98 F0               [24]  715 	movx	@dptr,a
      002E99                        716 00108$:
                                    717 ;	main.c:76: partSec++;
      002E99 90 00 28         [24]  718 	mov	dptr,#_partSec
      002E9C E0               [24]  719 	movx	a,@dptr
      002E9D 24 01            [12]  720 	add	a,#0x01
      002E9F F0               [24]  721 	movx	@dptr,a
                                    722 ;	main.c:77: x2 = 0;
      002EA0 90 00 2C         [24]  723 	mov	dptr,#_x2
      002EA3 E4               [12]  724 	clr	a
      002EA4 F0               [24]  725 	movx	@dptr,a
                                    726 ;	main.c:78: check = 1;
      002EA5 90 00 2D         [24]  727 	mov	dptr,#_check
      002EA8 04               [12]  728 	inc	a
      002EA9 F0               [24]  729 	movx	@dptr,a
      002EAA                        730 00111$:
                                    731 ;	main.c:80: }
      002EAA D0 D0            [24]  732 	pop	psw
      002EAC D0 07            [24]  733 	pop	ar7
      002EAE D0 83            [24]  734 	pop	dph
      002EB0 D0 82            [24]  735 	pop	dpl
      002EB2 D0 E0            [24]  736 	pop	acc
      002EB4 32               [24]  737 	reti
                                    738 ;	eliminated unneeded push/pop b
                                    739 ;------------------------------------------------------------
                                    740 ;Allocation info for local variables in function 'printTimeStamp'
                                    741 ;------------------------------------------------------------
                                    742 ;	main.c:81: void printTimeStamp()
                                    743 ;	-----------------------------------------
                                    744 ;	 function printTimeStamp
                                    745 ;	-----------------------------------------
      002EB5                        746 _printTimeStamp:
                                    747 ;	main.c:83: goToAddr(0x57);
      002EB5 75 82 57         [24]  748 	mov	dpl,#0x57
      002EB8 12 21 1A         [24]  749 	lcall	_goToAddr
                                    750 ;	main.c:84: lcdPutCh(hour + '0');
      002EBB 90 00 2B         [24]  751 	mov	dptr,#_hour
      002EBE E0               [24]  752 	movx	a,@dptr
      002EBF 24 30            [12]  753 	add	a,#0x30
      002EC1 F5 82            [12]  754 	mov	dpl,a
      002EC3 12 20 F8         [24]  755 	lcall	_lcdPutCh
                                    756 ;	main.c:85: lcdPutCh(':');
      002EC6 75 82 3A         [24]  757 	mov	dpl,#0x3a
      002EC9 12 20 F8         [24]  758 	lcall	_lcdPutCh
                                    759 ;	main.c:86: lcdPutCh(min / 10 + '0');
      002ECC 90 00 2A         [24]  760 	mov	dptr,#_min
      002ECF E0               [24]  761 	movx	a,@dptr
      002ED0 FF               [12]  762 	mov	r7,a
      002ED1 7E 00            [12]  763 	mov	r6,#0x00
      002ED3 90 00 7F         [24]  764 	mov	dptr,#__divsint_PARM_2
      002ED6 74 0A            [12]  765 	mov	a,#0x0a
      002ED8 F0               [24]  766 	movx	@dptr,a
      002ED9 E4               [12]  767 	clr	a
      002EDA A3               [24]  768 	inc	dptr
      002EDB F0               [24]  769 	movx	@dptr,a
      002EDC 8F 82            [24]  770 	mov	dpl,r7
      002EDE 8E 83            [24]  771 	mov	dph,r6
      002EE0 12 33 07         [24]  772 	lcall	__divsint
      002EE3 AE 82            [24]  773 	mov	r6,dpl
      002EE5 74 30            [12]  774 	mov	a,#0x30
      002EE7 2E               [12]  775 	add	a,r6
      002EE8 F5 82            [12]  776 	mov	dpl,a
      002EEA 12 20 F8         [24]  777 	lcall	_lcdPutCh
                                    778 ;	main.c:87: lcdPutCh(min % 10 + '0');
      002EED 90 00 2A         [24]  779 	mov	dptr,#_min
      002EF0 E0               [24]  780 	movx	a,@dptr
      002EF1 FF               [12]  781 	mov	r7,a
      002EF2 7E 00            [12]  782 	mov	r6,#0x00
      002EF4 90 00 76         [24]  783 	mov	dptr,#__modsint_PARM_2
      002EF7 74 0A            [12]  784 	mov	a,#0x0a
      002EF9 F0               [24]  785 	movx	@dptr,a
      002EFA E4               [12]  786 	clr	a
      002EFB A3               [24]  787 	inc	dptr
      002EFC F0               [24]  788 	movx	@dptr,a
      002EFD 8F 82            [24]  789 	mov	dpl,r7
      002EFF 8E 83            [24]  790 	mov	dph,r6
      002F01 12 31 F3         [24]  791 	lcall	__modsint
      002F04 AE 82            [24]  792 	mov	r6,dpl
      002F06 74 30            [12]  793 	mov	a,#0x30
      002F08 2E               [12]  794 	add	a,r6
      002F09 F5 82            [12]  795 	mov	dpl,a
      002F0B 12 20 F8         [24]  796 	lcall	_lcdPutCh
                                    797 ;	main.c:88: lcdPutCh(':');
      002F0E 75 82 3A         [24]  798 	mov	dpl,#0x3a
      002F11 12 20 F8         [24]  799 	lcall	_lcdPutCh
                                    800 ;	main.c:89: lcdPutCh(sec / 10 + '0');
      002F14 90 00 29         [24]  801 	mov	dptr,#_sec
      002F17 E0               [24]  802 	movx	a,@dptr
      002F18 FF               [12]  803 	mov	r7,a
      002F19 7E 00            [12]  804 	mov	r6,#0x00
      002F1B 90 00 7F         [24]  805 	mov	dptr,#__divsint_PARM_2
      002F1E 74 0A            [12]  806 	mov	a,#0x0a
      002F20 F0               [24]  807 	movx	@dptr,a
      002F21 E4               [12]  808 	clr	a
      002F22 A3               [24]  809 	inc	dptr
      002F23 F0               [24]  810 	movx	@dptr,a
      002F24 8F 82            [24]  811 	mov	dpl,r7
      002F26 8E 83            [24]  812 	mov	dph,r6
      002F28 12 33 07         [24]  813 	lcall	__divsint
      002F2B AE 82            [24]  814 	mov	r6,dpl
      002F2D 74 30            [12]  815 	mov	a,#0x30
      002F2F 2E               [12]  816 	add	a,r6
      002F30 F5 82            [12]  817 	mov	dpl,a
      002F32 12 20 F8         [24]  818 	lcall	_lcdPutCh
                                    819 ;	main.c:90: lcdPutCh(sec % 10 + '0');
      002F35 90 00 29         [24]  820 	mov	dptr,#_sec
      002F38 E0               [24]  821 	movx	a,@dptr
      002F39 FF               [12]  822 	mov	r7,a
      002F3A 7E 00            [12]  823 	mov	r6,#0x00
      002F3C 90 00 76         [24]  824 	mov	dptr,#__modsint_PARM_2
      002F3F 74 0A            [12]  825 	mov	a,#0x0a
      002F41 F0               [24]  826 	movx	@dptr,a
      002F42 E4               [12]  827 	clr	a
      002F43 A3               [24]  828 	inc	dptr
      002F44 F0               [24]  829 	movx	@dptr,a
      002F45 8F 82            [24]  830 	mov	dpl,r7
      002F47 8E 83            [24]  831 	mov	dph,r6
      002F49 12 31 F3         [24]  832 	lcall	__modsint
      002F4C AE 82            [24]  833 	mov	r6,dpl
      002F4E 74 30            [12]  834 	mov	a,#0x30
      002F50 2E               [12]  835 	add	a,r6
      002F51 F5 82            [12]  836 	mov	dpl,a
      002F53 12 20 F8         [24]  837 	lcall	_lcdPutCh
                                    838 ;	main.c:91: lcdPutCh('.');
      002F56 75 82 2E         [24]  839 	mov	dpl,#0x2e
      002F59 12 20 F8         [24]  840 	lcall	_lcdPutCh
                                    841 ;	main.c:92: lcdPutCh(partSec + '0');
      002F5C 90 00 28         [24]  842 	mov	dptr,#_partSec
      002F5F E0               [24]  843 	movx	a,@dptr
      002F60 24 30            [12]  844 	add	a,#0x30
      002F62 F5 82            [12]  845 	mov	dpl,a
                                    846 ;	main.c:93: }
      002F64 02 20 F8         [24]  847 	ljmp	_lcdPutCh
                                    848 	.area CSEG    (CODE)
                                    849 	.area CONST   (CODE)
                                    850 	.area XINIT   (CODE)
                                    851 	.area CABS    (ABS,CODE)
