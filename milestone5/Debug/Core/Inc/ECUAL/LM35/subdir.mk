################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/ECUAL/LM35/LM35.c \
../Core/Inc/ECUAL/LM35/LM35_cfg.c 

OBJS += \
./Core/Inc/ECUAL/LM35/LM35.o \
./Core/Inc/ECUAL/LM35/LM35_cfg.o 

C_DEPS += \
./Core/Inc/ECUAL/LM35/LM35.d \
./Core/Inc/ECUAL/LM35/LM35_cfg.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/ECUAL/LM35/%.o Core/Inc/ECUAL/LM35/%.su: ../Core/Inc/ECUAL/LM35/%.c Core/Inc/ECUAL/LM35/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-ECUAL-2f-LM35

clean-Core-2f-Inc-2f-ECUAL-2f-LM35:
	-$(RM) ./Core/Inc/ECUAL/LM35/LM35.d ./Core/Inc/ECUAL/LM35/LM35.o ./Core/Inc/ECUAL/LM35/LM35.su ./Core/Inc/ECUAL/LM35/LM35_cfg.d ./Core/Inc/ECUAL/LM35/LM35_cfg.o ./Core/Inc/ECUAL/LM35/LM35_cfg.su

.PHONY: clean-Core-2f-Inc-2f-ECUAL-2f-LM35

