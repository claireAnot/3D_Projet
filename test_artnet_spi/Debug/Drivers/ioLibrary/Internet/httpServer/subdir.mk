################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary/Internet/httpServer/httpParser.c \
../Drivers/ioLibrary/Internet/httpServer/httpServer.c \
../Drivers/ioLibrary/Internet/httpServer/httpUtil.c 

OBJS += \
./Drivers/ioLibrary/Internet/httpServer/httpParser.o \
./Drivers/ioLibrary/Internet/httpServer/httpServer.o \
./Drivers/ioLibrary/Internet/httpServer/httpUtil.o 

C_DEPS += \
./Drivers/ioLibrary/Internet/httpServer/httpParser.d \
./Drivers/ioLibrary/Internet/httpServer/httpServer.d \
./Drivers/ioLibrary/Internet/httpServer/httpUtil.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary/Internet/httpServer/%.o Drivers/ioLibrary/Internet/httpServer/%.su Drivers/ioLibrary/Internet/httpServer/%.cyclo: ../Drivers/ioLibrary/Internet/httpServer/%.c Drivers/ioLibrary/Internet/httpServer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/ioLibrary/Ethernet -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary-2f-Internet-2f-httpServer

clean-Drivers-2f-ioLibrary-2f-Internet-2f-httpServer:
	-$(RM) ./Drivers/ioLibrary/Internet/httpServer/httpParser.cyclo ./Drivers/ioLibrary/Internet/httpServer/httpParser.d ./Drivers/ioLibrary/Internet/httpServer/httpParser.o ./Drivers/ioLibrary/Internet/httpServer/httpParser.su ./Drivers/ioLibrary/Internet/httpServer/httpServer.cyclo ./Drivers/ioLibrary/Internet/httpServer/httpServer.d ./Drivers/ioLibrary/Internet/httpServer/httpServer.o ./Drivers/ioLibrary/Internet/httpServer/httpServer.su ./Drivers/ioLibrary/Internet/httpServer/httpUtil.cyclo ./Drivers/ioLibrary/Internet/httpServer/httpUtil.d ./Drivers/ioLibrary/Internet/httpServer/httpUtil.o ./Drivers/ioLibrary/Internet/httpServer/httpUtil.su

.PHONY: clean-Drivers-2f-ioLibrary-2f-Internet-2f-httpServer

