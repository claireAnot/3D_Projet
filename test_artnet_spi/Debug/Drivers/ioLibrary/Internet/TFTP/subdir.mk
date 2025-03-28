################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary/Internet/TFTP/netutil.c \
../Drivers/ioLibrary/Internet/TFTP/tftp.c 

OBJS += \
./Drivers/ioLibrary/Internet/TFTP/netutil.o \
./Drivers/ioLibrary/Internet/TFTP/tftp.o 

C_DEPS += \
./Drivers/ioLibrary/Internet/TFTP/netutil.d \
./Drivers/ioLibrary/Internet/TFTP/tftp.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary/Internet/TFTP/%.o Drivers/ioLibrary/Internet/TFTP/%.su Drivers/ioLibrary/Internet/TFTP/%.cyclo: ../Drivers/ioLibrary/Internet/TFTP/%.c Drivers/ioLibrary/Internet/TFTP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/ioLibrary/Ethernet -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary-2f-Internet-2f-TFTP

clean-Drivers-2f-ioLibrary-2f-Internet-2f-TFTP:
	-$(RM) ./Drivers/ioLibrary/Internet/TFTP/netutil.cyclo ./Drivers/ioLibrary/Internet/TFTP/netutil.d ./Drivers/ioLibrary/Internet/TFTP/netutil.o ./Drivers/ioLibrary/Internet/TFTP/netutil.su ./Drivers/ioLibrary/Internet/TFTP/tftp.cyclo ./Drivers/ioLibrary/Internet/TFTP/tftp.d ./Drivers/ioLibrary/Internet/TFTP/tftp.o ./Drivers/ioLibrary/Internet/TFTP/tftp.su

.PHONY: clean-Drivers-2f-ioLibrary-2f-Internet-2f-TFTP

