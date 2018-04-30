#include "os_firstinc.h"

/*
RQ: the MMU might be configured for every task, because every task has own ACL / access rights!!
for documentation of the MPU please read:
   ST  AN4838
   Application note
   Managing memory protection unit (MPU) in STM32 MCUs 

   
*/

#define StartAddresseC0   ((void*)0x00000000)
#define StartAddresseC0T0 ((void*)0x00000000)
#define StartAddresseC0T1 ((void*)0x00000000)
#define StartAddresseC1T0 ((void*)0x00000000)
#define StartAddresseC1T1 ((void*)0x00000000)
#define EndAddresseC0     ((void*)0x00000000)
#define EndAddresseC0T0   ((void*)0x00000000)
#define EndAddresseC0T1   ((void*)0x00000000)
#define EndAddresseC1T0   ((void*)0x00000000)
#define EndAddresseC1T1   ((void*)0x00000000)

void OS_MMU_SETUP(void)
{
   /*#warn "OS_MMU_SETUP not yet implemented"*/
   /* assign every task a mmu region + the scheduler an own region */
   /* the mmu needs to be reconfigured before and after every task switch, because the tasks might run with different MMU rights
      hardware register access shall be only possible in supervisor / kernel mode via system call.... based on a security descriptor as done in windows */
}
