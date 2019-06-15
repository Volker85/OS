#include "os_firstinc.h"

/*
RQ: the MMU might be configured for every task, because every task has own ACL / access rights!!
for documentation of the MPU please read:
   ST  AN4838
   Application note
   Managing memory protection unit (MPU) in STM32 MCUs
*/
#define MPU_RNR  ((volatile uint32*)0xE000ED98)
#define MPU_RBAR ((volatile uint32*)0xE000ED9C)
#define MPU_RASR ((volatile uint32*)0xE000EDA0)

#define MPU_ASR_NON_CACHABLE                    0x00080000
#define MPU_ASR_STRONGLY_ORDERED                0x00000000

#define MPU_ASR_ACCESS_PRIV_RO_UNPRIV_RO        0x07000000
#define MPU_ASR_ACCESS_PRIV_RW_UNPRIV_RW        0x03000000
#define MPU_ASR_ACCESS_PRIV_RW_UNPRIV_NOACCESS  0x01000000

#define MPU_ASR_REGION_SIZE_FLASH       0x20000000
#define MPU_ASR_REGION_SIZE_RAM         0x20000000
#define MPU_ASR_REGION_SIZE_PERIPHERIE  0x20000000
#define MPU_ASR_REGION_ENABLE           0x00000001

void OS_MmuSetup(void)
{
   #if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   /* assign every task a mmu region + the scheduler an own region */
   /* the mmu needs to be reconfigured before and after every task switch, because the tasks might run with different MMU rights
      hardware register access shall be only possible in supervisor / kernel mode via system call.... based on a security descriptor as done in windows */
   /* the MPU is implementation depended in STM32F4 MCU..., the eval board does have a MPU with 8 regions */

   /* FLASH: Start Addr: 0x08000000, Length: 1024K */

   /* RAM:   Start Addr: 0x20000000, Length: 112kB *//* + 64kB CCM, 16 kB SysRAM */

   /* peripherie Start Addr: 0x40000000, Length: 0xFFFFFFFF - 0x40000000 + 1 *//* + 64kB CCM, 16 kB SysRAM */

   /* interrupts are still disabled at this point of startup, no 2nd disable required... */
   /* region 0 FLASH */
   *MPU_RNR  = 0;
   *MPU_RBAR = 0x08000000;/* FLASH Start */
   *MPU_RASR = MPU_ASR_NON_CACHABLE | MPU_ASR_ACCESS_PRIV_RO_UNPRIV_RO | MPU_ASR_REGION_SIZE_FLASH | MPU_ASR_REGION_ENABLE;

   /* region 1 RAM */
   *MPU_RNR  = 1;
   *MPU_RBAR = 0x20000000;/* RAM Start */
   *MPU_RASR = MPU_ASR_NON_CACHABLE | MPU_ASR_ACCESS_PRIV_RW_UNPRIV_RW | MPU_ASR_REGION_SIZE_RAM | MPU_ASR_REGION_ENABLE;

   /* region 2 Peripherie */
   *MPU_RNR  = 2;
   *MPU_RBAR = 0x40000000;/* Peripherie Start */
   *MPU_RASR = MPU_ASR_STRONGLY_ORDERED | MPU_ASR_ACCESS_PRIV_RW_UNPRIV_NOACCESS | MPU_ASR_REGION_SIZE_PERIPHERIE | MPU_ASR_REGION_ENABLE;
   /* region 3 Peripherie 2 */
   *MPU_RNR  = 3;
   *MPU_RBAR = 0xE0000000;/* Peripherie Start */
   *MPU_RASR = MPU_ASR_STRONGLY_ORDERED | MPU_ASR_ACCESS_PRIV_RW_UNPRIV_NOACCESS | MPU_ASR_REGION_SIZE_PERIPHERIE | MPU_ASR_REGION_ENABLE;
   /* region 4 */
   /* region 5 */
   /* region 6 */
   /* region 7 */
   #endif
   /* now activate the MPU */
   LLF_MPU_ENABLE();
}
