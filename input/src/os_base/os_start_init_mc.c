#include "os_firstinc.h"
#include "os_start_init_mc.h"
#include "os_memory_mmu.h"

void OS_INIT_MC(void)
{
   /* 1. configure PLL */
   /* keep the default MCU frequency */
   /* the mcu CortexM4 / STM32F407... wakes up using HSI as system clock with 16 MHz frequency, this is ok for now */
   
   /* 2. all MCU IO*/
   /* configure GPIO (SPI, UART, CAN, etc) */
   /* no external parts connected to SPI, UART, CAN, ... -> no init needed */
   /* initialize the external parts...  */
   /* no relevant external parts */
   OS_MMU_SETUP();
}
