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
                                    223 	.globl _writeCharacter
                                    224 	.globl _busyPoll
                                    225 	.globl _lcdGeneral
                                    226 	.globl _printTimeStamp
                                    227 ;--------------------------------------------------------
                                    228 ; special function registers
                                    229 ;--------------------------------------------------------
                                    230 	.area RSEG    (ABS,DATA)
      000000                        231 	.org 0x0000
                           000080   232 _P0	=	0x0080
                           000081   233 _SP	=	0x0081
                           000082   234 _DPL	=	0x0082
                           000083   235 _DPH	=	0x0083
                           000087   236 _PCON	=	0x0087
                           000088   237 _TCON	=	0x0088
                           000089   238 _TMOD	=	0x0089
                           00008A   239 _TL0	=	0x008a
                           00008B   240 _TL1	=	0x008b
                           00008C   241 _TH0	=	0x008c
                           00008D   242 _TH1	=	0x008d
                           000090   243 _P1	=	0x0090
                           000098   244 _SCON	=	0x0098
                           000099   245 _SBUF	=	0x0099
                           0000A0   246 _P2	=	0x00a0
                           0000A8   247 _IE	=	0x00a8
                           0000B0   248 _P3	=	0x00b0
                           0000B8   249 _IP	=	0x00b8
                           0000D0   250 _PSW	=	0x00d0
                           0000E0   251 _ACC	=	0x00e0
                           0000F0   252 _B	=	0x00f0
                           0000C8   253 _T2CON	=	0x00c8
                           0000CA   254 _RCAP2L	=	0x00ca
                           0000CB   255 _RCAP2H	=	0x00cb
                           0000CC   256 _TL2	=	0x00cc
                           0000CD   257 _TH2	=	0x00cd
                           00008E   258 _AUXR	=	0x008e
                           0000A2   259 _AUXR1	=	0x00a2
                           000097   260 _CKRL	=	0x0097
                           00008F   261 _CKCON0	=	0x008f
                           0000AF   262 _CKCON1	=	0x00af
                           0000FA   263 _CCAP0H	=	0x00fa
                           0000FB   264 _CCAP1H	=	0x00fb
                           0000FC   265 _CCAP2H	=	0x00fc
                           0000FD   266 _CCAP3H	=	0x00fd
                           0000FE   267 _CCAP4H	=	0x00fe
                           0000EA   268 _CCAP0L	=	0x00ea
                           0000EB   269 _CCAP1L	=	0x00eb
                           0000EC   270 _CCAP2L	=	0x00ec
                           0000ED   271 _CCAP3L	=	0x00ed
                           0000EE   272 _CCAP4L	=	0x00ee
                           0000DA   273 _CCAPM0	=	0x00da
                           0000DB   274 _CCAPM1	=	0x00db
                           0000DC   275 _CCAPM2	=	0x00dc
                           0000DD   276 _CCAPM3	=	0x00dd
                           0000DE   277 _CCAPM4	=	0x00de
                           0000D8   278 _CCON	=	0x00d8
                           0000F9   279 _CH	=	0x00f9
                           0000E9   280 _CL	=	0x00e9
                           0000D9   281 _CMOD	=	0x00d9
                           0000A8   282 _IEN0	=	0x00a8
                           0000B1   283 _IEN1	=	0x00b1
                           0000B8   284 _IPL0	=	0x00b8
                           0000B7   285 _IPH0	=	0x00b7
                           0000B2   286 _IPL1	=	0x00b2
                           0000B3   287 _IPH1	=	0x00b3
                           0000C0   288 _P4	=	0x00c0
                           0000E8   289 _P5	=	0x00e8
                           0000A6   290 _WDTRST	=	0x00a6
                           0000A7   291 _WDTPRG	=	0x00a7
                           0000A9   292 _SADDR	=	0x00a9
                           0000B9   293 _SADEN	=	0x00b9
                           0000C3   294 _SPCON	=	0x00c3
                           0000C4   295 _SPSTA	=	0x00c4
                           0000C5   296 _SPDAT	=	0x00c5
                           0000C9   297 _T2MOD	=	0x00c9
                           00009B   298 _BDRCON	=	0x009b
                           00009A   299 _BRL	=	0x009a
                           00009C   300 _KBLS	=	0x009c
                           00009D   301 _KBE	=	0x009d
                           00009E   302 _KBF	=	0x009e
                           0000D2   303 _EECON	=	0x00d2
                                    304 ;--------------------------------------------------------
                                    305 ; special function bits
                                    306 ;--------------------------------------------------------
                                    307 	.area RSEG    (ABS,DATA)
      000000                        308 	.org 0x0000
                           000080   309 _P0_0	=	0x0080
                           000081   310 _P0_1	=	0x0081
                           000082   311 _P0_2	=	0x0082
                           000083   312 _P0_3	=	0x0083
                           000084   313 _P0_4	=	0x0084
                           000085   314 _P0_5	=	0x0085
                           000086   315 _P0_6	=	0x0086
                           000087   316 _P0_7	=	0x0087
                           000088   317 _IT0	=	0x0088
                           000089   318 _IE0	=	0x0089
                           00008A   319 _IT1	=	0x008a
                           00008B   320 _IE1	=	0x008b
                           00008C   321 _TR0	=	0x008c
                           00008D   322 _TF0	=	0x008d
                           00008E   323 _TR1	=	0x008e
                           00008F   324 _TF1	=	0x008f
                           000090   325 _P1_0	=	0x0090
                           000091   326 _P1_1	=	0x0091
                           000092   327 _P1_2	=	0x0092
                           000093   328 _P1_3	=	0x0093
                           000094   329 _P1_4	=	0x0094
                           000095   330 _P1_5	=	0x0095
                           000096   331 _P1_6	=	0x0096
                           000097   332 _P1_7	=	0x0097
                           000098   333 _RI	=	0x0098
                           000099   334 _TI	=	0x0099
                           00009A   335 _RB8	=	0x009a
                           00009B   336 _TB8	=	0x009b
                           00009C   337 _REN	=	0x009c
                           00009D   338 _SM2	=	0x009d
                           00009E   339 _SM1	=	0x009e
                           00009F   340 _SM0	=	0x009f
                           0000A0   341 _P2_0	=	0x00a0
                           0000A1   342 _P2_1	=	0x00a1
                           0000A2   343 _P2_2	=	0x00a2
                           0000A3   344 _P2_3	=	0x00a3
                           0000A4   345 _P2_4	=	0x00a4
                           0000A5   346 _P2_5	=	0x00a5
                           0000A6   347 _P2_6	=	0x00a6
                           0000A7   348 _P2_7	=	0x00a7
                           0000A8   349 _EX0	=	0x00a8
                           0000A9   350 _ET0	=	0x00a9
                           0000AA   351 _EX1	=	0x00aa
                           0000AB   352 _ET1	=	0x00ab
                           0000AC   353 _ES	=	0x00ac
                           0000AF   354 _EA	=	0x00af
                           0000B0   355 _P3_0	=	0x00b0
                           0000B1   356 _P3_1	=	0x00b1
                           0000B2   357 _P3_2	=	0x00b2
                           0000B3   358 _P3_3	=	0x00b3
                           0000B4   359 _P3_4	=	0x00b4
                           0000B5   360 _P3_5	=	0x00b5
                           0000B6   361 _P3_6	=	0x00b6
                           0000B7   362 _P3_7	=	0x00b7
                           0000B0   363 _RXD	=	0x00b0
                           0000B1   364 _TXD	=	0x00b1
                           0000B2   365 _INT0	=	0x00b2
                           0000B3   366 _INT1	=	0x00b3
                           0000B4   367 _T0	=	0x00b4
                           0000B5   368 _T1	=	0x00b5
                           0000B6   369 _WR	=	0x00b6
                           0000B7   370 _RD	=	0x00b7
                           0000B8   371 _PX0	=	0x00b8
                           0000B9   372 _PT0	=	0x00b9
                           0000BA   373 _PX1	=	0x00ba
                           0000BB   374 _PT1	=	0x00bb
                           0000BC   375 _PS	=	0x00bc
                           0000D0   376 _P	=	0x00d0
                           0000D1   377 _F1	=	0x00d1
                           0000D2   378 _OV	=	0x00d2
                           0000D3   379 _RS0	=	0x00d3
                           0000D4   380 _RS1	=	0x00d4
                           0000D5   381 _F0	=	0x00d5
                           0000D6   382 _AC	=	0x00d6
                           0000D7   383 _CY	=	0x00d7
                           0000AD   384 _ET2	=	0x00ad
                           0000BD   385 _PT2	=	0x00bd
                           0000C8   386 _T2CON_0	=	0x00c8
                           0000C9   387 _T2CON_1	=	0x00c9
                           0000CA   388 _T2CON_2	=	0x00ca
                           0000CB   389 _T2CON_3	=	0x00cb
                           0000CC   390 _T2CON_4	=	0x00cc
                           0000CD   391 _T2CON_5	=	0x00cd
                           0000CE   392 _T2CON_6	=	0x00ce
                           0000CF   393 _T2CON_7	=	0x00cf
                           0000C8   394 _CP_RL2	=	0x00c8
                           0000C9   395 _C_T2	=	0x00c9
                           0000CA   396 _TR2	=	0x00ca
                           0000CB   397 _EXEN2	=	0x00cb
                           0000CC   398 _TCLK	=	0x00cc
                           0000CD   399 _RCLK	=	0x00cd
                           0000CE   400 _EXF2	=	0x00ce
                           0000CF   401 _TF2	=	0x00cf
                           0000DF   402 _CF	=	0x00df
                           0000DE   403 _CR	=	0x00de
                           0000DC   404 _CCF4	=	0x00dc
                           0000DB   405 _CCF3	=	0x00db
                           0000DA   406 _CCF2	=	0x00da
                           0000D9   407 _CCF1	=	0x00d9
                           0000D8   408 _CCF0	=	0x00d8
                           0000AE   409 _EC	=	0x00ae
                           0000BE   410 _PPCL	=	0x00be
                           0000BD   411 _PT2L	=	0x00bd
                           0000BC   412 _PSL	=	0x00bc
                           0000BB   413 _PT1L	=	0x00bb
                           0000BA   414 _PX1L	=	0x00ba
                           0000B9   415 _PT0L	=	0x00b9
                           0000B8   416 _PX0L	=	0x00b8
                           0000C0   417 _P4_0	=	0x00c0
                           0000C1   418 _P4_1	=	0x00c1
                           0000C2   419 _P4_2	=	0x00c2
                           0000C3   420 _P4_3	=	0x00c3
                           0000C4   421 _P4_4	=	0x00c4
                           0000C5   422 _P4_5	=	0x00c5
                           0000C6   423 _P4_6	=	0x00c6
                           0000C7   424 _P4_7	=	0x00c7
                           0000E8   425 _P5_0	=	0x00e8
                           0000E9   426 _P5_1	=	0x00e9
                           0000EA   427 _P5_2	=	0x00ea
                           0000EB   428 _P5_3	=	0x00eb
                           0000EC   429 _P5_4	=	0x00ec
                           0000ED   430 _P5_5	=	0x00ed
                           0000EE   431 _P5_6	=	0x00ee
                           0000EF   432 _P5_7	=	0x00ef
                                    433 ;--------------------------------------------------------
                                    434 ; overlayable register banks
                                    435 ;--------------------------------------------------------
                                    436 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        437 	.ds 8
                                    438 ;--------------------------------------------------------
                                    439 ; internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area DSEG    (DATA)
                                    442 ;--------------------------------------------------------
                                    443 ; overlayable items in internal ram 
                                    444 ;--------------------------------------------------------
                                    445 ;--------------------------------------------------------
                                    446 ; Stack segment in internal ram 
                                    447 ;--------------------------------------------------------
                                    448 	.area	SSEG
      000019                        449 __start__stack:
      000019                        450 	.ds	1
                                    451 
                                    452 ;--------------------------------------------------------
                                    453 ; indirectly addressable internal ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area ISEG    (DATA)
                                    456 ;--------------------------------------------------------
                                    457 ; absolute internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area IABS    (ABS,DATA)
                                    460 	.area IABS    (ABS,DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; bit data
                                    463 ;--------------------------------------------------------
                                    464 	.area BSEG    (BIT)
                                    465 ;--------------------------------------------------------
                                    466 ; paged external ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area PSEG    (PAG,XDATA)
                                    469 ;--------------------------------------------------------
                                    470 ; external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XSEG    (XDATA)
                           00F000   473 _lcdGeneral	=	0xf000
                           00F200   474 _busyPoll	=	0xf200
                           00F100   475 _writeCharacter	=	0xf100
      000011                        476 _partSec::
      000011                        477 	.ds 1
      000012                        478 _sec::
      000012                        479 	.ds 1
      000013                        480 _min::
      000013                        481 	.ds 1
      000014                        482 _hour::
      000014                        483 	.ds 1
      000015                        484 _x2::
      000015                        485 	.ds 1
      000016                        486 _check::
      000016                        487 	.ds 1
      000017                        488 _main_input_65537_41:
      000017                        489 	.ds 60
                                    490 ;--------------------------------------------------------
                                    491 ; absolute external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area XABS    (ABS,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; external initialized ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XISEG   (XDATA)
                                    498 	.area HOME    (CODE)
                                    499 	.area GSINIT0 (CODE)
                                    500 	.area GSINIT1 (CODE)
                                    501 	.area GSINIT2 (CODE)
                                    502 	.area GSINIT3 (CODE)
                                    503 	.area GSINIT4 (CODE)
                                    504 	.area GSINIT5 (CODE)
                                    505 	.area GSINIT  (CODE)
                                    506 	.area GSFINAL (CODE)
                                    507 	.area CSEG    (CODE)
                                    508 ;--------------------------------------------------------
                                    509 ; interrupt vector 
                                    510 ;--------------------------------------------------------
                                    511 	.area HOME    (CODE)
      002000                        512 __interrupt_vect:
      002000 02 20 11         [24]  513 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  514 	reti
      002004                        515 	.ds	7
      00200B 02 25 04         [24]  516 	ljmp	_timer0_isr
                                    517 ;--------------------------------------------------------
                                    518 ; global & static initialisations
                                    519 ;--------------------------------------------------------
                                    520 	.area HOME    (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.area GSFINAL (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.globl __sdcc_gsinit_startup
                                    525 	.globl __sdcc_program_startup
                                    526 	.globl __start__stack
                                    527 	.globl __mcs51_genXINIT
                                    528 	.globl __mcs51_genXRAMCLEAR
                                    529 	.globl __mcs51_genRAMCLEAR
                                    530 	.area GSFINAL (CODE)
      00206A 02 20 0E         [24]  531 	ljmp	__sdcc_program_startup
                                    532 ;--------------------------------------------------------
                                    533 ; Home
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
                                    536 	.area HOME    (CODE)
      00200E                        537 __sdcc_program_startup:
      00200E 02 23 D9         [24]  538 	ljmp	_main
                                    539 ;	return from main will return to caller
                                    540 ;--------------------------------------------------------
                                    541 ; code
                                    542 ;--------------------------------------------------------
                                    543 	.area CSEG    (CODE)
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function 'main'
                                    546 ;------------------------------------------------------------
                                    547 ;input                     Allocated with name '_main_input_65537_41'
                                    548 ;------------------------------------------------------------
                                    549 ;	main.c:12: void main()
                                    550 ;	-----------------------------------------
                                    551 ;	 function main
                                    552 ;	-----------------------------------------
      0023D9                        553 _main:
                           000007   554 	ar7 = 0x07
                           000006   555 	ar6 = 0x06
                           000005   556 	ar5 = 0x05
                           000004   557 	ar4 = 0x04
                           000003   558 	ar3 = 0x03
                           000002   559 	ar2 = 0x02
                           000001   560 	ar1 = 0x01
                           000000   561 	ar0 = 0x00
                                    562 ;	main.c:14: check = 0;
      0023D9 90 00 16         [24]  563 	mov	dptr,#_check
      0023DC E4               [12]  564 	clr	a
      0023DD F0               [24]  565 	movx	@dptr,a
                                    566 ;	main.c:15: partSec = 0;
      0023DE 90 00 11         [24]  567 	mov	dptr,#_partSec
      0023E1 F0               [24]  568 	movx	@dptr,a
                                    569 ;	main.c:16: sec = 0;
      0023E2 90 00 12         [24]  570 	mov	dptr,#_sec
      0023E5 F0               [24]  571 	movx	@dptr,a
                                    572 ;	main.c:17: min = 0;
      0023E6 90 00 13         [24]  573 	mov	dptr,#_min
      0023E9 F0               [24]  574 	movx	@dptr,a
                                    575 ;	main.c:18: hour = 0;
      0023EA 90 00 14         [24]  576 	mov	dptr,#_hour
      0023ED F0               [24]  577 	movx	@dptr,a
                                    578 ;	main.c:19: x2 = 0;
      0023EE 90 00 15         [24]  579 	mov	dptr,#_x2
      0023F1 F0               [24]  580 	movx	@dptr,a
                                    581 ;	main.c:21: memset(input, '\0',60);
      0023F2 90 00 53         [24]  582 	mov	dptr,#_memset_PARM_2
      0023F5 F0               [24]  583 	movx	@dptr,a
      0023F6 90 00 54         [24]  584 	mov	dptr,#_memset_PARM_3
      0023F9 74 3C            [12]  585 	mov	a,#0x3c
      0023FB F0               [24]  586 	movx	@dptr,a
      0023FC E4               [12]  587 	clr	a
      0023FD A3               [24]  588 	inc	dptr
      0023FE F0               [24]  589 	movx	@dptr,a
      0023FF 90 00 17         [24]  590 	mov	dptr,#_main_input_65537_41
      002402 75 F0 00         [24]  591 	mov	b,#0x00
      002405 12 26 34         [24]  592 	lcall	_memset
                                    593 ;	main.c:22: lcdInit();
      002408 12 20 97         [24]  594 	lcall	_lcdInit
                                    595 ;	main.c:23: lcdClear();
      00240B 12 21 0D         [24]  596 	lcall	_lcdClear
                                    597 ;	main.c:24: busyWait();
      00240E 12 20 8B         [24]  598 	lcall	_busyWait
                                    599 ;	main.c:25: lcdGeneral = 0x40 | 0x00;
      002411 90 F0 00         [24]  600 	mov	dptr,#_lcdGeneral
      002414 74 40            [12]  601 	mov	a,#0x40
      002416 F0               [24]  602 	movx	@dptr,a
      002417 E4               [12]  603 	clr	a
      002418 A3               [24]  604 	inc	dptr
      002419 F0               [24]  605 	movx	@dptr,a
                                    606 ;	main.c:26: busyWait();
      00241A 12 20 8B         [24]  607 	lcall	_busyWait
                                    608 ;	main.c:27: writeCharacter = 0x1B;
      00241D 90 F1 00         [24]  609 	mov	dptr,#_writeCharacter
      002420 74 1B            [12]  610 	mov	a,#0x1b
      002422 F0               [24]  611 	movx	@dptr,a
      002423 E4               [12]  612 	clr	a
      002424 A3               [24]  613 	inc	dptr
      002425 F0               [24]  614 	movx	@dptr,a
                                    615 ;	main.c:28: busyWait();
      002426 12 20 8B         [24]  616 	lcall	_busyWait
                                    617 ;	main.c:29: lcdGeneral = 0x40 | 0x01;
      002429 90 F0 00         [24]  618 	mov	dptr,#_lcdGeneral
      00242C 74 41            [12]  619 	mov	a,#0x41
      00242E F0               [24]  620 	movx	@dptr,a
      00242F E4               [12]  621 	clr	a
      002430 A3               [24]  622 	inc	dptr
      002431 F0               [24]  623 	movx	@dptr,a
                                    624 ;	main.c:30: busyWait();
      002432 12 20 8B         [24]  625 	lcall	_busyWait
                                    626 ;	main.c:31: writeCharacter = 0x1B;
      002435 90 F1 00         [24]  627 	mov	dptr,#_writeCharacter
      002438 74 1B            [12]  628 	mov	a,#0x1b
      00243A F0               [24]  629 	movx	@dptr,a
      00243B E4               [12]  630 	clr	a
      00243C A3               [24]  631 	inc	dptr
      00243D F0               [24]  632 	movx	@dptr,a
                                    633 ;	main.c:32: busyWait();
      00243E 12 20 8B         [24]  634 	lcall	_busyWait
                                    635 ;	main.c:33: lcdGeneral = 0x40 | 0x02;
      002441 90 F0 00         [24]  636 	mov	dptr,#_lcdGeneral
      002444 74 42            [12]  637 	mov	a,#0x42
      002446 F0               [24]  638 	movx	@dptr,a
      002447 E4               [12]  639 	clr	a
      002448 A3               [24]  640 	inc	dptr
      002449 F0               [24]  641 	movx	@dptr,a
                                    642 ;	main.c:34: busyWait();
      00244A 12 20 8B         [24]  643 	lcall	_busyWait
                                    644 ;	main.c:35: writeCharacter = 0x00;
      00244D 90 F1 00         [24]  645 	mov	dptr,#_writeCharacter
      002450 E4               [12]  646 	clr	a
      002451 F0               [24]  647 	movx	@dptr,a
      002452 A3               [24]  648 	inc	dptr
      002453 F0               [24]  649 	movx	@dptr,a
                                    650 ;	main.c:36: busyWait();
      002454 12 20 8B         [24]  651 	lcall	_busyWait
                                    652 ;	main.c:37: lcdGeneral = 0x40 | 0x03;
      002457 90 F0 00         [24]  653 	mov	dptr,#_lcdGeneral
      00245A 74 43            [12]  654 	mov	a,#0x43
      00245C F0               [24]  655 	movx	@dptr,a
      00245D E4               [12]  656 	clr	a
      00245E A3               [24]  657 	inc	dptr
      00245F F0               [24]  658 	movx	@dptr,a
                                    659 ;	main.c:38: busyWait();
      002460 12 20 8B         [24]  660 	lcall	_busyWait
                                    661 ;	main.c:39: writeCharacter = 0x04;
      002463 90 F1 00         [24]  662 	mov	dptr,#_writeCharacter
      002466 74 04            [12]  663 	mov	a,#0x04
      002468 F0               [24]  664 	movx	@dptr,a
      002469 E4               [12]  665 	clr	a
      00246A A3               [24]  666 	inc	dptr
      00246B F0               [24]  667 	movx	@dptr,a
                                    668 ;	main.c:40: busyWait();
      00246C 12 20 8B         [24]  669 	lcall	_busyWait
                                    670 ;	main.c:41: lcdGeneral = 0x40 | 0x04;
      00246F 90 F0 00         [24]  671 	mov	dptr,#_lcdGeneral
      002472 74 44            [12]  672 	mov	a,#0x44
      002474 F0               [24]  673 	movx	@dptr,a
      002475 E4               [12]  674 	clr	a
      002476 A3               [24]  675 	inc	dptr
      002477 F0               [24]  676 	movx	@dptr,a
                                    677 ;	main.c:42: busyWait();
      002478 12 20 8B         [24]  678 	lcall	_busyWait
                                    679 ;	main.c:43: writeCharacter = 0x04;
      00247B 90 F1 00         [24]  680 	mov	dptr,#_writeCharacter
      00247E 74 04            [12]  681 	mov	a,#0x04
      002480 F0               [24]  682 	movx	@dptr,a
      002481 E4               [12]  683 	clr	a
      002482 A3               [24]  684 	inc	dptr
      002483 F0               [24]  685 	movx	@dptr,a
                                    686 ;	main.c:44: busyWait();
      002484 12 20 8B         [24]  687 	lcall	_busyWait
                                    688 ;	main.c:45: lcdGeneral = 0x40 | 0x05;
      002487 90 F0 00         [24]  689 	mov	dptr,#_lcdGeneral
      00248A 74 45            [12]  690 	mov	a,#0x45
      00248C F0               [24]  691 	movx	@dptr,a
      00248D E4               [12]  692 	clr	a
      00248E A3               [24]  693 	inc	dptr
      00248F F0               [24]  694 	movx	@dptr,a
                                    695 ;	main.c:46: busyWait();
      002490 12 20 8B         [24]  696 	lcall	_busyWait
                                    697 ;	main.c:47: writeCharacter = 0x11;
      002493 90 F1 00         [24]  698 	mov	dptr,#_writeCharacter
      002496 74 11            [12]  699 	mov	a,#0x11
      002498 F0               [24]  700 	movx	@dptr,a
      002499 E4               [12]  701 	clr	a
      00249A A3               [24]  702 	inc	dptr
      00249B F0               [24]  703 	movx	@dptr,a
                                    704 ;	main.c:48: busyWait();
      00249C 12 20 8B         [24]  705 	lcall	_busyWait
                                    706 ;	main.c:49: lcdGeneral = 0x40 | 0x06;
      00249F 90 F0 00         [24]  707 	mov	dptr,#_lcdGeneral
      0024A2 74 46            [12]  708 	mov	a,#0x46
      0024A4 F0               [24]  709 	movx	@dptr,a
      0024A5 E4               [12]  710 	clr	a
      0024A6 A3               [24]  711 	inc	dptr
      0024A7 F0               [24]  712 	movx	@dptr,a
                                    713 ;	main.c:50: busyWait();
      0024A8 12 20 8B         [24]  714 	lcall	_busyWait
                                    715 ;	main.c:51: writeCharacter = 0x0E;
      0024AB 90 F1 00         [24]  716 	mov	dptr,#_writeCharacter
      0024AE 74 0E            [12]  717 	mov	a,#0x0e
      0024B0 F0               [24]  718 	movx	@dptr,a
      0024B1 E4               [12]  719 	clr	a
      0024B2 A3               [24]  720 	inc	dptr
      0024B3 F0               [24]  721 	movx	@dptr,a
                                    722 ;	main.c:52: busyWait();
      0024B4 12 20 8B         [24]  723 	lcall	_busyWait
                                    724 ;	main.c:53: lcdGeneral = 0x40 | 0x07;
      0024B7 90 F0 00         [24]  725 	mov	dptr,#_lcdGeneral
      0024BA 74 47            [12]  726 	mov	a,#0x47
      0024BC F0               [24]  727 	movx	@dptr,a
      0024BD E4               [12]  728 	clr	a
      0024BE A3               [24]  729 	inc	dptr
      0024BF F0               [24]  730 	movx	@dptr,a
                                    731 ;	main.c:54: busyWait();
      0024C0 12 20 8B         [24]  732 	lcall	_busyWait
                                    733 ;	main.c:55: writeCharacter = 0x00;
      0024C3 90 F1 00         [24]  734 	mov	dptr,#_writeCharacter
      0024C6 E4               [12]  735 	clr	a
      0024C7 F0               [24]  736 	movx	@dptr,a
      0024C8 A3               [24]  737 	inc	dptr
      0024C9 F0               [24]  738 	movx	@dptr,a
                                    739 ;	main.c:56: busyWait();
      0024CA 12 20 8B         [24]  740 	lcall	_busyWait
                                    741 ;	main.c:57: goToXY(3,1);
      0024CD 90 00 03         [24]  742 	mov	dptr,#_goToXY_PARM_2
      0024D0 74 01            [12]  743 	mov	a,#0x01
      0024D2 F0               [24]  744 	movx	@dptr,a
      0024D3 75 82 03         [24]  745 	mov	dpl,#0x03
      0024D6 12 21 35         [24]  746 	lcall	_goToXY
                                    747 ;	main.c:58: busyWait();
      0024D9 12 20 8B         [24]  748 	lcall	_busyWait
                                    749 ;	main.c:59: lcdGeneral = 0x80 | 0x00;
      0024DC 90 F0 00         [24]  750 	mov	dptr,#_lcdGeneral
      0024DF 74 80            [12]  751 	mov	a,#0x80
      0024E1 F0               [24]  752 	movx	@dptr,a
      0024E2 E4               [12]  753 	clr	a
      0024E3 A3               [24]  754 	inc	dptr
      0024E4 F0               [24]  755 	movx	@dptr,a
                                    756 ;	main.c:60: busyWait();
      0024E5 12 20 8B         [24]  757 	lcall	_busyWait
                                    758 ;	main.c:61: writeCharacter = 0x00;
      0024E8 90 F1 00         [24]  759 	mov	dptr,#_writeCharacter
      0024EB E4               [12]  760 	clr	a
      0024EC F0               [24]  761 	movx	@dptr,a
      0024ED A3               [24]  762 	inc	dptr
      0024EE F0               [24]  763 	movx	@dptr,a
                                    764 ;	main.c:65: timerInit();
      0024EF 12 20 7B         [24]  765 	lcall	_timerInit
                                    766 ;	main.c:66: while(1)
      0024F2                        767 00105$:
                                    768 ;	main.c:68: if(check == 1)
      0024F2 90 00 16         [24]  769 	mov	dptr,#_check
      0024F5 E0               [24]  770 	movx	a,@dptr
      0024F6 FF               [12]  771 	mov	r7,a
      0024F7 BF 01 F8         [24]  772 	cjne	r7,#0x01,00105$
                                    773 ;	main.c:70: check = 0;
      0024FA 90 00 16         [24]  774 	mov	dptr,#_check
      0024FD E4               [12]  775 	clr	a
      0024FE F0               [24]  776 	movx	@dptr,a
                                    777 ;	main.c:71: printTimeStamp();
      0024FF 12 25 82         [24]  778 	lcall	_printTimeStamp
                                    779 ;	main.c:74: continue;
                                    780 ;	main.c:76: }
      002502 80 EE            [24]  781 	sjmp	00105$
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'timer0_isr'
                                    784 ;------------------------------------------------------------
                                    785 ;	main.c:78: void timer0_isr() __interrupt (1)
                                    786 ;	-----------------------------------------
                                    787 ;	 function timer0_isr
                                    788 ;	-----------------------------------------
      002504                        789 _timer0_isr:
      002504 C0 E0            [24]  790 	push	acc
      002506 C0 82            [24]  791 	push	dpl
      002508 C0 83            [24]  792 	push	dph
      00250A C0 07            [24]  793 	push	ar7
      00250C C0 D0            [24]  794 	push	psw
      00250E 75 D0 00         [24]  795 	mov	psw,#0x00
                                    796 ;	main.c:80: TH0 = 0x4B;
      002511 75 8C 4B         [24]  797 	mov	_TH0,#0x4b
                                    798 ;	main.c:81: TL0 = 0xFC;
      002514 75 8A FC         [24]  799 	mov	_TL0,#0xfc
                                    800 ;	main.c:82: x2++;
      002517 90 00 15         [24]  801 	mov	dptr,#_x2
      00251A E0               [24]  802 	movx	a,@dptr
      00251B 24 01            [12]  803 	add	a,#0x01
      00251D F0               [24]  804 	movx	@dptr,a
                                    805 ;	main.c:83: if(x2 == 2)
      00251E E0               [24]  806 	movx	a,@dptr
      00251F FF               [12]  807 	mov	r7,a
      002520 BF 02 54         [24]  808 	cjne	r7,#0x02,00111$
                                    809 ;	main.c:85: if(partSec > 9)
      002523 90 00 11         [24]  810 	mov	dptr,#_partSec
      002526 E0               [24]  811 	movx	a,@dptr
      002527 FF               [12]  812 	mov  r7,a
      002528 24 F6            [12]  813 	add	a,#0xff - 0x09
      00252A 50 3A            [24]  814 	jnc	00108$
                                    815 ;	main.c:87: sec++;
      00252C 90 00 12         [24]  816 	mov	dptr,#_sec
      00252F E0               [24]  817 	movx	a,@dptr
      002530 24 01            [12]  818 	add	a,#0x01
      002532 F0               [24]  819 	movx	@dptr,a
                                    820 ;	main.c:88: if( sec > 59)
      002533 E0               [24]  821 	movx	a,@dptr
      002534 FF               [12]  822 	mov  r7,a
      002535 24 C4            [12]  823 	add	a,#0xff - 0x3b
      002537 50 28            [24]  824 	jnc	00106$
                                    825 ;	main.c:90: min++;
      002539 90 00 13         [24]  826 	mov	dptr,#_min
      00253C E0               [24]  827 	movx	a,@dptr
      00253D 24 01            [12]  828 	add	a,#0x01
      00253F F0               [24]  829 	movx	@dptr,a
                                    830 ;	main.c:91: if( min == 59)
      002540 E0               [24]  831 	movx	a,@dptr
      002541 FF               [12]  832 	mov	r7,a
      002542 BF 3B 17         [24]  833 	cjne	r7,#0x3b,00104$
                                    834 ;	main.c:93: hour++;
      002545 90 00 14         [24]  835 	mov	dptr,#_hour
      002548 E0               [24]  836 	movx	a,@dptr
      002549 24 01            [12]  837 	add	a,#0x01
      00254B F0               [24]  838 	movx	@dptr,a
                                    839 ;	main.c:94: if(hour > 23)
      00254C E0               [24]  840 	movx	a,@dptr
      00254D FF               [12]  841 	mov  r7,a
      00254E 24 E8            [12]  842 	add	a,#0xff - 0x17
      002550 50 05            [24]  843 	jnc	00102$
                                    844 ;	main.c:96: hour = 0;
      002552 90 00 14         [24]  845 	mov	dptr,#_hour
      002555 E4               [12]  846 	clr	a
      002556 F0               [24]  847 	movx	@dptr,a
      002557                        848 00102$:
                                    849 ;	main.c:98: min = 0;
      002557 90 00 13         [24]  850 	mov	dptr,#_min
      00255A E4               [12]  851 	clr	a
      00255B F0               [24]  852 	movx	@dptr,a
      00255C                        853 00104$:
                                    854 ;	main.c:100: sec = 0;
      00255C 90 00 12         [24]  855 	mov	dptr,#_sec
      00255F E4               [12]  856 	clr	a
      002560 F0               [24]  857 	movx	@dptr,a
      002561                        858 00106$:
                                    859 ;	main.c:102: partSec = 0;
      002561 90 00 11         [24]  860 	mov	dptr,#_partSec
      002564 E4               [12]  861 	clr	a
      002565 F0               [24]  862 	movx	@dptr,a
      002566                        863 00108$:
                                    864 ;	main.c:104: partSec++;
      002566 90 00 11         [24]  865 	mov	dptr,#_partSec
      002569 E0               [24]  866 	movx	a,@dptr
      00256A 24 01            [12]  867 	add	a,#0x01
      00256C F0               [24]  868 	movx	@dptr,a
                                    869 ;	main.c:105: x2 = 0;
      00256D 90 00 15         [24]  870 	mov	dptr,#_x2
      002570 E4               [12]  871 	clr	a
      002571 F0               [24]  872 	movx	@dptr,a
                                    873 ;	main.c:106: check = 1;
      002572 90 00 16         [24]  874 	mov	dptr,#_check
      002575 04               [12]  875 	inc	a
      002576 F0               [24]  876 	movx	@dptr,a
      002577                        877 00111$:
                                    878 ;	main.c:108: }
      002577 D0 D0            [24]  879 	pop	psw
      002579 D0 07            [24]  880 	pop	ar7
      00257B D0 83            [24]  881 	pop	dph
      00257D D0 82            [24]  882 	pop	dpl
      00257F D0 E0            [24]  883 	pop	acc
      002581 32               [24]  884 	reti
                                    885 ;	eliminated unneeded push/pop b
                                    886 ;------------------------------------------------------------
                                    887 ;Allocation info for local variables in function 'printTimeStamp'
                                    888 ;------------------------------------------------------------
                                    889 ;	main.c:109: void printTimeStamp()
                                    890 ;	-----------------------------------------
                                    891 ;	 function printTimeStamp
                                    892 ;	-----------------------------------------
      002582                        893 _printTimeStamp:
                                    894 ;	main.c:111: goToAddr(0x57);
      002582 75 82 57         [24]  895 	mov	dpl,#0x57
      002585 12 21 1A         [24]  896 	lcall	_goToAddr
                                    897 ;	main.c:112: lcdPutCh(hour + '0');
      002588 90 00 14         [24]  898 	mov	dptr,#_hour
      00258B E0               [24]  899 	movx	a,@dptr
      00258C 24 30            [12]  900 	add	a,#0x30
      00258E F5 82            [12]  901 	mov	dpl,a
      002590 12 20 F8         [24]  902 	lcall	_lcdPutCh
                                    903 ;	main.c:113: lcdPutCh(':');
      002593 75 82 3A         [24]  904 	mov	dpl,#0x3a
      002596 12 20 F8         [24]  905 	lcall	_lcdPutCh
                                    906 ;	main.c:114: lcdPutCh(min / 10 + '0');
      002599 90 00 13         [24]  907 	mov	dptr,#_min
      00259C E0               [24]  908 	movx	a,@dptr
      00259D FF               [12]  909 	mov	r7,a
      00259E 7E 00            [12]  910 	mov	r6,#0x00
      0025A0 90 00 60         [24]  911 	mov	dptr,#__divsint_PARM_2
      0025A3 74 0A            [12]  912 	mov	a,#0x0a
      0025A5 F0               [24]  913 	movx	@dptr,a
      0025A6 E4               [12]  914 	clr	a
      0025A7 A3               [24]  915 	inc	dptr
      0025A8 F0               [24]  916 	movx	@dptr,a
      0025A9 8F 82            [24]  917 	mov	dpl,r7
      0025AB 8E 83            [24]  918 	mov	dph,r6
      0025AD 12 27 8B         [24]  919 	lcall	__divsint
      0025B0 AE 82            [24]  920 	mov	r6,dpl
      0025B2 74 30            [12]  921 	mov	a,#0x30
      0025B4 2E               [12]  922 	add	a,r6
      0025B5 F5 82            [12]  923 	mov	dpl,a
      0025B7 12 20 F8         [24]  924 	lcall	_lcdPutCh
                                    925 ;	main.c:115: lcdPutCh(min % 10 + '0');
      0025BA 90 00 13         [24]  926 	mov	dptr,#_min
      0025BD E0               [24]  927 	movx	a,@dptr
      0025BE FF               [12]  928 	mov	r7,a
      0025BF 7E 00            [12]  929 	mov	r6,#0x00
      0025C1 90 00 57         [24]  930 	mov	dptr,#__modsint_PARM_2
      0025C4 74 0A            [12]  931 	mov	a,#0x0a
      0025C6 F0               [24]  932 	movx	@dptr,a
      0025C7 E4               [12]  933 	clr	a
      0025C8 A3               [24]  934 	inc	dptr
      0025C9 F0               [24]  935 	movx	@dptr,a
      0025CA 8F 82            [24]  936 	mov	dpl,r7
      0025CC 8E 83            [24]  937 	mov	dph,r6
      0025CE 12 26 77         [24]  938 	lcall	__modsint
      0025D1 AE 82            [24]  939 	mov	r6,dpl
      0025D3 74 30            [12]  940 	mov	a,#0x30
      0025D5 2E               [12]  941 	add	a,r6
      0025D6 F5 82            [12]  942 	mov	dpl,a
      0025D8 12 20 F8         [24]  943 	lcall	_lcdPutCh
                                    944 ;	main.c:116: lcdPutCh(':');
      0025DB 75 82 3A         [24]  945 	mov	dpl,#0x3a
      0025DE 12 20 F8         [24]  946 	lcall	_lcdPutCh
                                    947 ;	main.c:117: lcdPutCh(sec / 10 + '0');
      0025E1 90 00 12         [24]  948 	mov	dptr,#_sec
      0025E4 E0               [24]  949 	movx	a,@dptr
      0025E5 FF               [12]  950 	mov	r7,a
      0025E6 7E 00            [12]  951 	mov	r6,#0x00
      0025E8 90 00 60         [24]  952 	mov	dptr,#__divsint_PARM_2
      0025EB 74 0A            [12]  953 	mov	a,#0x0a
      0025ED F0               [24]  954 	movx	@dptr,a
      0025EE E4               [12]  955 	clr	a
      0025EF A3               [24]  956 	inc	dptr
      0025F0 F0               [24]  957 	movx	@dptr,a
      0025F1 8F 82            [24]  958 	mov	dpl,r7
      0025F3 8E 83            [24]  959 	mov	dph,r6
      0025F5 12 27 8B         [24]  960 	lcall	__divsint
      0025F8 AE 82            [24]  961 	mov	r6,dpl
      0025FA 74 30            [12]  962 	mov	a,#0x30
      0025FC 2E               [12]  963 	add	a,r6
      0025FD F5 82            [12]  964 	mov	dpl,a
      0025FF 12 20 F8         [24]  965 	lcall	_lcdPutCh
                                    966 ;	main.c:118: lcdPutCh(sec % 10 + '0');
      002602 90 00 12         [24]  967 	mov	dptr,#_sec
      002605 E0               [24]  968 	movx	a,@dptr
      002606 FF               [12]  969 	mov	r7,a
      002607 7E 00            [12]  970 	mov	r6,#0x00
      002609 90 00 57         [24]  971 	mov	dptr,#__modsint_PARM_2
      00260C 74 0A            [12]  972 	mov	a,#0x0a
      00260E F0               [24]  973 	movx	@dptr,a
      00260F E4               [12]  974 	clr	a
      002610 A3               [24]  975 	inc	dptr
      002611 F0               [24]  976 	movx	@dptr,a
      002612 8F 82            [24]  977 	mov	dpl,r7
      002614 8E 83            [24]  978 	mov	dph,r6
      002616 12 26 77         [24]  979 	lcall	__modsint
      002619 AE 82            [24]  980 	mov	r6,dpl
      00261B 74 30            [12]  981 	mov	a,#0x30
      00261D 2E               [12]  982 	add	a,r6
      00261E F5 82            [12]  983 	mov	dpl,a
      002620 12 20 F8         [24]  984 	lcall	_lcdPutCh
                                    985 ;	main.c:119: lcdPutCh('.');
      002623 75 82 2E         [24]  986 	mov	dpl,#0x2e
      002626 12 20 F8         [24]  987 	lcall	_lcdPutCh
                                    988 ;	main.c:120: lcdPutCh(partSec + '0');
      002629 90 00 11         [24]  989 	mov	dptr,#_partSec
      00262C E0               [24]  990 	movx	a,@dptr
      00262D 24 30            [12]  991 	add	a,#0x30
      00262F F5 82            [12]  992 	mov	dpl,a
                                    993 ;	main.c:121: }
      002631 02 20 F8         [24]  994 	ljmp	_lcdPutCh
                                    995 	.area CSEG    (CODE)
                                    996 	.area CONST   (CODE)
                                    997 	.area XINIT   (CODE)
                                    998 	.area CABS    (ABS,CODE)
