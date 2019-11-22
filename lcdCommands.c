#include "lcdCommands.h"
const char uiLines[60] = "\n\r-------------------------------------------------\n\r";
const char messages[11][40] = {" Enter w to write a character ", " Enter s to write a string", " Enter p to play pacman ", " Enter d to perform RAM dump ", " Enter g for custom character", " Enter x to reset timer", " Enter y to pause timer", " Enter z to resume timer"," Enter s to clear screen"," Enter m for main menu "};

const uint8_t lookUpTable[4][16] = {{0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F},
                              {0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4A,0x4B,0x4C,0x4D,0x4E,0x4F},
                              {0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1A,0x1B,0x1C,0x1D,0x1E,0x1F},
                              {0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5A,0x5B,0x5C,0x5D,0x5E,0x5F}};
void delay()
{
    uint16_t i;
    for ( i = 0 ; i < 1000; i++);
}

void timerInit()
{
    TMOD |= 0x01;
    TH0 = 0x4B;
    TL0 = 0xFC;
    TR0 = 1;           //turn ON Timer zero
    EA = 1;            //Enable Global Interrupt bit
    ET0 = 1;           //Enable TImer0 Interrupt
}

void busyWait()
{
    while (busyPoll & 0x80);
}

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

void lcdPutCh(uint8_t x)
{
    busyWait();
    writeCharacter = x;
}

void lcdClear()
{
    busyWait();
    lcdGeneral = 0x01;
}

void goToAddr(uint8_t x)
{
    busyWait();
    lcdGeneral = 0x80 | x;
}

void goToXY(uint8_t x, uint8_t y)
{
    busyWait();
    goToAddr(lookUpTable[x][y]);
}

void customCharacter()
{
    int temp;
    int decimal;
    char x[8];
    busyWait();
    lcdGeneral = 0x40 | 0x10;
    busyWait();
    do{
        printf_tiny("\n\rEnter value for Row 1\n\r");
        gets(x);
        temp = atoh(x);
    }while(temp < 0 || temp > 0x1F);

    memset(x,'\0',8 * sizeof(char));
    writeCharacter = temp & 0xFF;
    busyWait();
    lcdGeneral = 0x40 | 0x11;
    busyWait();
    do{
        printf_tiny("\n\rEnter value for Row 2\n\r");
        gets(x);
        temp = atoh(x);
    }while(temp < 0 || temp > 0x1F);
    gets(x);
    decimal = atoi(x);
    printBinary(decimal);
    temp = atoh(x);
    memset(x,'\0',8 * sizeof(char));
    writeCharacter = temp & 0xFF;
    busyWait();
    lcdGeneral = 0x40 | 0x12;
    busyWait();
    do{
        printf_tiny("\n\rEnter value for Row 3\n\r");
        gets(x);
        temp = atoh(x);
    }while(temp < 0 || temp > 0x1F);
    printBinary(decimal);
    temp = atoh(x);
    memset(x,'\0',8 * sizeof(char));
    writeCharacter = temp & 0xFF;
    busyWait();
    lcdGeneral = 0x40 | 0x13;
    busyWait();
    do{
        printf_tiny("\n\rEnter value for Row 4\n\r");
        gets(x);
        temp = atoh(x);
    }while(temp < 0 || temp > 0x1F);
    memset(x,'\0',8 * sizeof(char));
    writeCharacter = temp & 0xFF;
    busyWait();
    lcdGeneral = 0x40 | 0x14;
    busyWait();
    do{
        printf_tiny("\n\rEnter value for Row 5\n\r");
        gets(x);
        temp = atoh(x);
    }while(temp < 0 || temp > 0x1F);
    memset(x,'\0',8 * sizeof(char));
    writeCharacter = temp & 0xFF;
    busyWait();
    lcdGeneral = 0x40 | 0x15;
    busyWait();
    do{
        printf_tiny("\n\rEnter value for Row 6\n\r");
        gets(x);
        temp = atoh(x);
    }while(temp < 0 || temp > 0x1F);
    memset(x,'\0',8 * sizeof(char));
    writeCharacter = temp & 0xFF;
    busyWait();
    lcdGeneral = 0x40 | 0x16;
    busyWait();
    do{
        printf_tiny("\n\rEnter value for Row 7\n\r");
        gets(x);
        temp = atoh(x);
    }while(temp < 0 || temp > 0x1F);
    memset(x,'\0',8 * sizeof(char));
    writeCharacter = temp & 0xFF;
    busyWait();
    lcdGeneral = 0x40 | 0x17;
    busyWait();
    do{
        printf_tiny("\n\rEnter value for Row 8\n\r");
        gets(x);
        temp = atoh(x);
    }while(temp < 0 || temp > 0x1F);
    memset(x,'\0',8 * sizeof(char));
    writeCharacter = temp & 0xFF;
    busyWait();
    goToXY(3,1);
    busyWait();
    lcdGeneral = 0x80 | 0x01;
    busyWait();
    writeCharacter = 0x01;
}

uint8_t readLCD()
{
    busyWait();
    uint8_t temp1 = readCharacter;
    return temp1;
}

void putsLCD(char* y)
{
    int i = 0,j = 0, k =0;
    while(y[i + (j * 16)] != '\0')
    {
        busyWait();
        if( i > 15)
        {
            j++;
            i = 0;
            //k += 16;
        }
        goToAddr(lookUpTable[j][i]);
        printf_tiny("%d\n\r", lookUpTable[j][i]);
        lcdPutCh(y[i + (j * 16)]);
        i++;
    }
}

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

void ramDump()
{
    uint8_t i = 0;
    int j = 0;
    printf_tiny("\n\rDDRAM Contents\n\r");
    for (i = 0; i < 128; i += 16)      //Print 64 ASCII characters in each line
    {
        lcdGeneral = 0x80 | i;
        uint8_t x = readLCD();
        printf("%2x: ",i);
        for (j = i; j < (i+16) && j < 128; j++)    //Print the contents of buffer in ASCII
        {
            printf("%2x ", x);
        }
        printf_tiny("\n\r");
    }
    printf_tiny("\n\rCGRAM Contents\n\r");
    for (i = 0; i < 64; i += 16)      //Print 64 ASCII characters in each line
    {
        lcdGeneral = 0x40 | i;
        uint8_t x = readLCD();
        printf("%2x: ",i);
        for (j = i; j < (i+16) && j < 64; j++)    //Print the contents of buffer in ASCII
        {
            printf("%2x ", x);
        }
        printf_tiny("\n\r");
    }
}

void gamePacman()
{
    char ch;
    int i = 1;
    makePacmanRight();
    makePacmanLeft();
    goToAddr(lookUpTable[0][4]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][5]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][8]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][9]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][12]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][13]);
    lcdPutCh('*');
    goToAddr(lookUpTable[0][14]);
    lcdPutCh('*');
    goToAddr(lookUpTable[1][1]);
    lcdPutCh('*');
    goToAddr(lookUpTable[1][2]);
    lcdPutCh('*');
    goToAddr(lookUpTable[1][3]);
    lcdPutCh('*');
    goToAddr(lookUpTable[1][12]);
    lcdPutCh('*');
    goToAddr(lookUpTable[1][13]);
    lcdPutCh('*');
    printf_tiny("\n\rEnter w to go up, s to go down, a to go left and d to go right and q to quit\n\r");
    do{
        ch = getchar();
        if(ch == 'd')
        {
            putchar(7);
            goToAddr(lookUpTable[0][i-1]);
            busyWait();
            lcdPutCh(' ');
            busyWait();
            lcdGeneral = 0x80 | (lookUpTable[0][i]);
            busyWait();
            writeCharacter = 0x00;
            busyWait();
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

        if(ch == 'a')
        {
            putchar(7);
            goToAddr(lookUpTable[0][i+1]);
            busyWait();
            lcdPutCh(' ');
            busyWait();
            lcdGeneral = 0x80 | (lookUpTable[0][i]);
            busyWait();
            writeCharacter = 0x00;
            busyWait();
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
}

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
void makePacmanLeft()
{
    busyWait();
    lcdGeneral = 0x40 | 0x30;
    busyWait();
    writeCharacter = 0x0C;
    busyWait();
    lcdGeneral = 0x40 | 0x31;
    busyWait();
    writeCharacter = 0x12;
    busyWait();
    lcdGeneral = 0x40 | 0x32;
    busyWait();
    writeCharacter = 0x09;
    busyWait();
    lcdGeneral = 0x40 | 0x33;
    busyWait();
    writeCharacter = 0x05;
    busyWait();
    lcdGeneral = 0x40 | 0x34;
    busyWait();
    writeCharacter = 0x05;
    busyWait();
    lcdGeneral = 0x40 | 0x35;
    busyWait();
    writeCharacter = 0x09;
    busyWait();
    lcdGeneral = 0x40 | 0x36;
    busyWait();
    writeCharacter = 0x12;
    busyWait();
    lcdGeneral = 0x40 | 0x37;
    busyWait();
    writeCharacter = 0x0C;
    busyWait();
    goToXY(3,1);
    busyWait();
    //lcdGeneral = 0x80 | 0x03;
    busyWait();
    //writeCharacter = 0x03;
}

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

int atoh(char *ap)
{
	char *p;
	int n;
	int digit,lcase;

	p = ap;
	n = 0;
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

void printMenu()
{
    int i;
    printf("%s",uiLines);
    printf("\n\r");
    for ( i = 0; i < 10; i++)
    {
        printf("%s",messages[i]);
        printf_tiny("\n\r");
    }
    printf("%s",uiLines);
    printf("\n\r");

}
