/******************************************************************************/
/*  MPLAB Harmony Application Source File                                     */
/*                                                                            */
/*  Company:                                                                  */
/*    Microchip Technology Inc.                                               */
/*                                                                            */
/*  File Name:                                                                */
/*    timeywimey.c                                                            */
/*                                                                            */
/*  Summary:                                                                  */
/*    This file contains the source code for the MPLAB Harmony application.   */
/*                                                                            */
/* Description:                                                               */
/*  This file contains the source code for the MPLAB Harmony application.  It */
/*  implements the logic of the application's state machine and it may call   */
/*  API routines of other MPLAB Harmony modules in the system, such as        */
/*  drivers, system services, and middleware.  However, it does not call any  */
/*  of the system interfaces (such as the "Initialize" and "Tasks" functions) */
/*  of any of the modules in the system or make any assumptions about when    */
/*  those functions are called.  That is the responsibility of the            */
/*  configuration-specific system files.                                      */
/******************************************************************************/

// DOM-IGNORE-BEGIN
/******************************************************************************/
/*Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights      */
/* reserved.                                                                  */
/*                                                                            */
/*Microchip licenses to you the right to use, modify, copy and distribute     */
/*Software only when embedded on a Microchip microcontroller or digital signal*/
/*controller that is integrated into your product or third party product      */
/*(pursuant to the sublicense terms in the accompanying license agreement).   */
/*                                                                            */
/*You should refer to the license agreement accompanying this Software for    */
/*additional information regarding your rights and obligations.               */
/*                                                                            */
/*SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY     */
/*KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY */
/*OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR    */
/*PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED*/
/*UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF       */
/*WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR */
/*EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT,    */
/*PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF       */
/*PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY     */
/*THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER  */
/*SIMILAR COSTS.                                                              */
/******************************************************************************/
// DOM-IGNORE-END


/******************************************************************************/
/******************************************************************************/
/* Section: Included Files                                                    */
/******************************************************************************/
/******************************************************************************/

#include "timeywimey.h"
#include "peripheral/rtcc/plib_rtcc.h"
#include "time.h"
/******************************************************************************/
/******************************************************************************/
/***Section: Global Data Definitions                                          */
/******************************************************************************/
/******************************************************************************/


/******************************************************************************/
/* Application Data                                                           */
/*                                                                            */
/*  Summary:                                                                  */
/*    Holds application data                                                  */
/*                                                                            */
/*  Description:                                                              */
/*    This structure holds the application's data.                            */
/*                                                                            */
/*  Remarks:                                                                  */
/*    This structure should be initialized by the APP_Initialize function.    */
/*                                                                            */
/*   Application strings and buffers are be defined outside this structure.   */
/*                                                                            */

TIMEY_WIMEY_DATA timeyWimeyData;

/******************************************************************************/
/******************************************************************************/
/***Section: Application Callback Functions                                   */
/******************************************************************************/
/******************************************************************************/

/******************************************************************************/
/******************************************************************************/
/***Section: Application Local Functions                                      */
/******************************************************************************/
/******************************************************************************/

/******************************************************************************/
/******************************************************************************/
/* Section: Application Initialization and State Machine Functions            */
/******************************************************************************/
/******************************************************************************/

/******************************************************************************/
/*  Function:                                                                 */
/*    void TIMEYWIMEY_Initialize ( void )                                     */
/*                                                                            */
/*  Remarks:                                                                  */
/*    See prototype in timeywimey.h.                                          */
/*                                                                            */

void TIMEYWIMEY_Initialize ( void )
{
    memset(&timeyWimeyData,0,sizeof(timeyWimeyData));
    timeyWimeyData.error.count = 0;
    timeyWimeyData.state = TIMEY_WIMEY_INIT;
    timeyWimeyData.error.limit = 10;
    timeyWimeyData.tzOffset = TIME_ZONE;
    timeyWimeyData.flags.valid = false;
}

/******************************************************************************/
/*  Function:                                                                 */
/*    void TIMEYWIMEY_Tasks ( void )                                          */
/*                                                                            */
/*  Remarks                                                                   */
/*    See prototype in time.h.                                                */
/*                                                                            */

void TIMEYWIMEY_Tasks ( void )
{
    bool failure = false;
    switch ( timeyWimeyData.state )
    {
        case TIMEY_WIMEY_INIT:// <editor-fold defaultstate="collapsed" desc="Initialize">
        {
            DRV_RTCC_Start();
            timeyWimeyData.state = TIMEY_WIMEY_WAIT_FOR_NETWORK_UP;
            break;
        }// </editor-fold>
        case TIMEY_WIMEY_WAIT_FOR_NETWORK_UP:// <editor-fold defaultstate="collapsed" desc="Wait for network to be up">
        {
            /* wait for the network to be up, then jump to next state         */
            if (TCPIP_STACK_NetIsReady(TCPIP_STACK_IndexToNet(0))) 
            {
                timeyWimeyData.state = TIMEY_WIMEY_WAIT_FOR_VALID_TIME;
            }
            break;
        }// </editor-fold>
        case TIMEY_WIMEY_WAIT_FOR_VALID_TIME:// <editor-fold defaultstate="collapsed" desc="Wait for a valid time to be available">
        {
            if (SNTP_RES_OK == TCPIP_SNTP_TimeStampGet(&timeyWimeyData.timeStamp.stamp, &timeyWimeyData.lastUpdate)) {
                /* we have received the time data                             */
                timeyWimeyData.UTC = TCPIP_SNTP_UTCSecondsGet();
                if (UTCTotm(&timeyWimeyData.tmTime, timeyWimeyData.UTC, timeyWimeyData.tzOffset)) 
                {
                    timeyWimeyData.flags.valid = true;
                    timeyWimeyData.error.count = 0;
                    timeyWimeyData.state = TIMEY_WIMEY_VALID_TIME;
                } 
                else 
                {
                    timeyWimeyData.flags.valid = false;
                    failure = true;
                }
            }
            break;
        }// </editor-fold>
        case TIMEY_WIMEY_VALID_TIME:// <editor-fold defaultstate="collapsed" desc="Valid time available">
        {   
            /* time is valid, just wait for UTC to change so we can update */
            /* the time structure. */
            if (SNTP_RES_OK == TCPIP_SNTP_TimeStampGet(&timeyWimeyData.timeStamp.stamp, &timeyWimeyData.lastUpdate)) 
            {
                uint32_t UTC = TCPIP_SNTP_UTCSecondsGet();
                if (UTC != timeyWimeyData.UTC) 
                {
                    /* update UTC with current UTC */
                    timeyWimeyData.UTC = UTC;
                    /* populate structure with the current time */
                    if (UTCTotm(&timeyWimeyData.tmTime, timeyWimeyData.UTC, timeyWimeyData.tzOffset)) 
                    {
                        /* reset the error count */
                        timeyWimeyData.error.count = 0;
                    } 
                    else 
                    {
                        /* something went wrong */
                        failure = true;
                    }
                }
            } 
            else 
            {
                failure = true;
            }
            break;
        }// </editor-fold>
        case TIMEY_WIMEY_FAIL:// <editor-fold defaultstate="collapsed" desc="Failure of some sort">
        default:
        {
            failure = true; 
            timeyWimeyData.flags.valid = false;
            break;
        }// </editor-fold>
    }
    ScrollerEnableTime(timeyWimeyData.flags.valid);
    if(failure)
    {        
        /* increment the error count and check to see if we've gone past the  */
        /* limit                                                              */
        if (++timeyWimeyData.error.count >= timeyWimeyData.error.limit) 
        {
            TIMEYWIMEY_Initialize();
        } 
        else 
        {
            timeyWimeyData.state = TIMEY_WIMEY_WAIT_FOR_VALID_TIME;
        }
        timeyWimeyData.flags.errorOccurred = true;
    }
}

/******************************************************************************/

void ReverseNTP(uint8_t *array)
{
    /* reverse the bytes in a 64 bit value */
    uint8_t temp;
    uint8_t x=0;
    uint8_t y=7;
    do {
        temp=array[x];
        array[x]=array[y];
        array[y]=temp;
        x++;
        y--;
    }while (x<4);
}

/******************************************************************************/

bool UTCTotm(struct tm *time, uint32_t UTC, uint32_t tzOffset)
{
    uint32_t residualSeconds;
    uint32_t year = START_YEAR;
    if((UTC+tzOffset) < START_YEAR_SECONDS_UTC)
    {
        /* seconds don't make sense                                           */
        return false;
    }
    time->tm_year  = 0;
    time->tm_isdst = 0;
    time->tm_hour  = 0;
    time->tm_mday  = 0;
    time->tm_min   = 0;
    time->tm_mon   = 0;
    time->tm_sec   = 0;
    time->tm_wday  = 0;
    time->tm_yday  = 0;
    residualSeconds = UTC-START_YEAR_SECONDS_UTC+tzOffset;
    while(residualSeconds >= YearSeconds(year))
    {
        residualSeconds -= YearSeconds(year);
        year++;
    }
    time->tm_year = year-1900; /* structure is years since 1900 */
    time->tm_yday = ((uint32_t)residualSeconds) / ((uint32_t)SECONDS_DAY);    
    while(residualSeconds >= MonthSeconds(time->tm_mon,year))
    {
        residualSeconds -= MonthSeconds(time->tm_mon,year);
        time->tm_mon++;
    }
    time->tm_mday = residualSeconds / SECONDS_DAY;
    residualSeconds = residualSeconds % SECONDS_DAY;
    /* now increment one more time, since days don't start at zero, OR DO THEY? */
    time->tm_hour = residualSeconds / SECONDS_HOUR;
    residualSeconds = residualSeconds % SECONDS_HOUR;

    time->tm_min=residualSeconds / SECONDS_MINUTE;
    time->tm_sec = residualSeconds % SECONDS_MINUTE;

    time->tm_wday = DayOfWeek(year, time->tm_mon+1, time->tm_mday);
    return true;        
}

/******************************************************************************/

bool IsLeapYear(uint32_t year)
{
    return ((year&0x3)==0);
}

/******************************************************************************/

uint32_t YearSeconds(uint32_t year)
{
    if(IsLeapYear(year))
    {
        return SECONDS_LEAP_YEAR;
    }
    else
    {
        return SECONDS_YEAR;
    }    
}

/******************************************************************************/

uint32_t MonthSeconds(uint32_t month,uint32_t year)
{
    const uint32_t monthSeconds[] = {
        SECONDS_JANUARY,      
        SECONDS_FEBRUARY,   
        SECONDS_MARCH,        
        SECONDS_APRIL,        
        SECONDS_MAY,          
        SECONDS_JUNE,         
        SECONDS_JULY,         
        SECONDS_AUGUST,       
        SECONDS_SEPTEMBER,    
        SECONDS_OCTOBER,      
        SECONDS_NOVEMBER,     
        SECONDS_DECEMBER     
    };
    if(IsLeapYear(year)&&((MONTH_TYPE)month==FEBRUARY))
    {
        return SECONDS_FEBRUARY_LEAP;
    }
    return monthSeconds[month];
}

/******************************************************************************/
/* from Wikipedia:                                                            */
/* https://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week         */
/* as posted by Posted by Tomohiko Sakamoto on the comp.lang.c Usenet         */
/* newsgroup in 1993                                                          */
/* 1 <= m <= 12,  y > 1752 (in the U.K.). 0->Sunday                           */
    
uint8_t DayOfWeek(uint16_t year, uint8_t month, uint8_t day)
{
    static int t[] = {0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4};
    year -= month < 3;
    return (year + year/4 - year/100 + year/400 + t[month-1] + day) % 7;
}

/******************************************************************************/

uint8_t HexToBCD (uint8_t hex)
{
    uint8_t BCD;
    BCD = (hex / 10) << 4;
    BCD = BCD | (hex % 10);
    return BCD;
}

/******************************************************************************/

bool GetCurrentTimeString(uint8_t *timeString)
{
    return (0!=strftime((char*)timeString,
                        DISPLAY_STRING_LENGTH,
                        TIME_FORMAT,
                        &timeyWimeyData.tmTime));
}

/******************************************************************************/
/* End of File                                                                */
/******************************************************************************/
