################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ECUAL/BUTTONS/BUTTONS.c \
../ECUAL/BUTTONS/BUTTONS_cfg.c 

OBJS += \
./ECUAL/BUTTONS/BUTTONS.o \
./ECUAL/BUTTONS/BUTTONS_cfg.o 

C_DEPS += \
./ECUAL/BUTTONS/BUTTONS.d \
./ECUAL/BUTTONS/BUTTONS_cfg.d 


# Each subdirectory must supply rules for building sources it contributes
ECUAL/BUTTONS/%.o ECUAL/BUTTONS/%.su: ../ECUAL/BUTTONS/%.c ECUAL/BUTTONS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ECUAL-2f-BUTTONS

clean-ECUAL-2f-BUTTONS:
	-$(RM) ./ECUAL/BUTTONS/BUTTONS.d ./ECUAL/BUTTONS/BUTTONS.o ./ECUAL/BUTTONS/BUTTONS.su ./ECUAL/BUTTONS/BUTTONS_cfg.d ./ECUAL/BUTTONS/BUTTONS_cfg.o ./ECUAL/BUTTONS/BUTTONS_cfg.su

.PHONY: clean-ECUAL-2f-BUTTONS

