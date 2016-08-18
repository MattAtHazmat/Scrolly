/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

#include "tcpip/src/tcpip_private.h"

#include <ctype.h>
#include <stdarg.h>

/* ************************************************************************** */
/* ************************************************************************** */
// Section: Interface Functions                                               */
/* ************************************************************************** */
/* ************************************************************************** */

char *colorStrings[]={
    "black",
    "red",
    "green",
    "blue",
    "yellow",
    "white",
    "violet",
    "cyan"                        
};

bool TCPIP_Helper_StringToColorCode(const char *str, uint8_t *color)
{
//    *color=0;
//    while(*color<8)
//    {
//        /* just need to compare the first 3 characters to find the unique. */
//        if(!strncmp(str,colorStrings[*color],3))
//        {
//            return true;
//        }
//        *color++;
//    }
//    *color=0;
//    return false;
    uint8_t colorCode=0;
    while(strncmp(str,colorStrings[colorCode],3)&&(++colorCode<8));
    if(colorCode<=8)
    {
        *color=colorCode;
        return true;
    }
    return false;
}


/* *****************************************************************************
 End of File
 */

