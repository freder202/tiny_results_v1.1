################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyml_api/internally_implemented.c \
../tinyml_api/st_port.c \
../tinyml_api/submitter_implemented.c 

OBJS += \
./tinyml_api/internally_implemented.o \
./tinyml_api/st_port.o \
./tinyml_api/submitter_implemented.o 

C_DEPS += \
./tinyml_api/internally_implemented.d \
./tinyml_api/st_port.d \
./tinyml_api/submitter_implemented.d 


# Each subdirectory must supply rules for building sources it contributes
tinyml_api/%.o tinyml_api/%.su tinyml_api/%.cyclo: ../tinyml_api/%.c tinyml_api/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32U575xx -DEE_CFG_ENERGY_MODE=0 -c -I../Core/Inc -I"C:/Users/fred/Desktop/finale/tiny_results_v1.1/closed/STMicroelectronics/code/NUCLEO_U575ZI_Q/anomaly_detection/tinyml_api" -I../Middlewares/ST/AI/Inc -I../X-CUBE-AI/App -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/fred/Desktop/finale/tiny_results_v1.1/closed/STMicroelectronics/code/NUCLEO_U575ZI_Q/anomaly_detection/tinyml_api" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tinyml_api

clean-tinyml_api:
	-$(RM) ./tinyml_api/internally_implemented.cyclo ./tinyml_api/internally_implemented.d ./tinyml_api/internally_implemented.o ./tinyml_api/internally_implemented.su ./tinyml_api/st_port.cyclo ./tinyml_api/st_port.d ./tinyml_api/st_port.o ./tinyml_api/st_port.su ./tinyml_api/submitter_implemented.cyclo ./tinyml_api/submitter_implemented.d ./tinyml_api/submitter_implemented.o ./tinyml_api/submitter_implemented.su

.PHONY: clean-tinyml_api

