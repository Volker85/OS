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
- HW Internal Peripherie, RAM, etc -> Done 
- Tasks konfigurieren -> Done via OS_INIT_TASK_SYSTEM()
--> Stack -> assigned in function OS_INIT_TASKS / OS_INIT_TASK_SYSTEM -> Done
--> MMU_REGION ->NA
--> CoreId -> Done
--> Task-Function -> assigned in function OS_INIT_TASKS / OS_INIT_TASK_SYSTEM -> Done
--> TaskPrio -> Done 
--> MultipleActChk -> Done in OS_ActivateTask()
--> Privilige Level (Handler mode (priviliged): System Mode, Abort, Undefined, FiQ, IRQ; Thread mode: unpriviliged / priviliged) -> Done
- TCMP Interrupts für Tasks konfigurieren, Starten vom Dispatcher -> Done
- MMU konfigurieren -> NA
- TaskScheduler für Core 0...n starten (jeder Core hat eigenen Scheduler) -> Not needed for CortexM4
- SW mit erhöhtem Rechtebedarf wird mittels Interrupt gestartet (Dispatcher, WD, FMON, Shutdown) -> Done
- FMON / Watchdog aktivieren -> NA
- Interrupts aktivieren -> Done
- Zu UserMode wechseln -> Done

OS_State: OS_Running (User Mode)
- Starten / Beenden der einzelnen Tasks auf den jeweiligen Cores(User/Supervisor Mode??) -> Done
- Timer Compare Interrupts -> not needed  -> Systick used instead
- Interrupt Prioritäten von Cat2.(SW) Interrupts und Cat1.(HW) Interrupts -> NA

(OS_State: OS_Exception (Supervisor Mode))
- Link-Register Adresse im Eeprom abspeichern, an der die Exceptioin erzeugt wurde -> NA (no EEPROM exists on eval board, enter endless loop instead)
- OS_Shutdown mit Reset -> Done in handler functions via call of "OS_SHUTDOWN(os_reset_hardreset)"

OS_State: OS_Shutdown (nur erlaubt im Supervisor Mode)
- Interrupts deaktivieren -> Done
- Tasks beenden (Timer Interrupts löschen) -> Done OS_SHUTDOWN(os_reset_hardreset
- FMON / Watchdog deinitialisieren -> NA
- MMU deaktivieren / deintialisieren -> NA
- HW Reset auslösen -> Done 

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
