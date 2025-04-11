/*
 * w5500_host_config.h
 *
 *  Created on: Jul 16, 2024
 *      Author: mahyar
 */

#ifndef SRC_W5500_W5500_HOST_CONFIG_H_
#define SRC_W5500_W5500_HOST_CONFIG_H_

#define DHCP_SOCKET     0

#include "wizchip_conf.h"


void static_host_configuration
(
	wiz_NetInfo *net_info
);

void dynamic_host_configuration(uint8_t mac[6]);


#endif /* SRC_W5500_W5500_HOST_CONFIG_H_ */
