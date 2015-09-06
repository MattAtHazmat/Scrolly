/******************************************************************************/
/* ASCII.c                                                                    */
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


#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"
#include <ASCII.h>
CHARACTER_WIDTH_ARRAY asciiWidthTable[ASCII_CHARACTERS];

uint8_t asciiBitmap[97][5] = {
    0x00, 0x00, 0x00, 0x00, 0x00, /* ASCII 32 (0x20), character: ' ' */
    0x00, 0xFB, 0xFB, 0x00, 0x00, /* ASCII 33 (0x21), character: '!' */
    0x20, 0xC0, 0x00, 0x20, 0xC0, /* ASCII 34 (0x22), character: '"' */
    0x28, 0x7C, 0x28, 0x7C, 0x28, /* ASCII 35 (0x23), character: '#' */
    0x24, 0x54, 0xFE, 0x54, 0x48, /* ASCII 36 (0x24), character: '$' */
    0x64, 0x68, 0x10, 0x2C, 0x4C, /* ASCII 37 (0x25), character: '%' */
    0x34, 0x4A, 0x4A, 0x24, 0x0A, /* ASCII 38 (0x26), character: '&' */
    0x20, 0xC0, 0x00, 0x00, 0x00, /* ASCII 39 (0x27), character: ''' */
    0x00, 0x38, 0x44, 0x82, 0x00, /* ASCII 40 (0x28), character: '(' */
    0x00, 0x82, 0x44, 0x38, 0x00, /* ASCII 41 (0x29), character: ')' */
    0x28, 0x10, 0x7C, 0x10, 0x28, /* ASCII 42 (0x2A), character: '*' */
    0x10, 0x10, 0x7C, 0x10, 0x10, /* ASCII 43 (0x2B), character: '+' */
    0x00, 0x0D, 0x0E, 0x00, 0x00, /* ASCII 44 (0x2C), character: ',' */
    0x10, 0x10, 0x10, 0x10, 0x00, /* ASCII 45 (0x2D), character: '-' */
    0x00, 0x06, 0x06, 0x00, 0x00, /* ASCII 46 (0x2E), character: '.' */
    0x03, 0x0C, 0x30, 0xC0, 0x00, /* ASCII 47 (0x2F), character: '/' */
    0x7C, 0x8A, 0x92, 0xA2, 0x7C, /* ASCII 48 (0x30), character: '0' */
    0x00, 0x42, 0xFE, 0x02, 0x00, /* ASCII 49 (0x31), character: '1' */
    0x46, 0x8A, 0x92, 0x92, 0x62, /* ASCII 50 (0x32), character: '2' */
    0x44, 0x92, 0x92, 0x92, 0x6C, /* ASCII 51 (0x33), character: '3' */
    0x38, 0xE8, 0xC8, 0xFE, 0x08, /* ASCII 52 (0x34), character: '4' */
    0xF4, 0x92, 0x92, 0x92, 0x8C, /* ASCII 53 (0x35), character: '5' */
    0x7C, 0x92, 0x92, 0x92, 0x4C, /* ASCII 54 (0x36), character: '6' */
    0x80, 0x88, 0x9E, 0xA8, 0xC0, /* ASCII 55 (0x37), character: '7' */
    0x6C, 0x92, 0x92, 0x92, 0x6C, /* ASCII 56 (0x38), character: '8' */
    0x64, 0x92, 0x92, 0x92, 0x7C, /* ASCII 57 (0x39), character: '9' */
    0x00, 0x6C, 0x6C, 0x00, 0x00, /* ASCII 58 (0x3A), character: ':' */
    0x00, 0x6D, 0x6E, 0x00, 0x00, /* ASCII 59 (0x3B), character: ';' */
    0x00, 0x10, 0x28, 0x44, 0x82, /* ASCII 60 (0x3C), character: '<' */
    0x28, 0x28, 0x28, 0x28, 0x28, /* ASCII 61 (0x3D), character: '=' */
    0x82, 0x44, 0x28, 0x10, 0x00, /* ASCII 62 (0x3E), character: '>' */
    0x40, 0x80, 0x9A, 0xA0, 0x40, /* ASCII 63 (0x3F), character: '?' */
    0xFE, 0x82, 0xBA, 0xAA, 0xFA, /* ASCII 64 (0x40), character: '@' */
    0x3E, 0x48, 0x88, 0x48, 0x3E, /* ASCII 65 (0x41), character: 'A' */
    0xFE, 0x92, 0x92, 0x92, 0x6C, /* ASCII 66 (0x42), character: 'B' */
    0x7C, 0x82, 0x82, 0x82, 0x44, /* ASCII 67 (0x43), character: 'C' */
    0xFE, 0x82, 0x82, 0x82, 0x7C, /* ASCII 68 (0x44), character: 'D' */
    0xFE, 0x92, 0x92, 0x92, 0x82, /* ASCII 69 (0x45), character: 'E' */
    0xFE, 0x90, 0x90, 0x90, 0x80, /* ASCII 70 (0x46), character: 'F' */
    0x7C, 0x82, 0x8A, 0x8A, 0x4C, /* ASCII 71 (0x47), character: 'G' */
    0xFE, 0x10, 0x10, 0x10, 0xFE, /* ASCII 72 (0x48), character: 'H' */
    0x00, 0x82, 0xFE, 0x82, 0x00, /* ASCII 73 (0x49), character: 'I' */
    0x0C, 0x02, 0x82, 0xFC, 0x80, /* ASCII 74 (0x4A), character: 'J' */
    0xFE, 0x10, 0x28, 0x44, 0x82, /* ASCII 75 (0x4B), character: 'K' */
    0xFE, 0x02, 0x02, 0x02, 0x02, /* ASCII 76 (0x4C), character: 'L' */
    0xFE, 0x40, 0x20, 0x40, 0xFE, /* ASCII 77 (0x4D), character: 'M' */
    0xFE, 0x20, 0x10, 0x08, 0xFE, /* ASCII 78 (0x4E), character: 'N' */
    0x7C, 0x82, 0x82, 0x82, 0x7C, /* ASCII 79 (0x4F), character: 'O' */
    0xFE, 0x90, 0x90, 0x90, 0x60, /* ASCII 80 (0x50), character: 'P' */
    0x7C, 0x82, 0x86, 0x82, 0x7D, /* ASCII 81 (0x51), character: 'Q' */
    0xFE, 0x90, 0x90, 0x90, 0x6E, /* ASCII 82 (0x52), character: 'R' */
    0x62, 0x92, 0x92, 0x92, 0x8C, /* ASCII 83 (0x53), character: 'S' */
    0x80, 0x80, 0xFE, 0x80, 0x80, /* ASCII 84 (0x54), character: 'T' */
    0xFC, 0x02, 0x02, 0x02, 0xFC, /* ASCII 85 (0x55), character: 'U' */
    0xE0, 0x38, 0x0E, 0x38, 0xE0, /* ASCII 86 (0x56), character: 'V' */
    0xFC, 0x02, 0x0C, 0x02, 0xFC, /* ASCII 87 (0x57), character: 'W' */
    0xC6, 0x28, 0x10, 0x28, 0xC6, /* ASCII 88 (0x58), character: 'X' */
    0xE0, 0x10, 0x0E, 0x10, 0xE0, /* ASCII 89 (0x59), character: 'Y' */
    0x86, 0x8A, 0x92, 0xA2, 0xC2, /* ASCII 90 (0x5A), character: 'Z' */
    0x00, 0xFE, 0x82, 0x82, 0x00, /* ASCII 91 (0x5B), character: '[' */
    0x00, 0xC0, 0x30, 0x0C, 0x03, /* ASCII 92 (0x5C), character: '\' */
    0x00, 0x82, 0x82, 0xFE, 0x00, /* ASCII 93 (0x5D), character: ']' */
    0x10, 0x20, 0x40, 0x20, 0x10, /* ASCII 94 (0x5E), character: '^' */
    0x02, 0x02, 0x02, 0x02, 0x02, /* ASCII 95 (0x5F), character: '_' */
    0x00, 0x80, 0x60, 0x00, 0x00, /* ASCII 96 (0x60), character: '`' */
    0x24, 0x4A, 0x4A, 0x3E, 0x00, /* ASCII 97 (0x61), character: 'a' */
    0x00, 0xFE, 0x12, 0x12, 0x0C, /* ASCII 98 (0x62), character: 'b' */
    0x0C, 0x12, 0x12, 0x12, 0x00, /* ASCII 99 (0x63), character: 'c' */
    0x00, 0x0C, 0x12, 0x12, 0xFE, /* ASCII 100 (0x64), character: 'd' */
    0x1C, 0x2A, 0x2A, 0x10, 0x00, /* ASCII 101 (0x65), character: 'e' */
    0x3E, 0x48, 0x40, 0x20, 0x00, /* ASCII 102 (0x66), character: 'f' */
    0x12, 0x29, 0x29, 0x3E, 0x00, /* ASCII 103 (0x67), character: 'g' */
    0x7E, 0x08, 0x08, 0x06, 0x00, /* ASCII 104 (0x68), character: 'h' */
    0x00, 0x12, 0x5E, 0x02, 0x00, /* ASCII 105 (0x69), character: 'i' */
    0x00, 0x02, 0x11, 0x5E, 0x10, /* ASCII 106 (0x6A), character: 'j' */
    0x00, 0xFE, 0x08, 0x16, 0x00, /* ASCII 107 (0x6B), character: 'k' */
    0x00, 0x42, 0x7E, 0x02, 0x00, /* ASCII 108 (0x6C), character: 'l' */
    0x1E, 0x10, 0x0E, 0x10, 0x0E, /* ASCII 109 (0x6D), character: 'm' */
    0x1E, 0x10, 0x10, 0x0E, 0x00, /* ASCII 110 (0x6E), character: 'n' */
    0x0C, 0x12, 0x12, 0x0C, 0x00, /* ASCII 111 (0x6F), character: 'o' */
    0x00, 0x3F, 0x24, 0x24, 0x18, /* ASCII 112 (0x70), character: 'p' */
    0x18, 0x24, 0x24, 0x3F, 0x00, /* ASCII 113 (0x71), character: 'q' */
    0x1E, 0x08, 0x10, 0x08, 0x00, /* ASCII 114 (0x72), character: 'r' */
    0x12, 0x2A, 0x2A, 0x24, 0x00, /* ASCII 115 (0x73), character: 's' */
    0x10, 0x3E, 0x11, 0x02, 0x00, /* ASCII 116 (0x74), character: 't' */
    0x1C, 0x02, 0x02, 0x1C, 0x00, /* ASCII 117 (0x75), character: 'u' */
    0x18, 0x04, 0x02, 0x04, 0x18, /* ASCII 118 (0x76), character: 'v' */
    0x1C, 0x02, 0x1C, 0x02, 0x1C, /* ASCII 119 (0x77), character: 'w' */
    0x22, 0x14, 0x08, 0x14, 0x22, /* ASCII 120 (0x78), character: 'x' */
    0x39, 0x05, 0x05, 0x3E, 0x00, /* ASCII 121 (0x79), character: 'y' */
    0x00, 0x26, 0x2A, 0x32, 0x00, /* ASCII 122 (0x7A), character: 'z' */
    0x00, 0x10, 0x7C, 0x82, 0x00, /* ASCII 123 (0x7B), character: '{' */
    0x00, 0x00, 0xFF, 0x00, 0x00, /* ASCII 124 (0x7C), character: '|' */
    0x00, 0x82, 0x7C, 0x10, 0x00, /* ASCII 125 (0x7D), character: '}' */
    0x10, 0x20, 0x10, 0x08, 0x10, /* ASCII 126 (0x7E), character: '~' */
    0x00, 0xE0, 0xA0, 0xE0, 0x00, /* ASCII 127 (0x7F), character: '' */
    0x28, 0x7C, 0xAA, 0x82, 0x44, /* ASCII 128 (0x80), character: '?' */
};



/******************************************************************************/

bool GetASCIIBit(uint8_t character, bool displayDirection,uint8_t row, uint8_t column)
{
    int32_t characterArrayOffset;
    characterArrayOffset = character - ASCII_OFFSET;
    if((column < CHARACTER_WIDTH_COLUMNS) &&
       (characterArrayOffset>0) &&
       (characterArrayOffset<MAX_DEFINED_CHARACTER-ASCII_OFFSET))
    {
        if(displayDirection)
        {
            return (0x01)&((asciiBitmap[characterArrayOffset][column])>>row);
        }
        else
        {
            return (0x80)&((asciiBitmap[characterArrayOffset][column])<<row);
        }        
    }
    return false;
}

/******************************************************************************/

uint32_t GetMessageColumnWidth(uint8_t *message, bool isProportional)
{
    uint32_t width=0;
    uint32_t index=0;
    while((index<DISPLAY_STRING_LENGTH) && message[index])
    {
        width += GetCharacterWidth(message[index],isProportional);
        width += KERNING; /* no kerning, for now */    
        index++;
    }
    return width;
}

/******************************************************************************/

uint32_t GetCharacterWidth(uint8_t character,bool isProportional)
{
    if(isProportional == false)
    {
        return CHARACTER_WIDTH_COLUMNS;
    }
    if(character<ASCII_OFFSET || character > MAX_DEFINED_CHARACTER)
    {
        /* illegal character- not sure, just return the max. */
        return CHARACTER_WIDTH_COLUMNS;
    }
    return (asciiWidthTable[character-ASCII_OFFSET].end - 
            asciiWidthTable[character-ASCII_OFFSET].start);
}

/******************************************************************************/

//uint32_t CharacterIndexToColumn(uint8_t characterIndex, uint8_t *message)
//{
//    
//}

/******************************************************************************/

bool MakeWidthTable(void)
{
    uint32_t character;
    uint32_t column;
    memset(asciiWidthTable,0x00,sizeof(asciiWidthTable));
    for(character=0;character<ASCII_CHARACTERS;character++)
    {
        /* find start */
        column=0;
        while((column<CHARACTER_WIDTH_COLUMNS) && 
              (asciiBitmap[character][column]==0))
        {
            column++;
        }
        asciiWidthTable[character].start= column;
        /* find end */
        column=CHARACTER_WIDTH_COLUMNS-1;
        while((column>0) && 
              (asciiBitmap[character][column]==0))
        {
            column--;
        }
        /* want the end to be the first '0' column after the last populated */
        /* column */
        asciiWidthTable[character].end= (1+column);
        if(asciiWidthTable[character].start >= asciiWidthTable[character].end)
        {
            asciiWidthTable[character].start = 0;
            asciiWidthTable[character].end = CHARACTER_WIDTH_COLUMNS;
        }
        
    }
    /* special case for a 'space' */
    asciiWidthTable[0].start = 1;
    asciiWidthTable[0].end =  asciiWidthTable[0].start+PROPORTIONAL_SPACE_WIDTH;
    /* sanity check to see that nothing is messed up*/
    for(character=0;character<ASCII_CHARACTERS;character++)
    {
        if(asciiWidthTable[character].start == asciiWidthTable[character].end)
        {
            return false;
        }
        if(asciiWidthTable[character].start > asciiWidthTable[character].end)
        {
            return false;
        }
        if(asciiWidthTable[character].end > CHARACTER_WIDTH_COLUMNS)
        {
            return false;
        }
    }
    return true;
}

/******************************************************************************/

uint8_t GetCharacterStart(uint8_t character, bool isProportional)
{
    if(character<ASCII_OFFSET || character > MAX_DEFINED_CHARACTER)
    {
        return 0;
    }
    if(isProportional)
    {
        return asciiWidthTable[character-ASCII_OFFSET].start;
    }
    else
    {
        return 0;
    }
}

/******************************************************************************/

uint8_t GetCharacterEnd(uint8_t character, bool isProportional)
{
    if(character<ASCII_OFFSET || character > MAX_DEFINED_CHARACTER)
    {
        return CHARACTER_WIDTH_COLUMNS;
    }
    if(isProportional)
    {
        return asciiWidthTable[character-ASCII_OFFSET].end;
    }
    else
    {
        return CHARACTER_WIDTH_COLUMNS;
    }
}

/******************************************************************************/