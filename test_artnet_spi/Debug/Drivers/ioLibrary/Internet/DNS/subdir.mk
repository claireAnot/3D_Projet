################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary/Internet/DNS/dns.c 

OBJS += \
./Drivers/ioLibrary/Internet/DNS/dns.o 

C_DEPS += \
./Drivers/ioLibrary/Internet/DNS/dns.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary/Internet/DNS/%.o Drivers/ioLibrary/Internet/DNS/%.su Drivers/ioLibrary/Internet/DNS/%.cyclo: ../Drivers/ioLibrary/Internet/DNS/%.c Drivers/ioLibrary/Internet/DNS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/ioLibrary/Ethernet -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary-2f-Internet-2f-DNS

clean-Drivers-2f-ioLibrary-2f-Internet-2f-DNS:
	-$(RM) ./Drivers/ioLibrary/Internet/DNS/dns.cyclo ./Drivers/ioLibrary/Internet/DNS/dns.d ./Drivers/ioLibrary/Internet/DNS/dns.o ./Drivers/ioLibrary/Internet/DNS/dns.su

.PHONY: clean-Drivers-2f-ioLibrary-2f-Internet-2f-DNS

