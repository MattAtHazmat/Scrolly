/*******************************************************************************
  File Name:
    app.c

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

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include <sys/attribs.h>
#include "app.h"

#if defined(TCPIP_IF_MRF24W)
#define WIFI_INTERFACE_NAME "MRF24W"
#endif

#if defined(TCPIP_STACK_USE_ZEROCONF_MDNS_SD)
#define IS_MDNS_RUN() true
#else
#define IS_MDNS_RUN() false
#define TCPIP_MDNS_ServiceDeregister(a) do {} while (0)
#define TCPIP_MDNS_ServiceRegister(a, b, c, d, e, f, g, h) do {} while (0)
#endif /* defined(TCPIP_STACK_USE_ZEROCONF_MDNS_SD) */

#define IS_WF_INTF(x) ((strcmp(x, "MRF24W") == 0) || (strcmp(x, "MRF24WN") == 0))

// *****************************************************************************
// *****************************************************************************
// Section: Global Variable Definitions
// *****************************************************************************
// *****************************************************************************
bool g_redirect_signal = false;
BSP_LED_STATE LEDstate = BSP_LED_STATE_OFF;
//WF_CONFIG_DATA g_wifi_cfg;
WF_DEVICE_INFO g_wifi_deviceInfo;
WF_REDIRECTION_CONFIG g_redirectionConfig;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */
static APP_DATA appData;

static void APP_WIFI_RedirectionConfigInit(void);
static void APP_WIFI_IPv6MulticastFilter_Set(TCPIP_NET_HANDLE netH);
static void APP_WIFI_PowerSave_Config(bool enabled);
static void APP_WIFI_DHCPS_Sync(TCPIP_NET_HANDLE netH);
static void APP_TCPIP_IFModules_Disable(TCPIP_NET_HANDLE netH);
static void APP_TCPIP_IFModules_Enable(TCPIP_NET_HANDLE netH);
static void APP_IF_Down(TCPIP_NET_HANDLE netH);
static void APP_IF_Up(TCPIP_NET_HANDLE netH);
static void APP_WIFIG_SSID_Set(TCPIP_NET_HANDLE netH);

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize(void)

  Remarks:
    See prototype in app.h.
 */
void APP_Initialize(void)
{
    /* Following PORT initialization functions are for the 3 LEDs */
    /* PORT E Initialization */
    PLIB_PORTS_OpenDrainEnable(PORTS_ID_0, PORT_CHANNEL_E, SYS_PORT_E_ODC);
    PLIB_PORTS_Toggle(PORTS_ID_0, PORT_CHANNEL_E, SYS_PORT_E_LAT);
    //PLIB_PORTS_DirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_E, SYS_PORT_E_TRIS ^ 0xFFFF);
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_E, 0);

    /* PORT F Initialization */
    PLIB_PORTS_OpenDrainEnable(PORTS_ID_0, PORT_CHANNEL_F, SYS_PORT_F_ODC);
    PLIB_PORTS_Toggle(PORTS_ID_0, PORT_CHANNEL_F, SYS_PORT_F_LAT);
    //PLIB_PORTS_DirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_F, SYS_PORT_F_TRIS ^ 0xFFFF);
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_F, 0);
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_F, 1);

    /* 
     * Intialize the app state to wait for
     * media attach.
     */
    appData.state = APP_MOUNT_DISK;
    appData.scanState = APP_WIFI_PRESCAN_INIT;

    //iwpriv_initialconn_set(false);
}

/*******************************************************************************
  Function:
    void APP_Tasks(void)

  Remarks:
    See prototype in app.h.
 */
void APP_Tasks(void)
{
    static bool isWiFiPowerSaveConfigured = false;
    static bool wasNetUp[2] = {true, true}; // this app supports 2 interfaces so far
    static uint32_t startTick = 0;
    static IPV4_ADDR defaultIPWiFi = {-1};
    static TCPIP_NET_HANDLE netHandleWiFi;
    int i, nNets;
    
    switch (appData.state)
    {
        case APP_MOUNT_DISK:
            if(SYS_FS_Mount(SYS_FS_NVM_VOL, LOCAL_WEBSITE_PATH_FS, MPFS2, 0, NULL) == 0)
            {
                SYS_CONSOLE_PRINT("SYS_Initialize: The %s File System is mounted.\r\n", SYS_FS_MPFS_STRING);
                appData.state = APP_TCPIP_WAIT_INIT;
            }
            else
            {
                SYS_CONSOLE_PRINT("SYS_Initialize: Mount the %s File System: pending!\r\n", SYS_FS_MPFS_STRING);
            }
            break;

        case APP_TCPIP_WAIT_INIT: {
            SYS_STATUS tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
            if (tcpipStat < 0)
            {
                SYS_CONSOLE_MESSAGE("APP: TCP/IP stack initialization failed!\r\n");
                appData.state = APP_TCPIP_ERROR;
            }
            else if (tcpipStat == SYS_STATUS_READY)
            {
                appData.state = APP_WIFI_CONFIG;
            }
            break;
        }

        case APP_WIFI_CONFIG:
            /*
             * Following "if condition" is useless when demo firstly
             * boots up, since stack's status has already been checked in
             * APP_TCPIP_WAIT_INIT. But it is necessary in redirection or
             * Wi-Fi interface reset due to connection errors.
             */
            if (iwpriv_initstatus_get() == IWPRIV_READY) {
                iwpriv_devinfo_get(&g_wifi_deviceInfo);
                defaultIPWiFi.Val = TCPIP_STACK_NetAddress(netHandleWiFi);
                netHandleWiFi = TCPIP_STACK_NetHandleGet(WIFI_INTERFACE_NAME);

                // initialize redirection variable
                APP_WIFIG_SSID_Set(netHandleWiFi);
                APP_WIFI_RedirectionConfigInit();

                if (!g_redirect_signal) {
                    iwpriv_prescan_set(true);
                    appData.state = APP_WIFI_PRESCAN;
                } else {
                    g_redirect_signal = false;
                    APP_TCPIP_IFModules_Enable(netHandleWiFi);
                    appData.state = APP_TCPIP_TRANSACT;
                    break;
                }
            } else {
                break;
            }

        case APP_WIFI_PRESCAN: {
            // if iwpriv_prescan_set(false) was called,
            // this state would just run once and pass,
            // APP_WIFI_Prescan() function would not actually
            // do anything
            uint8_t scanStatus = APP_WIFI_Prescan();
            if (scanStatus == IWPRIV_READY) {
                appData.state = APP_TCPIP_MODULES_ENABLE;
            } else if (scanStatus == IWPRIV_ERROR) {
                SYS_CONSOLE_MESSAGE("Wi-Fi Prescan Error.\r\n");
                appData.state = APP_TCPIP_MODULES_ENABLE;
            } else {
                break;
            }
        }

        case APP_TCPIP_MODULES_ENABLE:
            // check the available interfaces
            nNets = TCPIP_STACK_NumberOfNetworksGet();
            for (i = 0; i < nNets; ++i)
                APP_TCPIP_IFModules_Enable(TCPIP_STACK_IndexToNet(i));
            appData.state = APP_TCPIP_TRANSACT;

        case APP_TCPIP_TRANSACT:
            // wait for redirection command from custom_http_app.c
            if (iwpriv_connstatus_get() == IWPRIV_CONNECTION_FAILED || g_redirect_signal) {
                APP_TCPIP_IFModules_Disable(netHandleWiFi);
                APP_IF_Down(netHandleWiFi);
                APP_IF_Up(netHandleWiFi);
                isWiFiPowerSaveConfigured = false;
                appData.state = APP_WIFI_CONFIG;
                break;
            } else if (iwpriv_connstatus_get() == IWPRIV_CONNECTION_REESTABLISHED) {
                // restart dhcp client and config power save
                if (!iwpriv_is_servermode()) {
                    TCPIP_DHCP_Disable(netHandleWiFi);
                    TCPIP_DHCP_Enable(netHandleWiFi);
                    isWiFiPowerSaveConfigured = false;
                }
            }

            /*
             * Following for loop is to deal with manually controlling
             * interface down/up (for example, through console commands
             * or web page).
             */
            nNets = TCPIP_STACK_NumberOfNetworksGet();
            for (i = 0; i < nNets; ++i)
            {
                TCPIP_NET_HANDLE netH = TCPIP_STACK_IndexToNet(i);
                BSP_LEDStateSet(BSP_LED_2, TCPIP_STACK_NetIsReady(netH));
                if (!TCPIP_STACK_NetIsUp(netH) && wasNetUp[i])
                {
                    const char *netName = TCPIP_STACK_NetNameGet(netH);
                    wasNetUp[i] = false;
                    APP_TCPIP_IFModules_Disable(netH);
                    if (IS_WF_INTF(netName))
                        isWiFiPowerSaveConfigured = false;
                }

                if (TCPIP_STACK_NetIsUp(netH) && !wasNetUp[i])
                {
                    wasNetUp[i] = true;
                    APP_TCPIP_IFModules_Enable(netH);
                }
            }

            /*
             * If we get a new IP address that is different than the default one,
             * we will run PowerSave configuration.
             */
            if (!isWiFiPowerSaveConfigured &&
                TCPIP_STACK_NetIsUp(netHandleWiFi) &&
                (TCPIP_STACK_NetAddress(netHandleWiFi) != defaultIPWiFi.Val)) {
                APP_WIFI_PowerSave_Config(true);
                isWiFiPowerSaveConfigured = true;
            }

            APP_WIFI_DHCPS_Sync(netHandleWiFi);

            if (SYS_TMR_TickCountGet() - startTick >= SYS_TMR_TickCounterFrequencyGet() / 2ul)
            {
                startTick = SYS_TMR_TickCountGet();
                LEDstate ^= BSP_LED_STATE_ON;
                BSP_LEDStateSet(APP_TCPIP_LED_1, LEDstate);
            }

            break;

        default:
            break;
    }
}

uint8_t APP_WIFI_Prescan(void)
{
    switch (appData.scanState) {
        case APP_WIFI_PRESCAN_INIT:            
            if (iwpriv_prescan_get()) {
                uint8_t type;
                iwpriv_nettype_get(&type);
                if (type == WF_NETWORK_TYPE_SOFT_AP && iwpriv_connstatus_get() == IWPRIV_CONNECTION_SUCCESSFUL)
                    return IWPRIV_ERROR;
                iwpriv_prescan_start();
                appData.scanState = APP_WIFI_PRESCAN_WAIT;
                break;
            } else {
                return IWPRIV_READY;
            }

        case APP_WIFI_PRESCAN_WAIT:
            if (iwpriv_prescan_done())
            {
                IWPRIV_SCAN_RESULT ret;
                ret = iwpriv_scanstatus_get(); // retrieve the scan status
                if (ret == IWPRIV_SCAN_SUCCEEDED) {
                    appData.scanState = APP_WIFI_PRESCAN_DISPLAY;
                } else {
                    appData.scanState = APP_WIFI_PRESCAN_INIT;
                    return IWPRIV_ERROR;
                }
            } else {
                break;
            }

        case APP_WIFI_PRESCAN_DISPLAY:
            /*
             * Wi-Fi G demo doesn't have the console to display scan results,
             * but it still needs to run iwpriv_scanresults_display() to store
             * the results for web page display.
             */
            if (iwpriv_scanresults_display() == IWPRIV_IN_PROGRESS) {
                break;
            } else { // IWPRIV_READY
                appData.scanState = APP_WIFI_PRESCAN_RESET;
            }

        case APP_WIFI_PRESCAN_RESET: {
            TCPIP_NET_HANDLE netH = TCPIP_STACK_NetHandleGet(WIFI_INTERFACE_NAME);
            APP_IF_Down(netH);
            APP_IF_Up(netH);
            iwpriv_initialconn_set(true);
            iwpriv_prescan_set(false);
            appData.scanState = APP_WIFI_PRESCAN_WAIT_RESET;
            break;
        }

        case APP_WIFI_PRESCAN_WAIT_RESET:
            if (iwpriv_initstatus_get() == IWPRIV_READY)
                appData.scanState = APP_WIFI_PRESCAN_DONE;
            else
                break;

        case APP_WIFI_PRESCAN_DONE:
            appData.scanState = APP_WIFI_PRESCAN_INIT;
            return IWPRIV_READY;
    }

    return IWPRIV_IN_PROGRESS;
}

/*******************************************************************************
  Function:
    static void APP_WIFI_RedirectionConfigInit(void)

  Remarks:
    Initialize redirection configuration variable
 */
static void APP_WIFI_RedirectionConfigInit(void)
{
    g_redirectionConfig.ssid[0] = 0;
    g_redirectionConfig.security = WF_SECURITY_OPEN;
    g_redirectionConfig.key[0] = 0;
    g_redirectionConfig.defaultWepKey = WF_WEP_KEY_INVALID;
    g_redirectionConfig.type = WF_NETWORK_TYPE_INFRASTRUCTURE;
}

static void APP_WIFI_IPv6MulticastFilter_Set(TCPIP_NET_HANDLE netH)
{
#if defined(TCPIP_STACK_USE_IPV6)
    const uint8_t *pMacAddr = TCPIP_STACK_NetAddressMac(netH);
    uint8_t linkLocalSolicitedMulticastMacAddr[6];
    uint8_t solicitedNodeMulticastMACAddr[] = {0x33, 0x33, 0xff, 0x00, 0x00, 0x00};
    uint8_t allNodesMulticastMACAddr[] = {0x33, 0x33, 0x00, 0x00, 0x00, 0x01};
    int i;

    linkLocalSolicitedMulticastMacAddr[0] = 0x33;
    linkLocalSolicitedMulticastMacAddr[1] = 0x33;
    linkLocalSolicitedMulticastMacAddr[2] = 0xff;

    for (i = 3; i < 6; i++)
        linkLocalSolicitedMulticastMacAddr[i] = pMacAddr[i];

    iwpriv_mcastfilter_set(linkLocalSolicitedMulticastMacAddr);
    iwpriv_mcastfilter_set(solicitedNodeMulticastMACAddr);
    iwpriv_mcastfilter_set(allNodesMulticastMACAddr);
#endif
}

static void APP_WIFI_PowerSave_Config(bool enabled)
{
#if WF_DEFAULT_POWER_SAVE == WF_ENABLED 
    iwpriv_powersave_config(enabled);
#endif
}

static void APP_WIFI_DHCPS_Sync(TCPIP_NET_HANDLE netH)
{
#if defined(TCPIP_STACK_USE_DHCP_SERVER)
    bool updated;
    TCPIP_MAC_ADDR addr;

    iwpriv_leftclient_get(&updated, &addr);

    if (updated) 
        TCPIP_DHCPS_LeaseEntryRemove(netH, (TCPIP_MAC_ADDR *)&addr);
#endif
}

static void APP_TCPIP_IFModules_Disable(TCPIP_NET_HANDLE netH)
{
    const char *netName = TCPIP_STACK_NetNameGet(netH);

    if (IS_WF_INTF(netName) && TCPIP_STACK_NetIsUp(netH)) {
        APP_WIFI_PowerSave_Config(false);
    }

    //TCPIP_DHCPS_Disable(netH);
    TCPIP_DHCP_Disable(netH);
    TCPIP_MDNS_ServiceDeregister(netH);
}

static void APP_TCPIP_IFModules_Enable(TCPIP_NET_HANDLE netH)
{
    int netIndex = TCPIP_STACK_NetIndexGet(netH);
    const char *netName = TCPIP_STACK_NetNameGet(netH);

    /*
     * If it's not Wi-Fi interface, then leave it to the TCP/IP stack
     * to configure its DHCP server/client status.
     */
    if (IS_WF_INTF(netName)) {
        if (iwpriv_is_servermode()) {
            TCPIP_DHCP_Disable(netH); // must stop DHCP client first
            //TCPIP_DHCPS_Enable(netH); // start DHCP server
        } else {
            //TCPIP_DHCPS_Disable(netH); // must stop DHCP server first
            TCPIP_DHCP_Enable(netH); // start DHCP client
        }
        APP_WIFI_IPv6MulticastFilter_Set(netH);
    }
    if (IS_MDNS_RUN()) {
        char mDNSServiceName[] = "MyWebServiceNameX "; // base name of the service Must not exceed 16 bytes long
        // the last digit will be incremented by interface
        mDNSServiceName[sizeof(mDNSServiceName) - 2] = '1' + netIndex;
        TCPIP_MDNS_ServiceRegister(netH, mDNSServiceName, "_http._tcp.local", 80, ((const uint8_t *)"path=/index.htm"),
            1, NULL, NULL);
    }
}

static void APP_IF_Down(TCPIP_NET_HANDLE netH)
{
    TCPIP_STACK_NetDown(netH);
}

static void APP_IF_Up(TCPIP_NET_HANDLE netH)
{
    SYS_MODULE_OBJ tcpipStackObj;
    TCPIP_STACK_INIT tcpip_init_data;
    const TCPIP_NETWORK_CONFIG *pIfConf;
    uint16_t net_ix = TCPIP_STACK_NetIndexGet(netH);

    tcpipStackObj = TCPIP_STACK_Initialize(0, 0);
    TCPIP_STACK_InitializeDataGet(tcpipStackObj, &tcpip_init_data);
    pIfConf = tcpip_init_data.pNetConf + net_ix;
    TCPIP_STACK_NetUp(netH, pIfConf);
}

static void APP_WIFIG_SSID_Set(TCPIP_NET_HANDLE netH)
{
    const uint8_t *mac;
    uint8_t ssid[33];
    uint8_t ssidLen;

    iwpriv_ssid_get(ssid, &ssidLen);
    mac = TCPIP_STACK_NetAddressMac(netH);
    if (strcmp((const char *)ssid, "MCHP_G_xxxx") == 0) {
        sprintf((char *)ssid, "MCHP_G_%02x%02x", mac[4], mac[5]);
        ssidLen = strlen((char *)ssid);
        iwpriv_ssid_set(ssid, ssidLen);
    }
}

/*******************************************************************************
 End of File
*/
