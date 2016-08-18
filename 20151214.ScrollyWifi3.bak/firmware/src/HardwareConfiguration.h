/******************************************************************************/
/* HardwareConfiguration.h                                                    */
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
#ifndef HARDWARE_CONFIGURATION_H
#define HARDWARE_CONFIGURATION_H


#define TRIS_IN                 (1)
#define TRIS_OUT                (0)
//#define USE_ESK
#define USE_WIFI_G_DEMO
#if defined (USE_WIFI_G_DEMO)
    #define LED_STRIP_OUT_DEFAULT   (true)
    #define LED_STRIP_OUT           LATFbits.LATF5
    #define LED_STRIP_DIRECTION     TRISFbits.TRISF5
    #define LED_STRIP_ODC           ODCFbits.ODCF5
#elif defined( USE_ESK)
    #define USE_ACTIVITY_LED
    #define ACTIVITY_LED            LATDbits.LATD0
    #define ACTIVITY_LED_DIRECTION  TRISDbits.TRISD0
    #define mActivityLEDInvert()    LATDINV=1<<_LATD_LATD0_POSITION
    #define LED_STRIP_OUT_DEFAULT   (true)
    #define LED_STRIP_OUT           LATGbits.LATG8
    #define LED_STRIP_DIRECTION     TRISGbits.TRISG8
    #define LED_STRIP_ODC           ODCGbits.ODCG8
#else
    #define ACTIVITY_LED            LATAbits.LATA3
    #define ACTIVITY_LED_DIRECTION  TRISAbits.TRISA3
    #define mActivityLEDInvert()    LATAINV=1<<_LATA_LATA3_POSITION
    #define LED_STRIP_OUT_DEFAULT   (true)
    #define LED_STRIP_OUT           LATGbits.LATG8
    #define LED_STRIP_DIRECTION     TRISGbits.TRISG8
    #define LED_STRIP_ODC           ODCGbits.ODCG8
#endif
#ifdef STRIP_OUT_5V
    #define mStripOutConfigure()    LED_STRIP_OUT=LED_STRIP_OUT_DEFAULT; \
                                    LED_STRIP_ODC=(true); \
                                    LED_STRIP_DIRECTION=TRIS_OUT
#else
    #define mStripOutConfigure()    LED_STRIP_OUT=LED_STRIP_OUT_DEFAULT; \
                                    LED_STRIP_ODC=(false); \
                                    LED_STRIP_DIRECTION=TRIS_OUT
#endif
#endif    /* HARDWARE_CONFIGURATION_H */
