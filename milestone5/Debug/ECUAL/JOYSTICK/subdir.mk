################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ECUAL/JOYSTICK/JOYSTICK.c \
../ECUAL/JOYSTICK/JOYSTICK_cfg.c 

OBJS += \
./ECUAL/JOYSTICK/JOYSTICK.o \
./ECUAL/JOYSTICK/JOYSTICK_cfg.o 

C_DEPS += \
./ECUAL/JOYSTICK/JOYSTICK.d \
./ECUAL/JOYSTICK/JOYSTICK_cfg.d 


# Each subdirectory must supply rules for building sources it contributes
ECUAL/JOYSTICK/%.o ECUAL/JOYSTICK/%.su: ../ECUAL/JOYSTICK/%.c ECUAL/JOYSTICK/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ECUAL-2f-JOYSTICK

clean-ECUAL-2f-JOYSTICK:
	-$(RM) ./ECUAL/JOYSTICK/JOYSTICK.d ./ECUAL/JOYSTICK/JOYSTICK.o ./ECUAL/JOYSTICK/JOYSTICK.su ./ECUAL/JOYSTICK/JOYSTICK_cfg.d ./ECUAL/JOYSTICK/JOYSTICK_cfg.o ./ECUAL/JOYSTICK/JOYSTICK_cfg.su

.PHONY: clean-ECUAL-2f-JOYSTICK

