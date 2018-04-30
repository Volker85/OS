#ifndef _os_common_h_
#define _os_common_h_


/* common HAL defines */
#define False 0
#define True  1
#define Accepted 1
#define Rejected 0
#define Local static
#define Local_inline static __inline__
#define Global_inline __inline__
#define ReferenceUnusedParameter(x) ((x) = (x))

/* MCU abstraction */
#define cMCU_SIMULATION 1
#define cMCU_POWERPC    2
#define cMCU_X86        3
#define cMCU_CORTEX_M4  4

/*#warn "make the OS multi core capable"*/
#define NR_OF_CORES 1


#if(CFG_PROCESSOR == cMCU_SIMULATION)
#define DisableInterrupts()
#define EnableInterrupts()
#define Privilige_level_save_current()
#define Privilige_level_enter_kernel_mode()
#define Privilige_level_restore_saved()
#define HaltMcu()
#elif (CFG_PROCESSOR == cMCU_POWERPC)
/*#warn "not yet supported"*/
#elif (CFG_PROCESSOR == cMCU_X86)
#define DisableInterrupts()
#define EnableInterrupts()
#define Privilige_level_save_current()
#define Privilige_level_enter_kernel_mode()
#define Privilige_level_restore_saved()
#define HaltMcu()
#elif (CFG_PROCESSOR == cMCU_CORTEX_M4)
#define DisableInterrupts()                 LLF_INT_DISABLE()
#define EnableInterrupts()                  LLF_INT_ENABLE()
#define Privilige_level_save_current()      ;
#define Privilige_level_enter_kernel_mode() ;
#define Privilige_level_restore_saved()     ;
#define HaltMcu()                           ;
#endif
enum os_sw_bugs_e
{
   os_bug_no_bug = 0,
   os_bug_taskstate_request_denied,
   os_bug_null_pointer,
   os_bug_task_max_wait_time_reached,
   os_bug_Task_unspecified,
   os_bug_exception_UndefInstruction,
   os_bug_exception_AbortPrefetch,
   os_bug_exception_AbortData
};
typedef enum os_sw_bugs_e os_sw_bugs_t;
enum os_sw_bugs_function_e
{
   Func_NoFunction = 0,
   Func_SaveTaskEnvironment,
   Func_RestoreTaskEnvironment,
   Func_CreateTaskEnvironment,
   Func_DeleteTaskEnvironment,
   Func_StartTask,
   Func_PreemptTask,
   Func_TerminateTask,
   Func_TaskScheduler,
   Func_InitTask,
   Func_ActivateTask,
   Func_TaskStateRequest,
   Func_os_exception
};
typedef enum os_sw_bugs_function_e os_sw_bugs_function_t;



extern void OS_SET_SW_BUG(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr);

typedef void (*func_ptr_t)(void);
#endif /* _os_common_h_ */
