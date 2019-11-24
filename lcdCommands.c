/*
 * @file lcdCommands.c
 * @brief Source file that contains lcd functions
 *
 * This source file contains the functions used by the LCD
 * to read a character, write a character, write a string
 * create a custom character and a custom PACMAN game. *
 *
 * @authors Rahul Ramaprasad,  Barak A. Pearlmutter ( atoh() function, link to the source is in the function below)
 * @date November 23 2019
 * @verison 1.0
 */

 /* atoh() reference - https://github.com/barak/cbp/blob/master/libcs/atoh.c */

#include "lcdCommands.h"
//Store the menu string
const char uiLines[60] = "\n\r-------------------------------------------------\n\r";
const char messages[11][40] = {" Enter w to write a character ", " Enter s to write a string", " Enter p to play pacman ", " Enter d to perform RAM dump ", " Enter g for custom character", " Enter x to reset timer", " Enter y to pause timer", " Enter z to resume timer"," Enter c to clear screen"," Enter m for main menu "};

//Look-up table to store addresses for the lcd display
const uint8_t lookUpTable[4][16] = {{0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F},
                              {0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4A,0x4B,0x4C,0x4D,0x4E,0x4F},
                              {0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F},
                              {0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5A,0x5B,0x5C,0x5D,0x5E,0x5F}};
//Delay function for LCD init
void delay()
{
    uint16_t i;
    for ( i = 0 ; i < 1000; i++);
}

//Timer 0 initialization function
void timerInit()
{
    //Set timer 0 in mode 1
    TMOD |= 0x01;
    //Load the calculated values for 50 ms
    TH0 = 0x4B;
    TL0 = 0xFC;
    //turn ON Timer zero
    TR0 = 1;
    //Enable Global Interrupt bit
    EA = 1;
    //Enable TImer0 Interrupt
    ET0 = 1;
}

//Poll for busy flag
void busyWait()
{
    //Mask the busyPoll pointer for the 7th bit
    while (busyPoll & 0x80);
}

//LCD initialization function
/* Followed the steps given in the LCD user guide pdf on Professor McClure's website */
void lcdInit()
{
    delay();
    lcdGeneral = 0x30;
    delay();
    lcdGeneral = 0x30;
    delay();
    lcdGeneral = 0x30;
    busyWait();
    lcdGeneral = 0x38;
    busyWait();
    lcdGeneral = 0x08;
    busyWait();
    lcdGeneral = 0x0C;
    busyWait();
    lcdGeneral = 0x06;
    busyWait();
    lcdGeneral = 0x01;
}

//Function to print a character on the LCD
void lcdPutCh(uint8_t x)
{
    //Poll for busy flag
    busyWait();
    //Write the 8-bit variable to the writeCharacter pointer
    writeCharacter = x;
}

//Function to clear the display of the LCD
void lcdClear()
{
    //Poll for busy flag
    busyWait();
    //Set the 0th bit and write it to the pointer
    lcdGeneral = 0x01;
}

//Function to go to an address on the LCD
void goToAddr(uint8_t x)
{
    //Poll for busy flag
    busyWait();
    //Set the DDRAM address and write it to the pointer
    lcdGeneral = 0x80 | x;
}

//Function to go to a particular row and column on  the LCD
void goToXY(uint8_t x, uint8_t y)
{
    //Poll for busy flag
    busyWait();
    //Get the address from the look up table and call the goToAddr() function
    goToAddr(lookUpTable[x][y]);
}

//Function to create user inputted custom character
void customCharacter()
{
    unsigned char temp;
    uint8_t i;
    //Variable to store user input
    unsigned char x[8];
    for(i = 0; i < 8; i++)
    {
        //Poll for busy flag
        busyWait();
        //Redeclared a pointer because SDCC was behaving weirdly with the global pointer
        volatile __xdata __at (0xF000) unsigned int temp8;
        //Set the character number to 6 and initial row number to 0
        temp8 = 0x40 | (0x28 + i);
        //Poll for busy flag
        busyWait();
        //Input the row value from user until he enters an acceptable value
        do{
            printf_tiny("\n\rEnter value for Row %d\n\r", (i+1));
            gets(x);
            //Convert the input value to hex
            temp = atoh(x);
        }while(temp < 0 || temp > 0x1F);
        //Store the row value using writeCharacter pointer
        writeCharacter = temp;
        //Poll for busy flag
        busyWait();
        //Flush the contents of the buffer to store user input
        memset(x,'\0',8 * sizeof(char));
    }
    //Move the cursor to 0x11 address on LCD
    lcdGeneral = 0x80 | 0x11;
    //Poll for busy flag
    busyWait();
    //Write the custom character created, whose number is 6
    writeCharacter = 0x06;
}

//Read contents of LCD
uint8_t readLCD()
{
    //Poll for busy flag
    busyWait();
    //Call the read character function
    uint8_t temp1 = readCharacter;
    //Poll for busy flag
    busyWait();
    //Return the read character
    return temp1;
}

//Write a string on the LCD
void putsLCD(char* y)
{
    int i = 0,j = 0, k =0;
    //Loop till the string terminating character
    while(y[i + (j * 16)] != '\0')
    {
        //Poll for busy flag
        busyWait();
        //When the column is more than 15, move to the next row
        if( i > 15)
        {
            j++;
            i = 0;
        }
        //Look up the address using look up table
        goToAddr(lookUpTable[j][i]);
        //Write character
        lcdPutCh(y[i + (j * 16)]);
        i++;
    }
}

//Modified the gets() implementation of the SDCC library function to take a maximum of 48 characters
char *gets (char *s)
{
  char c;
  unsigned int count = 0;

  while (1)
    {
      c = getchar ();
      switch(c)
        {
        case '\b': /* backspace */
          if (count)
            {
              putchar ('\b');
              putchar (' ');
	      putchar ('\b');
	      --s;
	      --count;
            }
          break;

        case '\n':
        case '\r': /* CR or LF */
          putchar ('\r');
          putchar ('\n');
          *s = 0;
          return s;

        default:
          *s++ = c;
          ++count;
          putchar (c);
          break;
        }
		if (count == 48)
		{
			printf("\n\rPlease Input a maximum of 48 characters\n\r");
			break;
		}
    }
}

//Prints the contents of DDRAM and CGRAM
void ramDump()
{
    //Clear the LCD display
    lcdClear();
    uint8_t i = 0;
    uint8_t j = 0;
    printf_tiny("\n\rDDRAM Contents\n\r");
    for (i = 0; i <= 0x5F; i += 16)      //Print 64 ASCII characters in each line
    {
        printf("%2x: ",i);
        for (j = i; j < (i+16) && j <= 0x5F; j++)    //Print the contents of buffer in ASCII
        {
            //Set the DDRAM address
            lcdGeneral = 0x80 | j;
            //Read the value stored
            uint8_t x = readLCD();
            printf("%2x ", x);
        }
        printf_tiny("\n\r");
    }

    //Print the CGRAM contents one by one
    printf_tiny("\n\rCGRAM Contents\n\r");
    for (i = 0; i <= 7; i ++)
    {
        //Print the value stored in each row
        printf_tiny("\n\rCharacter %d\n\r",i);
        for (j = 0; j <= 7; j++)
        {
            printf("Row %2x: ", j);
            //Set the character number and row number
            lcdGeneral = 0x40 | j | (i << 3);
            //Read the stored contents
            uint8_t x = readLCD();
            printf("%2x ", x);
            printf_tiny("\n\r");
        }
        printf_tiny("\n\r");
    }
}

//Implementation of a UI game PACMAN
void gamePacman()
{
    //Clear the LCD display
    lcdClear();
    char abcd;
    //Print the welcome message on the LCD and wait for user to press 'g' to start the game
    putsLCD("WELCOME 2 PACMANPRESS G TO START");
    do{
        abcd = getchar();
        putchar(abcd);
    }while(abcd != 'g');
    char ch;
    int i = 1;
    //Keep track of the score
    uint8_t count = 0;
    //Clear display
    lcdClear();
    //Make the custom pacman character with mouth open on the right
    makePacmanRight();
    //Make the custom pacman character with mouth open on the left
    makePacmanLeft();
    //Create food for pacman to eat in some locations on the LCD
    goToAddr(lookUpTable[0][4]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][5]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][8]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][12]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][13]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][14]);
    lcdPutCh('*');
    goToAddr(lookUpTable[1][2]);
    lcdPutCh('*');
    goToAddr(lookUpTable[1][3]);
    lcdPutCh('*');
    goToAddr(lookUpTable[1][12]);
    lcdPutCh('*');
    //Provide user instructions
    printf_tiny("\n\rEnter w to go up, s to go down, a to go left and d to go right and q to quit\n\r");
    do{
        //Keep track of the score in the third row
        goToAddr(lookUpTable[3][0]);
        lcdPutCh(count + '0');
        //If count is equal to number of food items, end game and restart
        if(count == 9)
        {
            lcdClear();
            putsLCD("GAME OVER! PRESS p to restart");
            printMenu();
            break;

        }
        //Receive user values to play the game
        ch = getchar();
        //Move right by one position if the user presses d
        if(ch == 'd')
        {
            //Erase the pacman character in its previous location by printing a space
            goToAddr(lookUpTable[0][i-1]);
            busyWait();
            lcdPutCh(' ');
            busyWait();
            //Move one position forward
            goToAddr(lookUpTable[0][i]);
            busyWait();
            //Check if the new position has food
            char checkEnter = readLCD();
            //If pacman ate food, increase score and ring a bell
            if(checkEnter == '*')
            {
                count++;
                putchar(7);
            }
            busyWait();
            //Print the custom character in its new position
            lcdGeneral = 0x80 | (lookUpTable[0][i]);
            busyWait();
            //Character 0 is the make pacman with mouth open on the right
            writeCharacter = 0x00;
            busyWait();
            //If the cursor goes out of bounds, reset it to the top left corner of LCD
            if(i >= 47)
            {
                goToAddr(lookUpTable[2][15]);
                busyWait();
                lcdPutCh(' ');
                busyWait();
                i = 0;
            }
            i++;
        }
        i--;

        //Move left by one position if the user presses a
        if(ch == 'a')
        {
            //Erase the pacman from its previous location
            goToAddr(lookUpTable[0][i+1]);
            busyWait();
            lcdPutCh(' ');
            busyWait();
            goToAddr(lookUpTable[0][i]);
            busyWait();
            char checkEnter1 = readLCD();
            //Check if pacman ate food and ring the bell and increase score
            if(checkEnter1 == '*')
            {
                count++;
                putchar(7);
            }
            busyWait();
            //Print the Pacman in its new location
            lcdGeneral = 0x80 | (lookUpTable[0][i]);
            busyWait();
            //Write Pacman with mouth open on the left which is character 3
            writeCharacter = 0x03;
            busyWait();
            //If the cursor goes out of bound reset it to bottom right corner
            if( i <= 0)
            {
                goToAddr(lookUpTable[0][0]);
                busyWait();
                lcdPutCh(' ');
                busyWait();
                i = 47;
            }
            i--;
        }
        i++;
    }while(ch != 'q');
    //Quit the game when user presses 'q'
}

//Write the custom character 1
void makePacmanRight()
{
    busyWait();
    lcdGeneral = 0x40 | 0x00;
    busyWait();
    writeCharacter = 0x06;
    busyWait();
    lcdGeneral = 0x40 | 0x01;
    busyWait();
    writeCharacter = 0x09;
    busyWait();
    lcdGeneral = 0x40 | 0x02;
    busyWait();
    writeCharacter = 0x12;
    busyWait();
    lcdGeneral = 0x40 | 0x03;
    busyWait();
    writeCharacter = 0x14;
    busyWait();
    lcdGeneral = 0x40 | 0x04;
    busyWait();
    writeCharacter = 0x14;
    busyWait();
    lcdGeneral = 0x40 | 0x05;
    busyWait();
    writeCharacter = 0x12;
    busyWait();
    lcdGeneral = 0x40 | 0x06;
    busyWait();
    writeCharacter = 0x09;
    busyWait();
    lcdGeneral = 0x40 | 0x07;
    busyWait();
    writeCharacter = 0x06;
    busyWait();
    goToXY(3,1);
    busyWait();
    lcdGeneral = 0x80 | 0x00;
    busyWait();
    writeCharacter = 0x00;
}

//Write the custom character 3
void makePacmanLeft()
{
    busyWait();
    lcdGeneral = 0x40 | 0x18;
    busyWait();
    writeCharacter = 0x0C;
    busyWait();
    lcdGeneral = 0x40 | 0x19;
    busyWait();
    writeCharacter = 0x12;
    busyWait();
    lcdGeneral = 0x40 | 0x1A;
    busyWait();
    writeCharacter = 0x09;
    busyWait();
    lcdGeneral = 0x40 | 0x1B;
    busyWait();
    writeCharacter = 0x05;
    busyWait();
    lcdGeneral = 0x40 | 0x1C;
    busyWait();
    writeCharacter = 0x05;
    busyWait();
    lcdGeneral = 0x40 | 0x1D;
    busyWait();
    writeCharacter = 0x09;
    busyWait();
    lcdGeneral = 0x40 | 0x1E;
    busyWait();
    writeCharacter = 0x12;
    busyWait();
    lcdGeneral = 0x40 | 0x1F;
    busyWait();
    writeCharacter = 0x0C;
    busyWait();
    //lcdGeneral = 0x80 | 0x03;
    //busyWait();
    //writeCharacter = 0x03;
}

//Unused function
void printBinary(int x)
{
    int temp2;
    while(x != 0)
    {
        temp2 = x % 2;
        putchar(temp2);
        x = x / 2;
    }
}

//Modified the function to return unsigned char
/* Copied the function from https://github.com/barak/cbp/blob/master/libcs/atoh.c */
unsigned char atoh(char *ap)
{
	char *p;
	int digit,lcase;

	p = ap;
	unsigned char n = 0;
	while(*p == ' ' || *p == '	')
		p++;

	if(*p == '0' && ((*(p+1) == 'x') || (*(p+1) == 'X')))
		p+=2;

	while ((digit = (*p >= '0' && *p <= '9')) ||
		(lcase = (*p >= 'a' && *p <= 'f')) ||
		(*p >= 'A' && *p <= 'F')) {
		n *= 16;
		if (digit)	n += *p++ - '0';
		else if (lcase)	n += 10 + (*p++ - 'a');
		else		n += 10 + (*p++ - 'A');
	}
	return(n);
}

//Prints the main menu for the UI
void printMenu()
{
    int i;
    //Print separating dashed line
    printf("%s",uiLines);
    printf("\n\r");
    //Print the two dimensional string array which stores menu options
    for ( i = 0; i < 10; i++)
    {
        printf("%s",messages[i]);
        printf_tiny("\n\r");
    }
    printf("%s",uiLines);
    printf("\n\r");

}
