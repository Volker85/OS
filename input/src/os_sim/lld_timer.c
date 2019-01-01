#include "..\os_base\os_firstinc.h"
/* do not include any standard lib overwise you yet malloc errors (redefine) */

static uint32 COMPARE_VALUE_TCMP1 = 0;

uint32 LLF_UP_CNT_TIMER_32(void)
{
   return ((uint32)((uint32)1u*(uint32)1000u));
}
void LLF_ADD_2_TCMP(unsigned_int32_t value_us)
{
   COMPARE_VALUE_TCMP1 += value_us;
}
void LLF_TCMP1_CONFIG(void)
{
   /* setup the sys tick timer */
   COMPARE_VALUE_TCMP1 = 0;
}
/*"timer compare can not be implemented"*/