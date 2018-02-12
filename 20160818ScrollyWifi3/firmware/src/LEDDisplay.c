/******************************************************************************/
/* LEDDisplay.c                                                               */
/* Author: Matt Bennett                                                       */
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

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"
#include "peripheral/int/plib_int.h"
#include "tcpip/src/common/helpers.h"
#include <ASCII.h>
#include <LEDDisplay.h>



// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
LED_DISPLAY_TYPE LEDDisplay;


// *****************************************************************************
// *****************************************************************************
// Section: User Functions
// *****************************************************************************
// *****************************************************************************

// Comment a function definition and leverage automatic documentation 
/**
  <p><b>Function:</b></p>

  <p><b>Summary:</b></p>

  <p><b>Description:</b></p>

  <p><b>Remarks:</b></p>
 */
// TODO Insert function definitions (right here) to leverage live documentation
/******************************************************************************/

bool InitializeLEDDisplay(DISPLAY_TYPE *pDisplay)
{
    memset(&LEDDisplay,0,sizeof(LEDDisplay));
    mStripOutConfigure();
    while(!MakeWidthTable());
    while(!GenerateColorMap(pDisplay));
    pDisplay->backgroundColor = 0x07; /* color from color map */
    pDisplay->stringOffsetColumn = DISPLAY_NUMBER_COLUMNS;
    pDisplay->info.columns = DISPLAY_NUMBER_COLUMNS;
    pDisplay->info.rows = DISPLAY_NUMBER_ROWS;
    pDisplay->info.colors = SIMULTANEOUS_COLORS;
    pDisplay->info.proportional = true;
    pDisplay->info.displayMessage = true;
    pDisplay->info.timeDate = false;
    pDisplay->info.message = true;
    DisplaySetBackgroundColor(pDisplay,BLACK_COLOR_MAP_INDEX);
    DisplaySetForegroundColor(pDisplay,RED_COLOR_MAP_INDEX);
    SetMessage(pDisplay,DEFAULT_STRING);
    return DisplayNewMessage(pDisplay,DEFAULT_STRING);
}

bool DisplaySetBackgroundColor(DISPLAY_TYPE *pDisplay, uint8_t backgroundColor)
{
    if(backgroundColor >= SIMULTANEOUS_COLORS)
    {
        return false;
    }
    pDisplay->backgroundColor = backgroundColor;
    return true;
}

bool DisplaySetForegroundColor(DISPLAY_TYPE *pDisplay, uint8_t foregroundColor)
{
    //uint32_t characterIndex = 0;
    if(foregroundColor >= SIMULTANEOUS_COLORS)
    {
        return false;
    }
    pDisplay->foregroundColor = foregroundColor;
    /* set the color of each character */
    //while(pDisplay->display[characterIndex]&&(characterIndex<DISPLAY_STRING_LENGTH))
    //{
    //    pDisplay->characterColor[characterIndex++] = pDisplay->foregroundColor;
    //}
    return true;
}
/******************************************************************************/

bool SetMessage(DISPLAY_TYPE *pDisplay, uint8_t *message)
{
    /* clear out the current message buffer*/
    memset(pDisplay->message,0,sizeof(pDisplay->message));
    /* write the new message into the buffer */
    strcpy((char*)pDisplay->message,(char*)message);
    /* update the number of columns in the message */
    return true;
}

void EnableTime(DISPLAY_TYPE *pDisplay, bool enable)
{
    pDisplay->info.timeDate = enable;
    BSP_LEDStateSet(BSP_LED_1, enable);
}
/******************************************************************************/

bool DisplayNewMessage(DISPLAY_TYPE *pDisplay, uint8_t *message)
{
    uint32_t characterIndex = 0;
    /* clear out the current message buffer*/
    memset(pDisplay->display,0,sizeof(pDisplay->display));
    /* write the new message into the buffer */
    strcpy((char*)pDisplay->display,(char*)message);
    /* update the number of columns in the message */
    pDisplay->stringColumns = GetMessageColumnWidth(pDisplay->display,
                                                    pDisplay->info.proportional);
    /* update where the message starts to be displayed- so the message starts */
    /* whole from the right edge.                                             */
    pDisplay->stringOffsetColumn = pDisplay->info.columns;
    /* message length may have changed, so set the colors                     */
    /* set the color of each character                                        */
    while(pDisplay->display[characterIndex]&&(characterIndex<DISPLAY_STRING_LENGTH))
    {
        pDisplay->characterColor[characterIndex++] = pDisplay->foregroundColor;
    }    
    return true;
}

/******************************************************************************/

uint8_t* GetpDisplayString(DISPLAY_TYPE *pDisplay)
{
    return pDisplay->message;
}

/******************************************************************************/

void FinishedLEDWriteCB(DRV_SPI_BUFFER_EVENT event, 
                        DRV_SPI_BUFFER_HANDLE bufferHandle, 
                        void * context)
{
    LEDDisplay.transmitting=false;
}

/******************************************************************************/

bool GenerateColorMap(DISPLAY_TYPE *pDisplay)
{
    /* make the color map */
    pDisplay->colorMap[BLACK_COLOR_MAP_INDEX].red   = COLOR_VALUE_BLACK_R;
    pDisplay->colorMap[BLACK_COLOR_MAP_INDEX].green = COLOR_VALUE_BLACK_G;
    pDisplay->colorMap[BLACK_COLOR_MAP_INDEX].blue  = COLOR_VALUE_BLACK_B; 
    pDisplay->colorMap[RED_COLOR_MAP_INDEX].red   = COLOR_VALUE_RED_R;
    pDisplay->colorMap[RED_COLOR_MAP_INDEX].green = COLOR_VALUE_RED_G;
    pDisplay->colorMap[RED_COLOR_MAP_INDEX].blue  = COLOR_VALUE_RED_B; 
    pDisplay->colorMap[GREEN_COLOR_MAP_INDEX].red   = COLOR_VALUE_GREEN_R;
    pDisplay->colorMap[GREEN_COLOR_MAP_INDEX].green = COLOR_VALUE_GREEN_G;
    pDisplay->colorMap[GREEN_COLOR_MAP_INDEX].blue  = COLOR_VALUE_GREEN_B; 
    pDisplay->colorMap[BLUE_COLOR_MAP_INDEX].red   = COLOR_VALUE_BLUE_R;
    pDisplay->colorMap[BLUE_COLOR_MAP_INDEX].green = COLOR_VALUE_BLUE_G;
    pDisplay->colorMap[BLUE_COLOR_MAP_INDEX].blue  = COLOR_VALUE_BLUE_B; 
    pDisplay->colorMap[YELLOW_COLOR_MAP_INDEX].red   = COLOR_VALUE_YELLOW_R;
    pDisplay->colorMap[YELLOW_COLOR_MAP_INDEX].green = COLOR_VALUE_YELLOW_G;
    pDisplay->colorMap[YELLOW_COLOR_MAP_INDEX].blue  = COLOR_VALUE_YELLOW_B; 
    pDisplay->colorMap[WHITE_COLOR_MAP_INDEX].red   = COLOR_VALUE_WHITE_R;
    pDisplay->colorMap[WHITE_COLOR_MAP_INDEX].green = COLOR_VALUE_WHITE_G;
    pDisplay->colorMap[WHITE_COLOR_MAP_INDEX].blue  = COLOR_VALUE_WHITE_B; 
    pDisplay->colorMap[VIOLET_COLOR_MAP_INDEX].red   = COLOR_VALUE_VIOLET_R;
    pDisplay->colorMap[VIOLET_COLOR_MAP_INDEX].green = COLOR_VALUE_VIOLET_G;
    pDisplay->colorMap[VIOLET_COLOR_MAP_INDEX].blue  = COLOR_VALUE_VIOLET_B; 
    pDisplay->colorMap[CYAN_COLOR_MAP_INDEX].red   = COLOR_VALUE_CYAN_R;
    pDisplay->colorMap[CYAN_COLOR_MAP_INDEX].green = COLOR_VALUE_CYAN_G;
    pDisplay->colorMap[CYAN_COLOR_MAP_INDEX].blue  = COLOR_VALUE_CYAN_B; 
    return true;
}

/******************************************************************************/

bool SendingToDisplay(void)
{
    
    if(PLIB_INT_IsEnabled(INT_ID_0))
    {
        bool sending;
        __builtin_disable_interrupts(); //PLIB_INT_Disable(INT_ID_0);
        if(LEDDisplay.transmitting)
        {
            LEDDisplay.transmitting = false;
            __builtin_enable_interrupts();
            return true;
        }
        else
        {
            __builtin_enable_interrupts();
            return false;
        }        
    }
    if(LEDDisplay.transmitting)
    {
        LEDDisplay.transmitting = false;
        return true;
    }
    else
    {
        return false;
    }
}

/******************************************************************************/

uint32_t PopulateDisplay(DISPLAY_TYPE *pDisplay)
{
    uint32_t bitIndex=0; /* bit index into rawLED buffer                    */
    RGB_COLOR_TYPE pixelColor;
    RGB_COLOR_TYPE backgroundColor;
    uint32_t pixelIndex = 0; 
    uint32_t characterIndex = 0;
    int32_t displayColumn;    
    int8_t displayRow=0;
    int32_t characterColumn = -1; /* column within a character */
    displayColumn = -pDisplay->stringColumns;
    /* is there a buffer available to write to?                               */
    if(LEDDisplay.status.bufferTransmitting==LEDDisplay.status.bufferFilling)
    {
        /* if the current buffer is in use, choose the other.                 */
        LEDDisplay.status.bufferFilling ^= 1;
    }
    /* clear out the buffer */
    memset(&LEDDisplay.rawLED[LEDDisplay.status.bufferFilling][0],
           0x00,
           RAW_BUFFER_SIZE);
    /* put the LED data into the buffer                                       */    
    backgroundColor=pDisplay->colorMap[pDisplay->backgroundColor];
    /* loop on each pixel. */
    do
    {
        /* only write to display if the display column is positive */
        if(displayColumn >= 0)
        {            
            /* get the value from the color map of the current pixel, and place it*/
            /* in the rawLED buffer we chose above. */
            if(((displayColumn >= (pDisplay->stringOffsetColumn)) && 
               (displayColumn < (pDisplay->stringOffsetColumn + pDisplay->stringColumns))) && 
                GetASCIIBit(pDisplay->display[characterIndex],
                            displayColumn & 0x01,
                            displayRow,
                            characterColumn))
            {
                pixelColor = pDisplay->colorMap[MAP_MASK & pDisplay->characterColor[characterIndex]];
                PopulatePixel(pixelColor, &bitIndex,&LEDDisplay.rawLED[LEDDisplay.status.bufferFilling][0]);
            }
            else
            {
                PopulatePixel(backgroundColor, &bitIndex,&LEDDisplay.rawLED[LEDDisplay.status.bufferFilling][0]);
            }
            /* we've added a pixel, so increment that */
            pixelIndex++;            
        }
        displayRow++;
        /* if we've sent the last row of this column...*/                
        if(displayRow >= pDisplay->info.rows)
        {
            displayRow=0;
            displayColumn++;
            /* wait until we get to the first column of data to be displayed */
            if(displayColumn >= pDisplay->stringOffsetColumn)
            {  
                if(characterColumn == -1)
                {
                    /* a -1 indicates that we're at the beginning of the displayable string */
                    characterIndex = 0;
                    characterColumn = GetCharacterStart(pDisplay->display[characterIndex],pDisplay->info.proportional);
                }
                else
                {
                    characterColumn++;       
                    /* are we at the last column of the character? */
                    if(characterColumn >= GetCharacterEnd(pDisplay->display[characterIndex],pDisplay->info.proportional)+KERNING)
                    {
                        characterIndex++; 
                        characterColumn = GetCharacterStart(pDisplay->display[characterIndex],pDisplay->info.proportional);
                    }
                }
            }
        }        
    }
    while((displayColumn<DISPLAY_NUMBER_COLUMNS)&&(bitIndex<RAW_BUFFER_SIZE));
    return bitIndex;
}

/******************************************************************************/

void PopulatePixel(RGB_COLOR_TYPE pixelColor, uint32_t *toSendIndex, uint8_t *toSend )
{
    uint8_t mask=0x80;    
    do{
        if(pixelColor.PIXEL_COLOR_0 & mask)
        {
            toSend[*toSendIndex]=LED_STRIP_ONE;
        }
        else
        {
            toSend[*toSendIndex]=LED_STRIP_ZERO;
        }
        (*toSendIndex)++;
        mask >>=1;
    }while(mask);
    mask=0x80;
    do{
        if(pixelColor.PIXEL_COLOR_1 & mask)
        {
            toSend[*toSendIndex]=LED_STRIP_ONE;
        }
        else
        {
            toSend[*toSendIndex]=LED_STRIP_ZERO;
        }
        (*toSendIndex)++;
        mask >>=1;
    }while(mask);
    mask=0x80;
    do{
        if(pixelColor.PIXEL_COLOR_2 & mask)
        {
            toSend[*toSendIndex]=LED_STRIP_ONE;
        }
        else
        {
            toSend[*toSendIndex]=LED_STRIP_ZERO;
        }
        (*toSendIndex)++;
        mask >>=1;
    }while(mask);
}

/******************************************************************************/

void SendDisplay(DISPLAY_TYPE *pDisplay)
{
    pDisplay->SPIBuffer = DRV_SPI_BufferAddWrite2 ( pDisplay->SPIHandle,
                                                    QueueDisplay(pDisplay),
                                                    RAW_BUFFER_SIZE,
                                                    &FinishedLEDWriteCB,
                                                    NULL,
                                                    &pDisplay->SPIBuffer);
    LEDDisplay.status.bufferTransmitting=LEDDisplay.status.bufferFilling;
    LEDDisplay.transmitting = true;
}

/******************************************************************************/

uint8_t* QueueDisplay(DISPLAY_TYPE *pDisplay)
{
    return &LEDDisplay.rawLED[LEDDisplay.status.bufferFilling][0];
}

/******************************************************************************/