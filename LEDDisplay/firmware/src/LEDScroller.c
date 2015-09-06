/******************************************************************************/
/* LEDScroller.c                                                              */
/* Author: Matt Bennett                                                       */
/* Created:                                                                   */
/******************************************************************************/
// <editor-fold defaultstate="collapsed" desc="mjb MIT license">
/* all portions not otherwise copyright by others (Microchip in particular)   */
/* are copyright (c) 2015 by Matt Bennett, released under the MIT license,    */
/* (below).                                                                   */
/******************************************************************************/
/*                                                                            */
/* The MIT License (MIT)                                                      */
/*                                                                            */
/* Copyright (c) 2015 Matt Bennett                                            */
/*                                                                            */
/* Permission is hereby granted, free of charge, to any person obtaining a    */
/* copy of this software and associated documentation files (the "Software"), */
/* to deal in the Software without restriction, including without limitation  */
/* the rights to use, copy, modify, merge, publish, distribute, sublicense,   */
/* and/or sell copies of the Software, and to permit persons to whom the      */
/* Software is furnished to do so, subject to the following conditions:       */
/*                                                                            */
/* The above copyright notice and this permission notice shall be included in */
/* all copies or substantial portions of the Software.                        */
/*                                                                            */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS    */
/* OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF                 */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN  */
/* NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   */
/* DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR      */
/* OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE  */
/* USE OR OTHER DEALINGS IN THE SOFTWARE.                                     */
/*                                                                            */
/******************************************************************************/// </editor-fold>
// <editor-fold defaultstate="collapsed" desc="Microchip License">
/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */

/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************// </editor-fold>

/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    ledscroller.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "LEDScroller.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

LEDSCROLLER_DATA LEDScrollerData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback funtions.
*/

void TimerCallback ( uintptr_t context, uint32_t currTick )
{
    LEDScrollerData.status.readyForNext=true;
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void LEDSCROLLER_Initialize ( void )

  Remarks:
    See prototype in ledscroller.h.
 */

void LEDSCROLLER_Initialize ( void )
{
    memset(&LEDScrollerData,0,sizeof(LEDScrollerData));
    InitializeLEDDisplay(&LEDScrollerData.display);
    ACTIVITY_LED_DIRECTION = TRIS_OUT;    
    LEDScrollerData.activityLED.interval = ACTIVITY_LED_INTERVAL;    
    LEDScrollerData.state = LEDSCROLLER_STATE_INIT;    
}


/******************************************************************************
  Function:
    void LEDSCROLLER_Tasks ( void )

  Remarks:
    See prototype in LEDScroller.h.
 */

void LEDSCROLLER_Tasks ( void )
{
    switch ( LEDScrollerData.state )
    {
        case LEDSCROLLER_STATE_INIT:
        {
            /* start up the SPI and timer drivers */
            if(LEDScrollerData.status.ready)
            {
                LEDScrollerData.state = LEDSCROLLER_STATE_RUN;
                break;
            }            
            if(LEDScrollerData.status.SPIReady==false)
            {
                LEDScrollerData.display.SPIHandle = DRV_SPI_Open(DRV_SPI_INDEX_0,
                                                    DRV_IO_INTENT_EXCLUSIVE |
                                                    DRV_IO_INTENT_WRITE |
                                                    DRV_IO_INTENT_NONBLOCKING
                                               );     
                LEDScrollerData.status.SPIReady = ( DRV_HANDLE_INVALID != LEDScrollerData.display.SPIHandle );
            }
            if(LEDScrollerData.status.TimerDriverReady==false)
            {
                LEDScrollerData.timer.driver.handle = DRV_TMR_Open(
                        DRV_TMR_INDEX_0,
                        DRV_IO_INTENT_READWRITE|DRV_IO_INTENT_EXCLUSIVE);
                LEDScrollerData.status.TimerDriverReady = 
                        (LEDScrollerData.timer.driver.handle != DRV_HANDLE_INVALID);
            }     
            if(LEDScrollerData.status.SPIReady && LEDScrollerData.status.TimerDriverReady)
            {
                LEDScrollerData.display.stringOffsetColumn=LEDScrollerData.display.stringOffsetColumn;                
                LEDScrollerData.state=LEDSCROLLER_STATE_TIMER_START;
            }
            break;
        }        
        case LEDSCROLLER_STATE_TIMER_START:
        {  
            /* start the timer that triggers the data to be written.*/
            if(DRV_TMR_AlarmRegister(LEDScrollerData.timer.driver.handle,
                    DRV_TMR_CounterFrequencyGet(LEDScrollerData.timer.driver.handle)/25,
                    true,
                    0,
                    &TimerCallback)
                )
            {                
                if(DRV_TMR_Start(LEDScrollerData.timer.driver.handle))
                {
                    LEDScrollerData.status.ready=true;
                    LEDScrollerData.state=LEDSCROLLER_STATE_RUN;
                    LEDScrollerData.status.readyForNext=true;
                }
            }
            break;
        }     
        case LEDSCROLLER_STATE_WAIT:
        {
            /* wait for the SPI transaction to finish. */
            if(SendingToDisplay())
            {
                break;
            }
            LEDScrollerData.display.stringOffsetColumn--;
            if(LEDScrollerData.display.stringOffsetColumn<(-LEDScrollerData.display.stringColumns))
            {
                /* last character sent- restart. */
                uint8_t characterColor;
                uint8_t characterIndex=0;
                LEDScrollerData.display.stringOffsetColumn = LEDScrollerData.display.info.columns;
                characterColor = LEDScrollerData.display.characterColor[0];
                do
                {
                    characterColor++;
                    characterColor &= MAP_MASK;
                } while (characterColor==LEDScrollerData.display.backgroundColor);
                while(LEDScrollerData.display.characterString[characterIndex])
                {
                    LEDScrollerData.display.characterColor[characterIndex++] = characterColor;
                }
            }
            LEDScrollerData.state=LEDSCROLLER_STATE_RUN;
            /* drop through immediately */
        }     
        case LEDSCROLLER_STATE_RUN:
        {             
            /* running. Fill up the display buffer with what needs to be sent */       
            /* write each pixel out to the SPI buffer                     */ 
            PopulateDisplay(&LEDScrollerData.display);
            LEDScrollerData.state=LEDSCROLLER_STATE_SEND_STRIP; 
            break;
        }
        case LEDSCROLLER_STATE_SEND_STRIP:
        {
            /* data is ready- wait for timer to trigger and previous data to  */
            /* all be sent                                                    */
            if(LEDScrollerData.status.readyForNext&&(SendingToDisplay()==false))
            {
                LEDScrollerData.status.readyForNext=false;      
                /* give the data over to the SPI system to send to the LED strip */
                SendDisplay(&LEDScrollerData.display);
                LEDScrollerData.state=LEDSCROLLER_STATE_WAIT;
            }
            break;
        }   
        case LEDSCROLLER_STATE_ERROR:
        default:
        {
            /* shouldn't get here. */
            LEDSCROLLER_Initialize();
            break;
        }
    }
    if(LEDScrollerData.activityLED.blinkCount++>LEDScrollerData.activityLED.interval)
    {
        mActivityLEDInvert();
        LEDScrollerData.activityLED.blinkCount=0;
    }   
}
 

/*******************************************************************************
 End of File
 */
