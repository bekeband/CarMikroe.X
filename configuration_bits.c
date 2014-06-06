/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#ifdef __XC32
    #include <xc.h>          /* Defines special funciton registers, CP0 regs  */
#endif

#include <plib.h>            /* Include to use PIC32 peripheral libraries     */

/******************************************************************************/
/* Configuration Bits                                                         */
/*                                                                            */
/* Refer to 'C32 Configuration Settings' under the Help > Contents            */
/* > C32 Toolchain in MPLAB X IDE for available C32 PIC32 Configurations. For */
/* additional information about what the hardware configurations mean in      */
/* terms of device operation, refer to the device datasheet 'Special Features'*/
/* chapter. XC32 documentation is available under Help > Contents >           */
/* XC32 C Compiler.                                                           */
/*                                                                            */
/* A feature of MPLAB X is the 'Generate Source Code to Output' utility in    */
/* the Configuration Bits window.  Under Window > PIC Memory Views >          */
/* Configuration Bits, a user controllable configuration bits window is       */
/* available to Generate Configuration Bits source code which the user can    */
/* paste into this project.                                                   */
/******************************************************************************/

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
