#ifndef _os_common_h_
#define _os_common_h_


/* common HAL defines */
#define False 0
#define True  1
#define FALSE False
#define TRUE True
#define Accepted 1
#define Rejected 0
#define Local static
#define Local_inline static __inline__
#define Global_inline __inline__
#define ReferenceUnusedParameter(x) ((x) = (x))
#define DynamicMemoryUsed False

/* MCU abstraction */
#define cMCU_X86        3
#define cMCU_CORTEX_M4  4

/*only 1 core is currently supported!!*/
#define NR_OF_CORES 1

#define MCU_CLOCK_IN_HZ ((uint32)168000000u)


#if (CFG_PROCESSOR == cMCU_X86)
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
#define HaltMcu()                           LLF_WAIT_FOR_INTERRUPT()
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
   os_bug_exception_AbortData,
   os_bug_reset_exit_or_shutdown_failed,
   os_bug_critical_stack_usage,
   os_bug_svc_number_missing
};
typedef enum os_sw_bugs_e os_sw_bugs_t;
typedef uint8 boolean_t;
enum os_sw_bugs_function_e
{
   Func_NoFunction = 0,
   Func_SaveTaskEnvironment,
   Func_RestoreTaskEnvironment,
   Func_CreateTaskEnvironment,
   Func_DeleteTaskEnvironment,
   Func_InitTaskEnvironment,
   Func_StartTask,
   Func_PreemptTask,
   Func_TerminateTask,
   Func_TaskScheduler,
   Func_InitTask,
   Func_ActivateTask,
   Func_TaskStateRequest,
   Func_Preempt_Task,
   Func_os_exception,
   Func_CreateTask,
   Func_Shutdown,
   Func_StackCheck,
   Func_IsrHandler   
};
typedef enum os_sw_bugs_function_e os_sw_bugs_function_t;



extern void OS_SetSwBug(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr);

typedef void (*func_ptr_t)(void);


#define BigIntSize 16
typedef struct BigInt_s
{
  /*
  number 0x4000 is stored as {0x00,0x00,0x00,0x00,
                              0x00,0x00,0x00,0x00,
                              0x00,0x00,0x00,0x00,
                              0x00,0x00,0x40,0x00}
                              Big endian 
  */ 
  uint8  Number[BigIntSize]; 
}BigInt;
extern void AssignNull(BigInt* leftOperand);
extern void Assign(BigInt* leftOperand, BigInt* rightOperand);
extern void AssignUint32(BigInt* leftOperand, uint32 rightOperand);
extern boolean_t IsGreaterOrEqual(BigInt* Operand1, BigInt* Operand2);
extern boolean_t IsGreater(BigInt* Operand1, BigInt* Operand2);
extern boolean_t IsEqual(BigInt* Operand1, BigInt* Operand2);
extern boolean_t IsLessOrEqual(BigInt* Operand1, BigInt* Operand2);
extern boolean_t IsLess(BigInt* Operand1, BigInt* Operand2);
#if(0)
extern void IntDiv(BigInt* Quotient, BigInt* Dividend, BigInt* Divisor);
extern void IntMul(BigInt* Produkt, BigInt* Faktor1, BigInt* Faktor2);
#endif
extern void IntSub(BigInt* Differenz, BigInt* Minuend, BigInt* Subtrahend);
extern void IntAdd(BigInt* Summe, BigInt* ErsterSummand, BigInt* ZweiterSummand);
#endif /* _os_common_h_ */
