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
    memset(input, '\0',60 * sizeof(char));
    lcdInit();
    lcdClear();
    //customCharacter();
    gamePacman();
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

