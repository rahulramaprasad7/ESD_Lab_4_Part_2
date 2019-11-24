/*
 * @file main.c
 * @brief Source file that calls lcd functions
 *
 * This source file calls the functions used by the LCD
 * to read a character, write a character, write a string
 * create a custom character and a custom PACMAN game. *
 *
 * @authors Rahul Ramaprasad
 * @date November 23 2019
 * @verison 1.0
 */
#include "lcdCommands.h"

//Variables to keep track of the time
uint8_t partSec;
uint8_t sec;
uint8_t min;
uint8_t hour;
uint8_t x2;

//Variable to check if timer interrupted
uint8_t check;

//Look-up table to store addresses for the lcd display
const uint8_t lookUpTable1[4][16] = {{0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F},
                              {0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4A,0x4B,0x4C,0x4D,0x4E,0x4F},
                              {0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F},
                              {0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5A,0x5B,0x5C,0x5D,0x5E,0x5F}};

//Function to print time
void printTimeStamp();
//Character to store user input
char ch;

void main()
{
    check = 0;
    partSec = 0;
    sec = 0;
    min = 0;
    hour = 0;
    x2 = 0;
    //Char array to store a user inputted string
    char input[60];
    memset(input, '\0',60 * sizeof(char));
    //Initializing the LC
    lcdInit();
    //Clearing the display on lcd
    lcdClear();
    //Printing the UI menu
    printMenu();
    //Initializing the timer
    timerInit();
    while(1)
    {
        //Get user input
        ch = getchar();
        //Echo the entered character
        putchar(ch);

        //Check if the timer interrupted and print the timestamp
        if(check == 1)
        {
            check = 0;
            printTimeStamp();
        }

        //Display user inputted character in a user-specified row and column
        if(ch == 'w')
        {
            //Array to store user inputs
            char x[10];
            //Clear the previous contents
            memset(x,'\0',10 * sizeof(char));
            printf_tiny("\n\rEnter the row number from 0 to 2\n\r");
            uint8_t row = getchar();
            putchar(row);
            //Calculate the row number
            row = row - '0';
            //Check if the row input is out of bounds
            if(row > 2)
            {
                printf_tiny("\n\rEntered Row is incorrect\n\r");
                printMenu();
                continue;
            }
            printf_tiny("\n\rEnter the column number from 0 to 15\n\r");
            //Get the column number which can be one or two digits
            gets(x);
            uint8_t column = atoi(x);
            //Check if column is out of bounds
            if(column > 15)
            {
                printf_tiny("\n\rEntered Column is incorrect\n\r");
                printMenu();
                continue;
            }
            //Calculate the address on LCD using the lookup table
            uint8_t ad = lookUpTable1[row][column];
            printf("%d %d %d", row, column, ad);
            //Move the cursor to the user specified location
            goToAddr(ad);
            //Poll for Busy Flag
            busyWait();
            printf_tiny("\n\rEnter the character\n\r");
            //Input the Character
            uint8_t inputWrite = getchar();
            //Echo the character
            putchar(inputWrite);
            //Move the cursor
            goToAddr(ad);
            //Print the character on the LCD
            lcdPutCh(inputWrite);
        }

        //Print the menu
        if (ch == 'm')
        {
            printMenu();
        }

        //PACMAN game mode
        if( ch == 'p')
            gamePacman();

        //Reset the timer
        if(ch == 'x')
        {
            check = 0;
            partSec = 0;
            sec = 0;
            min = 0;
            hour = 0;
            x2 = 0;
        }

        //Pause the timer
        if(ch == 'y')
        {
            TR0 = 0;
        }

        //Resume the timer
        if(ch == 'z')
        {
            TR0 = 1;
        }

        //Clear the LCD screen
        if(ch == 'c')
        {
            lcdClear();
        }

        //Print a user inputted string on the LCD
        if(ch == 's')
        {
            char stringRead[48];
            printf_tiny("\n\rEnter the string\n\r");
            //Input the string from the user
            gets(stringRead);
            //Print the string on the LCD
            putsLCD(stringRead);
        }

        //Perform CGRAM and DDRAM dump
        if(ch == 'd')
        {
            ramDump();
        }

        //Make a custom character based on User Inputs
        if(ch == 'g')
        {
            customCharacter();
        }

    }
}

//ISR for Timer 0
void timer0_isr() __interrupt (1)
{
    //Reload TH0 and TL0 values
    TH0 = 0x4B;
    TL0 = 0xFC;
    //Keep track to update the timer every 2 times as timer runs for 50ms
    x2++;
    //Clock Protection
    if(x2 == 2)
    {
        if(partSec > 9)
        {
            sec++;
            if( sec > 59)
            {
                min++;
                if( min == 59)
                {
                    hour++;
                    if(hour > 23)
                    {
                        hour = 0;
                    }
                    min = 0;
                }
                sec = 0;
            }
            partSec = 0;
        }
        partSec++;
        x2 = 0;
        //Set the timer interrupt flag to print timestamp
        check = 1;
    }
}

//Function to send a character
int putchar (int c)
{
    // wait for TX ready, spin on TI
	while ((SCON & 0x02) == 0)
    {
        //Poll for timer interrupt
        if(check == 1)
        {
            check = 0;
            printTimeStamp();
        }
    }
    // load serial port with transmit value
	SBUF = c;
	// clear TI flag
	TI = 0;
	return 0;
}

//Function to receive a character
int getchar ()
{
    // wait for character to be received, spin on RI
    while ((SCON & 0x01) == 0)
    {
        //Poll for timer interrupt
        if(check == 1)
        {
            check = 0;
            printTimeStamp();
        }
    }
    // clear RI flag
	RI = 0;
	// return character from SBUF
	return SBUF;
}

//Function to print timestamp
void printTimeStamp()
{
    //Go to Row 3 and column 7 on the LCD
    goToAddr(0x57);
    //Print the hours, minutes, seconds and one-tenth of a second values
    lcdPutCh(hour + '0');
    lcdPutCh(':');
    lcdPutCh(min / 10 + '0');
    lcdPutCh(min % 10 + '0');
    lcdPutCh(':');
    lcdPutCh(sec / 10 + '0');
    lcdPutCh(sec % 10 + '0');
    lcdPutCh('.');
    lcdPutCh(partSec + '0');
}



