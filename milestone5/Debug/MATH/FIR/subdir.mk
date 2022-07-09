################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MATH/FIR/FIR.c 

OBJS += \
./MATH/FIR/FIR.o 

C_DEPS += \
./MATH/FIR/FIR.d 


# Each subdirectory must supply rules for building sources it contributes
MATH/FIR/%.o MATH/FIR/%.su: ../MATH/FIR/%.c MATH/FIR/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MATH-2f-FIR

clean-MATH-2f-FIR:
	-$(RM) ./MATH/FIR/FIR.d ./MATH/FIR/FIR.o ./MATH/FIR/FIR.su

.PHONY: clean-MATH-2f-FIR

