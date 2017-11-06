
DEFINES= -DCR_INTEGER_PRINTF -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_OS_FREE_RTOS -DFSL_RTOS_FREE_RTOS -DCPU_MKW41Z512CAT4 -DCPU_MKW41Z512CAT4_cm0plus #-D__REDLIB__ 
INCS= -I..\source -I.. -I..\freertos -I..\utilities -I..\startup -I..\CMSIS -I..\drivers -I'C:/nxp/MCUXpressoIDE_10.0.2_411/ide/tools/lib/gcc/arm-none-eabi/5.4.1/include' -IC:\nxp\MCUXpressoIDE_10.0.2_411\ide\tools\arm-none-eabi\lib\armv6-m
FLAGS=  -O0 -Wall -c -ffunction-sections -mcpu=cortex-m0plus -mthumb
OBJS=  ../startup/startup_mkw41z4.o  ../source/board.o ../source/clock_config.o ../source/main.o ../source/pin_mux.o  ../freertos/croutine.o ../freertos/event_groups.o ../freertos/fsl_tickless_lptmr.o ../freertos/fsl_tickless_systick.o ../freertos/heap_4.o ../freertos/list.o ../freertos/port.o ../freertos/queue.o ../freertos/tasks.o ../freertos/timers.o  ../drivers/fsl_clock.o ../drivers/fsl_common.o ../drivers/fsl_gpio.o ../drivers/fsl_lpuart.o ../drivers/fsl_lpuart_freertos.o  ../CMSIS/system_MKW41Z4.o
LNKFLAGS= -nostdlib -Xlinker -Map=XpressoRTOS.map -Xlinker --gc-sections -mcpu=cortex-m0plus -mthumb 

%.o: %.c
	arm-none-eabi-gcc $(DEFINES) $(INCS) $(FLAGS) -o $@ $<

default: $(OBJS)
	arm-none-eabi-gcc $(LNKFLAGS) -T XpressoRTOS_Debug.ld -o XpressoRTOS.axf  $(OBJS)
	arm-none-eabi-objcopy -O binary XpressoRTOS.axf XpressoRTOS.bin
	cp XpressoRTOS.bin F:/

clean:
	rm -f '*.o' '*.axf' '*.bin' $(OBJS)