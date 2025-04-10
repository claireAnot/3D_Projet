################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/w5500/dhcp.c \
../Core/Src/w5500/socket.c \
../Core/Src/w5500/w5500_host_config.c \
../Core/Src/w5500/w5500_phy.c \
../Core/Src/w5500/w5500_spi.c \
../Core/Src/w5500/wizchip_conf.c 

OBJS += \
./Core/Src/w5500/dhcp.o \
./Core/Src/w5500/socket.o \
./Core/Src/w5500/w5500_host_config.o \
./Core/Src/w5500/w5500_phy.o \
./Core/Src/w5500/w5500_spi.o \
./Core/Src/w5500/wizchip_conf.o 

C_DEPS += \
./Core/Src/w5500/dhcp.d \
./Core/Src/w5500/socket.d \
./Core/Src/w5500/w5500_host_config.d \
./Core/Src/w5500/w5500_phy.d \
./Core/Src/w5500/w5500_spi.d \
./Core/Src/w5500/wizchip_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/w5500/%.o Core/Src/w5500/%.su Core/Src/w5500/%.cyclo: ../Core/Src/w5500/%.c Core/Src/w5500/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-w5500

clean-Core-2f-Src-2f-w5500:
	-$(RM) ./Core/Src/w5500/dhcp.cyclo ./Core/Src/w5500/dhcp.d ./Core/Src/w5500/dhcp.o ./Core/Src/w5500/dhcp.su ./Core/Src/w5500/socket.cyclo ./Core/Src/w5500/socket.d ./Core/Src/w5500/socket.o ./Core/Src/w5500/socket.su ./Core/Src/w5500/w5500_host_config.cyclo ./Core/Src/w5500/w5500_host_config.d ./Core/Src/w5500/w5500_host_config.o ./Core/Src/w5500/w5500_host_config.su ./Core/Src/w5500/w5500_phy.cyclo ./Core/Src/w5500/w5500_phy.d ./Core/Src/w5500/w5500_phy.o ./Core/Src/w5500/w5500_phy.su ./Core/Src/w5500/w5500_spi.cyclo ./Core/Src/w5500/w5500_spi.d ./Core/Src/w5500/w5500_spi.o ./Core/Src/w5500/w5500_spi.su ./Core/Src/w5500/wizchip_conf.cyclo ./Core/Src/w5500/wizchip_conf.d ./Core/Src/w5500/wizchip_conf.o ./Core/Src/w5500/wizchip_conf.su

.PHONY: clean-Core-2f-Src-2f-w5500

