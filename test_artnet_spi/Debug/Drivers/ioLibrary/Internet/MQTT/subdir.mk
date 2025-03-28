################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary/Internet/MQTT/MQTTClient.c \
../Drivers/ioLibrary/Internet/MQTT/mqtt_interface.c 

OBJS += \
./Drivers/ioLibrary/Internet/MQTT/MQTTClient.o \
./Drivers/ioLibrary/Internet/MQTT/mqtt_interface.o 

C_DEPS += \
./Drivers/ioLibrary/Internet/MQTT/MQTTClient.d \
./Drivers/ioLibrary/Internet/MQTT/mqtt_interface.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary/Internet/MQTT/%.o Drivers/ioLibrary/Internet/MQTT/%.su Drivers/ioLibrary/Internet/MQTT/%.cyclo: ../Drivers/ioLibrary/Internet/MQTT/%.c Drivers/ioLibrary/Internet/MQTT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/ioLibrary/Ethernet -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary-2f-Internet-2f-MQTT

clean-Drivers-2f-ioLibrary-2f-Internet-2f-MQTT:
	-$(RM) ./Drivers/ioLibrary/Internet/MQTT/MQTTClient.cyclo ./Drivers/ioLibrary/Internet/MQTT/MQTTClient.d ./Drivers/ioLibrary/Internet/MQTT/MQTTClient.o ./Drivers/ioLibrary/Internet/MQTT/MQTTClient.su ./Drivers/ioLibrary/Internet/MQTT/mqtt_interface.cyclo ./Drivers/ioLibrary/Internet/MQTT/mqtt_interface.d ./Drivers/ioLibrary/Internet/MQTT/mqtt_interface.o ./Drivers/ioLibrary/Internet/MQTT/mqtt_interface.su

.PHONY: clean-Drivers-2f-ioLibrary-2f-Internet-2f-MQTT

