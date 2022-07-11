################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ECUAL/LEDS/LEDS.c \
../ECUAL/LEDS/LEDS_cfg.c 

OBJS += \
./ECUAL/LEDS/LEDS.o \
./ECUAL/LEDS/LEDS_cfg.o 

C_DEPS += \
./ECUAL/LEDS/LEDS.d \
./ECUAL/LEDS/LEDS_cfg.d 


# Each subdirectory must supply rules for building sources it contributes
ECUAL/LEDS/%.o ECUAL/LEDS/%.su: ../ECUAL/LEDS/%.c ECUAL/LEDS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ECUAL-2f-LEDS

clean-ECUAL-2f-LEDS:
	-$(RM) ./ECUAL/LEDS/LEDS.d ./ECUAL/LEDS/LEDS.o ./ECUAL/LEDS/LEDS.su ./ECUAL/LEDS/LEDS_cfg.d ./ECUAL/LEDS/LEDS_cfg.o ./ECUAL/LEDS/LEDS_cfg.su

.PHONY: clean-ECUAL-2f-LEDS

