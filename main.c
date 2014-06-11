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
#include "gfx/gfx_colors_x11.h"
#include "internal_resource.h"


/*********************************
 * FNT Font File Structure
 * Label: Font25
 * Description:  Height: 27 pixels, range: ' ' to '~'
 ***********************************/
//extern const GFX_RESOURCE_HDR __Font25;
//GFX_RESOURCE_HDR* getfont;
//#define Font25_SIZE    (5005)

int main(int argc, char** argv)
{

  GFX_GOL_MESSAGE msg;                        // GOL message structure to interact with GOL

  SYSTEM_InitializeBoard();

  GFX_ColorSet(GFX_X11_BLACK);
  GFX_ScreenClear();

  GFX_FontSet((GFX_RESOURCE_HDR*) &Font25);
  GFX_ColorSet(GFX_X11_WHITE);

  GFX_TextStringBoxDraw(0, 0, GFX_MaxXGet(), GFX_MaxYGet(), (GFX_XCHAR *)"BekeBand Technologies.",
    0, GFX_ALIGN_CENTER);

  while(1);
  while (1)
  {
    GFX_ColorSet(BLUE);
    GFX_ScreenClear();
    __delay_ms(1000);
    GFX_ColorSet(RED);
    GFX_ScreenClear();
    __delay_ms(1000);
    GFX_ColorSet(GREEN);
    GFX_ScreenClear();
    __delay_ms(1000);
  };
  return (EXIT_SUCCESS);
}

