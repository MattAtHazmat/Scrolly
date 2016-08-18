#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-wifi_g_db.mk)" "nbproject/Makefile-local-wifi_g_db.mk"
include nbproject/Makefile-local-wifi_g_db.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=wifi_g_db
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ScrollyWifi3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ScrollyWifi3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/main.c ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/random.c ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/arc4.c ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/crypto.c ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi.c ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi_api.c ../../../../../microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_com.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_commands.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_context_loader.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_eint.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_events.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_init.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_iwpriv.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mac.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_main.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_raw.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan_helper.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_softap_client_cache.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_spi.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs.c ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../microchip/harmony/v1_06_01/framework/system/fs/mpfs/src/mpfs.c ../../../../../microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c ../../../../../microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c ../../../../../microchip/harmony/v1_06_01/framework/system/random/src/sys_random.c ../../../../../microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/udp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/arp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dhcp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dns.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/http.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/icmp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/sntp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/sys_fs_wrapper.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int_helper_c32.S ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/hashes.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/helpers.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/lfsr.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/hash_fnv.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/oahash.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_heap_alloc.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helpers.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helper_c32.S ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_manager.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_notify.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_packet.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/ipv4.c ../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db/bsp_sys_init.c ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/wifi_g_db/framework/system/clk/src/sys_clk_static.c ../src/system_config/wifi_g_db/framework/system/ports/src/sys_ports_static.c ../src/http_print.c ../src/custom_http_app.c ../src/mpfs_img2.c ../src/system_config/wifi_g_db/system_init.c ../src/system_config/wifi_g_db/system_interrupt.c ../src/system_config/wifi_g_db/system_exceptions.c ../src/system_config/wifi_g_db/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1154982025/random.o ${OBJECTDIR}/_ext/1154982025/arc4.o ${OBJECTDIR}/_ext/1154982025/crypto.o ${OBJECTDIR}/_ext/1574175690/drv_nvm.o ${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/1580612541/drv_spi.o ${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1580612541/drv_spi_api.o ${OBJECTDIR}/_ext/1964213162/drv_tmr.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o ${OBJECTDIR}/_ext/298226257/sys_devcon.o ${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1619919393/sys_fs.o ${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o ${OBJECTDIR}/_ext/2037491226/mpfs.o ${OBJECTDIR}/_ext/281763671/sys_int_pic32.o ${OBJECTDIR}/_ext/1929061062/sys_ports.o ${OBJECTDIR}/_ext/285565403/sys_random.o ${OBJECTDIR}/_ext/1423893377/sys_tmr.o ${OBJECTDIR}/_ext/46397238/tcp.o ${OBJECTDIR}/_ext/46397238/udp.o ${OBJECTDIR}/_ext/46397238/arp.o ${OBJECTDIR}/_ext/46397238/dhcp.o ${OBJECTDIR}/_ext/46397238/dns.o ${OBJECTDIR}/_ext/46397238/http.o ${OBJECTDIR}/_ext/46397238/icmp.o ${OBJECTDIR}/_ext/46397238/sntp.o ${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o ${OBJECTDIR}/_ext/1306290896/big_int.o ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o ${OBJECTDIR}/_ext/1306290896/hashes.o ${OBJECTDIR}/_ext/1306290896/helpers.o ${OBJECTDIR}/_ext/1306290896/lfsr.o ${OBJECTDIR}/_ext/46397238/hash_fnv.o ${OBJECTDIR}/_ext/46397238/oahash.o ${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/46397238/tcpip_helpers.o ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o ${OBJECTDIR}/_ext/46397238/tcpip_manager.o ${OBJECTDIR}/_ext/46397238/tcpip_notify.o ${OBJECTDIR}/_ext/46397238/tcpip_packet.o ${OBJECTDIR}/_ext/46397238/ipv4.o ${OBJECTDIR}/_ext/629969006/bsp_sys_init.o ${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o ${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/1329444430/sys_clk_static.o ${OBJECTDIR}/_ext/498228094/sys_ports_static.o ${OBJECTDIR}/_ext/1360937237/http_print.o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ${OBJECTDIR}/_ext/2017816375/system_init.o ${OBJECTDIR}/_ext/2017816375/system_interrupt.o ${OBJECTDIR}/_ext/2017816375/system_exceptions.o ${OBJECTDIR}/_ext/2017816375/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1154982025/random.o.d ${OBJECTDIR}/_ext/1154982025/arc4.o.d ${OBJECTDIR}/_ext/1154982025/crypto.o.d ${OBJECTDIR}/_ext/1574175690/drv_nvm.o.d ${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o.d ${OBJECTDIR}/_ext/1580612541/drv_spi.o.d ${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/1580612541/drv_spi_api.o.d ${OBJECTDIR}/_ext/1964213162/drv_tmr.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o.d ${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o.d ${OBJECTDIR}/_ext/298226257/sys_devcon.o.d ${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/1619919393/sys_fs.o.d ${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/2037491226/mpfs.o.d ${OBJECTDIR}/_ext/281763671/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1929061062/sys_ports.o.d ${OBJECTDIR}/_ext/285565403/sys_random.o.d ${OBJECTDIR}/_ext/1423893377/sys_tmr.o.d ${OBJECTDIR}/_ext/46397238/tcp.o.d ${OBJECTDIR}/_ext/46397238/udp.o.d ${OBJECTDIR}/_ext/46397238/arp.o.d ${OBJECTDIR}/_ext/46397238/dhcp.o.d ${OBJECTDIR}/_ext/46397238/dns.o.d ${OBJECTDIR}/_ext/46397238/http.o.d ${OBJECTDIR}/_ext/46397238/icmp.o.d ${OBJECTDIR}/_ext/46397238/sntp.o.d ${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o.d ${OBJECTDIR}/_ext/1306290896/big_int.o.d ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.d ${OBJECTDIR}/_ext/1306290896/hashes.o.d ${OBJECTDIR}/_ext/1306290896/helpers.o.d ${OBJECTDIR}/_ext/1306290896/lfsr.o.d ${OBJECTDIR}/_ext/46397238/hash_fnv.o.d ${OBJECTDIR}/_ext/46397238/oahash.o.d ${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/46397238/tcpip_helpers.o.d ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/46397238/tcpip_manager.o.d ${OBJECTDIR}/_ext/46397238/tcpip_notify.o.d ${OBJECTDIR}/_ext/46397238/tcpip_packet.o.d ${OBJECTDIR}/_ext/46397238/ipv4.o.d ${OBJECTDIR}/_ext/629969006/bsp_sys_init.o.d ${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/1329444430/sys_clk_static.o.d ${OBJECTDIR}/_ext/498228094/sys_ports_static.o.d ${OBJECTDIR}/_ext/1360937237/http_print.o.d ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d ${OBJECTDIR}/_ext/2017816375/system_init.o.d ${OBJECTDIR}/_ext/2017816375/system_interrupt.o.d ${OBJECTDIR}/_ext/2017816375/system_exceptions.o.d ${OBJECTDIR}/_ext/2017816375/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1154982025/random.o ${OBJECTDIR}/_ext/1154982025/arc4.o ${OBJECTDIR}/_ext/1154982025/crypto.o ${OBJECTDIR}/_ext/1574175690/drv_nvm.o ${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/1580612541/drv_spi.o ${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/1580612541/drv_spi_api.o ${OBJECTDIR}/_ext/1964213162/drv_tmr.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o ${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o ${OBJECTDIR}/_ext/298226257/sys_devcon.o ${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/1619919393/sys_fs.o ${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o ${OBJECTDIR}/_ext/2037491226/mpfs.o ${OBJECTDIR}/_ext/281763671/sys_int_pic32.o ${OBJECTDIR}/_ext/1929061062/sys_ports.o ${OBJECTDIR}/_ext/285565403/sys_random.o ${OBJECTDIR}/_ext/1423893377/sys_tmr.o ${OBJECTDIR}/_ext/46397238/tcp.o ${OBJECTDIR}/_ext/46397238/udp.o ${OBJECTDIR}/_ext/46397238/arp.o ${OBJECTDIR}/_ext/46397238/dhcp.o ${OBJECTDIR}/_ext/46397238/dns.o ${OBJECTDIR}/_ext/46397238/http.o ${OBJECTDIR}/_ext/46397238/icmp.o ${OBJECTDIR}/_ext/46397238/sntp.o ${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o ${OBJECTDIR}/_ext/1306290896/big_int.o ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o ${OBJECTDIR}/_ext/1306290896/hashes.o ${OBJECTDIR}/_ext/1306290896/helpers.o ${OBJECTDIR}/_ext/1306290896/lfsr.o ${OBJECTDIR}/_ext/46397238/hash_fnv.o ${OBJECTDIR}/_ext/46397238/oahash.o ${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/46397238/tcpip_helpers.o ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o ${OBJECTDIR}/_ext/46397238/tcpip_manager.o ${OBJECTDIR}/_ext/46397238/tcpip_notify.o ${OBJECTDIR}/_ext/46397238/tcpip_packet.o ${OBJECTDIR}/_ext/46397238/ipv4.o ${OBJECTDIR}/_ext/629969006/bsp_sys_init.o ${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o ${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/1329444430/sys_clk_static.o ${OBJECTDIR}/_ext/498228094/sys_ports_static.o ${OBJECTDIR}/_ext/1360937237/http_print.o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ${OBJECTDIR}/_ext/2017816375/system_init.o ${OBJECTDIR}/_ext/2017816375/system_interrupt.o ${OBJECTDIR}/_ext/2017816375/system_exceptions.o ${OBJECTDIR}/_ext/2017816375/system_tasks.o

# Source Files
SOURCEFILES=../src/app.c ../src/main.c ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/random.c ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/arc4.c ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/crypto.c ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi.c ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi_api.c ../../../../../microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_com.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_commands.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_context_loader.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_eint.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_events.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_init.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_iwpriv.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mac.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_main.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_raw.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan_helper.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_softap_client_cache.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_spi.c ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs.c ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../microchip/harmony/v1_06_01/framework/system/fs/mpfs/src/mpfs.c ../../../../../microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c ../../../../../microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c ../../../../../microchip/harmony/v1_06_01/framework/system/random/src/sys_random.c ../../../../../microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/udp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/arp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dhcp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dns.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/http.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/icmp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/sntp.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/sys_fs_wrapper.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int_helper_c32.S ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/hashes.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/helpers.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/lfsr.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/hash_fnv.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/oahash.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_heap_alloc.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helpers.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helper_c32.S ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_manager.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_notify.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_packet.c ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/ipv4.c ../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db/bsp_sys_init.c ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/wifi_g_db/framework/system/clk/src/sys_clk_static.c ../src/system_config/wifi_g_db/framework/system/ports/src/sys_ports_static.c ../src/http_print.c ../src/custom_http_app.c ../src/mpfs_img2.c ../src/system_config/wifi_g_db/system_init.c ../src/system_config/wifi_g_db/system_interrupt.c ../src/system_config/wifi_g_db/system_exceptions.c ../src/system_config/wifi_g_db/system_tasks.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-wifi_g_db.mk dist/${CND_CONF}/${IMAGE_TYPE}/ScrollyWifi3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX695F512H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.ok ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.d" "${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int_helper_c32.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
	
${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helper_c32.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
	
else
${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.ok ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.d" "${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int_helper_c32.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1306290896/big_int_helper_c32.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helper_c32.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/46397238/tcpip_helper_c32.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/1154982025/random.o: ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1154982025" 
	@${RM} ${OBJECTDIR}/_ext/1154982025/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1154982025/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1154982025/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1154982025/random.o.d" -o ${OBJECTDIR}/_ext/1154982025/random.o ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/random.c     
	
${OBJECTDIR}/_ext/1154982025/arc4.o: ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1154982025" 
	@${RM} ${OBJECTDIR}/_ext/1154982025/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1154982025/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1154982025/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1154982025/arc4.o.d" -o ${OBJECTDIR}/_ext/1154982025/arc4.o ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/arc4.c     
	
${OBJECTDIR}/_ext/1154982025/crypto.o: ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1154982025" 
	@${RM} ${OBJECTDIR}/_ext/1154982025/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1154982025/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1154982025/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1154982025/crypto.o.d" -o ${OBJECTDIR}/_ext/1154982025/crypto.o ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/crypto.c     
	
${OBJECTDIR}/_ext/1574175690/drv_nvm.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1574175690" 
	@${RM} ${OBJECTDIR}/_ext/1574175690/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1574175690/drv_nvm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1574175690/drv_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1574175690/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/1574175690/drv_nvm.o ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm.c     
	
${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1574175690" 
	@${RM} ${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c     
	
${OBJECTDIR}/_ext/1580612541/drv_spi.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1580612541" 
	@${RM} ${OBJECTDIR}/_ext/1580612541/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580612541/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1580612541/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1580612541/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1580612541/drv_spi.o ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi.c     
	
${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/624130957" 
	@${RM} ${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c     
	
${OBJECTDIR}/_ext/1580612541/drv_spi_api.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1580612541" 
	@${RM} ${OBJECTDIR}/_ext/1580612541/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580612541/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1580612541/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1580612541/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/1580612541/drv_spi_api.o ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi_api.c     
	
${OBJECTDIR}/_ext/1964213162/drv_tmr.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1964213162" 
	@${RM} ${OBJECTDIR}/_ext/1964213162/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1964213162/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1964213162/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1964213162/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1964213162/drv_tmr.o ../../../../../microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_com.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_commands.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_context_loader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_context_loader.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_eint.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_events.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_init.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_iwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_iwpriv.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mac.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_main.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_raw.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan_helper.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_softap_client_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_softap_client_cache.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_spi.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c     
	
${OBJECTDIR}/_ext/298226257/sys_devcon.o: ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/298226257" 
	@${RM} ${OBJECTDIR}/_ext/298226257/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/298226257/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/298226257/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/298226257/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/298226257/sys_devcon.o ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o: ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/298226257" 
	@${RM} ${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/1619919393/sys_fs.o: ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1619919393" 
	@${RM} ${OBJECTDIR}/_ext/1619919393/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619919393/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1619919393/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1619919393/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1619919393/sys_fs.o ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs.c     
	
${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o: ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1619919393" 
	@${RM} ${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs_media_manager.c     
	
${OBJECTDIR}/_ext/2037491226/mpfs.o: ../../../../../microchip/harmony/v1_06_01/framework/system/fs/mpfs/src/mpfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037491226" 
	@${RM} ${OBJECTDIR}/_ext/2037491226/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037491226/mpfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037491226/mpfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2037491226/mpfs.o.d" -o ${OBJECTDIR}/_ext/2037491226/mpfs.o ../../../../../microchip/harmony/v1_06_01/framework/system/fs/mpfs/src/mpfs.c     
	
${OBJECTDIR}/_ext/281763671/sys_int_pic32.o: ../../../../../microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/281763671" 
	@${RM} ${OBJECTDIR}/_ext/281763671/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/281763671/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/281763671/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/281763671/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/281763671/sys_int_pic32.o ../../../../../microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/1929061062/sys_ports.o: ../../../../../microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1929061062" 
	@${RM} ${OBJECTDIR}/_ext/1929061062/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1929061062/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1929061062/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1929061062/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1929061062/sys_ports.o ../../../../../microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/285565403/sys_random.o: ../../../../../microchip/harmony/v1_06_01/framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285565403" 
	@${RM} ${OBJECTDIR}/_ext/285565403/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/285565403/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/285565403/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/285565403/sys_random.o.d" -o ${OBJECTDIR}/_ext/285565403/sys_random.o ../../../../../microchip/harmony/v1_06_01/framework/system/random/src/sys_random.c     
	
${OBJECTDIR}/_ext/1423893377/sys_tmr.o: ../../../../../microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1423893377" 
	@${RM} ${OBJECTDIR}/_ext/1423893377/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423893377/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1423893377/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1423893377/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1423893377/sys_tmr.o ../../../../../microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c     
	
${OBJECTDIR}/_ext/46397238/tcp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcp.o.d" -o ${OBJECTDIR}/_ext/46397238/tcp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcp.c     
	
${OBJECTDIR}/_ext/46397238/udp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/udp.o.d" -o ${OBJECTDIR}/_ext/46397238/udp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/udp.c     
	
${OBJECTDIR}/_ext/46397238/arp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/arp.o.d" -o ${OBJECTDIR}/_ext/46397238/arp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/arp.c     
	
${OBJECTDIR}/_ext/46397238/dhcp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/dhcp.o.d" -o ${OBJECTDIR}/_ext/46397238/dhcp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dhcp.c     
	
${OBJECTDIR}/_ext/46397238/dns.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/dns.o.d" -o ${OBJECTDIR}/_ext/46397238/dns.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dns.c     
	
${OBJECTDIR}/_ext/46397238/http.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/http.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/http.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/http.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/http.o.d" -o ${OBJECTDIR}/_ext/46397238/http.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/http.c     
	
${OBJECTDIR}/_ext/46397238/icmp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/icmp.o.d" -o ${OBJECTDIR}/_ext/46397238/icmp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/icmp.c     
	
${OBJECTDIR}/_ext/46397238/sntp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/sntp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/sntp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/sntp.o.d" -o ${OBJECTDIR}/_ext/46397238/sntp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/sntp.c     
	
${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/sys_fs_wrapper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/sys_fs_wrapper.c     
	
${OBJECTDIR}/_ext/1306290896/big_int.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/big_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/big_int.o.d" -o ${OBJECTDIR}/_ext/1306290896/big_int.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int.c     
	
${OBJECTDIR}/_ext/1306290896/hashes.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/hashes.o.d" -o ${OBJECTDIR}/_ext/1306290896/hashes.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/hashes.c     
	
${OBJECTDIR}/_ext/1306290896/helpers.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/helpers.o.d" -o ${OBJECTDIR}/_ext/1306290896/helpers.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/helpers.c     
	
${OBJECTDIR}/_ext/1306290896/lfsr.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/lfsr.o.d" -o ${OBJECTDIR}/_ext/1306290896/lfsr.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/lfsr.c     
	
${OBJECTDIR}/_ext/46397238/hash_fnv.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/46397238/hash_fnv.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/hash_fnv.c     
	
${OBJECTDIR}/_ext/46397238/oahash.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/oahash.o.d" -o ${OBJECTDIR}/_ext/46397238/oahash.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/oahash.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_heap_alloc.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_helpers.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_helpers.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helpers.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_manager.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_manager.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_manager.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_notify.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_notify.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_notify.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_packet.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_packet.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_packet.c     
	
${OBJECTDIR}/_ext/46397238/ipv4.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/ipv4.o.d" -o ${OBJECTDIR}/_ext/46397238/ipv4.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/ipv4.c     
	
${OBJECTDIR}/_ext/629969006/bsp_sys_init.o: ../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/629969006" 
	@${RM} ${OBJECTDIR}/_ext/629969006/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/629969006/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/629969006/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/629969006/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/629969006/bsp_sys_init.o ../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db/bsp_sys_init.c     
	
${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o: ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793058988" 
	@${RM} ${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_tasks.c     
	
${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o: ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793058988" 
	@${RM} ${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c     
	
${OBJECTDIR}/_ext/1329444430/sys_clk_static.o: ../src/system_config/wifi_g_db/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1329444430" 
	@${RM} ${OBJECTDIR}/_ext/1329444430/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329444430/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1329444430/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1329444430/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1329444430/sys_clk_static.o ../src/system_config/wifi_g_db/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/498228094/sys_ports_static.o: ../src/system_config/wifi_g_db/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/498228094" 
	@${RM} ${OBJECTDIR}/_ext/498228094/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/498228094/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/498228094/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/498228094/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/498228094/sys_ports_static.o ../src/system_config/wifi_g_db/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/http_print.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c     
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c     
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c     
	
${OBJECTDIR}/_ext/2017816375/system_init.o: ../src/system_config/wifi_g_db/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2017816375" 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2017816375/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2017816375/system_init.o.d" -o ${OBJECTDIR}/_ext/2017816375/system_init.o ../src/system_config/wifi_g_db/system_init.c     
	
${OBJECTDIR}/_ext/2017816375/system_interrupt.o: ../src/system_config/wifi_g_db/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2017816375" 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2017816375/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2017816375/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2017816375/system_interrupt.o ../src/system_config/wifi_g_db/system_interrupt.c     
	
${OBJECTDIR}/_ext/2017816375/system_exceptions.o: ../src/system_config/wifi_g_db/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2017816375" 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2017816375/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2017816375/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2017816375/system_exceptions.o ../src/system_config/wifi_g_db/system_exceptions.c     
	
${OBJECTDIR}/_ext/2017816375/system_tasks.o: ../src/system_config/wifi_g_db/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2017816375" 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2017816375/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2017816375/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2017816375/system_tasks.o ../src/system_config/wifi_g_db/system_tasks.c     
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c     
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c     
	
${OBJECTDIR}/_ext/1154982025/random.o: ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1154982025" 
	@${RM} ${OBJECTDIR}/_ext/1154982025/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1154982025/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1154982025/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1154982025/random.o.d" -o ${OBJECTDIR}/_ext/1154982025/random.o ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/random.c     
	
${OBJECTDIR}/_ext/1154982025/arc4.o: ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1154982025" 
	@${RM} ${OBJECTDIR}/_ext/1154982025/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1154982025/arc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1154982025/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1154982025/arc4.o.d" -o ${OBJECTDIR}/_ext/1154982025/arc4.o ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/arc4.c     
	
${OBJECTDIR}/_ext/1154982025/crypto.o: ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1154982025" 
	@${RM} ${OBJECTDIR}/_ext/1154982025/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1154982025/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1154982025/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1154982025/crypto.o.d" -o ${OBJECTDIR}/_ext/1154982025/crypto.o ../../../../../microchip/harmony/v1_06_01/framework/crypto/src/crypto.c     
	
${OBJECTDIR}/_ext/1574175690/drv_nvm.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1574175690" 
	@${RM} ${OBJECTDIR}/_ext/1574175690/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1574175690/drv_nvm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1574175690/drv_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1574175690/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/1574175690/drv_nvm.o ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm.c     
	
${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1574175690" 
	@${RM} ${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/1574175690/drv_nvm_erasewrite.o ../../../../../microchip/harmony/v1_06_01/framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c     
	
${OBJECTDIR}/_ext/1580612541/drv_spi.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1580612541" 
	@${RM} ${OBJECTDIR}/_ext/1580612541/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580612541/drv_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1580612541/drv_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1580612541/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1580612541/drv_spi.o ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi.c     
	
${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/624130957" 
	@${RM} ${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/624130957/drv_spi_sys_queue_fifo.o ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/drv_spi_sys_queue_fifo.c     
	
${OBJECTDIR}/_ext/1580612541/drv_spi_api.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1580612541" 
	@${RM} ${OBJECTDIR}/_ext/1580612541/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/1580612541/drv_spi_api.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1580612541/drv_spi_api.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1580612541/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/1580612541/drv_spi_api.o ../../../../../microchip/harmony/v1_06_01/framework/driver/spi/src/dynamic/drv_spi_api.c     
	
${OBJECTDIR}/_ext/1964213162/drv_tmr.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1964213162" 
	@${RM} ${OBJECTDIR}/_ext/1964213162/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1964213162/drv_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1964213162/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1964213162/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1964213162/drv_tmr.o ../../../../../microchip/harmony/v1_06_01/framework/driver/tmr/src/dynamic/drv_tmr.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_com.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_com.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_commands.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_commands.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_config_data.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_config_data.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_algorithm.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_algorithm.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_manager.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_manager.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_connection_profile.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_connection_profile.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_context_loader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_context_loader.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_context_loader.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_debug_output.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_debug_output.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_eint.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_eint.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_events.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_events.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_event_handler.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_event_handler.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_init.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_init.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_iwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_iwpriv.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_iwpriv.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_mac.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mac.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_main.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_main.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_mgmt_msg.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_mgmt_msg.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_param_msg.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_param_msg.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_pbkdf2.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_pbkdf2.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_power_save.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_power_save.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_raw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_raw.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_raw.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_scan_helper.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_scan_helper.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_softap_client_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_softap_client_cache.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_softap_client_cache.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_spi.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_spi.c     
	
${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o: ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1882223759" 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o.d 
	@${RM} ${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o.d" -o ${OBJECTDIR}/_ext/1882223759/drv_wifi_tx_power.o ../../../../../microchip/harmony/v1_06_01/framework/driver/wifi/mrf24w/src/drv_wifi_tx_power.c     
	
${OBJECTDIR}/_ext/298226257/sys_devcon.o: ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/298226257" 
	@${RM} ${OBJECTDIR}/_ext/298226257/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/298226257/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/298226257/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/298226257/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/298226257/sys_devcon.o ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon.c     
	
${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o: ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/298226257" 
	@${RM} ${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/298226257/sys_devcon_pic32mx.o ../../../../../microchip/harmony/v1_06_01/framework/system/devcon/src/sys_devcon_pic32mx.c     
	
${OBJECTDIR}/_ext/1619919393/sys_fs.o: ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1619919393" 
	@${RM} ${OBJECTDIR}/_ext/1619919393/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619919393/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1619919393/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1619919393/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1619919393/sys_fs.o ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs.c     
	
${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o: ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1619919393" 
	@${RM} ${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1619919393/sys_fs_media_manager.o ../../../../../microchip/harmony/v1_06_01/framework/system/fs/src/dynamic/sys_fs_media_manager.c     
	
${OBJECTDIR}/_ext/2037491226/mpfs.o: ../../../../../microchip/harmony/v1_06_01/framework/system/fs/mpfs/src/mpfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2037491226" 
	@${RM} ${OBJECTDIR}/_ext/2037491226/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037491226/mpfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2037491226/mpfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2037491226/mpfs.o.d" -o ${OBJECTDIR}/_ext/2037491226/mpfs.o ../../../../../microchip/harmony/v1_06_01/framework/system/fs/mpfs/src/mpfs.c     
	
${OBJECTDIR}/_ext/281763671/sys_int_pic32.o: ../../../../../microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/281763671" 
	@${RM} ${OBJECTDIR}/_ext/281763671/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/281763671/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/281763671/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/281763671/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/281763671/sys_int_pic32.o ../../../../../microchip/harmony/v1_06_01/framework/system/int/src/sys_int_pic32.c     
	
${OBJECTDIR}/_ext/1929061062/sys_ports.o: ../../../../../microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1929061062" 
	@${RM} ${OBJECTDIR}/_ext/1929061062/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1929061062/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1929061062/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1929061062/sys_ports.o.d" -o ${OBJECTDIR}/_ext/1929061062/sys_ports.o ../../../../../microchip/harmony/v1_06_01/framework/system/ports/src/sys_ports.c     
	
${OBJECTDIR}/_ext/285565403/sys_random.o: ../../../../../microchip/harmony/v1_06_01/framework/system/random/src/sys_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285565403" 
	@${RM} ${OBJECTDIR}/_ext/285565403/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/285565403/sys_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/285565403/sys_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/285565403/sys_random.o.d" -o ${OBJECTDIR}/_ext/285565403/sys_random.o ../../../../../microchip/harmony/v1_06_01/framework/system/random/src/sys_random.c     
	
${OBJECTDIR}/_ext/1423893377/sys_tmr.o: ../../../../../microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1423893377" 
	@${RM} ${OBJECTDIR}/_ext/1423893377/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423893377/sys_tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1423893377/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1423893377/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1423893377/sys_tmr.o ../../../../../microchip/harmony/v1_06_01/framework/system/tmr/src/sys_tmr.c     
	
${OBJECTDIR}/_ext/46397238/tcp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcp.o.d" -o ${OBJECTDIR}/_ext/46397238/tcp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcp.c     
	
${OBJECTDIR}/_ext/46397238/udp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/udp.o.d" -o ${OBJECTDIR}/_ext/46397238/udp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/udp.c     
	
${OBJECTDIR}/_ext/46397238/arp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/arp.o.d" -o ${OBJECTDIR}/_ext/46397238/arp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/arp.c     
	
${OBJECTDIR}/_ext/46397238/dhcp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/dhcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/dhcp.o.d" -o ${OBJECTDIR}/_ext/46397238/dhcp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dhcp.c     
	
${OBJECTDIR}/_ext/46397238/dns.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/dns.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/dns.o.d" -o ${OBJECTDIR}/_ext/46397238/dns.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/dns.c     
	
${OBJECTDIR}/_ext/46397238/http.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/http.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/http.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/http.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/http.o.d" -o ${OBJECTDIR}/_ext/46397238/http.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/http.c     
	
${OBJECTDIR}/_ext/46397238/icmp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/icmp.o.d" -o ${OBJECTDIR}/_ext/46397238/icmp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/icmp.c     
	
${OBJECTDIR}/_ext/46397238/sntp.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/sntp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/sntp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/sntp.o.d" -o ${OBJECTDIR}/_ext/46397238/sntp.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/sntp.c     
	
${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/sys_fs_wrapper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o.d" -o ${OBJECTDIR}/_ext/1306290896/sys_fs_wrapper.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/sys_fs_wrapper.c     
	
${OBJECTDIR}/_ext/1306290896/big_int.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/big_int.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/big_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/big_int.o.d" -o ${OBJECTDIR}/_ext/1306290896/big_int.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/big_int.c     
	
${OBJECTDIR}/_ext/1306290896/hashes.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/hashes.o.d" -o ${OBJECTDIR}/_ext/1306290896/hashes.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/hashes.c     
	
${OBJECTDIR}/_ext/1306290896/helpers.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/helpers.o.d" -o ${OBJECTDIR}/_ext/1306290896/helpers.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/helpers.c     
	
${OBJECTDIR}/_ext/1306290896/lfsr.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/lfsr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1306290896" 
	@${RM} ${OBJECTDIR}/_ext/1306290896/lfsr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1306290896/lfsr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1306290896/lfsr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1306290896/lfsr.o.d" -o ${OBJECTDIR}/_ext/1306290896/lfsr.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/common/lfsr.c     
	
${OBJECTDIR}/_ext/46397238/hash_fnv.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/hash_fnv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/46397238/hash_fnv.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/hash_fnv.c     
	
${OBJECTDIR}/_ext/46397238/oahash.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/oahash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/oahash.o.d" -o ${OBJECTDIR}/_ext/46397238/oahash.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/oahash.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_heap_alloc.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_heap_alloc.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_helpers.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_helpers.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_helpers.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_manager.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_manager.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_manager.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_notify.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_notify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_notify.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_notify.c     
	
${OBJECTDIR}/_ext/46397238/tcpip_packet.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/tcpip_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/46397238/tcpip_packet.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/tcpip_packet.c     
	
${OBJECTDIR}/_ext/46397238/ipv4.o: ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/46397238" 
	@${RM} ${OBJECTDIR}/_ext/46397238/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/46397238/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/46397238/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/46397238/ipv4.o.d" -o ${OBJECTDIR}/_ext/46397238/ipv4.o ../../../../../microchip/harmony/v1_06_01/framework/tcpip/src/ipv4.c     
	
${OBJECTDIR}/_ext/629969006/bsp_sys_init.o: ../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db/bsp_sys_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/629969006" 
	@${RM} ${OBJECTDIR}/_ext/629969006/bsp_sys_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/629969006/bsp_sys_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/629969006/bsp_sys_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/629969006/bsp_sys_init.o.d" -o ${OBJECTDIR}/_ext/629969006/bsp_sys_init.o ../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db/bsp_sys_init.c     
	
${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o: ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793058988" 
	@${RM} ${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/793058988/drv_spi_tasks.o ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_tasks.c     
	
${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o: ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/793058988" 
	@${RM} ${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/793058988/drv_spi_master_ebm_tasks.o ../src/system_config/wifi_g_db/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c     
	
${OBJECTDIR}/_ext/1329444430/sys_clk_static.o: ../src/system_config/wifi_g_db/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1329444430" 
	@${RM} ${OBJECTDIR}/_ext/1329444430/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1329444430/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1329444430/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1329444430/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/1329444430/sys_clk_static.o ../src/system_config/wifi_g_db/framework/system/clk/src/sys_clk_static.c     
	
${OBJECTDIR}/_ext/498228094/sys_ports_static.o: ../src/system_config/wifi_g_db/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/498228094" 
	@${RM} ${OBJECTDIR}/_ext/498228094/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/498228094/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/498228094/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/498228094/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/498228094/sys_ports_static.o ../src/system_config/wifi_g_db/framework/system/ports/src/sys_ports_static.c     
	
${OBJECTDIR}/_ext/1360937237/http_print.o: ../src/http_print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_print.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/http_print.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_print.o ../src/http_print.c     
	
${OBJECTDIR}/_ext/1360937237/custom_http_app.o: ../src/custom_http_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_app.o ../src/custom_http_app.c     
	
${OBJECTDIR}/_ext/1360937237/mpfs_img2.o: ../src/mpfs_img2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_img2.o ../src/mpfs_img2.c     
	
${OBJECTDIR}/_ext/2017816375/system_init.o: ../src/system_config/wifi_g_db/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2017816375" 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2017816375/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2017816375/system_init.o.d" -o ${OBJECTDIR}/_ext/2017816375/system_init.o ../src/system_config/wifi_g_db/system_init.c     
	
${OBJECTDIR}/_ext/2017816375/system_interrupt.o: ../src/system_config/wifi_g_db/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2017816375" 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2017816375/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2017816375/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2017816375/system_interrupt.o ../src/system_config/wifi_g_db/system_interrupt.c     
	
${OBJECTDIR}/_ext/2017816375/system_exceptions.o: ../src/system_config/wifi_g_db/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2017816375" 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2017816375/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2017816375/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2017816375/system_exceptions.o ../src/system_config/wifi_g_db/system_exceptions.c     
	
${OBJECTDIR}/_ext/2017816375/system_tasks.o: ../src/system_config/wifi_g_db/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2017816375" 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2017816375/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2017816375/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -ffunction-sections -O1 -DPLIB_INLINE="static inline" -DPLIB_INLINE_API="static inline" -I"../../../" -I"../src" -I"../src/system_config/wifi_g_db" -I"../src/system_config/wifi_g_db/framework" -I"../../../../../microchip/harmony/v1_06_01/framework" -I"../../../../../microchip/harmony/v1_06_01/bsp/wifi_g_db" -Wall -MMD -MF "${OBJECTDIR}/_ext/2017816375/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2017816375/system_tasks.o ../src/system_config/wifi_g_db/system_tasks.c     
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ScrollyWifi3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../microchip/harmony/v1_06_01/bin/framework/peripheral/PIC32MX695F512H_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ScrollyWifi3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../microchip/harmony/v1_06_01/bin/framework/peripheral/PIC32MX695F512H_peripherals.a          -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=46960,--defsym=_min_stack_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ScrollyWifi3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../microchip/harmony/v1_06_01/bin/framework/peripheral/PIC32MX695F512H_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ScrollyWifi3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ../../../../../microchip/harmony/v1_06_01/bin/framework/peripheral/PIC32MX695F512H_peripherals.a        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=46960,--defsym=_min_stack_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/ScrollyWifi3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/wifi_g_db
	${RM} -r dist/wifi_g_db

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
