#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "OS_shutdown.h"
#include "os_start_init_mc.h"
#include "os_start_init_hw.h"
#include "os_start_init_sw.h"
#include "os_task_scheduler.h"
#include "os_task_queue.h"
#include "os_main.h"

/*
OS_State: OS_INIT (Start im Supervisor Mode)
- Exception Handler aufsetzen  -> Done
- HW Internal Peripherie, RAM, etc -> Done
- Tasks konfigurieren -> Done via OS_INIT_TASK_SYSTEM()
--> Stack -> assigned in function OS_INIT_TASKs / OS_INIT_TASK_SYSTEM -> Done
--> MMU_REGION ->NA
--> CoreId -> Done
--> Task-Function -> assigned in function OS_INIT_TASK / OS_INIT_TASK_SYSTEM -> Done
--> TaskPrio -> Done
--> MultipleActChk -> Done in OS_ACTIVATE_TASK()
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
- OS_SHUTDOWN mit Reset -> Done in handler functions via call of "OS_SHUTDOWN(E_OS_RESET_HARDRESET)"

OS_State: OS_SHUTDOWN (nur erlaubt im Supervisor Mode)
- Interrupts deaktivieren -> Done
- Tasks beenden (Timer Interrupts löschen) -> Done OS_SHUTDOWN(E_OS_RESET_HARDRESET
- FMON / Watchdog deinitialisieren -> NA
- MMU deaktivieren / deintialisieren -> NA
- HW Reset auslösen -> Done

*/

LOCAL void os_determine_next_task_activation(void)
{
   LOCAL uint32 call_nr = 0u;
   switch(call_nr)
   {
   case 0u:
      OS_ACTIVATE_TASK(&TASK_1_VAR);
      call_nr++;
      break;
   case 1u:
      OS_ACTIVATE_TASK(&TASK_2_VAR);
      call_nr++;
      break;
   case 2u:
      OS_ACTIVATE_TASK(&TASK_3_VAR);
      call_nr++;
      break;
   case 3u:
      call_nr++;
      break;
   case 4u:
      /* wait for all tasks finished, and the idle task to be executed once... */
      if(GET_RUNNING_TASK()->idle_task != False)
      {
         call_nr = 0;
      }   
      break;
   default:
      break;

   }
}

void OS_STATE_HANDLER(void)
{
   /* the following code runs in priviliged mode!! */
   LOCAL os_reset_type_t sys_req_reset_state = E_OS_RESET_POWERDOWN;
   LOCAL uint32 call_nr = 0u;

   switch(OS_STATE)
   {
   case OS_STATE_INIT:
   {
      /*init the MCU including MMU, RAM, Registers */
      OS_INIT_MC();
      /* start the task system */
      /* initialisation of SW, HW will be done in the tasks, after starting the task system.... */
      OS_INIT_HW();
      OS_INIT_SW();

      /* trigger dispatcher */
      /* activate the dispatcher, configure TCMP interrupts for tasks */
      /* activate & start the Idle task */
      OS_ACTIVATE_TASK(&TASK_0_VAR);
      OS_START_TASK(GET_IDLE_TASK(),0u);
      OS_ACTIVATE_DISPATCHER();

      OS_STATE = OS_STATE_RUNNING;
      /* activate the interrupts, tasks will be executed from now on ... */
      LLF_INT_ENABLE();
      break;
   }
   case OS_STATE_RUNNING:
   {
      /*
      os_determine_next_task_activation und OS_TASK_DISPATCHER müssen m.E. öfters laufen wie der Rest der SW (wird erreicht, weil im state OS_STATE_RUNNING der OS_TASK_DISPATCHER der einzige ist, der direkt aus dem SysTick über den OS_STATE_HANDLER umweg aufgerufen wird)
      - Der Dispatcher müsste per Interrupt die laufende Task unterbrechen um dann (nach PreemptTask oder TerminateTask) die nächste Task zu starten.
      - Der os_determine_next_task_activation müsste vor jedem Aufruf on OS_TASK_DISPATCHER laufen
      */
      if(call_nr % 5u == 0u)
      {
         os_determine_next_task_activation();
      }
      call_nr++;
      /* run the task function */
      OS_TASK_DISPATCHER();
      if(SYSTEM_STATE_ACCEPTED == OS_STATE_SHUTDOWN) /* check for shutdown/reset/exit conditions: currently shutdown is not planned to be supported... */
      {
         OS_STATE = OS_STATE_SHUTDOWN;
         sys_req_reset_state = E_OS_RESET_HARDRESET;
      }
      break;
   }
   case OS_STATE_SHUTDOWN:
   {
      LLF_INT_DISABLE();
      switch(sys_req_reset_state)
      {
      case E_OS_RESET_POWERDOWN:
      {
         OS_SHUTDOWN(E_OS_RESET_POWERDOWN,0u);
         break;
      }
      case E_OS_RESET_HARDRESET:
      {
         OS_SHUTDOWN(E_OS_RESET_HARDRESET,0u);
         break;
      }
      case E_OS_RESET_EXIT:
      {
         OS_SHUTDOWN(E_OS_RESET_EXIT,0u);
         break;
      }
      default:
      {
         OS_SHUTDOWN(E_OS_RESET_HARDRESET,0u);
         OS_SET_SW_BUG(E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED,E_FUNC_STATE_HANDLER);
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
   /*check the complete stack apart from the first 64 bytes to detect critical stack usage */
   OS_STACK_CHECK();
#if(CFG_PROCESSOR != MCU_X86)
   /* wait until timer task, else the program would return to the next instruction after the reset vector, which is not allowed */
   while(1u)
   {
   }
#endif
}
