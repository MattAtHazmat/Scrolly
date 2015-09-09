/******************************************************************************/
/* color.c                                                                    */
/* Author: Matt Bennett                                                       */
/* Created April 24, 2015 17:20                                               */
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
#include "color.h"

/******************************************************************************/
HSV_COLOR_TYPE RGBtoHSV(RGB_COLOR_TYPE rgb)
{
    HSV_COLOR_TYPE hsv;

    return hsv;
}
/******************************************************************************/
/* http://www.easyrgb.com/                                                    */
/* code below adapted from http://web.mit.edu/storborg/Public/hsvtorgb.c      */
void HSVtoRGB(HSV_COLOR_TYPE hsv, RGB_COLOR_TYPE *pRGB  )
/* HSV to RGB conversion function with only integer math */
{
    uint8_t region, fpart, p, q, t;
    if(hsv.saturation == 0)
    {
        /* color is grayscale */
        pRGB->red  = hsv.value;
        pRGB->green= hsv.value;
        pRGB->blue = hsv.value;
    }
    else
    {
        /* make hue 0-5 */
        region = hsv.hue / 43;
        /* find remainder part, make it from 0-255 */
        fpart = (hsv.hue - (region * 43)) * 6;
        /* calculate temp vars, doing integer multiplication */
        p = (hsv.value * (255 - hsv.saturation)) >> 8;
        q = (hsv.value * (255 - ((hsv.saturation * fpart) >> 8))) >> 8;
        t = (hsv.value * (255 - ((hsv.saturation * (255 - fpart)) >> 8))) >> 8;
        /* assign temp vars based on color cone region */
        switch(region)
        {
            case 0:
            {
                pRGB->red = hsv.value;
                pRGB->green = t;
                pRGB->blue = p;
                break;
            }
            case 1:
            {
                pRGB->red = q;
                pRGB->green = hsv.value;
                pRGB->blue = p;
                break;
            }
            case 2:
            {
                pRGB->red = p;
                pRGB->green = hsv.value;
                pRGB->blue = t;
                break;
            }
            case 3:
            {
                pRGB->red = p;
                pRGB->green = q;
                pRGB->blue = hsv.value;
                break;
            }
            case 4:
            {
                pRGB->red = t;
                pRGB->green = p;
                pRGB->blue = hsv.value;
                break;
            }
            default:
            {
                pRGB->red = hsv.value;
                pRGB->green = p;
                pRGB->blue = q;
                break;
            }
        }
    }
}

/******************************************************************************/