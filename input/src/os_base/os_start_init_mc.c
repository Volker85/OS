#include "os_firstinc.h"
#include "os_start_init_mc.h"
#include "os_memory_mmu_setup.h"

void OS_InitMc(void)
{
   /* 1. configure PLL */
   /* keep the default MCU frequency */
   /*TODO*/
   /* 2. all MCU IO*/
   /* configure GPIO (SPI, UART, CAN, etc) */
   /* not needed for OS */
   /*TODO*/
   /* initialize the external parts...  */
   /* no relevant external parts */
   OS_MmuSetup();
}
