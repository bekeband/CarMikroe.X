
#include <plib.h>
#include "delay.h"

void delay(long period)
{
  OpenTimer23(T23_ON | T23_IDLE_CON | T23_PS_1_256 | T23_SOURCE_INT, period);
  IFS0bits.T3IF = 0;
  while (!IFS0bits.T3IF) ;
  CloseTimer23();

/*  IFS0bits.T1IF = 0;
  OpenTimer1(T1_ON | T1_IDLE_CON | T1_TMWDIS_OFF | T1_SOURCE_INT | T1_PS_1_256, period);
  while (!IFS0bits.T1IF) ;
  CloseTimer1();*/
}

void __delay_ms(long msec)
{
  delay(msec * 312);
}

void __delay_us(long usec)
{
  delay(usec);
}
