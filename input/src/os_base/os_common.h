#ifndef _OS_COMMON_H_
#define _OS_COMMON_H_


/* common HAL defines */
#define FALSE 0
#define TRUE 1
#define ACCEPTED 1
#define REJECTED 0
#define LOCAL static
#define LOCAL_INLINE static __inline__
#define GLOBAL_INLINE __inline__
#define REFERENCE_UNUSED_PARAMETER(x) ((x) = (x))

/* MCU abstraction */
#define MCU_X86        3
#define MCU_CORTEX_M4  4

/* MCU timer abstraction */
#define DWT_CTRL   ((volatile uint32*)0xE0001000)
#define DWT_CYCCNT ((volatile uint32*)0xE0001004)
#define DWT_LAR     ((volatile uint32*)0xE0001FB0)
#define SCB_DEMCR   ((volatile uint32*)0xE000EDFC)

#if (CFG_PROCESSOR == MCU_X86)
#define DISABLE_INTERRUPTS()
#define ENABLE_INTERRUPTS()
#define PRIVILIGE_LEVEL_SAVE_CURRENT()
#define PRIVILIGE_LEVEL_ENTER_KERNEL_MODE()
#define PRIVILIGE_LEVEL_RESTORE_SAVED()
#define HALT_MCU()
#elif (CFG_PROCESSOR == MCU_CORTEX_M4)
#define DISABLE_INTERRUPTS()                 LLF_INT_DISABLE()
#define ENABLE_INTERRUPTS()                  LLF_INT_ENABLE()
#define PRIVILIGE_LEVEL_SAVE_CURRENT()      ;
#define PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() ;
#define PRIVILIGE_LEVEL_RESTORE_SAVED()     ;
#define HALT_MCU()                           LLF_WAIT_FOR_INTERRUPT()
#endif
enum os_sw_bugs_e
{
   E_OS_BUG_NO_BUG = 0,
   E_OS_BUG_TASKSTATE_REQUEST_DENIED,
   E_OS_BUG_NULL_POINTER,
   E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED,
   E_OS_BUG_TASK_UNSPECIFIED,
   E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION,
   E_OS_BUG_EXCEPTION_ABORTPREFETCH,
   E_OS_BUG_EXCEPTION_ABORTDATA,
   E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED,
   E_OS_BUG_CRITICAL_STACK_USAGE,
   E_OS_BUG_SVC_NUMBER_MISSING
};
typedef enum os_sw_bugs_e os_sw_bugs_t;
typedef uint8 boolean_t;
enum os_sw_bugs_function_e
{
   E_FUNC_NOFUNCTION = 0,
   E_FUNC_SAVETASKENVIRONMENT,
   E_FUNC_RESTORETASKENVIRONMENT,
   E_FUNC_CREATETASKENVIRONMENT,
   E_FUNC_DELETETASKENVIRONMENT,
   E_FUNC_INITTASKENVIRONMENT,
   E_FUNC_STARTTASK,
   E_FUNC_PREEMPTTASK,
   E_FUNC_TERMINATETASK,
   E_FUNC_TASKSCHEDULER,
   E_FUNC_INITTASK,
   E_FUNC_ACTIVATETASK,
   E_FUNC_TASKSTATEREQUEST,
   E_FUNC_PREEMPT_TASK,
   E_FUNC_OS_EXCEPTION,
   E_FUNC_CREATETASK,
   E_FUNC_SHUTDOWN,
   E_FUNC_STACKCHECK,
   E_FUNC_ISRHANDLER
};
typedef enum os_sw_bugs_function_e os_sw_bugs_function_t;



extern void OS_SET_SW_BUG(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr);

typedef void (*func_ptr_t)(void);



typedef struct big_int_s
{
   /*
   number 0x4000 is stored as {0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,
                               0x00,0x00,0x40,0x00}
                               Big endian
   */
   uint8 number[BIG_INT_SIZE];
} big_int;
extern void ASSIGN_NULL(big_int* leftOperand);
extern void ASSIGN(big_int* leftOperand, big_int* rightOperand);
extern void ASSIGN_UINT32(big_int* leftOperand, uint32 rightOperand);
extern boolean_t IS_GREATER_OR_EQUAL(big_int* Operand1, big_int* Operand2);
extern boolean_t IS_GREATER(big_int* Operand1, big_int* Operand2);
extern boolean_t IS_EQUAL(big_int* Operand1, big_int* Operand2);
extern boolean_t IS_LESS_OR_EQUAL(big_int* Operand1, big_int* Operand2);
extern boolean_t IS_LESS(big_int* Operand1, big_int* Operand2);
extern void INT_DIV(big_int* Quotient, big_int* Dividend, big_int* Divisor);
extern void INT_MUL(big_int* Produkt, big_int* Faktor1, big_int* Faktor2);
extern void INT_SUB(big_int* Differenz, big_int* Minuend, big_int* Subtrahend);
extern void INT_ADD(big_int* Summe, big_int* ErsterSummand, big_int* ZweiterSummand);
extern uint32 get_uint32_of_4_uint8(uint8* ptr);
extern void set_4_uint8_to_uint32(uint8* ptr, uint32 value);
#endif /* _OS_COMMON_H_ */
