/*
 * @file lcdCommands.h
 * @brief Header file that contains lcd function prototypes
 *
 * This header file contains the prtotypes for functions
 * used by the LCD to read a character, write a character
 * write a string * create a custom character
 * and a custom PACMAN game
 *
 * @authors Rahul Ramaprasad
 * @date November 23 2019
 * @verison 1.0
 */
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
/* Absoluet addressing to store the variables at the A/D lines for memory mapped access to LCD */
volatile __xdata __at (0xF000) unsigned int lcdGeneral;
volatile __xdata __at(0xF200) unsigned int busyPoll;
volatile __xdata __at(0xF100) unsigned int writeCharacter;
volatile __xdata __at(0xF300) unsigned int readCharacter;


//LCD initialization function
void lcdInit();
//Delay function
void delay();
//Prints binary value
void printBinary(int );
//Function to poll busy flag
void busyWait();
//Prints the character on LCD
void lcdPutCh(uint8_t x);
//Clears the display on LCD
void lcdClear();
//Moves the cursor to an address on the LCD
void goToAddr(uint8_t y);
//Prints the string on the LCD
void putsLCD(char *);
//Timer initialization function
void timerInit();
//Goes to a cell defined by a row and column
void goToXY(uint8_t , uint8_t);
//Function to create a user inputted custom character
void customCharacter();
//Function to conver ascii to hex
unsigned char atoh(char *ap);
//Function for user defined custom game
void gamePacman();
//Function to make PACMAN custom character
void makePacmanRight();
//Function to make PACMAN custom character with mouth open on the LCD
void makePacmanLeft();
//Function to read a character from LCD DDRAM
uint8_t readLCD();
//Function to print the menu
void printMenu();
//Function print string over UART
int puts(char *x);
//Function to read the contents of DDRAM and CGRAM
void ramDump();

#endif // LCDCOMMANDS_H_INCLUDED
