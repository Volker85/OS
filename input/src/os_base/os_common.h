#ifndef _OS_COMMON_H_
#define _OS_COMMON_H_


/* common HAL defines */
#define FALSE 0u
#define TRUE 1u
#define False FALSE
#define True TRUE
#define ACCEPTED 1u
#define REJECTED 0u
#define LOCAL static
#define LOCAL_INLINE static __inline__
#define GLOBAL_INLINE __inline__
#define REFERENCE_UNUSED_PARAMETER(x) ((x) = (x))
#define NULL ((void*)0)

/* MCU abstraction */
#define MCU_X86        3
#define MCU_CORTEX_M4  4

/* MCU timer abstraction */
#define DWT_CTRL   ((volatile uint32*)0xE0001000u)
#define DWT_CYCCNT ((volatile uint32*)0xE0001004u)
#define DWT_LAR    ((volatile uint32*)0xE0001FB0u)
#define SCB_DEMCR  ((volatile uint32*)0xE000EDFCu)

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
   E_OS_BUG_SVC_NUMBER_MISSING,
   E_OS_BUG_MAX_WAIT_TIME_REACHED,
   E_OS_BUG_DIVISION_BY_ZERO,
   E_OS_BUG_BIT_SHIFT_OUT_OF_RANGE
};
typedef enum os_sw_bugs_e os_sw_bugs_t;
typedef uint8 boolean_t;

#define AMOUNT_SW_BUG_FUNCTIONS 22
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
   E_FUNC_ISRHANDLER,
   E_FUNC_STATE_HANDLER,
   E_FUNC_INTDIV,
   E_FUNC_SHIFT_LEFT
};
typedef enum os_sw_bugs_function_e os_sw_bugs_function_t;




/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
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

typedef big_int timebig_t;

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void OS_READ_AND_RESET_CURRENT_TIME(timebig_t* timebig);


/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void ASSIGN_NULL(big_int* leftOperand);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void ASSIGN(big_int* leftOperand, const big_int* rightOperand);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void ASSIGN_UINT32(big_int* leftOperand, const uint32 rightOperand);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern boolean_t IS_GREATER_OR_EQUAL(const big_int* Operand1, const big_int* Operand2);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern boolean_t IS_GREATER(const big_int* Operand1, const big_int* Operand2);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern boolean_t IS_EQUAL(const big_int* Operand1, const big_int* Operand2);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern boolean_t IS_LESS_OR_EQUAL(const big_int* Operand1, const big_int* Operand2);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern boolean_t IS_LESS(const big_int* Operand1, const big_int* Operand2);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void INT_DIV(big_int* Quotient, const big_int* Dividend, const big_int* Divisor);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void INT_MUL(big_int* Produkt, const big_int* Faktor1, const big_int* Faktor2);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void INT_SUB(big_int* Differenz, const big_int* Minuend, const big_int* Subtrahend);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void INT_ADD(big_int* Summe, const big_int* ErsterSummand, const big_int* ZweiterSummand);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void SHIFT_LEFT(big_int* number, uint32 amount);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern uint32 get_uint32_of_4_uint8(uint8* ptr);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void set_4_uint8_to_uint32(uint8* ptr, uint32 value);

/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void OS_UpdateCurrentTime(void);
#endif /* _OS_COMMON_H_ */
