/******************************************************************************/
/* LEDDisplay.h                                                               */
/* Author: Matt Bennett                                                       */
/* Created: July 28, 2015, 7:16 AM                                            */
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
#ifndef LEDDISPLAY_H
#define	LEDDISPLAY_H

/******************************************************************************/
/* sparkfun COM-13304 */
/* https://www.sparkfun.com/products/13304 */
/* 256 WS2812B LEDs */
#include <WS2812.h>
#define DISPLAY_NUMBER_COLUMNS  (32)
#define DISPLAY_NUMBER_ROWS     (8)
#define SIMULTANEOUS_COLORS (8)
#define MAP_MASK    (0b00000111) /* log base2 of SIMULTANEOUS_COLORS */

#define DISPLAY_STRING_LENGTH   (0xff)
#define DISPLAY_NUMBER_PIXELS   (DISPLAY_NUMBER_COLUMNS*DISPLAY_NUMBER_ROWS)
#define RAW_BUFFER_SIZE         ((3*8*DISPLAY_NUMBER_PIXELS)+LED_STRIP_RESET_BITS)

/******************************************************************************/

typedef struct {
    union {
        RGB_COLOR_TYPE RGB[DISPLAY_NUMBER_ROWS * DISPLAY_NUMBER_COLUMNS];
        HSV_COLOR_TYPE HSV[DISPLAY_NUMBER_ROWS * DISPLAY_NUMBER_COLUMNS];
    }vector;
    RGB_COLOR_TYPE colorMap[SIMULTANEOUS_COLORS];
    DRV_HANDLE SPIHandle;
    int32_t stringOffsetColumn;
    int32_t stringColumns;
    uint8_t characterString[DISPLAY_STRING_LENGTH];
    uint8_t characterColor[DISPLAY_STRING_LENGTH];
    uint8_t backgroundColor;
    struct __attribute__((packed)){
        uint8_t columns;
        uint8_t rows;
        uint8_t colors;
        unsigned proportional:1;
    }info;
}DISPLAY_TYPE;

typedef union {
    uint32_t w;
    struct __attribute__((packed)) {
        uint8_t red;
        uint8_t green;
        uint8_t blue;
        uint8_t :8;
    } color;
} LED_TYPE;

typedef struct {
    DRV_HANDLE SPIHandle;
    DRV_SPI_BUFFER_HANDLE handle;    
    RGB_COLOR_TYPE pixel[DISPLAY_NUMBER_PIXELS];
    uint32_t start;
} LED_DATA_TYPE;

typedef struct {
    uint32_t transmitting;
    union
    {
        uint32_t w;
        struct __attribute__((packed)) {
            unsigned bufferFilling:1;
            unsigned bufferTransmitting:1; /* while transmitting, false/0     */ 
                                            /* means buffer 0 is the DMA data */
                                            /* source, true/1 means buffer 1  */ 
            unsigned :30;            
        };
    }status;
    uint8_t rawLED[2][RAW_BUFFER_SIZE];
} LED_DISPLAY_TYPE;

/* Prototypes *****************************************************************/

bool InitializeLEDDisplay(DISPLAY_TYPE *pDisplay);
bool GenerateColorMap(DISPLAY_TYPE *pDisplay);
void PopulatePixel(RGB_COLOR_TYPE pixel, uint32_t *,uint8_t *toSend );
void TimerCallback ( uintptr_t, uint32_t );
uint8_t* QueueDisplay(DISPLAY_TYPE*);
void SendDisplay(DISPLAY_TYPE*);
uint32_t PopulateDisplay(DISPLAY_TYPE *);
bool SendingToDisplay(void);

#endif	/* LEDDISPLAY_H */

