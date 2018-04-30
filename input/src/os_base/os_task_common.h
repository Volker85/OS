#ifndef _os_task_common_h_
#define _os_task_common_h_

#include "os_task_config.h"
#include "os_init_task_system.h"
/*#warn make it multicore capable */
enum task_state_e
{
   Task_unspecified = 0,
   Task_suspended,  /* task terminated */
   Task_ready,      /* task ready for execution*/
   Task_running     /* task running */
};
typedef enum task_state_e task_state_t;



typedef void            (*func_p_void_void_t)   (void);
typedef void            (*func_p_t)             (void* task);
typedef unsigned_char_t (*func_p_u8_t)          (void* task);
typedef unsigned_char_t (*func_p_state_change_t)(void* task, task_state_t requested_task_state);
struct task_group_s
{
   unsigned_int32_t exe_time;
   unsigned_int32_t fair_exe_time;
};
typedef struct task_group_s task_group_t;

struct task_s
{
   unsigned active      :1;
   unsigned task_queued :1;
   unsigned IdleTask    :1;
   unsigned FREE        :29;
   unsigned_char_t NrOfInsAllowed;
   unsigned_char_t NrOfInsActivated;
   unsigned_int32_t WaitActUntil;
   unsigned_int32_t wait_time;
   unsigned_int32_t TimeToPrioInc;
   unsigned_int32_t overwaittime_per_prio_inc_step;
   unsigned_int32_t max_allowed_wait_time;
   unsigned_int32_t exe_time;
   unsigned_char_t current_prio;
   unsigned_char_t default_prio;
   unsigned_int32_t task_number;
   func_p_t fp;
   func_p_state_change_t state_request;
   task_state_t task_state;
   task_group_t* task_group;
   #if(CFG_PROCESSOR == cMCU_X86)
   unsigned_int32_t EAX;
   unsigned_int32_t EBX;
   unsigned_int32_t ECX;
   unsigned_int32_t EDX;
   #else
   unsigned_int32_t r0;
   unsigned_int32_t r1;
   unsigned_int32_t r2;
   unsigned_int32_t r3;
   unsigned_int32_t r4;
   unsigned_int32_t r5;
   unsigned_int32_t r6;   
   unsigned_int32_t r7;
   unsigned_int32_t r8;
   unsigned_int32_t r9;
   unsigned_int32_t r10;
   unsigned_int32_t r11;
   unsigned_int32_t r12;  
   #endif
   unsigned_char_t* pStackPointer;
   unsigned_char_t* pStackPointerByMalloc;
   unsigned_char_t* pStackPointerStart;
   unsigned_int32_t  StackSize;
   unsigned_char_t* pStackPointerEnd;
   unsigned_char_t  task_kernel_mode;
};
typedef struct task_s task_t;
extern void SET_SW_BUG(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_nr);
extern void Inc_current_time(void);
extern unsigned_int32_t Get_current_time(void);

extern void OS_TASK_SAVETASK_ENVIRONMENT(task_t* task);
extern void OS_TASK_RESTORETASK_ENVIRONMENT(task_t* task);
extern void OS_TASK_RESTORE_SYSTEM_STACK(uint8* system_stack_ptr);
extern void OS_TASK_SAVE_SYSTEM_STACK(uint8* system_stack_ptr);
extern void OS_Task_InitTaskEnvironment(task_t* task);
extern void OS_Task_DeleteTaskEnvironment(task_t* task);
extern task_t* TASK_PTR[5];

typedef unsigned scheduler_time_t;

#define os_SaveTaskPtr(task_ptr, task_name) (TASK_PTR[(task_name)] = (task_ptr))
#define os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_name)])
#endif /* _os_task_common_h_  */
