#include "Board_LED.h"
#include "FreeRTOS.h"
#include "task.h"

#include "MKW41Z4.h"

static void fast_led(void *pvParameters);
static void slow_led(void *pvParameters);

int main(void)
{
	SystemCoreClockUpdate();
	LED_Initialize();
	
	xTaskCreate(fast_led, "fast", configMINIMAL_STACK_SIZE, (void *) 0, tskIDLE_PRIORITY + 1, NULL);
	xTaskCreate(slow_led, "slow", configMINIMAL_STACK_SIZE, (void *) 0, tskIDLE_PRIORITY + 1, NULL);
	
	vTaskStartScheduler();
	
	for(;;){}
}

static void fast_led(void *pvParameters)
{
	for (;;)
	{
		LED_On(0);
		vTaskDelay(500/portTICK_PERIOD_MS);
		LED_Off(0);
		vTaskDelay(500/portTICK_PERIOD_MS);
	}
}

static void slow_led(void *pvParameters)
{
	for (;;)
	{
		LED_On(3);
		vTaskDelay(1000/portTICK_PERIOD_MS);
		LED_Off(3);
		vTaskDelay(1000/portTICK_PERIOD_MS);
	}
}