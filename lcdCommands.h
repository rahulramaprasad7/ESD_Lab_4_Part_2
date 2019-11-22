#ifndef LCDCOMMANDS_H
#define LCDCOMMANDS_H

#include <mcs51/8051.h>
#include "at89c51ed2.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
//RS = A8
//R/W = A9
volatile __xdata __at (0xF000) unsigned int lcdGeneral;
//volatile __xdata __at (0xF)
volatile __xdata __at(0xF200) unsigned int busyPoll;
volatile __xdata __at(0xF100) unsigned int writeCharacter;
volatile __xdata __at(0xF300) unsigned int readCharacter;


void lcdInit();
void delay();
void printBinary(int );
void busyWait();
void lcdPutCh(uint8_t x);
void lcdClear();
void goToAddr(uint8_t y);
void putsLCD(char *);
void timerInit();
void goToXY(uint8_t , uint8_t);
void customCharacter();
unsigned char atoh(char *ap);
void gamePacman();
void makePacmanRight();
void makePacmanLeft();
uint8_t readLCD();
void printMenu();
int puts(char *x);
void ramDump();

#endif // LCDCOMMANDS_H_INCLUDED
