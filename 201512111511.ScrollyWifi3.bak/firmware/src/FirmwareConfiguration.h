/******************************************************************************/
/* FirmwareConfiguration.h                                                    */
/* Author: Matt Bennett                                                       */
/* Created: March 19, 2015, 7:55 AM                                           */
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
#ifndef FIRMWARE_CONFIGURATION_H
#define FIRMWARE_CONFIGURATION_H

// *****************************************************************************
// Section: Constants and Type Definitions.
// *****************************************************************************

//#define STRIP_OUT_5V
#define ACTIVITY_LED_INTERVAL   10000
#define MAX_AMP                 (100)
#define MIN_AMP                 (1)
#define USE_APP_TASKS_ACTIVITY_OUTPUT
#define DISPLAY_COLUMNS         (32)
#define DISPLAY_ROWS            (8)
#define UPDATE_MS               (10)
#define HUE_INCREMENT           (1)
#define INTENSITY               (0x0a)

#define SCROLLER_SPI_DRIVER     DRV_SPI_INDEX_1
#define SCROLLER_TIMER_DRIVER   DRV_TMR_INDEX_1
#define DISPLAY_STRING_LENGTH   (50)

//#define COLOR_TEST

#endif    /* FIRMWARE_CONFIGURATION_H */
