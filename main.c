#include "lcdCommands.h"

uint8_t partSec;
uint8_t sec;
uint8_t min;
uint8_t hour;
uint8_t x2;
uint8_t check;

const uint8_t lookUpTable1[4][16] = {{0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F},
                              {0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4A,0x4B,0x4C,0x4D,0x4E,0x4F},
                              {0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F},
                              {0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5A,0x5B,0x5C,0x5D,0x5E,0x5F}};


void printTimeStamp();
char ch;

void main()
{
    check = 0;
    partSec = 0;
    sec = 0;
    min = 0;
    hour = 0;
    x2 = 0;
    char input[60];
    memset(input, '\0',60 * sizeof(char));
    lcdInit();
    lcdClear();
    printMenu();
    timerInit();
    while(1)
    {
        ch = getchar();
        if(check == 1)
        {
            check = 0;
            printTimeStamp();
        }

        if(ch == 'w')
        {
            //ch = '\0';
            char x[10];
            memset(x,'\0',10 * sizeof(char));
            printf_tiny("\n\rEnter the row number from 0 to 2\n\r");
            uint8_t row = getchar();
            putchar(row);
            row = row - '0';
            if(row > 2)
            {
                printf_tiny("\n\rEntered Row is incorrect\n\r");
                printMenu();
                continue;
            }
            printf_tiny("\n\rEnter the column number from 0 to 15\n\r");
            gets(x);
            uint8_t column = atoi(x);
            //column = column - '0';
            if(column > 15)
            {
                printf_tiny("\n\rEntered Column is incorrect\n\r");
                printMenu();
                continue;
            }
            uint8_t ad = lookUpTable1[row][column];
            printf("%d %d %d", row, column, ad);
            goToAddr(ad);
            busyWait();
            printf_tiny("\n\rEnter the character\n\r");
            uint8_t inputWrite = getchar();
            putchar(inputWrite);
            lcdPutCh(48);
        }

        if (ch == 'm')
        {
            printMenu();
        }

        if( ch == 'p')
            gamePacman();

        if(ch == 'x')
        {
            check = 0;
            partSec = 0;
            sec = 0;
            min = 0;
            hour = 0;
            x2 = 0;
        }

        if(ch == 'y')
        {
            TR0 = 0;
        }

        if(ch == 'z')
        {
            TR0 = 1;
        }

        if(ch == 'c')
        {
            lcdClear();
        }

        if(ch == 's')
        {
            char stringRead[48];
            printf_tiny("\n\rEnter the string\n\r");
            gets(stringRead);
            //puts(stringRead);
            putsLCD(stringRead);
        }

        if(ch == 'd')
        {
            ramDump();
        }

        if(ch == 'g')
        {
            customCharacter();
        }

    }
}

void timer0_isr() __interrupt (1)
{
    TH0 = 0x4B;
    TL0 = 0xFC;
    x2++;
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
        check = 1;
    }
}


int putchar (int c)
{
	while ((SCON & 0x02) == 0)    // wait for TX ready, spin on TI
    {
        if(check == 1)
        {
            check = 0;
            printTimeStamp();
        }
    }
	SBUF = c;  	// load serial port with transmit value
	TI = 0;  	// clear TI flag
	return 0;
}

int getchar ()
{
    while ((SCON & 0x01) == 0)  // wait for character to be received, spin on RI
    {
        if(check == 1)
        {
            check = 0;
            printTimeStamp();
        }
    }
	RI = 0;			// clear RI flag
	return SBUF;  	// return character from SBUF
}

void printTimeStamp()
{
    goToAddr(0x57);
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



