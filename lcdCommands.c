#include "lcdCommands.h"
uint8_t lookUpTable[4][16] = {{0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F},
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
        lcdPutCh(y[i + (j * 16)]);
        i++;
    }

}

int getchar ()
{
    while ((SCON & 0x01) == 0);  // wait for character to be received, spin on RI
	RI = 0;			// clear RI flag
	return SBUF;  	// return character from SBUF
}

int putchar (int c)
{
	while ((SCON & 0x02) == 0);    // wait for TX ready, spin on TI
	SBUF = c;  	// load serial port with transmit value
	TI = 0;  	// clear TI flag
	return 0;
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
		if (count == 60)
		{
			printf("\n\rPlease Input a maximum of 64 digits\n\r");
			break;
		}
    }
}
