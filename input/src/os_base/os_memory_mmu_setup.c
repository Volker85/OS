#include "os_firstinc.h"

/*
RQ: the MMU might be configured for every task, because every task has own ACL / access rights!!
for documentation of the MPU please read:
   ST  AN4838
   Application note
   Managing memory protection unit (MPU) in STM32 MCUs
*/


void OS_MmuSetup(void)
{
   /* assign every task a mmu region + the scheduler an own region */
   /* the mmu needs to be reconfigured before and after every task switch, because the tasks might run with different MMU rights
      hardware register access shall be only possible in supervisor / kernel mode via system call.... based on a security descriptor as done in windows */
   /* the MPU is implementation depended in STM32F4 MCU..., the eval board does have a MPU with 8 regions */
   
   /* FLASH: Start Addr: 0x08000000, Length: 1024K */
   
   /* RAM:   Start Addr: 0x20000000, Length: 112kB *//* + 64kB CCM, 16 kB SysRAM */
   
   /* peripherie Start Addr: 0x40000000, Length: 0xFFFFFFFF - 0x40000000 + 1 *//* + 64kB CCM, 16 kB SysRAM */
   
   LLF_MPU_ENABLE();
}
