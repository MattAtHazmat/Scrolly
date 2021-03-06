/*******************************************************************************
  MPLAB Harmony System Configuration Header

  File Name:
    system_config.h

  Summary:
    Build-time configuration header for the system defined by this MPLAB Harmony
    project.

  Description:
    An MPLAB Project may have multiple configurations.  This file defines the
    build-time options for a single configuration.

  Remarks:
    This configuration header must not define any prototypes or data
    definitions (or include any files that do).  It only provides macro
    definitions for build-time configuration options that are not instantiated
    until used by another MPLAB Harmony module or application.
    
    Created with MPLAB Harmony Version 1.06
*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2015 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
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

#ifndef _SYSTEM_CONFIG_H
#define _SYSTEM_CONFIG_H

/* This is a temporary workaround for an issue with the peripheral library "Exists"
   functions that causes superfluous warnings.  It "nulls" out the definition of
   The PLIB function attribute that causes the warning.  Once that issue has been
   resolved, this definition should be removed. */
#define _PLIB_UNSUPPORTED


// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
/*  This section Includes other configuration headers necessary to completely
    define this configuration.
*/

#include "bsp_config.h"
#include "private.h"
// *****************************************************************************
// *****************************************************************************
// Section: System Service Configuration
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Common System Service Configuration Options
*/
#define SYS_VERSION_STR           "1.06"
#define SYS_VERSION               10600

// *****************************************************************************
/* Clock System Service Configuration Options
*/
#define SYS_CLK_FREQ                        40000000ul
#define SYS_CLK_BUS_PERIPHERAL_1            40000000ul
#define SYS_CLK_UPLL_BEFORE_DIV2_FREQ       48000000ul
#define SYS_CLK_CONFIG_PRIMARY_XTAL         8000000ul
#define SYS_CLK_CONFIG_SECONDARY_XTAL       32768ul
   
/*** Interrupt System Service Configuration ***/
#define SYS_INT                     true

/*** Ports System Service Configuration ***/
#define SYS_PORT_AD1PCFG        ~0xbfff
#define SYS_PORT_CNPUE          0x0
#define SYS_PORT_CNEN           0x0

#define SYS_PORT_F_TRIS         0x38
#define SYS_PORT_F_LAT          0x0
#define SYS_PORT_F_ODC          0x0
/*** Timer System Service Configuration ***/
#define SYS_TMR_POWER_STATE             SYS_MODULE_POWER_RUN_FULL
#define SYS_TMR_DRIVER_INDEX            DRV_TMR_INDEX_0
#define SYS_TMR_MAX_CLIENT_OBJECTS      5
#define SYS_TMR_FREQUENCY               1250
#define SYS_TMR_FREQUENCY_TOLERANCE     10
#define SYS_TMR_UNIT_RESOLUTION         10000
#define SYS_TMR_CLIENT_TOLERANCE        10
#define SYS_TMR_INTERRUPT_NOTIFICATION  false


/*** File System Service Configuration ***/

#define SYS_FS_MEDIA_NUMBER         	1

#define SYS_FS_VOLUME_NUMBER		1

#define SYS_FS_AUTOMOUNT_ENABLE		false
#define SYS_FS_MAX_FILES	    	25
#define SYS_FS_MAX_FILE_SYSTEM_TYPE 	1
#define SYS_FS_MEDIA_MAX_BLOCK_SIZE  	512
#define SYS_FS_MEDIA_MANAGER_BUFFER_SIZE 512


#define SYS_FS_MEDIA_TYPE_IDX0 				
#define SYS_FS_TYPE_IDX0 					








// *****************************************************************************
/* Random System Service Configuration Options
*/

#define SYS_RANDOM_CRYPTO_SEED_SIZE  55


// *****************************************************************************
// *****************************************************************************
// Section: Driver Configuration
// *****************************************************************************
// *****************************************************************************

/*** Timer Driver Configuration ***/
#define DRV_TMR_INSTANCES_NUMBER           2
#define DRV_TMR_CLIENTS_NUMBER             1
#define DRV_TMR_INTERRUPT_MODE             true

/*** Timer Driver 0 Configuration ***/
#define DRV_TMR_PERIPHERAL_ID_IDX0          TMR_ID_1
#define DRV_TMR_INTERRUPT_SOURCE_IDX0       INT_SOURCE_TIMER_1
#define DRV_TMR_INTERRUPT_VECTOR_IDX0       INT_VECTOR_T1
#define DRV_TMR_ISR_VECTOR_IDX0             _TIMER_1_VECTOR
#define DRV_TMR_INTERRUPT_PRIORITY_IDX0     INT_PRIORITY_LEVEL4
#define DRV_TMR_INTERRUPT_SUB_PRIORITY_IDX0 INT_SUBPRIORITY_LEVEL3
#define DRV_TMR_CLOCK_SOURCE_IDX0           DRV_TMR_CLKSOURCE_INTERNAL
#define DRV_TMR_PRESCALE_IDX0               TMR_PRESCALE_VALUE_256
#define DRV_TMR_OPERATION_MODE_IDX0         DRV_TMR_OPERATION_MODE_16_BIT
#define DRV_TMR_ASYNC_WRITE_ENABLE_IDX0     false
#define DRV_TMR_POWER_STATE_IDX0            SYS_MODULE_POWER_RUN_FULL

/*** Timer Driver 1 Configuration ***/
#define DRV_TMR_PERIPHERAL_ID_IDX1          TMR_ID_2
#define DRV_TMR_INTERRUPT_SOURCE_IDX1       INT_SOURCE_TIMER_3
#define DRV_TMR_INTERRUPT_VECTOR_IDX1       INT_VECTOR_T3
#define DRV_TMR_ISR_VECTOR_IDX1             _TIMER_3_VECTOR
#define DRV_TMR_INTERRUPT_PRIORITY_IDX1     INT_PRIORITY_LEVEL1
#define DRV_TMR_INTERRUPT_SUB_PRIORITY_IDX1 INT_SUBPRIORITY_LEVEL0
#define DRV_TMR_CLOCK_SOURCE_IDX1           DRV_TMR_CLKSOURCE_INTERNAL
#define DRV_TMR_PRESCALE_IDX1               TMR_PRESCALE_VALUE_16
#define DRV_TMR_OPERATION_MODE_IDX1         DRV_TMR_OPERATION_MODE_32_BIT
#define DRV_TMR_ASYNC_WRITE_ENABLE_IDX1     false
#define DRV_TMR_POWER_STATE_IDX1            SYS_MODULE_POWER_RUN_FULL
 
 
 
/*** NVM Driver Configuration ***/


#define DRV_NVM_INSTANCES_NUMBER     	1
#define DRV_NVM_CLIENTS_NUMBER        	2
#define DRV_NVM_BUFFER_OBJECT_NUMBER  	5

#define DRV_NVM_INTERRUPT_MODE        	true
#define DRV_NVM_INTERRUPT_SOURCE      	INT_SOURCE_FLASH_CONTROL

#define DRV_NVM_MEDIA_SIZE              64
#define DRV_NVM_MEDIA_START_ADDRESS     0x9D000000

#define DRV_NVM_ROW_SIZE                512
#define DRV_NVM_PAGE_SIZE             	4096
#define DRV_NVM_PROGRAM_UNLOCK_KEY1     0xAA996655
#define DRV_NVM_PROGRAM_UNLOCK_KEY2     0x556699AA

#define DRV_NVM_ERASE_WRITE_ENABLE


#define DRV_NVM_SYS_FS_REGISTER





/*** SPI Driver Configuration ***/
#define DRV_SPI_NUMBER_OF_MODULES		3
/*** Driver Compilation and static configuration options. ***/
/*** Select SPI compilation units.***/
#define DRV_SPI_POLLED 				1
#define DRV_SPI_ISR 				1
#define DRV_SPI_MASTER 				1
#define DRV_SPI_SLAVE 				0
#define DRV_SPI_RM 				1
#define DRV_SPI_EBM 				1
#define DRV_SPI_8BIT 				1
#define DRV_SPI_16BIT 				0
#define DRV_SPI_32BIT 				0
#define DRV_SPI_DMA 				1

/*** SPI Driver Static Allocation Options ***/
#define DRV_SPI_INSTANCES_NUMBER 		2
#define DRV_SPI_CLIENTS_NUMBER 			2
#define DRV_SPI_ELEMENTS_PER_QUEUE 		10
/*** SPI Driver DMA Options ***/
#define DRV_SPI_DMA_TXFER_SIZE 			8192
#define DRV_SPI_DMA_DUMMY_BUFFER_SIZE 		8192
/* SPI Driver Instance 0 Configuration */
#define DRV_SPI_SPI_ID_IDX0 			SPI_ID_2
#define DRV_SPI_TASK_MODE_IDX0 			DRV_SPI_TASK_MODE_POLLED
#define DRV_SPI_SPI_MODE_IDX0   DRV_SPI_MODE_MASTER
#define DRV_SPI_ALLOW_IDLE_RUN_IDX0     false
#define DRV_SPI_SPI_PROTOCOL_TYPE_IDX0 		DRV_SPI_PROTOCOL_TYPE_STANDARD
#define DRV_SPI_COMM_WIDTH_IDX0 		SPI_COMMUNICATION_WIDTH_8BITS
#define DRV_SPI_SPI_CLOCK_IDX0 			CLK_BUS_PERIPHERAL_2
#define DRV_SPI_BAUD_RATE_IDX0 			8000000
#define DRV_SPI_BUFFER_TYPE_IDX0 		DRV_SPI_BUFFER_TYPE_ENHANCED
#define DRV_SPI_CLOCK_MODE_IDX0 		DRV_SPI_CLOCK_MODE_IDLE_HIGH_EDGE_FALL
#define DRV_SPI_INPUT_PHASE_IDX0 		SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE
#define DRV_SPI_QUEUE_SIZE_IDX0 		10
#define DRV_SPI_RESERVED_JOB_IDX0 		1
/* SPI Driver Instance 1 Configuration */
#define DRV_SPI_SPI_ID_IDX1 			SPI_ID_4
#define DRV_SPI_TASK_MODE_IDX1 			DRV_SPI_TASK_MODE_POLLED
#define DRV_SPI_SPI_MODE_IDX1   DRV_SPI_MODE_MASTER
#define DRV_SPI_ALLOW_IDLE_RUN_IDX1     false
#define DRV_SPI_SPI_PROTOCOL_TYPE_IDX1 		DRV_SPI_PROTOCOL_TYPE_STANDARD
#define DRV_SPI_COMM_WIDTH_IDX1 		SPI_COMMUNICATION_WIDTH_8BITS
#define DRV_SPI_SPI_CLOCK_IDX1 			CLK_BUS_PERIPHERAL_2
#define DRV_SPI_BAUD_RATE_IDX1 			6400000
#define DRV_SPI_BUFFER_TYPE_IDX1 		DRV_SPI_BUFFER_TYPE_STANDARD
#define DRV_SPI_CLOCK_MODE_IDX1 		DRV_SPI_CLOCK_MODE_IDLE_LOW_EDGE_RISE
#define DRV_SPI_INPUT_PHASE_IDX1 		SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE
#define DRV_SPI_QUEUE_SIZE_IDX1 		10
#define DRV_SPI_RESERVED_JOB_IDX1 		1
#define DRV_SPI_TRANS_PER_SM_RUN_IDX1 		16
#define DRV_SPI_TX_DMA_CHANNEL_IDX1 		DMA_CHANNEL_1
#define DRV_SPI_TX_DMA_THRESHOLD_IDX1 		4
#define DRV_SPI_RX_DMA_CHANNEL_IDX1 		DMA_CHANNEL_0
#define DRV_SPI_RX_DMA_THRESHOLD_IDX1 		4

/*** Wi-Fi Driver Configuration ***/
#define WF_CONFIG_MHC

#define DRV_WIFI_ASSERT(condition, msg) WF_AssertFunction(condition, msg, __FILE__, __LINE__)

#define DRV_WIFI_SPI_INDEX 0
#define DRV_WIFI_SPI_INSTANCE sysObj.spiObjectIdx0

#define DRV_WIFI_NVM_SPACE_ENABLE
#define DRV_WIFI_NVM_SPACE_ADDR (48*1024)

#define MRF_INT_SOURCE INT_SOURCE_EXTERNAL_1
#define MRF_INT_VECTOR INT_VECTOR_INT1

// IO mapping for general control pins, including CS, RESET and HIBERNATE
// MRF24W in SPI2 slot
#define WF_CS_PORT_CHANNEL PORT_CHANNEL_G
#define WF_CS_BIT_POS      9

#define WF_RESET_PORT_CHANNEL PORT_CHANNEL_D
#define WF_RESET_BIT_POS      1

#define WF_HIBERNATE_PORT_CHANNEL PORT_CHANNEL_E
#define WF_HIBERNATE_BIT_POS      4

#define WF_INT_PRIORITY     3
#define WF_INT_SUBPRIORITY  1
#define WF_INT_PORT_CHANNEL PORT_CHANNEL_D
#define WF_INT_BIT_POS      8

#define WF_DEFAULT_NETWORK_TYPE        DRV_WIFI_NETWORK_TYPE_INFRASTRUCTURE
//#define WF_DEFAULT_SSID_NAME           "MicrochipDemoApp"
#define WF_DEFAULT_LIST_RETRY_COUNT    (DRV_WIFI_RETRY_FOREVER) /* Number (1..255) of times to try to connect to the SSID when using Infrastructure network type */
#define WF_DEFAULT_CHANNEL_LIST        {} /* Channel list for Domain - use default in module */

#define WF_DEFAULT_WIFI_SECURITY_MODE  DRV_WIFI_SECURITY_WPA_AUTO_WITH_PASS_PHRASE
#define WF_DEFAULT_WEP_PHRASE          "WEP Phrase" // default WEP passphrase
#define WF_DEFAULT_WEP_KEY_40          "5AFB6C8E77" // default WEP40 key
#define WF_DEFAULT_WEP_KEY_104         "90E96780C739409DA50034FCAA" // default WEP104 key
//#define WF_DEFAULT_PSK_PHRASE          "SooperSekrit" // customized WPA passphrase
#define WF_DEFAULT_WPS_PIN             "12390212" // default WPS PIN

#define WF_SAVE_WPS_CREDENTIALS        DRV_WIFI_DISABLED

#define WF_CHECK_LINK_STATUS           WF_DISABLED /* Gets the MRF to check the link status relying on Tx failures. */
#define WF_LINK_LOST_THRESHOLD         40          /* Consecutive Tx transmission failures to be considered the AP is gone away. */

/* 
 * MRF24W FW has a built-in connection manager, and it is enabled by default.
 * If you want to run your own connection manager in host side, you should
 * disable the FW connection manager to avoid possible conflict between the two.
 * Especially these two APIs can be affected if you do not disable it.
 * A) uint16_t DRV_WIFI_Disconnect(void)
 * B) uint16_t DRV_WIFI_Scan(bool scanAll)
 * These APIs will return failure when the conflict occurs.
 */
#define WF_MODULE_CONNECTION_MANAGER   DRV_WIFI_ENABLED

#define WF_DEFAULT_PS_POLL             DRV_WIFI_DISABLED /* DRV_WIFI_ENABLED or DRV_WIFI_DISABLED */
#define WF_SOFTWARE_MULTICAST_FILTER   DRV_WIFI_ENABLED



// *****************************************************************************
// *****************************************************************************
// Section: Middleware & Other Library Configuration
// *****************************************************************************
// *****************************************************************************


#define HAVE_MCAPI
#define NO_MD5
#define NO_SHA
#define NO_SHA256
#define NO_AES
#define NO_RSA
#define NO_HMAC


// *****************************************************************************
// *****************************************************************************
// Section: TCPIP Stack Configuration
// *****************************************************************************
// *****************************************************************************
#define TCPIP_STACK_USE_IPV4
#define TCPIP_STACK_USE_TCP
#define TCPIP_STACK_USE_UDP
#define TCPIP_STACK_DRAM_SIZE		        		39250
#define TCPIP_STACK_DRAM_RUN_LIMIT		    		2048
#define TCPIP_STACK_DRAM_DEBUG_ENABLE
#define TCPIP_STACK_TICK_RATE		        		5

#define TCPIP_STACK_MALLOC_FUNC		    	malloc

#define TCPIP_STACK_CALLOC_FUNC		    	calloc

#define TCPIP_STACK_FREE_FUNC		    	free

/* TCP/IP stack event notification */
#define TCPIP_STACK_USE_EVENT_NOTIFICATION

/*** ARP Configuration ***/
#define TCPIP_ARP_CACHE_ENTRIES                 		5
#define TCPIP_ARP_CACHE_DELETE_OLD		        	true
#define TCPIP_ARP_CACHE_SOLVED_ENTRY_TMO			1200
#define TCPIP_ARP_CACHE_PENDING_ENTRY_TMO			60
#define TCPIP_ARP_CACHE_PENDING_RETRY_TMO			2
#define TCPIP_ARP_CACHE_PERMANENT_QUOTA		    		50
#define TCPIP_ARP_CACHE_PURGE_THRESHOLD		    		75
#define TCPIP_ARP_CACHE_PURGE_QUANTA		    		1
#define TCPIP_ARP_CACHE_ENTRY_RETRIES		    		3
#define TCPIP_ARP_GRATUITOUS_PROBE_COUNT			1
#define TCPIP_ARP_TASK_PROCESS_RATE		        	2

/*** DHCP Configuration ***/
#define TCPIP_STACK_USE_DHCP_CLIENT
#define TCPIP_DHCP_TIMEOUT		        		2
#define TCPIP_DHCP_TASK_TICK_RATE	    			200
#define TCPIP_DHCP_HOST_NAME_SIZE	    			20
#define TCPIP_DHCP_CLIENT_CONNECT_PORT  			68
#define TCPIP_DHCP_SERVER_LISTEN_PORT				67
#define TCPIP_DHCP_CLIENT_ENABLED             			true


/*** DHCP Server Configuration ***/
#define TCPIP_STACK_USE_DHCP_SERVER
#define TCPIP_DHCPS_TASK_PROCESS_RATE                               200
#define TCPIP_DHCPS_LEASE_ENTRIES_DEFAULT                           15
#define TCPIP_DHCPS_LEASE_SOLVED_ENTRY_TMO                          1200
#define TCPIP_DHCPS_LEASE_REMOVED_BEFORE_ACK                        5
#define TCPIP_DHCP_SERVER_DELETE_OLD_ENTRIES                        true
#define TCPIP_DHCPS_LEASE_DURATION	TCPIP_DHCPS_LEASE_SOLVED_ENTRY_TMO

/*** DHCP Server Instance 0 Configuration ***/
#define TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX0             "192.168.1.100"

#define TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX0                  "192.168.1.1"

#define TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX0             "255.255.255.0"

#define TCPIP_DHCPS_DEFAULT_SERVER_GATEWAY_ADDRESS_IDX0             "192.168.1.1"

#define TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX0         "192.168.1.1"

#define TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX0       "192.168.1.1"

#define TCPIP_DHCP_SERVER_INTERFACE_INDEX_IDX0                      0

#define TCPIP_DHCP_SERVER_POOL_ENABLED_IDX0                         true



/*** DNS Client Configuration ***/
#define TCPIP_STACK_USE_DNS
#define TCPIP_DNS_CLIENT_SERVER_TMO					60
#define TCPIP_DNS_CLIENT_TASK_PROCESS_RATE			200
#define TCPIP_DNS_CLIENT_CACHE_ENTRIES				5
#define TCPIP_DNS_CLIENT_CACHE_ENTRY_TMO			0
#define TCPIP_DNS_CLIENT_CACHE_PER_IPV4_ADDRESS		5
#define TCPIP_DNS_CLIENT_CACHE_PER_IPV6_ADDRESS		1
#define TCPIP_DNS_CLIENT_OPEN_ADDRESS_TYPE			IP_ADDRESS_TYPE_IPV4
#define TCPIP_DNS_CLIENT_CACHE_DEFAULT_TTL_VAL		1200
#define TCPIP_DNS_CLIENT_CACHE_UNSOLVED_ENTRY_TMO	10
#define TCPIP_DNS_CLIENT_LOOKUP_RETRY_TMO			5
#define TCPIP_DNS_CLIENT_MAX_HOSTNAME_LEN			32
#define TCPIP_DNS_CLIENT_DELETE_OLD_ENTRIES			true


/*** DNS Server Configuration ***/
#define TCPIP_STACK_USE_DNS_SERVER
#define TCPIP_DNSS_HOST_NAME_LEN		    		64
#define TCPIP_DNSS_REPLY_BOARD_ADDR				true
#define TCPIP_DNSS_CACHE_PER_IPV4_ADDRESS			2
#define TCPIP_DNSS_CACHE_PER_IPV6_ADDRESS			
#define TCPIP_DNSS_TTL_TIME							600
#define TCPIP_DNSS_TASK_PROCESS_RATE			    33
#define TCPIP_DNSS_DELETE_OLD_LEASE				true

/***Maximum DNS server Cache entries. It is the sum of TCPIP_DNSS_CACHE_PER_IPV4_ADDRESS and TCPIP_DNSS_CACHE_PER_IPV6_ADDRESS.***/
#define TCPIP_DNSS_CACHE_MAX_SERVER_ENTRIES     (TCPIP_DNSS_CACHE_PER_IPV4_ADDRESS+TCPIP_DNSS_CACHE_PER_IPV6_ADDRESS)


/*** HTTP Configuration ***/
#define TCPIP_STACK_USE_HTTP_SERVER
#define TCPIP_HTTP_MAX_HEADER_LEN		    		15
#define TCPIP_HTTP_CACHE_LEN		        		"600"
#define TCPIP_HTTP_TIMEOUT		            		45
#define TCPIP_HTTP_MAX_CONNECTIONS		    		4
#define TCPIP_HTTP_MAX_TLS_CONNECTIONS		  		0
#define TCPIP_HTTP_DEFAULT_FILE		        		"index.htm"
#define TCPIP_HTTPS_DEFAULT_FILE	        		"index.htm"
#define TCPIP_HTTP_DEFAULT_LEN		        		10
#define TCPIP_HTTP_MAX_DATA_LEN		        		100
#define TCPIP_HTTP_MIN_CALLBACK_FREE				16
#define TCPIP_HTTP_SKT_TX_BUFF_SIZE		    		0
#define TCPIP_HTTP_SKT_RX_BUFF_SIZE		    		0
#define TCPIP_HTTP_TLS_SKT_TX_BUFF_SIZE		                0
#define TCPIP_HTTP_TLS_SKT_RX_BUFF_SIZE		                0
#define TCPIP_HTTP_CONFIG_FLAGS		        		1
#define TCPIP_HTTP_FILE_UPLOAD_ENABLE
#define TCPIP_HTTP_FILE_UPLOAD_NAME				"mpfsupload"
#define TCPIP_HTTP_USE_POST
#define TCPIP_HTTP_USE_COOKIES
#define TCPIP_STACK_USE_BASE64_DECODE
#define TCPIP_HTTP_USE_AUTHENTICATION
#define TCPIP_HTTP_TASK_RATE					33

/*** ICMP Configuration ***/
#define TCPIP_STACK_USE_ICMP_SERVER









/*** TCP Configuration ***/
#define TCPIP_TCP_MAX_SEG_SIZE_TX		        	1460
#define TCPIP_TCP_MAX_SEG_SIZE_RX_LOCAL		    		1460
#define TCPIP_TCP_MAX_SEG_SIZE_RX_NON_LOCAL			536
#define TCPIP_TCP_SOCKET_DEFAULT_TX_SIZE			512
#define TCPIP_TCP_SOCKET_DEFAULT_RX_SIZE			512
#define TCPIP_TCP_START_TIMEOUT_VAL		        	1000
#define TCPIP_TCP_DELAYED_ACK_TIMEOUT		    		100
#define TCPIP_TCP_FIN_WAIT_2_TIMEOUT		    		5000
#define TCPIP_TCP_KEEP_ALIVE_TIMEOUT		    		10000
#define TCPIP_TCP_CLOSE_WAIT_TIMEOUT		    		200
#define TCPIP_TCP_MAX_RETRIES		            		5
#define TCPIP_TCP_MAX_UNACKED_KEEP_ALIVES			6
#define TCPIP_TCP_MAX_SYN_RETRIES		        	2
#define TCPIP_TCP_AUTO_TRANSMIT_TIMEOUT_VAL			40
#define TCPIP_TCP_WINDOW_UPDATE_TIMEOUT_VAL			200
#define TCPIP_TCP_MAX_SOCKETS		            		10
#define TCPIP_TCP_TASK_TICK_RATE		        	5





/*** UDP Configuration ***/
#define TCPIP_UDP_MAX_SOCKETS		                	10
#define TCPIP_UDP_SOCKET_DEFAULT_TX_SIZE		    	512
#define TCPIP_UDP_SOCKET_DEFAULT_TX_QUEUE_LIMIT    	 	3
#define TCPIP_UDP_SOCKET_DEFAULT_RX_QUEUE_LIMIT			5
#define TCPIP_UDP_SOCKET_POOL_BUFFERS		        	4
#define TCPIP_UDP_SOCKET_POOL_BUFFER_SIZE		    	512

#define TCPIP_UDP_USE_TX_CHECKSUM             			true

#define TCPIP_UDP_USE_RX_CHECKSUM             			true


/*** Network Configuration Index 0 ***/
#define TCPIP_NETWORK_DEFAULT_INTERFACE_NAME 			"MRF24W"
#define TCPIP_IF_MRF24W
#define TCPIP_NETWORK_DEFAULT_HOST_NAME 			"MCHPBOARD_W"
#define TCPIP_NETWORK_DEFAULT_MAC_ADDR	 			0
#define TCPIP_NETWORK_DEFAULT_IP_ADDRESS 			"0.0.0.0"
#define TCPIP_NETWORK_DEFAULT_IP_MASK 				"255.255.255.0"
#define TCPIP_NETWORK_DEFAULT_GATEWAY	 			"192.168.1.1"
#define TCPIP_NETWORK_DEFAULT_DNS 				"192.168.1.1"
#define TCPIP_NETWORK_DEFAULT_SECOND_DNS 			"0.0.0.0"
#define TCPIP_NETWORK_DEFAULT_POWER_MODE 			"full"
#define TCPIP_NETWORK_DEFAULT_INTERFACE_FLAGS   		TCPIP_NETWORK_CONFIG_DHCP_CLIENT_ON
#define TCPIP_NETWORK_DEFAULT_MAC_DRIVER 		    DRV_MRF24W_MACObject
#define TCPIP_NETWORK_DEFAULT_IPV6_ADDRESS 			0
#define TCPIP_NETWORK_DEFAULT_IPV6_PREFIX_LENGTH 		0
#define TCPIP_NETWORK_DEFAULT_IPV6_GATEWAY 		        0


/*** TCPIP SYS FS Wrapper ***/
#define SYS_FS_MAX_PATH						80
#define LOCAL_WEBSITE_PATH_FS				"/mnt/mchpSite1"
#define LOCAL_WEBSITE_PATH					"/mnt/mchpSite1/"
#define SYS_FS_DRIVE						"FLASH"
#define SYS_FS_NVM_VOL						"/dev/nvma1"
#define SYS_FS_FATFS_STRING					"FATFS"
#define SYS_FS_MPFS_STRING					"MPFS2"

#define APP_TCPIP_LED_1 BSP_LED_0
#define APP_TCPIP_LED_2 BSP_LED_1
#define APP_TCPIP_LED_3 BSP_LED_2

#define APP_TCPIP_SWITCH_1 BSP_SWITCH_0


// *****************************************************************************
/* BSP Configuration Options
*/
#define BSP_OSC_FREQUENCY 8000000


#include "FirmwareConfiguration.h"
#include "HardwareConfiguration.h"


#endif // _SYSTEM_CONFIG_H
/*******************************************************************************
 End of File
*/

