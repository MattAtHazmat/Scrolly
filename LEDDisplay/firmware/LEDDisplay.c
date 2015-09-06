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
    pDisplay->stringOffsetColumn = pDisplay->info.columns; 
    //strcpy(pDisplay->characterString,"Hello world!");
    {
        uint8_t character;
        uint8_t index;
        uint8_t sampleString[DISPLAY_STRING_LENGTH];
        for(index=0,character=ASCII_OFFSET;
            (character<=MAX_DEFINED_CHARACTER)&&(index<=(DISPLAY_STRING_LENGTH));
             character++,index++)
        {
            sampleString[index]=character;
        }  
        strcpy(pDisplay->characterString,sampleString);    
    }
    
    pDisplay->stringColumns = 
            GetMessageColumnWidth(pDisplay->characterString,
            pDisplay->info.proportional);
    return true;
}

void FinishedLEDWriteCB(DRV_SPI_BUFFER_EVENT event, 
                        DRV_SPI_BUFFER_HANDLE bufferHandle, 
                        void * context)
{
    LEDDisplay.transmitting=false;
}

bool GenerateColorMap(DISPLAY_TYPE *pDisplay)
{
    /* make the color map */

    pDisplay->colorMap[0].red = 20;
    
    pDisplay->colorMap[1].green = 20;
    
    pDisplay->colorMap[2].blue = 20;
    
    pDisplay->colorMap[3].red = 10;
    pDisplay->colorMap[3].green = 10;
    
    pDisplay->colorMap[4].red = 10;
    pDisplay->colorMap[4].blue = 10;
    
    pDisplay->colorMap[5].green = 10;
    pDisplay->colorMap[5].blue = 10;
    
    pDisplay->colorMap[6].red=20;
    pDisplay->colorMap[6].green=20;
    pDisplay->colorMap[6].blue=5;   
    
    pDisplay->colorMap[7].red=0x00;
    pDisplay->colorMap[7].green=0x00;
    pDisplay->colorMap[7].blue=0x00;
    return true;
}
bool SendingToDisplay(void)
{
    return LEDDisplay.transmitting;
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
    uint8_t characterColumn = -1; /* column within a character */
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
                GetASCIIBit(pDisplay->characterString[characterIndex],
                            displayColumn & 0x01,
                            displayRow,
                            characterColumn))
            {
                pixelColor=pDisplay->colorMap[MAP_MASK & pDisplay->characterColor[characterIndex]];
                PopulatePixel(pixelColor,                    
                              &bitIndex,
                              &LEDDisplay.rawLED[LEDDisplay.status.bufferFilling][0]);
            }
            else
            {
                PopulatePixel(backgroundColor,
                              &bitIndex,
                              &LEDDisplay.rawLED[LEDDisplay.status.bufferFilling][0]);
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
            if(displayColumn >= pDisplay->stringOffsetColumn)
            {  
                if(characterColumn == -1)
                {
                    characterIndex = 0;
                    /* for the first character */
                    characterColumn = GetCharacterStart(
                            pDisplay->characterString[characterIndex],
                            pDisplay->info.proportional);
                }
                else
                {
                    characterColumn++;
                    
                    if(characterColumn >= GetCharacterEnd(
                                pDisplay->characterString[characterIndex],
                                pDisplay->info.proportional)+KERNING)
                    {
                        characterIndex++; 
                        characterColumn = GetCharacterStart(
                                pDisplay->characterString[characterIndex],
                                pDisplay->info.proportional);
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
    DRV_SPI_BufferAddWrite (pDisplay->SPIHandle,
                            QueueDisplay(pDisplay),
                            RAW_BUFFER_SIZE,
                            &FinishedLEDWriteCB,
                            NULL);
    LEDDisplay.status.bufferTransmitting=LEDDisplay.status.bufferFilling;
    LEDDisplay.transmitting = true;
}

/******************************************************************************/

uint8_t* QueueDisplay(DISPLAY_TYPE *pDisplay)
{
    return &LEDDisplay.rawLED[LEDDisplay.status.bufferFilling][0];
}
