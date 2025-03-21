#include "stm32fxxx_hal.h"                                              // Remplacez stm32fxxx par le modèle STM32

#define DMX_CHANNELS 512

UART_HandleTypeDef huart1;                                              // Structure pour l'UART1

void UART1_Init(void);
void DMX_Send(unsigned char *dmxData, uint16_t length);

int main(void) {
    HAL_Init();                                                 // Initialisation de la HAL
    UART1_Init();                                               // Initialisation de l'UART1

    unsigned char dmxFrame[DMX_CHANNELS];

    // Initialisation de la trame DMX (exemple)
    for (int i = 0; i < DMX_CHANNELS; i++) {
        dmxFrame[i] = i % 256;                                  // Exemple de valeurs
    }

    while (1) {
        DMX_Send(dmxFrame, DMX_CHANNELS);
        HAL_Delay(22);                                          // Délai entre les trames (22ms pour le DMX)
    }
}

void UART1_Init(void) {
    huart1.Instance = USART1;
    huart1.Init.BaudRate = 250000;                              // Baud rate DMX
    huart1.Init.WordLength = UART_WORDLENGTH_8B;
    huart1.Init.StopBits = UART_STOPBITS_2;                     // 2 stop bits pour DMX
    huart1.Init.Parity = UART_PARITY_NONE;
    huart1.Init.Mode = UART_MODE_TX;
    huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
    huart1.Init.OverSampling = UART_OVERSAMPLING_16;

    if (HAL_UART_Init(&huart1) != HAL_OK) {
        // Gestion d'erreur
        while (1);
    }
}

void DMX_Send(unsigned char *dmxData, uint16_t length) {
    // Break signal (bas pendant 88µs)
    HAL_UART_Transmit(&huart1, (uint8_t *)"\0", 1, 88);
    // Mark After Break (haut pendant 8µs)
    HAL_UART_Transmit(&huart1, (uint8_t *)"\xff", 1, 8);
    // Données DMX
    HAL_UART_Transmit(&huart1, dmxData, length, HAL_MAX_DELAY);
}