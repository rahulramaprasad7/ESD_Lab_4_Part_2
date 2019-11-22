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
                                     13 	.globl _goToXY
                                     14 	.globl _timerInit
                                     15 	.globl _putsLCD
                                     16 	.globl _goToAddr
                                     17 	.globl _lcdClear
                                     18 	.globl _lcdPutCh
                                     19 	.globl _lcdInit
                                     20 	.globl _memset
                                     21 	.globl _printf_tiny
                                     22 	.globl _gets
                                     23 	.globl _P5_7
                                     24 	.globl _P5_6
                                     25 	.globl _P5_5
                                     26 	.globl _P5_4
                                     27 	.globl _P5_3
                                     28 	.globl _P5_2
                                     29 	.globl _P5_1
                                     30 	.globl _P5_0
                                     31 	.globl _P4_7
                                     32 	.globl _P4_6
                                     33 	.globl _P4_5
                                     34 	.globl _P4_4
                                     35 	.globl _P4_3
                                     36 	.globl _P4_2
                                     37 	.globl _P4_1
                                     38 	.globl _P4_0
                                     39 	.globl _PX0L
                                     40 	.globl _PT0L
                                     41 	.globl _PX1L
                                     42 	.globl _PT1L
                                     43 	.globl _PSL
                                     44 	.globl _PT2L
                                     45 	.globl _PPCL
                                     46 	.globl _EC
                                     47 	.globl _CCF0
                                     48 	.globl _CCF1
                                     49 	.globl _CCF2
                                     50 	.globl _CCF3
                                     51 	.globl _CCF4
                                     52 	.globl _CR
                                     53 	.globl _CF
                                     54 	.globl _TF2
                                     55 	.globl _EXF2
                                     56 	.globl _RCLK
                                     57 	.globl _TCLK
                                     58 	.globl _EXEN2
                                     59 	.globl _TR2
                                     60 	.globl _C_T2
                                     61 	.globl _CP_RL2
                                     62 	.globl _T2CON_7
                                     63 	.globl _T2CON_6
                                     64 	.globl _T2CON_5
                                     65 	.globl _T2CON_4
                                     66 	.globl _T2CON_3
                                     67 	.globl _T2CON_2
                                     68 	.globl _T2CON_1
                                     69 	.globl _T2CON_0
                                     70 	.globl _PT2
                                     71 	.globl _ET2
                                     72 	.globl _CY
                                     73 	.globl _AC
                                     74 	.globl _F0
                                     75 	.globl _RS1
                                     76 	.globl _RS0
                                     77 	.globl _OV
                                     78 	.globl _F1
                                     79 	.globl _P
                                     80 	.globl _PS
                                     81 	.globl _PT1
                                     82 	.globl _PX1
                                     83 	.globl _PT0
                                     84 	.globl _PX0
                                     85 	.globl _RD
                                     86 	.globl _WR
                                     87 	.globl _T1
                                     88 	.globl _T0
                                     89 	.globl _INT1
                                     90 	.globl _INT0
                                     91 	.globl _TXD
                                     92 	.globl _RXD
                                     93 	.globl _P3_7
                                     94 	.globl _P3_6
                                     95 	.globl _P3_5
                                     96 	.globl _P3_4
                                     97 	.globl _P3_3
                                     98 	.globl _P3_2
                                     99 	.globl _P3_1
                                    100 	.globl _P3_0
                                    101 	.globl _EA
                                    102 	.globl _ES
                                    103 	.globl _ET1
                                    104 	.globl _EX1
                                    105 	.globl _ET0
                                    106 	.globl _EX0
                                    107 	.globl _P2_7
                                    108 	.globl _P2_6
                                    109 	.globl _P2_5
                                    110 	.globl _P2_4
                                    111 	.globl _P2_3
                                    112 	.globl _P2_2
                                    113 	.globl _P2_1
                                    114 	.globl _P2_0
                                    115 	.globl _SM0
                                    116 	.globl _SM1
                                    117 	.globl _SM2
                                    118 	.globl _REN
                                    119 	.globl _TB8
                                    120 	.globl _RB8
                                    121 	.globl _TI
                                    122 	.globl _RI
                                    123 	.globl _P1_7
                                    124 	.globl _P1_6
                                    125 	.globl _P1_5
                                    126 	.globl _P1_4
                                    127 	.globl _P1_3
                                    128 	.globl _P1_2
                                    129 	.globl _P1_1
                                    130 	.globl _P1_0
                                    131 	.globl _TF1
                                    132 	.globl _TR1
                                    133 	.globl _TF0
                                    134 	.globl _TR0
                                    135 	.globl _IE1
                                    136 	.globl _IT1
                                    137 	.globl _IE0
                                    138 	.globl _IT0
                                    139 	.globl _P0_7
                                    140 	.globl _P0_6
                                    141 	.globl _P0_5
                                    142 	.globl _P0_4
                                    143 	.globl _P0_3
                                    144 	.globl _P0_2
                                    145 	.globl _P0_1
                                    146 	.globl _P0_0
                                    147 	.globl _EECON
                                    148 	.globl _KBF
                                    149 	.globl _KBE
                                    150 	.globl _KBLS
                                    151 	.globl _BRL
                                    152 	.globl _BDRCON
                                    153 	.globl _T2MOD
                                    154 	.globl _SPDAT
                                    155 	.globl _SPSTA
                                    156 	.globl _SPCON
                                    157 	.globl _SADEN
                                    158 	.globl _SADDR
                                    159 	.globl _WDTPRG
                                    160 	.globl _WDTRST
                                    161 	.globl _P5
                                    162 	.globl _P4
                                    163 	.globl _IPH1
                                    164 	.globl _IPL1
                                    165 	.globl _IPH0
                                    166 	.globl _IPL0
                                    167 	.globl _IEN1
                                    168 	.globl _IEN0
                                    169 	.globl _CMOD
                                    170 	.globl _CL
                                    171 	.globl _CH
                                    172 	.globl _CCON
                                    173 	.globl _CCAPM4
                                    174 	.globl _CCAPM3
                                    175 	.globl _CCAPM2
                                    176 	.globl _CCAPM1
                                    177 	.globl _CCAPM0
                                    178 	.globl _CCAP4L
                                    179 	.globl _CCAP3L
                                    180 	.globl _CCAP2L
                                    181 	.globl _CCAP1L
                                    182 	.globl _CCAP0L
                                    183 	.globl _CCAP4H
                                    184 	.globl _CCAP3H
                                    185 	.globl _CCAP2H
                                    186 	.globl _CCAP1H
                                    187 	.globl _CCAP0H
                                    188 	.globl _CKCON1
                                    189 	.globl _CKCON0
                                    190 	.globl _CKRL
                                    191 	.globl _AUXR1
                                    192 	.globl _AUXR
                                    193 	.globl _TH2
                                    194 	.globl _TL2
                                    195 	.globl _RCAP2H
                                    196 	.globl _RCAP2L
                                    197 	.globl _T2CON
                                    198 	.globl _B
                                    199 	.globl _ACC
                                    200 	.globl _PSW
                                    201 	.globl _IP
                                    202 	.globl _P3
                                    203 	.globl _IE
                                    204 	.globl _P2
                                    205 	.globl _SBUF
                                    206 	.globl _SCON
                                    207 	.globl _P1
                                    208 	.globl _TH1
                                    209 	.globl _TH0
                                    210 	.globl _TL1
                                    211 	.globl _TL0
                                    212 	.globl _TMOD
                                    213 	.globl _TCON
                                    214 	.globl _PCON
                                    215 	.globl _DPH
                                    216 	.globl _DPL
                                    217 	.globl _SP
                                    218 	.globl _P0
                                    219 	.globl _check
                                    220 	.globl _x2
                                    221 	.globl _hour
                                    222 	.globl _min
                                    223 	.globl _sec
                                    224 	.globl _partSec
                                    225 	.globl _writeCharacter
                                    226 	.globl _busyPoll
                                    227 	.globl _lcdGeneral
                                    228 	.globl _printTimeStamp
                                    229 ;--------------------------------------------------------
                                    230 ; special function registers
                                    231 ;--------------------------------------------------------
                                    232 	.area RSEG    (ABS,DATA)
      000000                        233 	.org 0x0000
                           000080   234 _P0	=	0x0080
                           000081   235 _SP	=	0x0081
                           000082   236 _DPL	=	0x0082
                           000083   237 _DPH	=	0x0083
                           000087   238 _PCON	=	0x0087
                           000088   239 _TCON	=	0x0088
                           000089   240 _TMOD	=	0x0089
                           00008A   241 _TL0	=	0x008a
                           00008B   242 _TL1	=	0x008b
                           00008C   243 _TH0	=	0x008c
                           00008D   244 _TH1	=	0x008d
                           000090   245 _P1	=	0x0090
                           000098   246 _SCON	=	0x0098
                           000099   247 _SBUF	=	0x0099
                           0000A0   248 _P2	=	0x00a0
                           0000A8   249 _IE	=	0x00a8
                           0000B0   250 _P3	=	0x00b0
                           0000B8   251 _IP	=	0x00b8
                           0000D0   252 _PSW	=	0x00d0
                           0000E0   253 _ACC	=	0x00e0
                           0000F0   254 _B	=	0x00f0
                           0000C8   255 _T2CON	=	0x00c8
                           0000CA   256 _RCAP2L	=	0x00ca
                           0000CB   257 _RCAP2H	=	0x00cb
                           0000CC   258 _TL2	=	0x00cc
                           0000CD   259 _TH2	=	0x00cd
                           00008E   260 _AUXR	=	0x008e
                           0000A2   261 _AUXR1	=	0x00a2
                           000097   262 _CKRL	=	0x0097
                           00008F   263 _CKCON0	=	0x008f
                           0000AF   264 _CKCON1	=	0x00af
                           0000FA   265 _CCAP0H	=	0x00fa
                           0000FB   266 _CCAP1H	=	0x00fb
                           0000FC   267 _CCAP2H	=	0x00fc
                           0000FD   268 _CCAP3H	=	0x00fd
                           0000FE   269 _CCAP4H	=	0x00fe
                           0000EA   270 _CCAP0L	=	0x00ea
                           0000EB   271 _CCAP1L	=	0x00eb
                           0000EC   272 _CCAP2L	=	0x00ec
                           0000ED   273 _CCAP3L	=	0x00ed
                           0000EE   274 _CCAP4L	=	0x00ee
                           0000DA   275 _CCAPM0	=	0x00da
                           0000DB   276 _CCAPM1	=	0x00db
                           0000DC   277 _CCAPM2	=	0x00dc
                           0000DD   278 _CCAPM3	=	0x00dd
                           0000DE   279 _CCAPM4	=	0x00de
                           0000D8   280 _CCON	=	0x00d8
                           0000F9   281 _CH	=	0x00f9
                           0000E9   282 _CL	=	0x00e9
                           0000D9   283 _CMOD	=	0x00d9
                           0000A8   284 _IEN0	=	0x00a8
                           0000B1   285 _IEN1	=	0x00b1
                           0000B8   286 _IPL0	=	0x00b8
                           0000B7   287 _IPH0	=	0x00b7
                           0000B2   288 _IPL1	=	0x00b2
                           0000B3   289 _IPH1	=	0x00b3
                           0000C0   290 _P4	=	0x00c0
                           0000E8   291 _P5	=	0x00e8
                           0000A6   292 _WDTRST	=	0x00a6
                           0000A7   293 _WDTPRG	=	0x00a7
                           0000A9   294 _SADDR	=	0x00a9
                           0000B9   295 _SADEN	=	0x00b9
                           0000C3   296 _SPCON	=	0x00c3
                           0000C4   297 _SPSTA	=	0x00c4
                           0000C5   298 _SPDAT	=	0x00c5
                           0000C9   299 _T2MOD	=	0x00c9
                           00009B   300 _BDRCON	=	0x009b
                           00009A   301 _BRL	=	0x009a
                           00009C   302 _KBLS	=	0x009c
                           00009D   303 _KBE	=	0x009d
                           00009E   304 _KBF	=	0x009e
                           0000D2   305 _EECON	=	0x00d2
                                    306 ;--------------------------------------------------------
                                    307 ; special function bits
                                    308 ;--------------------------------------------------------
                                    309 	.area RSEG    (ABS,DATA)
      000000                        310 	.org 0x0000
                           000080   311 _P0_0	=	0x0080
                           000081   312 _P0_1	=	0x0081
                           000082   313 _P0_2	=	0x0082
                           000083   314 _P0_3	=	0x0083
                           000084   315 _P0_4	=	0x0084
                           000085   316 _P0_5	=	0x0085
                           000086   317 _P0_6	=	0x0086
                           000087   318 _P0_7	=	0x0087
                           000088   319 _IT0	=	0x0088
                           000089   320 _IE0	=	0x0089
                           00008A   321 _IT1	=	0x008a
                           00008B   322 _IE1	=	0x008b
                           00008C   323 _TR0	=	0x008c
                           00008D   324 _TF0	=	0x008d
                           00008E   325 _TR1	=	0x008e
                           00008F   326 _TF1	=	0x008f
                           000090   327 _P1_0	=	0x0090
                           000091   328 _P1_1	=	0x0091
                           000092   329 _P1_2	=	0x0092
                           000093   330 _P1_3	=	0x0093
                           000094   331 _P1_4	=	0x0094
                           000095   332 _P1_5	=	0x0095
                           000096   333 _P1_6	=	0x0096
                           000097   334 _P1_7	=	0x0097
                           000098   335 _RI	=	0x0098
                           000099   336 _TI	=	0x0099
                           00009A   337 _RB8	=	0x009a
                           00009B   338 _TB8	=	0x009b
                           00009C   339 _REN	=	0x009c
                           00009D   340 _SM2	=	0x009d
                           00009E   341 _SM1	=	0x009e
                           00009F   342 _SM0	=	0x009f
                           0000A0   343 _P2_0	=	0x00a0
                           0000A1   344 _P2_1	=	0x00a1
                           0000A2   345 _P2_2	=	0x00a2
                           0000A3   346 _P2_3	=	0x00a3
                           0000A4   347 _P2_4	=	0x00a4
                           0000A5   348 _P2_5	=	0x00a5
                           0000A6   349 _P2_6	=	0x00a6
                           0000A7   350 _P2_7	=	0x00a7
                           0000A8   351 _EX0	=	0x00a8
                           0000A9   352 _ET0	=	0x00a9
                           0000AA   353 _EX1	=	0x00aa
                           0000AB   354 _ET1	=	0x00ab
                           0000AC   355 _ES	=	0x00ac
                           0000AF   356 _EA	=	0x00af
                           0000B0   357 _P3_0	=	0x00b0
                           0000B1   358 _P3_1	=	0x00b1
                           0000B2   359 _P3_2	=	0x00b2
                           0000B3   360 _P3_3	=	0x00b3
                           0000B4   361 _P3_4	=	0x00b4
                           0000B5   362 _P3_5	=	0x00b5
                           0000B6   363 _P3_6	=	0x00b6
                           0000B7   364 _P3_7	=	0x00b7
                           0000B0   365 _RXD	=	0x00b0
                           0000B1   366 _TXD	=	0x00b1
                           0000B2   367 _INT0	=	0x00b2
                           0000B3   368 _INT1	=	0x00b3
                           0000B4   369 _T0	=	0x00b4
                           0000B5   370 _T1	=	0x00b5
                           0000B6   371 _WR	=	0x00b6
                           0000B7   372 _RD	=	0x00b7
                           0000B8   373 _PX0	=	0x00b8
                           0000B9   374 _PT0	=	0x00b9
                           0000BA   375 _PX1	=	0x00ba
                           0000BB   376 _PT1	=	0x00bb
                           0000BC   377 _PS	=	0x00bc
                           0000D0   378 _P	=	0x00d0
                           0000D1   379 _F1	=	0x00d1
                           0000D2   380 _OV	=	0x00d2
                           0000D3   381 _RS0	=	0x00d3
                           0000D4   382 _RS1	=	0x00d4
                           0000D5   383 _F0	=	0x00d5
                           0000D6   384 _AC	=	0x00d6
                           0000D7   385 _CY	=	0x00d7
                           0000AD   386 _ET2	=	0x00ad
                           0000BD   387 _PT2	=	0x00bd
                           0000C8   388 _T2CON_0	=	0x00c8
                           0000C9   389 _T2CON_1	=	0x00c9
                           0000CA   390 _T2CON_2	=	0x00ca
                           0000CB   391 _T2CON_3	=	0x00cb
                           0000CC   392 _T2CON_4	=	0x00cc
                           0000CD   393 _T2CON_5	=	0x00cd
                           0000CE   394 _T2CON_6	=	0x00ce
                           0000CF   395 _T2CON_7	=	0x00cf
                           0000C8   396 _CP_RL2	=	0x00c8
                           0000C9   397 _C_T2	=	0x00c9
                           0000CA   398 _TR2	=	0x00ca
                           0000CB   399 _EXEN2	=	0x00cb
                           0000CC   400 _TCLK	=	0x00cc
                           0000CD   401 _RCLK	=	0x00cd
                           0000CE   402 _EXF2	=	0x00ce
                           0000CF   403 _TF2	=	0x00cf
                           0000DF   404 _CF	=	0x00df
                           0000DE   405 _CR	=	0x00de
                           0000DC   406 _CCF4	=	0x00dc
                           0000DB   407 _CCF3	=	0x00db
                           0000DA   408 _CCF2	=	0x00da
                           0000D9   409 _CCF1	=	0x00d9
                           0000D8   410 _CCF0	=	0x00d8
                           0000AE   411 _EC	=	0x00ae
                           0000BE   412 _PPCL	=	0x00be
                           0000BD   413 _PT2L	=	0x00bd
                           0000BC   414 _PSL	=	0x00bc
                           0000BB   415 _PT1L	=	0x00bb
                           0000BA   416 _PX1L	=	0x00ba
                           0000B9   417 _PT0L	=	0x00b9
                           0000B8   418 _PX0L	=	0x00b8
                           0000C0   419 _P4_0	=	0x00c0
                           0000C1   420 _P4_1	=	0x00c1
                           0000C2   421 _P4_2	=	0x00c2
                           0000C3   422 _P4_3	=	0x00c3
                           0000C4   423 _P4_4	=	0x00c4
                           0000C5   424 _P4_5	=	0x00c5
                           0000C6   425 _P4_6	=	0x00c6
                           0000C7   426 _P4_7	=	0x00c7
                           0000E8   427 _P5_0	=	0x00e8
                           0000E9   428 _P5_1	=	0x00e9
                           0000EA   429 _P5_2	=	0x00ea
                           0000EB   430 _P5_3	=	0x00eb
                           0000EC   431 _P5_4	=	0x00ec
                           0000ED   432 _P5_5	=	0x00ed
                           0000EE   433 _P5_6	=	0x00ee
                           0000EF   434 _P5_7	=	0x00ef
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable register banks
                                    437 ;--------------------------------------------------------
                                    438 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        439 	.ds 8
                                    440 ;--------------------------------------------------------
                                    441 ; internal ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area DSEG    (DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; overlayable items in internal ram 
                                    446 ;--------------------------------------------------------
                                    447 ;--------------------------------------------------------
                                    448 ; Stack segment in internal ram 
                                    449 ;--------------------------------------------------------
                                    450 	.area	SSEG
      000019                        451 __start__stack:
      000019                        452 	.ds	1
                                    453 
                                    454 ;--------------------------------------------------------
                                    455 ; indirectly addressable internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area ISEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; absolute internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area IABS    (ABS,DATA)
                                    462 	.area IABS    (ABS,DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; bit data
                                    465 ;--------------------------------------------------------
                                    466 	.area BSEG    (BIT)
                                    467 ;--------------------------------------------------------
                                    468 ; paged external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area PSEG    (PAG,XDATA)
                                    471 ;--------------------------------------------------------
                                    472 ; external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XSEG    (XDATA)
                           00F000   475 _lcdGeneral	=	0xf000
                           00F200   476 _busyPoll	=	0xf200
                           00F100   477 _writeCharacter	=	0xf100
      000011                        478 _partSec::
      000011                        479 	.ds 1
      000012                        480 _sec::
      000012                        481 	.ds 1
      000013                        482 _min::
      000013                        483 	.ds 1
      000014                        484 _hour::
      000014                        485 	.ds 1
      000015                        486 _x2::
      000015                        487 	.ds 1
      000016                        488 _check::
      000016                        489 	.ds 1
      000017                        490 _main_input_65537_41:
      000017                        491 	.ds 60
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
      00200B 02 24 56         [24]  518 	ljmp	_timer0_isr
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
      00200E 02 23 D9         [24]  540 	ljmp	_main
                                    541 ;	return from main will return to caller
                                    542 ;--------------------------------------------------------
                                    543 ; code
                                    544 ;--------------------------------------------------------
                                    545 	.area CSEG    (CODE)
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'main'
                                    548 ;------------------------------------------------------------
                                    549 ;input                     Allocated with name '_main_input_65537_41'
                                    550 ;------------------------------------------------------------
                                    551 ;	main.c:12: void main()
                                    552 ;	-----------------------------------------
                                    553 ;	 function main
                                    554 ;	-----------------------------------------
      0023D9                        555 _main:
                           000007   556 	ar7 = 0x07
                           000006   557 	ar6 = 0x06
                           000005   558 	ar5 = 0x05
                           000004   559 	ar4 = 0x04
                           000003   560 	ar3 = 0x03
                           000002   561 	ar2 = 0x02
                           000001   562 	ar1 = 0x01
                           000000   563 	ar0 = 0x00
                                    564 ;	main.c:14: check = 0;
      0023D9 90 00 16         [24]  565 	mov	dptr,#_check
      0023DC E4               [12]  566 	clr	a
      0023DD F0               [24]  567 	movx	@dptr,a
                                    568 ;	main.c:15: partSec = 0;
      0023DE 90 00 11         [24]  569 	mov	dptr,#_partSec
      0023E1 F0               [24]  570 	movx	@dptr,a
                                    571 ;	main.c:16: sec = 0;
      0023E2 90 00 12         [24]  572 	mov	dptr,#_sec
      0023E5 F0               [24]  573 	movx	@dptr,a
                                    574 ;	main.c:17: min = 0;
      0023E6 90 00 13         [24]  575 	mov	dptr,#_min
      0023E9 F0               [24]  576 	movx	@dptr,a
                                    577 ;	main.c:18: hour = 0;
      0023EA 90 00 14         [24]  578 	mov	dptr,#_hour
      0023ED F0               [24]  579 	movx	@dptr,a
                                    580 ;	main.c:19: x2 = 0;
      0023EE 90 00 15         [24]  581 	mov	dptr,#_x2
      0023F1 F0               [24]  582 	movx	@dptr,a
                                    583 ;	main.c:21: memset(input, '\0',60);
      0023F2 90 00 53         [24]  584 	mov	dptr,#_memset_PARM_2
      0023F5 F0               [24]  585 	movx	@dptr,a
      0023F6 90 00 54         [24]  586 	mov	dptr,#_memset_PARM_3
      0023F9 74 3C            [12]  587 	mov	a,#0x3c
      0023FB F0               [24]  588 	movx	@dptr,a
      0023FC E4               [12]  589 	clr	a
      0023FD A3               [24]  590 	inc	dptr
      0023FE F0               [24]  591 	movx	@dptr,a
      0023FF 90 00 17         [24]  592 	mov	dptr,#_main_input_65537_41
      002402 75 F0 00         [24]  593 	mov	b,#0x00
      002405 12 25 86         [24]  594 	lcall	_memset
                                    595 ;	main.c:22: lcdInit();
      002408 12 20 97         [24]  596 	lcall	_lcdInit
                                    597 ;	main.c:23: lcdClear();
      00240B 12 21 0D         [24]  598 	lcall	_lcdClear
                                    599 ;	main.c:24: goToXY(3,1);
      00240E 90 00 03         [24]  600 	mov	dptr,#_goToXY_PARM_2
      002411 74 01            [12]  601 	mov	a,#0x01
      002413 F0               [24]  602 	movx	@dptr,a
      002414 75 82 03         [24]  603 	mov	dpl,#0x03
      002417 12 21 35         [24]  604 	lcall	_goToXY
                                    605 ;	main.c:25: lcdPutCh('a');
      00241A 75 82 61         [24]  606 	mov	dpl,#0x61
      00241D 12 20 F8         [24]  607 	lcall	_lcdPutCh
                                    608 ;	main.c:26: printf_tiny("Enter String\n\r");
      002420 74 BD            [12]  609 	mov	a,#___str_0
      002422 C0 E0            [24]  610 	push	acc
      002424 74 33            [12]  611 	mov	a,#(___str_0 >> 8)
      002426 C0 E0            [24]  612 	push	acc
      002428 12 25 C9         [24]  613 	lcall	_printf_tiny
      00242B 15 81            [12]  614 	dec	sp
      00242D 15 81            [12]  615 	dec	sp
                                    616 ;	main.c:27: gets(input);
      00242F 90 00 17         [24]  617 	mov	dptr,#_main_input_65537_41
      002432 75 F0 00         [24]  618 	mov	b,#0x00
      002435 12 22 C6         [24]  619 	lcall	_gets
                                    620 ;	main.c:28: putsLCD(input);
      002438 90 00 17         [24]  621 	mov	dptr,#_main_input_65537_41
      00243B 75 F0 00         [24]  622 	mov	b,#0x00
      00243E 12 21 5F         [24]  623 	lcall	_putsLCD
                                    624 ;	main.c:29: timerInit();
      002441 12 20 7B         [24]  625 	lcall	_timerInit
                                    626 ;	main.c:30: while(1)
      002444                        627 00105$:
                                    628 ;	main.c:32: if(check == 1)
      002444 90 00 16         [24]  629 	mov	dptr,#_check
      002447 E0               [24]  630 	movx	a,@dptr
      002448 FF               [12]  631 	mov	r7,a
      002449 BF 01 F8         [24]  632 	cjne	r7,#0x01,00105$
                                    633 ;	main.c:34: check = 0;
      00244C 90 00 16         [24]  634 	mov	dptr,#_check
      00244F E4               [12]  635 	clr	a
      002450 F0               [24]  636 	movx	@dptr,a
                                    637 ;	main.c:35: printTimeStamp();
      002451 12 24 D4         [24]  638 	lcall	_printTimeStamp
                                    639 ;	main.c:38: continue;
                                    640 ;	main.c:40: }
      002454 80 EE            [24]  641 	sjmp	00105$
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'timer0_isr'
                                    644 ;------------------------------------------------------------
                                    645 ;	main.c:42: void timer0_isr() __interrupt (1)
                                    646 ;	-----------------------------------------
                                    647 ;	 function timer0_isr
                                    648 ;	-----------------------------------------
      002456                        649 _timer0_isr:
      002456 C0 E0            [24]  650 	push	acc
      002458 C0 82            [24]  651 	push	dpl
      00245A C0 83            [24]  652 	push	dph
      00245C C0 07            [24]  653 	push	ar7
      00245E C0 D0            [24]  654 	push	psw
      002460 75 D0 00         [24]  655 	mov	psw,#0x00
                                    656 ;	main.c:44: TH0 = 0x4B;
      002463 75 8C 4B         [24]  657 	mov	_TH0,#0x4b
                                    658 ;	main.c:45: TL0 = 0xFC;
      002466 75 8A FC         [24]  659 	mov	_TL0,#0xfc
                                    660 ;	main.c:46: x2++;
      002469 90 00 15         [24]  661 	mov	dptr,#_x2
      00246C E0               [24]  662 	movx	a,@dptr
      00246D 24 01            [12]  663 	add	a,#0x01
      00246F F0               [24]  664 	movx	@dptr,a
                                    665 ;	main.c:47: if(x2 == 2)
      002470 E0               [24]  666 	movx	a,@dptr
      002471 FF               [12]  667 	mov	r7,a
      002472 BF 02 54         [24]  668 	cjne	r7,#0x02,00111$
                                    669 ;	main.c:49: if(partSec > 9)
      002475 90 00 11         [24]  670 	mov	dptr,#_partSec
      002478 E0               [24]  671 	movx	a,@dptr
      002479 FF               [12]  672 	mov  r7,a
      00247A 24 F6            [12]  673 	add	a,#0xff - 0x09
      00247C 50 3A            [24]  674 	jnc	00108$
                                    675 ;	main.c:51: sec++;
      00247E 90 00 12         [24]  676 	mov	dptr,#_sec
      002481 E0               [24]  677 	movx	a,@dptr
      002482 24 01            [12]  678 	add	a,#0x01
      002484 F0               [24]  679 	movx	@dptr,a
                                    680 ;	main.c:52: if( sec > 59)
      002485 E0               [24]  681 	movx	a,@dptr
      002486 FF               [12]  682 	mov  r7,a
      002487 24 C4            [12]  683 	add	a,#0xff - 0x3b
      002489 50 28            [24]  684 	jnc	00106$
                                    685 ;	main.c:54: min++;
      00248B 90 00 13         [24]  686 	mov	dptr,#_min
      00248E E0               [24]  687 	movx	a,@dptr
      00248F 24 01            [12]  688 	add	a,#0x01
      002491 F0               [24]  689 	movx	@dptr,a
                                    690 ;	main.c:55: if( min == 59)
      002492 E0               [24]  691 	movx	a,@dptr
      002493 FF               [12]  692 	mov	r7,a
      002494 BF 3B 17         [24]  693 	cjne	r7,#0x3b,00104$
                                    694 ;	main.c:57: hour++;
      002497 90 00 14         [24]  695 	mov	dptr,#_hour
      00249A E0               [24]  696 	movx	a,@dptr
      00249B 24 01            [12]  697 	add	a,#0x01
      00249D F0               [24]  698 	movx	@dptr,a
                                    699 ;	main.c:58: if(hour > 23)
      00249E E0               [24]  700 	movx	a,@dptr
      00249F FF               [12]  701 	mov  r7,a
      0024A0 24 E8            [12]  702 	add	a,#0xff - 0x17
      0024A2 50 05            [24]  703 	jnc	00102$
                                    704 ;	main.c:60: hour = 0;
      0024A4 90 00 14         [24]  705 	mov	dptr,#_hour
      0024A7 E4               [12]  706 	clr	a
      0024A8 F0               [24]  707 	movx	@dptr,a
      0024A9                        708 00102$:
                                    709 ;	main.c:62: min = 0;
      0024A9 90 00 13         [24]  710 	mov	dptr,#_min
      0024AC E4               [12]  711 	clr	a
      0024AD F0               [24]  712 	movx	@dptr,a
      0024AE                        713 00104$:
                                    714 ;	main.c:64: sec = 0;
      0024AE 90 00 12         [24]  715 	mov	dptr,#_sec
      0024B1 E4               [12]  716 	clr	a
      0024B2 F0               [24]  717 	movx	@dptr,a
      0024B3                        718 00106$:
                                    719 ;	main.c:66: partSec = 0;
      0024B3 90 00 11         [24]  720 	mov	dptr,#_partSec
      0024B6 E4               [12]  721 	clr	a
      0024B7 F0               [24]  722 	movx	@dptr,a
      0024B8                        723 00108$:
                                    724 ;	main.c:68: partSec++;
      0024B8 90 00 11         [24]  725 	mov	dptr,#_partSec
      0024BB E0               [24]  726 	movx	a,@dptr
      0024BC 24 01            [12]  727 	add	a,#0x01
      0024BE F0               [24]  728 	movx	@dptr,a
                                    729 ;	main.c:69: x2 = 0;
      0024BF 90 00 15         [24]  730 	mov	dptr,#_x2
      0024C2 E4               [12]  731 	clr	a
      0024C3 F0               [24]  732 	movx	@dptr,a
                                    733 ;	main.c:70: check = 1;
      0024C4 90 00 16         [24]  734 	mov	dptr,#_check
      0024C7 04               [12]  735 	inc	a
      0024C8 F0               [24]  736 	movx	@dptr,a
      0024C9                        737 00111$:
                                    738 ;	main.c:72: }
      0024C9 D0 D0            [24]  739 	pop	psw
      0024CB D0 07            [24]  740 	pop	ar7
      0024CD D0 83            [24]  741 	pop	dph
      0024CF D0 82            [24]  742 	pop	dpl
      0024D1 D0 E0            [24]  743 	pop	acc
      0024D3 32               [24]  744 	reti
                                    745 ;	eliminated unneeded push/pop b
                                    746 ;------------------------------------------------------------
                                    747 ;Allocation info for local variables in function 'printTimeStamp'
                                    748 ;------------------------------------------------------------
                                    749 ;	main.c:73: void printTimeStamp()
                                    750 ;	-----------------------------------------
                                    751 ;	 function printTimeStamp
                                    752 ;	-----------------------------------------
      0024D4                        753 _printTimeStamp:
                                    754 ;	main.c:75: goToAddr(0x57);
      0024D4 75 82 57         [24]  755 	mov	dpl,#0x57
      0024D7 12 21 1A         [24]  756 	lcall	_goToAddr
                                    757 ;	main.c:76: lcdPutCh(hour + '0');
      0024DA 90 00 14         [24]  758 	mov	dptr,#_hour
      0024DD E0               [24]  759 	movx	a,@dptr
      0024DE 24 30            [12]  760 	add	a,#0x30
      0024E0 F5 82            [12]  761 	mov	dpl,a
      0024E2 12 20 F8         [24]  762 	lcall	_lcdPutCh
                                    763 ;	main.c:77: lcdPutCh(':');
      0024E5 75 82 3A         [24]  764 	mov	dpl,#0x3a
      0024E8 12 20 F8         [24]  765 	lcall	_lcdPutCh
                                    766 ;	main.c:78: lcdPutCh(min / 10 + '0');
      0024EB 90 00 13         [24]  767 	mov	dptr,#_min
      0024EE E0               [24]  768 	movx	a,@dptr
      0024EF FF               [12]  769 	mov	r7,a
      0024F0 7E 00            [12]  770 	mov	r6,#0x00
      0024F2 90 00 60         [24]  771 	mov	dptr,#__divsint_PARM_2
      0024F5 74 0A            [12]  772 	mov	a,#0x0a
      0024F7 F0               [24]  773 	movx	@dptr,a
      0024F8 E4               [12]  774 	clr	a
      0024F9 A3               [24]  775 	inc	dptr
      0024FA F0               [24]  776 	movx	@dptr,a
      0024FB 8F 82            [24]  777 	mov	dpl,r7
      0024FD 8E 83            [24]  778 	mov	dph,r6
      0024FF 12 27 E6         [24]  779 	lcall	__divsint
      002502 AE 82            [24]  780 	mov	r6,dpl
      002504 74 30            [12]  781 	mov	a,#0x30
      002506 2E               [12]  782 	add	a,r6
      002507 F5 82            [12]  783 	mov	dpl,a
      002509 12 20 F8         [24]  784 	lcall	_lcdPutCh
                                    785 ;	main.c:79: lcdPutCh(min % 10 + '0');
      00250C 90 00 13         [24]  786 	mov	dptr,#_min
      00250F E0               [24]  787 	movx	a,@dptr
      002510 FF               [12]  788 	mov	r7,a
      002511 7E 00            [12]  789 	mov	r6,#0x00
      002513 90 00 57         [24]  790 	mov	dptr,#__modsint_PARM_2
      002516 74 0A            [12]  791 	mov	a,#0x0a
      002518 F0               [24]  792 	movx	@dptr,a
      002519 E4               [12]  793 	clr	a
      00251A A3               [24]  794 	inc	dptr
      00251B F0               [24]  795 	movx	@dptr,a
      00251C 8F 82            [24]  796 	mov	dpl,r7
      00251E 8E 83            [24]  797 	mov	dph,r6
      002520 12 26 D2         [24]  798 	lcall	__modsint
      002523 AE 82            [24]  799 	mov	r6,dpl
      002525 74 30            [12]  800 	mov	a,#0x30
      002527 2E               [12]  801 	add	a,r6
      002528 F5 82            [12]  802 	mov	dpl,a
      00252A 12 20 F8         [24]  803 	lcall	_lcdPutCh
                                    804 ;	main.c:80: lcdPutCh(':');
      00252D 75 82 3A         [24]  805 	mov	dpl,#0x3a
      002530 12 20 F8         [24]  806 	lcall	_lcdPutCh
                                    807 ;	main.c:81: lcdPutCh(sec / 10 + '0');
      002533 90 00 12         [24]  808 	mov	dptr,#_sec
      002536 E0               [24]  809 	movx	a,@dptr
      002537 FF               [12]  810 	mov	r7,a
      002538 7E 00            [12]  811 	mov	r6,#0x00
      00253A 90 00 60         [24]  812 	mov	dptr,#__divsint_PARM_2
      00253D 74 0A            [12]  813 	mov	a,#0x0a
      00253F F0               [24]  814 	movx	@dptr,a
      002540 E4               [12]  815 	clr	a
      002541 A3               [24]  816 	inc	dptr
      002542 F0               [24]  817 	movx	@dptr,a
      002543 8F 82            [24]  818 	mov	dpl,r7
      002545 8E 83            [24]  819 	mov	dph,r6
      002547 12 27 E6         [24]  820 	lcall	__divsint
      00254A AE 82            [24]  821 	mov	r6,dpl
      00254C 74 30            [12]  822 	mov	a,#0x30
      00254E 2E               [12]  823 	add	a,r6
      00254F F5 82            [12]  824 	mov	dpl,a
      002551 12 20 F8         [24]  825 	lcall	_lcdPutCh
                                    826 ;	main.c:82: lcdPutCh(sec % 10 + '0');
      002554 90 00 12         [24]  827 	mov	dptr,#_sec
      002557 E0               [24]  828 	movx	a,@dptr
      002558 FF               [12]  829 	mov	r7,a
      002559 7E 00            [12]  830 	mov	r6,#0x00
      00255B 90 00 57         [24]  831 	mov	dptr,#__modsint_PARM_2
      00255E 74 0A            [12]  832 	mov	a,#0x0a
      002560 F0               [24]  833 	movx	@dptr,a
      002561 E4               [12]  834 	clr	a
      002562 A3               [24]  835 	inc	dptr
      002563 F0               [24]  836 	movx	@dptr,a
      002564 8F 82            [24]  837 	mov	dpl,r7
      002566 8E 83            [24]  838 	mov	dph,r6
      002568 12 26 D2         [24]  839 	lcall	__modsint
      00256B AE 82            [24]  840 	mov	r6,dpl
      00256D 74 30            [12]  841 	mov	a,#0x30
      00256F 2E               [12]  842 	add	a,r6
      002570 F5 82            [12]  843 	mov	dpl,a
      002572 12 20 F8         [24]  844 	lcall	_lcdPutCh
                                    845 ;	main.c:83: lcdPutCh('.');
      002575 75 82 2E         [24]  846 	mov	dpl,#0x2e
      002578 12 20 F8         [24]  847 	lcall	_lcdPutCh
                                    848 ;	main.c:84: lcdPutCh(partSec + '0');
      00257B 90 00 11         [24]  849 	mov	dptr,#_partSec
      00257E E0               [24]  850 	movx	a,@dptr
      00257F 24 30            [12]  851 	add	a,#0x30
      002581 F5 82            [12]  852 	mov	dpl,a
                                    853 ;	main.c:85: }
      002583 02 20 F8         [24]  854 	ljmp	_lcdPutCh
                                    855 	.area CSEG    (CODE)
                                    856 	.area CONST   (CODE)
                                    857 	.area CONST   (CODE)
      0033BD                        858 ___str_0:
      0033BD 45 6E 74 65 72 20 53   859 	.ascii "Enter String"
             74 72 69 6E 67
      0033C9 0A                     860 	.db 0x0a
      0033CA 0D                     861 	.db 0x0d
      0033CB 00                     862 	.db 0x00
                                    863 	.area CSEG    (CODE)
                                    864 	.area XINIT   (CODE)
                                    865 	.area CABS    (ABS,CODE)
