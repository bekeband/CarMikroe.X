/* 
 * File:   main.c
 * Author: Tulajdonos
 *
 * Created on 2014. június 4., 13:29
 */

#include <stdio.h>
#include <stdlib.h>
#include "gfx/gfx.h"
#include "gfx/gfx_gol.h"
#include "system_config.h"

/*
 * 
 */
int main(int argc, char** argv)
{

  GFX_GOL_MESSAGE msg;                        // GOL message structure to interact with GOL

  SYSTEM_InitializeBoard();

  while (1)
  {
    GFX_ColorSet(0b1111100000000000);
    GFX_ScreenClear();
    __delay_ms(1000);
    GFX_ColorSet(0b0000011111100000);
    GFX_ScreenClear();
    __delay_ms(1000);
    GFX_ColorSet(0b0000000000011111);
    GFX_ScreenClear();
    __delay_ms(1000);
  };
  return (EXIT_SUCCESS);
}

