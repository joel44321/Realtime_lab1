################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/1.c \
../source/board.c \
../source/clock_config.c \
../source/mtb.c \
../source/pin_mux.c 

OBJS += \
./source/1.o \
./source/board.o \
./source/clock_config.o \
./source/mtb.o \
./source/pin_mux.o 

C_DEPS += \
./source/1.d \
./source/board.d \
./source/clock_config.d \
./source/mtb.d \
./source/pin_mux.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCR_INTEGER_PRINTF -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_OS_FREE_RTOS -DFSL_RTOS_FREE_RTOS -DCPU_MKW41Z512CAT4 -DCPU_MKW41Z512CAT4_cm0plus -D__REDLIB__ -I"G:\MCUXpressoWorkspace\1\source" -I"G:\MCUXpressoWorkspace\1" -I"G:\MCUXpressoWorkspace\1\freertos" -I"G:\MCUXpressoWorkspace\1\utilities" -I"G:\MCUXpressoWorkspace\1\startup" -I"G:\MCUXpressoWorkspace\1\CMSIS" -I"G:\MCUXpressoWorkspace\1\drivers" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


