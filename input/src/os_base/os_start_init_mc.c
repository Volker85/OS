#include "os_firstinc.h"
#include "os_start_init_mc.h"
#include "os_memory_mmu_setup.h"

void OS_InitMc(void)
{
   /* 1. configure PLL */
   /*TODO*/
   /* 2. all MCU IO*/
   /* configure GPIO (SPI, UART, CAN, etc) */
   //TODO
   /* initialize the external parts...  */
   //TODO
   OS_MmuSetup();
}
