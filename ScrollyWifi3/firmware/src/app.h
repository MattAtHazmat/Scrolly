/*******************************************************************************
  File Name:
    app.h

  Summary:


  Description:

 *******************************************************************************/

// DOM-IGNORE-BEGIN
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
 *******************************************************************************/
// DOM-IGNORE-END

#ifndef _APP_HEADER_H
#define _APP_HEADER_H

#define WIFI_TCPIP_WIFI_G_DEMO
#define WIFI_TCPIP_WIFI_G_DEMO_VERSION "2.0"

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include "system_config.h"
#include "system_definitions.h"

#include "system/command/sys_command.h"
#include "system/console/sys_console.h"

#include "driver/wifi/mrf24w/src/drv_wifi_scan_helper.h"
#include "driver/wifi/mrf24w/src/drv_wifi_iwpriv.h"

/*** APP Specific Ports System Service Configuration ***/
//#define SYS_PORT_E_TRIS         0x0000
#define SYS_PORT_E_LAT          0x0
#define SYS_PORT_E_ODC          0x0

//#define SYS_PORT_F_TRIS         0xc680
#define SYS_PORT_F_LAT          0x0
#define SYS_PORT_F_ODC          0x0

#if defined(TCPIP_IF_MRF24W)

#define WF_DISABLED DRV_WIFI_DISABLED
#define WF_ENABLED DRV_WIFI_ENABLED

#define WF_NETWORK_TYPE_INFRASTRUCTURE DRV_WIFI_NETWORK_TYPE_INFRASTRUCTURE
#define WF_NETWORK_TYPE_ADHOC DRV_WIFI_NETWORK_TYPE_ADHOC
#define WF_NETWORK_TYPE_P2P 0xff /* Unsupported */
#define WF_NETWORK_TYPE_SOFT_AP DRV_WIFI_NETWORK_TYPE_SOFT_AP

#define WF_SECURITY_OPEN DRV_WIFI_SECURITY_OPEN
#define WF_SECURITY_WEP_40 DRV_WIFI_SECURITY_WEP_40
#define WF_SECURITY_WEP_104 DRV_WIFI_SECURITY_WEP_104
#define WF_SECURITY_WPA_WITH_KEY DRV_WIFI_SECURITY_WPA_WITH_KEY
#define WF_SECURITY_WPA_WITH_PASS_PHRASE DRV_WIFI_SECURITY_WPA_WITH_PASS_PHRASE
#define WF_SECURITY_WPA2_WITH_KEY DRV_WIFI_SECURITY_WPA2_WITH_KEY
#define WF_SECURITY_WPA2_WITH_PASS_PHRASE DRV_WIFI_SECURITY_WPA2_WITH_PASS_PHRASE
#define WF_SECURITY_WPA_AUTO_WITH_KEY DRV_WIFI_SECURITY_WPA_AUTO_WITH_KEY
#define WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE DRV_WIFI_SECURITY_WPA_AUTO_WITH_PASS_PHRASE
#define WF_SECURITY_WPS_PUSH_BUTTON DRV_WIFI_SECURITY_WPS_PUSH_BUTTON
#define WF_SECURITY_WPS_PIN DRV_WIFI_SECURITY_WPS_PIN

#define WF_DEFAULT_ADHOC_HIDDEN_SSID DRV_WIFI_DEFAULT_ADHOC_HIDDEN_SSID
#define WF_DEFAULT_ADHOC_BEACON_PERIOD DRV_WIFI_DEFAULT_ADHOC_BEACON_PERIOD
#define WF_DEFAULT_ADHOC_MODE DRV_WIFI_DEFAULT_ADHOC_MODE

#define WF_DEFAULT_POWER_SAVE DRV_WIFI_DEFAULT_POWER_SAVE

#define WF_WEP_KEY_INVALID 0xff

#define WF_ASSERT(condition, msg) DRV_WIFI_ASSERT(condition, msg)

typedef DRV_WIFI_SCAN_RESULT WF_SCAN_RESULT;
typedef DRV_WIFI_CONFIG_DATA WF_CONFIG_DATA;
typedef DRV_WIFI_DEVICE_INFO WF_DEVICE_INFO;
typedef DRV_WIFI_ADHOC_NETWORK_CONTEXT WF_ADHOC_NETWORK_CONTEXT;

#endif /* defined(TCPIP_IF_MRF24W) */

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application states

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behaviour of the application at various times.
 */
typedef enum
{
    /* The application mounts the disk. */
    APP_MOUNT_DISK = 0,

    /* In this state, the application waits for the initialization of the TCP/IP stack
       to complete. */
    APP_TCPIP_WAIT_INIT,

    /* The application configures the Wi-Fi settings. */
    APP_WIFI_CONFIG,

    /* In this state, the application runs the Wi-Fi prescan. */
    APP_WIFI_PRESCAN,

    /* In this state, the application enables TCP/IP modules such as DHCP, NBNS and mDNS
       in all available interfaces. */
    APP_TCPIP_MODULES_ENABLE,

    /* In this state, the application can do TCP/IP transactions. */
    APP_TCPIP_TRANSACT,

    /* The application waits in this state for the driver to be ready
       before sending the "hello world" message. */
    //APP_STATE_WAIT_FOR_READY,

    /* The application waits in this state for the driver to finish
       sending the message. */
    //APP_STATE_WAIT_FOR_DONE,

    /* The application does nothing in the idle state. */
    //APP_STATE_IDLE

    APP_USERIO_LED_DEASSERTED,

    APP_USERIO_LED_ASSERTED,

    APP_TCPIP_ERROR,

} APP_STATE;

typedef enum
{
    /* Initialize the state machine, and also checks if prescan is allowed. */
    APP_WIFI_PRESCAN_INIT,

    /* In this state the application waits for the prescan to finish. */
    APP_WIFI_PRESCAN_WAIT,

    /* In this state the application displays the prescan results. */
    APP_WIFI_PRESCAN_DISPLAY,

    /* After prescan, Wi-Fi module is reset in this state. */
    APP_WIFI_PRESCAN_RESET,

    /* In this state, the application waits for Wi-Fi reset to finish. */
    APP_WIFI_PRESCAN_WAIT_RESET,

    /* Prescan is complete. */
    APP_WIFI_PRESCAN_DONE,

} APP_WIFI_PRESCAN_STATE;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */
typedef struct
{
    /* SYS_FS file handle */
    SYS_FS_HANDLE fileHandle;

    /* application's current state */
    APP_STATE state;

    /* prescan's current state */
    APP_WIFI_PRESCAN_STATE scanState;

    /* application data buffer */
    //uint8_t data[64];

    //uint32_t nBytesWritten;

    //uint32_t nBytesRead;
} APP_DATA;

typedef struct {
    uint8_t        ssid[32 + 1];      // 32 for SSID and one for term character
    uint8_t        type;              // net type: infrastructure/adhoc
    uint8_t        prevSSID[32 + 1];  // previous SSID we were connected to
    uint8_t        prevWLAN;          // previous WLAN type

    uint8_t        security;          // security type
    uint8_t        defaultWepKey;     // WEP index value
    uint8_t        key[64 + 1];       // 64-byte key plus term character
    uint8_t        SecurityKeyLength; // number of bytes in security key (can be 0)
    uint32_t       timeStart;
    SYS_TMR_HANDLE timer;             // used for delay
} WF_REDIRECTION_CONFIG;

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize(void)

  Summary:
     This routine initializes the application object.

  Description:
    This routine initializes the application object. The application state is
    set to wait for media attach.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
 */
void APP_Initialize(void);

/*******************************************************************************
  Function:
    void APP_Tasks(void)

  Summary:
    Application Tasks Function

  Description:
    This routine implements the application in a non blocking manner.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this function.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */
void APP_Tasks(void);

/*******************************************************************************
  Function:
    uint8_t APP_WIFI_Prescan(void)

  Summary:
    Wi-Fi Prescan Function

  Description:
    This function implements the Wi-Fi prescan in a non blocking manner.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this function.

  Parameters:
    None.

  Returns:
    None.

  Remarks:
    None.
 */
uint8_t APP_WIFI_Prescan(void);

#endif /* _APP_HEADER_H */

/*******************************************************************************
 End of File
*/
