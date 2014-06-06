/* 
 * File:   system_config.h
 * Author: Tulajdonos
 *
 * Created on 2014. június 4., 13:41
 */

#ifndef SYSTEM_CONFIG_H
#define	SYSTEM_CONFIG_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "gfx_config.h"

#define GFX_CONFIG_FONT_RAM_DISABLE
#define GFX_CONFIG_FONT_EXTERNAL_DISABLE
#define GFX_CONFIG_IMAGE_EXTERNAL_DISABLE
#define GFX_CONFIG_COLOR_DEPTH 16

/*********************************************************************
* Overview: Basic colors definitions.
*           The basic colors defined in this section are defined
*           for basic demo requirements. End application can define additional
*           colors or override existing default colors. If overriding an
*           existing default color, define the new color value before
*           the #include of Graphics.h to avoid the compile time warning.
*           When using palette, a different file 'PaletteColorDefines.h' has
*           to be used instead.
*********************************************************************/
#define GFX_CONFIG_PALETTE_DISABLE

#define BACKLIGHT_ENABLE_LEVEL  1
#define BACKLIGHT_DISABLE_LEVEL 0
    
// Definitions for backlight control pin
#define DisplayBacklightConfig()    (TRISDbits.TRISD2 = 0)
#define DisplayBacklightOn()        (LATDbits.LATD2 = BACKLIGHT_ENABLE_LEVEL)
#define DisplayBacklightOff()       (LATDbits.LATD2 = BACKLIGHT_DISABLE_LEVEL)

    // Definitions for reset pin
#define DisplayResetConfig()        TRISCbits.TRISC1 = 0
#define DisplayResetEnable()        LATCbits.LATC1 = 0
#define DisplayResetDisable()       LATCbits.LATC1 = 1

// Definitions for RS pin
#define DisplayCmdDataConfig()      TRISBbits.TRISB15 = 0
#define DisplaySetCommand()         LATBbits.LATB15 = 0
#define DisplaySetData()            LATBbits.LATB15 = 1

// Definitions for CS pin
#define DisplayConfig()             TRISFbits.TRISF12 = 0
#define DisplayEnable()             LATFbits.LATF12 = 0
#define DisplayDisable()            LATFbits.LATF12 = 1


#define GFX_USE_DISPLAY_CONTROLLER_ILI9341

#define DISP_ORIENTATION    90
#define DISP_HOR_RESOLUTION 240
#define DISP_VER_RESOLUTION 320

#define USE_GFX_PMP
#define USE_16BIT_PMP

    // based on the ILI9341 data sheet
#define PMP_DATA_SETUP_TIME       (10)
#define PMP_DATA_WAIT_TIME        (45)
#define PMP_DATA_HOLD_TIME        (10)

    // Definitions for FLASH CS pin
#define DisplayFlashConfig()
#define DisplayFlashEnable()
#define DisplayFlashDisable()

// Definitions for POWER ON pin
#define DisplayPowerConfig()
#define DisplayPowerOn()
#define DisplayPowerOff()

#define GFX_CONFIG_TRANSPARENT_COLOR_DISABLE

    /*********************************************************************
* Macro: #define	SYS_CLK_FrequencySystemGet()
*
* Overview: This macro returns the system clock frequency in Hertz.
*			* value is 8 MHz / 2 x 20 PLL for PIC32MX
*
********************************************************************/
#define SYS_CLK_FrequencySystemGet()    (80000000ul)

/*********************************************************************
* Macro: #define	SYS_CLK_FrequencyPeripheralGet()
*
* Overview: This macro returns the peripheral clock frequency
*			used in Hertz.
*			* value for PIC24 is <PRE>(SYS_CLK_FrequencySystemGet()/2) </PRE>
*
********************************************************************/
#define SYS_CLK_FrequencyPeripheralGet()    (SYS_CLK_FrequencySystemGet() / 2)

/*********************************************************************
* Macro: #define	SYS_CLK_FrequencyInstructionGet()
*
* Overview: This macro returns instruction clock frequency
*			used in Hertz.
*			* value for PIC24 is <PRE>(SYS_CLK_FrequencySystemGet()/2) </PRE>
*
********************************************************************/
#define SYS_CLK_FrequencyInstructionGet()   (SYS_CLK_FrequencySystemGet() / 2)

/**********************************************************************
 * __delay_ms define - FCY must be defined before including
 * libpic30.h
 **********************************************************************/
#define FCY             (SYS_CLK_FrequencyInstructionGet())

#ifdef	__cplusplus
}
#endif

#endif	/* SYSTEM_CONFIG_H */

