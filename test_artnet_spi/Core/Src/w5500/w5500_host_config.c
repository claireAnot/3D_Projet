/*
 * w5500_host_config.c
 *
 *  Created on: Jul 16, 2024
 *      Author: mahyar
 */
#include <stdio.h>
#include <stdint.h>
#include "w5500_host_config.h"
#include "wizchip_conf.h"
#include "dhcp.h"
#include "stdbool.h"


volatile bool ip_assigned = false;

/**
 * @brief Callback function triggered when an IP address is successfully assigned by the DHCP server.
 * @param None
 * @retval None
 */
void callback_ip_assigned();

/**
 * @brief Callback function triggered when the DHCP lease is renewed.
 * @param None
 * @retval None
 */
void callback_ip_renewed();

/**
 * @brief Callback function triggered when an IP conflict is detected.
 * @param None
 * @retval None
 */
void callback_ip_conflict();


/**
 * @brief Configures the W5500 with a static IP address.
 * @param mac Source MAC address
 * @param ip Source IP address
 * @param sn Subnet mask
 * @param gw Gateway IP address
 * @param dns DNS server IP address
 * @retval None
 */
void static_host_configuration(wiz_NetInfo *net_info)
{
    printf("Setting up static host configuration...\r\n");

    // Set network configuration
    ctlnetwork(CN_SET_NETINFO, (void*)net_info);

    printf("Static IP configuration is done successfully.\r\n");
}

/**
 * @brief Configures the W5500 using DHCP for dynamic IP assignment.
 * @param mac Source MAC address
 * @retval None
 */
void dynamic_host_configuration(uint8_t mac[6])
{
	uint8_t dhcp_buffer[1024];

    wiz_NetInfo net_info = {
        .mac  = {mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]},  // Set MAC address
        .dhcp = NETINFO_DHCP                                      // Enable DHCP mode
    };

    printf("Setting up dynamic host configuration...\r\n");


    // don't buffer the output of printf
    setbuf(stdout, NULL);


    // Set the MAC address before using DHCP
    setSHAR(net_info.mac);

    // Initialize DHCP
    DHCP_init(DHCP_SOCKET, dhcp_buffer);

    // Register DHCP callback functions if needed
    reg_dhcp_cbfunc(callback_ip_assigned, callback_ip_assigned, callback_ip_conflict);

    // Run DHCP process in a loop until IP is assigned
    while ((!ip_assigned)) {
        DHCP_run();
    }

    // Retrieve IP, gateway, subnet mask, and DNS from DHCP
    getIPfromDHCP(net_info.ip);
    getGWfromDHCP(net_info.gw);
    getSNfromDHCP(net_info.sn);
    getDNSfromDHCP(net_info.dns);

    // Set network information obtained from DHCP
    wizchip_setnetinfo(&net_info);

    printf("Dynamic IP configuration is done successfully.\r\n");
}


void callback_ip_assigned()
{
    printf("DHCP: IP assigned\n");
    ip_assigned = true;
}

void callback_ip_renewed()
{
    printf("DHCP: IP renewed\n");
}

void callback_ip_conflict()
{
    printf("DHCP: IP conflict detected\n");
}


