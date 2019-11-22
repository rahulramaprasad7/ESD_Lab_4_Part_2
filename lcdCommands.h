#ifndef LCDCOMMANDS_H
#define LCDCOMMANDS_H

#include <mcs51/8051.h>
#include "at89c51ed2.h"
#include <stdio.h>
#include <string.h>
#include <stdint.h>
//RS = A8
//R/W = A9
volatile __xdata __at (0xF000) unsigned int lcdGeneral;
//volatile __xdata __at (0xF)
volatile __xdata __at(0xF200) unsigned int busyPoll;
volatile __xdata __at(0xF100) unsigned int writeCharacter;



void lcdInit();
void delay();
void busyWait();
void lcdPutCh(uint8_t x);
void lcdClear();
void goToAddr(uint8_t y);
void putsLCD(char *);
void timerInit();
void goToXY(uint8_t , uint8_t);
#endif // LCDCOMMANDS_H_INCLUDED
