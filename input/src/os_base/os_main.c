#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_shutdown.h"
#include "os_start_init_mc.h"
#include "os_start_init_hw.h"
#include "os_start_init_sw.h"
#include "os_task_scheduler.h"

/*
OS_State: OS_INIT (Start im Supervisor Mode)
- Exception Handler aufsetzen  -> Done 
- HW Internal Peripherie, RAM, etc -> TODO
- Tasks konfigurieren -> Done via OS_INIT_TASK_SYSTEM()
--> Stack -> TODO
--> MMU_REGION ->NA
--> CoreId -> TODO
--> Task-Function -> TODO
--> TaskPrio -> TODO
--> Interruptable -> TODO
--> MultipleActChk -> TODO
--> Privilige Level (User Mode, System Mode, Abort, Undefined, FiQ, IRQ) -> TODO
- TCMP Interrupts für Tasks konfigurieren, Starten vom Dispatcher -> Done
- MMU konfigurieren -> NA
- TaskScheduler für Core 0...n starten (jeder Core hat eigenen Scheduler)(User/Supervisor Mode??) -> NA
- SW mit erhöhtem Rechtebedarf wird mittels Interrupt gestartet (Dispatcher, WD, FMON, Shutdown)(User/Supervisor Mode??) -> Done
- FMON / Watchdog aktivieren -> NA
- Interrupts aktivieren -> Done
- Zu UserMode wechseln -> Done

OS_State: OS_Running (User Mode)
- Starten / Beenden der einzelnen Tasks auf den jeweiligen Cores(User/Supervisor Mode??) -> Done
- Timer Compare Interrupts -> not needed  -> TODO
- Interrupt Prioritäten von Cat2.(SW) Interrupts und Cat1.(HW) Interrupts -> NA

(OS_State: OS_Exception (Supervisor Mode))
- Link-Register Adresse im Eeprom abspeichern, an der die Exceptioin erzeugt wurde -> TODO
- OS_Shutdown mit Reset -> TODO

OS_State: OS_Shutdown (nur erlaubt im Supervisor Mode)
- Interrupts deaktivieren -> Done
- Tasks beenden (Timer Interrupts löschen) -> TODO
- FMON / Watchdog deinitialisieren -> NA
- MMU deaktivieren / deintialisieren -> NA
- RAM ggf. neu initalisieren (bei einem SoftReset) -> TODO
- HW Reset auslösen (optional) -> TODO

*/

typedef enum os_reset_req_state_e
{
   Reset_powerdown = 0,
   Reset_restart,
   Reset_exit
} os_reset_req_state_t;

void OS_STATE_HANDLER(void)
{
   /* the following code runs in priviliged mode!! */
   Local os_reset_req_state_t sys_req_reset_state = Reset_powerdown;
   
   switch(OS_STATE)
   {
   case os_init:
   {
      /*init the MCU including MMU, RAM, Registers */
      OS_INIT_MC();
      /* start the task system */
      /* initialisation of SW, HW will be done in the tasks, after starting the task system.... */
      OS_INIT_HW();
      OS_INIT_SW();

      /* trigger dispatcher */
      /* activate the dispatcher, configure TCMP interrupts for tasks */
      OS_ACTIVATE_DISPATCHER();

      OS_STATE = os_running;
      /* activate the interrupts, tasks will be executed from now on ... */
      LLF_INT_ENABLE();
      LLF_CHANGE_TO_USER_MODE();

      #if(CFG_PROCESSOR == cMCU_CORTEX_M4)
      #define SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018)
      BACKUP_SYSTICK_CURRENT_VAL_REG = *SYSTICK_CURRENT_VAL_REG;
      #endif
      while(1)/*wait until timer task*/
      {

      }
      break;
   }
   case os_running:
   {
      /* run the task function */
      OS_TASK_DISPATCHER();      
      if(0) /* check for shutdown/reset/exit conditions: currently shutdown is not planned to be supported... */
      {
         OS_STATE = os_shutdown;
         sys_req_reset_state = Reset_restart;         
      }
      
      break;
   }
   case os_shutdown:
   {
      LLF_INT_DISABLE();         
      switch(sys_req_reset_state)
      {
      case Reset_powerdown:
      {
         OS_SHUTDOWN(os_reset_powerdown);
         break;
      }
      case Reset_restart:
      {
         OS_SHUTDOWN(os_reset_hardreset);
         break;
      }
      case Reset_exit:
      {
         OS_SHUTDOWN(os_reset_exit);
         break;
      }
      default:
      {
         OS_SHUTDOWN(os_reset_hardreset);
         break;         
      }
      }
      break;
   }
   default:
   {
      break;
   }
   }
}
