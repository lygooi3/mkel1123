################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/util/DWT_Delay.c 

OBJS += \
./Core/Inc/util/DWT_Delay.o 

C_DEPS += \
./Core/Inc/util/DWT_Delay.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/util/%.o Core/Inc/util/%.su: ../Core/Inc/util/%.c Core/Inc/util/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-util

clean-Core-2f-Inc-2f-util:
	-$(RM) ./Core/Inc/util/DWT_Delay.d ./Core/Inc/util/DWT_Delay.o ./Core/Inc/util/DWT_Delay.su

.PHONY: clean-Core-2f-Inc-2f-util

