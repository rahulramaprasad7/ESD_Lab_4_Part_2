#include "lcdCommands.h"

uint8_t partSec;
uint8_t sec;
uint8_t min;
uint8_t hour;
uint8_t x2;
uint8_t check;

void printTimeStamp();

void main()
{
    check = 0;
    partSec = 0;
    sec = 0;
    min = 0;
    hour = 0;
    x2 = 0;
    char input[60];
    memset(input, '\0',60);
    lcdInit();
    lcdClear();
    busyWait();
    lcdGeneral = 0x40 | 0x00;
    busyWait();
    writeCharacter = 0x1B;
    busyWait();
    lcdGeneral = 0x40 | 0x01;
    busyWait();
    writeCharacter = 0x1B;
    busyWait();
    lcdGeneral = 0x40 | 0x02;
    busyWait();
    writeCharacter = 0x00;
    busyWait();
    lcdGeneral = 0x40 | 0x03;
    busyWait();
    writeCharacter = 0x04;
    busyWait();
    lcdGeneral = 0x40 | 0x04;
    busyWait();
    writeCharacter = 0x04;
    busyWait();
    lcdGeneral = 0x40 | 0x05;
    busyWait();
    writeCharacter = 0x11;
    busyWait();
    lcdGeneral = 0x40 | 0x06;
    busyWait();
    writeCharacter = 0x0E;
    busyWait();
    lcdGeneral = 0x40 | 0x07;
    busyWait();
    writeCharacter = 0x00;
    busyWait();
    goToXY(3,1);
    busyWait();
    lcdGeneral = 0x80 | 0x00;
    busyWait();
    writeCharacter = 0x00;
//    printf_tiny("Enter String\n\r");
//    gets(input);
//    putsLCD(input);
    timerInit();
    while(1)
    {
        if(check == 1)
        {
            check = 0;
            printTimeStamp();
        }
        else
            continue;
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

