/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    scroller.c

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

#include "scroller.h"

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

SCROLLER_DATA scrollerData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

void TimerCallback ( uintptr_t context, uint32_t currTick )
{
    scrollerData.status.readyForNext=true;
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
    void SCROLLER_Initialize ( void )

  Remarks:
    See prototype in scroller.h.
 */

bool SCROLLER_Initialize ( void )
{
    memset(&scrollerData,0,sizeof(scrollerData));
    InitializeLEDDisplay(&scrollerData.display);
    #ifdef USE_ACTIVITY_LED
    ACTIVITY_LED_DIRECTION = TRIS_OUT;    
    scrollerData.activityLED.interval = ACTIVITY_LED_INTERVAL;    
    #endif
    scrollerData.display.stringOffsetColumn=scrollerData.display.info.columns;
    return true;
}


/******************************************************************************/
/*  Function:                                                                 */
/*   void SCROLLER_Tasks ( void )                                             */
/*                                                                            */
/*  Remarks:                                                                  */
/*   See prototype in scroller.h.                                             */
/******************************************************************************/

void SCROLLER_Tasks ( void )
{
    switch ( scrollerData.state )
    {
        case SCROLLER_STATE_INIT:
        {
            if(SCROLLER_Initialize())
            {
                scrollerData.state = SCROLLER_STATE_OPEN_SPI;
            }
            break;
        }
        case SCROLLER_STATE_OPEN_SPI:
        {
            if(scrollerData.status.SPIReady)
            {
                scrollerData.state = SCROLLER_STATE_OPEN_TIMER;
            }
            else
            {
                scrollerData.display.SPIHandle = DRV_SPI_Open(SCROLLER_SPI_DRIVER, DRV_IO_INTENT_EXCLUSIVE | DRV_IO_INTENT_WRITE | DRV_IO_INTENT_NONBLOCKING);     
                scrollerData.status.SPIReady = ( DRV_HANDLE_INVALID != scrollerData.display.SPIHandle);
            }
            break;
        }
        case SCROLLER_STATE_OPEN_TIMER:
        {
            
            if(scrollerData.status.TimerDriverReady)
            {
                scrollerData.state = SCROLLER_STATE_START_TIMER;
            }
            else
            {
                scrollerData.timer.driver.handle = DRV_TMR_Open( SCROLLER_TIMER_DRIVER, DRV_IO_INTENT_READWRITE|DRV_IO_INTENT_EXCLUSIVE);
                scrollerData.status.TimerDriverReady = (DRV_HANDLE_INVALID != scrollerData.timer.driver.handle);
            }     
            break;
        }        
        case SCROLLER_STATE_START_TIMER:
        {  
            /* start the timer that triggers the data to be written.*/
            if(DRV_TMR_AlarmRegister(scrollerData.timer.driver.handle,
                    DRV_TMR_CounterFrequencyGet(scrollerData.timer.driver.handle)/25,
                    true,
                    0,
                    &TimerCallback)
                )
            {              
                /* check to see if the timer was started                      */
                if(DRV_TMR_Start(scrollerData.timer.driver.handle))
                {
                    scrollerData.status.ready = true;
                    scrollerData.state = SCROLLER_STATE_POPULATE_BUFFER;
                }
            }
            break;
        }           
        case SCROLLER_STATE_POPULATE_BUFFER:
        {             
            /* running. Fill up the display buffer with what needs to be sent */       
            /* write each pixel out to the SPI buffer                     */ 
            PopulateDisplay(&scrollerData.display);
            scrollerData.state=SCROLLER_STATE_SEND_STRIP; 
            break;
        }
        case SCROLLER_STATE_SEND_STRIP:
        {
            /* data is ready- wait for timer to trigger and previous data to  */
            /* all be sent                                                    */
            if((scrollerData.status.readyForNext)&&(!SendingToDisplay()))
            {
                scrollerData.status.readyForNext=false;      
                /* give the data over to the SPI system to send to the LED strip */
                SendDisplay(&scrollerData.display);
                scrollerData.state=SCROLLER_STATE_DETERMINE_START;
            }
            break;
        }   
        case SCROLLER_STATE_DETERMINE_START:
        {
            scrollerData.display.stringOffsetColumn--;
            if(scrollerData.display.stringOffsetColumn<(-scrollerData.display.stringColumns))
            {
                /* last character sent- restart. */
                scrollerData.display.stringOffsetColumn = scrollerData.display.info.columns;
            }
            scrollerData.state = SCROLLER_STATE_POPULATE_BUFFER;
            break;
        }     
        case SCROLLER_STATE_ERROR:
        default:
        {
            /* shouldn't get here. */
            SCROLLER_Initialize();
            break;
        }
    }
    #ifdef USE_ACTIVITY_LED
    if(scrollerData.activityLED.blinkCount++>scrollerData.activityLED.interval)
    {
        mActivityLEDInvert();
        scrollerData.activityLED.blinkCount=0;
    }   
    #endif
}
 

/*******************************************************************************
 End of File
 */
