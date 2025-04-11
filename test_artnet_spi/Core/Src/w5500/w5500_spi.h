/*
 * w5500_spi.h
 *
 *  Created on: May 14, 2024
 *      Author: mahyar
 */

#ifndef SRC_W5500_W5500_SPI_H_
#define SRC_W5500_W5500_SPI_H_

#define SCS_PORT 	GPIOA
#define SCS_PIN 	GPIO_PIN_4
#define RESET_PORT  GPIOC
#define RESET_PIN	GPIO_PIN_8

void w5500_init();


#endif /* SRC_W5500_W5500_SPI_H_ */
