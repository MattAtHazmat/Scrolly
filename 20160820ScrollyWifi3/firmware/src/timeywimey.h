/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    timeywimey.h

  Summary:SNTP_RES_OK
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "APP_Initialize" and "APP_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "APP_STATES" definition).  Both
    are defined here for convenience.
*******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 ******************************************************************************/
//DOM-IGNORE-END

#ifndef _TIMEYWIMEY_H
#define _TIMEYWIMEY_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"
#include "time.h"

/* from https://github.com/tzinfo/tzinfo-data/blob/master/data/leap-seconds.list */
/* 3550089600	35	# 1 Jul 2012                                              */
/* 3644697600	36	# 1 Jul 2015                                              */
/* from: https://www.aelius.com/njh/unixtime/                                 */
/* Unix time:	1420070400                                                    */
/* NTP time:	3629059200                                                    */
/* 201601010000:                                                              */
/* Unix time:	1451606400                                                    */
/* NTP time:	3660595200                                                    */
/* 201701010000:                                                              */
/* unix time:   1483228800                                                    */
/* NTP time:	3692217600                                                    */
/*                                                                            */
#define START_YEAR_SECONDS_UTC  (1420070400ul)
#define START_YEAR_SECONDS      (3629059200ul)
#define START_YEAR              (2015)
#define SECONDS_MINUTE          (60)
#define SECONDS_HOUR            (SECONDS_MINUTE*60)
#define SECONDS_DAY             (SECONDS_HOUR*24)
#define SECONDS_YEAR            (SECONDS_DAY*365)
#define SECONDS_LEAP_YEAR       (SECONDS_DAY*366)
#define SECONDS_JANUARY         (SECONDS_DAY*31)
#define SECONDS_FEBRUARY        (SECONDS_DAY*28)
#define SECONDS_FEBRUARY_LEAP   (SECONDS_DAY*28)
#define SECONDS_MARCH           (SECONDS_DAY*31)
#define SECONDS_APRIL           (SECONDS_DAY*30)
#define SECONDS_MAY             (SECONDS_DAY*31)
#define SECONDS_JUNE            (SECONDS_DAY*30)
#define SECONDS_JULY            (SECONDS_DAY*31)
#define SECONDS_AUGUST          (SECONDS_DAY*31)
#define SECONDS_SEPTEMBER       (SECONDS_DAY*30)
#define SECONDS_OCTOBER         (SECONDS_DAY*31)
#define SECONDS_NOVEMBER        (SECONDS_DAY*30)
#define SECONDS_DECEMBER        (SECONDS_DAY*31)
#define CENTRAL_TIME_ZONE       (-6*SECONDS_HOUR)
#define ARIZONA_TIME_ZONE       (-7*SECONDS_HOUR)

#ifdef MASTERS
    #define TIME_ZONE           ARIZONA_TIME_ZONE
#else
    #define TIME_ZONE           CENTRAL_TIME_ZONE
#endif

/* note: does not correct for Daylight Savings time                           */

/******************************************************************************/
/******************************************************************************/
/* Section: Type Definitions                                                  */
/******************************************************************************/
/******************************************************************************/
 typedef enum {
    JANUARY=0,      
    FEBRUARY,   
    MARCH,        
    APRIL,        
    MAY,          
    JUNE,         
    JULY,         
    AUGUST,       
    SEPTEMBER,    
    OCTOBER,      
    NOVEMBER,     
    DECEMBER  
 } MONTH_TYPE;
 
/* ****************************************************************************/
/* Application states                                                         */
/*                                                                            */
/*  Summary:                                                                  */
/*    Application states enumeration                                          */
/*                                                                            */
/* Description                                                                */
/*   This enumeration defines the valid application states.  These states     */
/*   determine the behavior of the application at various times.              */
/*                                                                            */

typedef enum
{	
	TIMEY_WIMEY_INIT=0,/* Application's state machine's initial state.         */
    TIMEY_WIMEY_WAIT_FOR_NETWORK_UP,
    TIMEY_WIMEY_WAIT_FOR_VALID_TIME,
    TIMEY_WIMEY_VALID_TIME,
    TIMEY_WIMEY_FAIL,
} TIMEY_WIMEY_STATE_TYPE;

// *****************************************************************************
/* Application Data                                                           */
/*                                                                            */
/*  Summary:                                                                  */
/*    Holds application data                                                  */
/*                                                                            */
/*  Description:                                                              */
/*    This structure holds the application's data.                            */
/*                                                                            */
/*  Remarks:                                                                  */
/*    Application strings and buffers are be defined outside this structure.  */
/*                                                                            */

typedef struct {
    TIMEY_WIMEY_STATE_TYPE state;
    union __attribute__ ((__packed__)) {
        uint64_t stamp;
        uint8_t bytes[8]; 
        struct {
            uint32_t fraction;  
            uint32_t seconds;                          
        };
    }timeStamp;
    uint32_t lastUpdate;
    uint32_t UTC;
    uint32_t tzOffset;
    struct tm tmTime;
    struct {
        uint32_t count;
        uint32_t limit;        
    }error;
    union __attribute__ ((__packed__)) {
        uint32_t w;
        struct {
            unsigned valid:1;
            unsigned errorOccurred:1;
            unsigned :30;
        };
    } flags;
} TIMEY_WIMEY_DATA;


/* ****************************************************************************/
/* ****************************************************************************/
/* Section: Application Callback Routines                                     */
/* ****************************************************************************/
/* ****************************************************************************/
/* These routines are called by drivers when certain events occur.            */

	
/******************************************************************************/
/******************************************************************************/
/* Section: Application Initialization and State Machine Functions            */
/******************************************************************************/
/******************************************************************************/
/*                                                                            */
/******************************************************************************/
/*  Function:                                                                 */
/*    void TIMEYWIMEY_Initialize ( void )                                     */
/*                                                                            */
/*  Summary:                                                                  */
/*     MPLAB Harmony application initialization routine.                      */
/*                                                                            */
/*  Description:                                                              */
/*    This function initializes the Harmony application.  It places the       */
/*    application in its initial state and prepares it to run so that its     */
/*    APP_Tasks function can be called.                                       */
/*                                                                            */
/*  Precondition:                                                             */
/*    All other system initialization routines should be called before calling*/
/*    this routine (in "SYS_Initialize").                                     */
/*                                                                            */
/*  Parameters:                                                               */
/*    None.                                                                   */
/*                                                                            */
/*  Returns:                                                                  */
/*    None.                                                                   */
/*                                                                            */
/*  Example:                                                                  */
/*    <code>                                                                  */
/*    TIMEYWIMEY_Initialize();                                                */
/*    </code>                                                                 */
/*                                                                            */
/*  Remarks:                                                                  */
/*    This routine must be called from the SYS_Initialize function.           */
/*                                                                            */

void TIMEYWIMEY_Initialize ( void );


/******************************************************************************/
/*  Function:                                                                 */
/*    void TIMEYWIMEY_Tasks ( void )                                          */
/*                                                                            */
/*  Summary:                                                                  */
/*    MPLAB Harmony Demo application tasks function                           */
/*                                                                            */
/*  Description:                                                              */
/*    This routine is the Harmony Demo application's tasks function.  It      */
/*    defines the application's state machine and core logic.                 */
/*                                                                            */
/*  Precondition:                                                             */
/*    The system and application initialization ("SYS_Initialize") should be  */
/*    called before calling this.                                             */
/*                                                                            */
/*  Parameters:                                                               */
/*    None.                                                                   */
/*                                                                            */
/*  Returns:                                                                  */
/*    None.                                                                   */
/*                                                                            */
/*  Example:                                                                  */
/*    <code>                                                                  */
/*    TIMEYWIMEY_Tasks();                                                     */
/*    </code>                                                                 */
/*                                                                            */
/*  Remarks:                                                                  */
/*    This routine must be called from SYS_Tasks() routine.                   */
/*                                                                            */

void TIMEYWIMEY_Tasks( void );

bool SetTime(TIMEY_WIMEY_DATA *time,bool setRTCC);
bool IsLeapYear(uint32_t year);
uint32_t YearSeconds(uint32_t year);
uint32_t MonthSeconds(uint32_t month,uint32_t year);
uint8_t DayOfWeek(uint16_t year, uint8_t month, uint8_t day);
uint8_t HexToBCD (uint8_t hex);
bool UTCTotm(struct tm *time, uint32_t UTC, uint32_t tzOffset);
void ReverseNTP(uint8_t *array);
bool GetCurrentTimeString(uint8_t *timeString);
#endif /* _TIMEYWIMEY_H                                                       */

/******************************************************************************/
/* End of File                                                                */
/******************************************************************************/