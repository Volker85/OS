#include "os_firstinc.h"
void OS_INIT_SW(void)
{
   /* RAM clear done in OS_INIT_MC (because no RAM usage allowed and possible before clearing the RAM) */
   /* every block which needs initialisation apart from 0x00 value needs to be initialized here */
   unsigned_char_t i;
   bTASK_QUEUE_INITIALIZED = FALSE;

   for(i = 0; i < 15; i++)
   {
      OS_SW_BUG[i] = os_bug_no_bug;
   }

   OS_INIT_TASK_SYSTEM();
   TASK1_CALL_NR = 0;
   TASK2_CALL_NR = 0;
   TASK3_CALL_NR = 0;
   TASK4_CALL_NR = 0;
}
