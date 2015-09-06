/******************************************************************************/
/* TM1804.h                                                                   */
/* Author: Matt Bennett                                                       */
/* Created: March 10, 2015, 10:51 PM                                          */
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
#ifndef TM1804_H
#define    TM1804_H

#define LED_STRIP_ZERO  0b11100000
#define LED_STRIP_ONE   0b11111000
#define LED_STRIP_RESET_BITS   (24)

#define PIXEL_COLOR_0 red
#define PIXEL_COLOR_1 green
#define PIXEL_COLOR_2 blue

//#define ORDER_RED   (0)
//#define ORDER_GREEN (1)
//#define ORDER_BLUE  (2)

/* for WS2812 */
//#define ORDER_RED   (1)
//#define ORDER_GREEN (0)
//#define ORDER_BLUE  (2)
#endif    /* TM1804_H */

