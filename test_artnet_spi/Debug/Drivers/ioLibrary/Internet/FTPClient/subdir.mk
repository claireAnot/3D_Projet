################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary/Internet/FTPClient/ftpc.c 

OBJS += \
./Drivers/ioLibrary/Internet/FTPClient/ftpc.o 

C_DEPS += \
./Drivers/ioLibrary/Internet/FTPClient/ftpc.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary/Internet/FTPClient/%.o Drivers/ioLibrary/Internet/FTPClient/%.su Drivers/ioLibrary/Internet/FTPClient/%.cyclo: ../Drivers/ioLibrary/Internet/FTPClient/%.c Drivers/ioLibrary/Internet/FTPClient/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/ioLibrary/Ethernet -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary-2f-Internet-2f-FTPClient

clean-Drivers-2f-ioLibrary-2f-Internet-2f-FTPClient:
	-$(RM) ./Drivers/ioLibrary/Internet/FTPClient/ftpc.cyclo ./Drivers/ioLibrary/Internet/FTPClient/ftpc.d ./Drivers/ioLibrary/Internet/FTPClient/ftpc.o ./Drivers/ioLibrary/Internet/FTPClient/ftpc.su

.PHONY: clean-Drivers-2f-ioLibrary-2f-Internet-2f-FTPClient

