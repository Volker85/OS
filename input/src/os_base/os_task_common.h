#ifndef _OS_TASK_COMMON_H_
#define _OS_TASK_COMMON_H_
#include "os_firstinc.h"
#include "os_task_config.h"
#include "os_init_task_system.h"

enum task_state_e
{
   E_TASK_UNSPECIFIED = 0,
   E_TASK_SUSPENDED,  /* task terminated */
   E_TASK_READY,      /* task ready for execution*/
   E_TASK_RUNNING     /* task running */
};
typedef enum task_state_e task_state_t;



typedef void            (*func_p_void_void_t)   (void);
typedef void            (*func_p_t)             (void* task);
typedef unsigned_char_t (*func_p_u8_t)          (void* task);
typedef unsigned_char_t (*func_p_state_change_t)(void* task, task_state_t requested_task_state);
typedef big_int timebig_t;

struct task_group_s
{
   timebig_t exe_time;
   timebig_t fair_exe_time;
};
typedef struct task_group_s task_group_t;

struct task_s
{
   unsigned active      :1;
   unsigned task_queued :1;
   unsigned idle_task    :1;
   unsigned free        :29;
   unsigned_char_t nr_of_ins_allowed;
   unsigned_char_t nr_of_ins_activated;
   timebig_t wait_act_until;
   timebig_t wait_time;
   timebig_t time_to_prio_inc;
   uint32 overwaittime_per_prio_inc_step;
   timebig_t max_allowed_wait_time;
   timebig_t exe_time;
   timebig_t start_time;
   unsigned_char_t current_prio;
   unsigned_char_t default_prio;
   unsigned_int32_t task_number;
   func_p_t fp;
   func_p_state_change_t state_request;
   task_state_t task_state;
   task_group_t* task_group;
#if(CFG_PROCESSOR == MCU_X86)
   unsigned_int32_t eax;
   unsigned_int32_t ebx;
   unsigned_int32_t ecx;
   unsigned_int32_t edx;
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
   unsigned_char_t* p_stack_pointer;
   unsigned_char_t* p_stack_pointer_by_malloc;
   unsigned_char_t* p_stack_pointer_start;
   unsigned_int32_t  StackSize;
   unsigned_char_t* p_stack_pointer_end;
   privilige_mode_t privilige_mode;
};
typedef struct task_s task_t;
typedef task_t* scheduling_t;
extern void OS_RESET_CURRENT_TIME(void);
extern void OS_GET_CURRENT_TIME(timebig_t* time);

extern void OS_TASK_SAVE_TASK_ENVIRONMENT(task_t* task);
extern void OS_TASK_RESTORETASK_ENVIRONMENT(task_t* task);
extern void OS_TASK_RESTORE_SYSTEM_STACK(uint8* system_stack_ptr);
extern void OS_TASK_SAVE_SYSTEM_STACK(uint8* system_stack_ptr);
extern void OS_TASK_INIT_TASK_ENVIRONMENT(task_t* task);
extern void OS_TASK_DELETE_TASK_ENVIRONMENT(task_t* task);
extern task_t* TASK_PTR[MAX_RUN_QUEUE_SIZE];

typedef timebig_t scheduler_time_t;

#define OS_SAVE_TASK_PTR(task_ptr, task_name) (TASK_PTR[(task_name)] = (task_ptr))
#define OS_GET_TASK_PTR(task_name) ((task_t*) TASK_PTR[(task_name)])
#endif /* _OS_TASK_COMMON_H_  */
