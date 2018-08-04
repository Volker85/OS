#include "..\os_base\os_firstinc.h"
void LLF_MCU_SWITCH_OFF_POWER(void)
{
   /* only reset is supported by core...., so lets do a reset */
   LLF_MCU_RESET_POWER();
}
void LLF_MCU_RESET_POWER(void)
{
   /* System Control Block (SCB) */
   #define AIRCR (*(uint32*)0xE000ED0C)
   #define APP_SYS_RESET_REQ  ((uint32)0x00000002)
   AIRCR = AIRCR | APP_SYS_RESET_REQ;   
}
