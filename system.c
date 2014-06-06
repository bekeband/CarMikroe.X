// *****************************************************************************
// Section: Includes
// *****************************************************************************
#include <xc.h>
#include <system.h>
#include "driver/gfx/drv_gfx_display.h"

// *****************************************************************************
// Configuration bits
// *****************************************************************************

// PIC24FJ256GB110 Configuration Bit Settings

#include <xc.h>

#pragma config FPLLODIV = DIV_2
#pragma config FPLLMUL = MUL_20
#pragma config FPLLIDIV = DIV_1
#pragma config FWDTEN = OFF
#pragma config FCKSM = CSECME
#pragma config FPBDIV = DIV_2
#pragma config OSCIOFNC = ON
#pragma config POSCMOD = XT
#pragma config FSOSCEN = ON
#pragma config FNOSC = PRIPLL
#pragma config CP = OFF
#pragma config BWP = OFF
#pragma config PWP = OFF

// *****************************************************************************
// void SYSTEM_InitializeBoard(void)
// *****************************************************************************
void SYSTEM_InitializeBoard(void)
{

    // ---------------------------------------------------------
    // Make sure the display DO NOT flicker at start up
    // ---------------------------------------------------------
    DisplayBacklightConfig();
    DisplayPowerConfig();
    DisplayBacklightOff();


    // ---------------------------------------------------------
    // Initialize the Display Driver
    // ---------------------------------------------------------
    DRV_GFX_Initialize();


}

