#include "os_firstinc.h"
void OS_INIT_SW(void)
{
   /* RAM clear done in OS_INIT_MC (because no RAM usage allowed and possible before clearing the RAM) */
   /* every block which needs initialisation apart from 0x00 value needs to be initialized here */
   unsigned_char_t i;
   bTASK_QUEUE_INITIALIZED = FALSE;

   for(i = 0u; i < 15u; i++)
   {
      OS_SW_BUG[i] = E_OS_BUG_NO_BUG;
   }

   OS_INIT_TASK_SYSTEM();
   TASK1_CALL_NR = 0u;
   TASK2_CALL_NR = 0u;
   TASK3_CALL_NR = 0u;
   TASK4_CALL_NR = 0u;
}
