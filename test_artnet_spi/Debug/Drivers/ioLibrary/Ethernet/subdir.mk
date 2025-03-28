################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary/Ethernet/socket.c \
../Drivers/ioLibrary/Ethernet/wizchip_conf.c 

OBJS += \
./Drivers/ioLibrary/Ethernet/socket.o \
./Drivers/ioLibrary/Ethernet/wizchip_conf.o 

C_DEPS += \
./Drivers/ioLibrary/Ethernet/socket.d \
./Drivers/ioLibrary/Ethernet/wizchip_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary/Ethernet/%.o Drivers/ioLibrary/Ethernet/%.su Drivers/ioLibrary/Ethernet/%.cyclo: ../Drivers/ioLibrary/Ethernet/%.c Drivers/ioLibrary/Ethernet/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/ioLibrary/Ethernet -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary-2f-Ethernet

clean-Drivers-2f-ioLibrary-2f-Ethernet:
	-$(RM) ./Drivers/ioLibrary/Ethernet/socket.cyclo ./Drivers/ioLibrary/Ethernet/socket.d ./Drivers/ioLibrary/Ethernet/socket.o ./Drivers/ioLibrary/Ethernet/socket.su ./Drivers/ioLibrary/Ethernet/wizchip_conf.cyclo ./Drivers/ioLibrary/Ethernet/wizchip_conf.d ./Drivers/ioLibrary/Ethernet/wizchip_conf.o ./Drivers/ioLibrary/Ethernet/wizchip_conf.su

.PHONY: clean-Drivers-2f-ioLibrary-2f-Ethernet

