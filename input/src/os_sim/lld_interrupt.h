#ifndef _LLD_INTERRUPT_H_
#define _LLD_INTERRUPT_H_
#include "..\os_base\os_firstinc.h"

#define OS_INTERRUPT_SWI_1 asm("swi 1")
#define OS_INTERRUPT_SWI_2 asm("swi 2")
#define OS_INTERRUPT_SWI_3 asm("swi 3")
#define OS_INTERRUPT_SWI_4 asm("swi 4")
#define OS_INTERRUPT_SWI_5 asm("swi 5")


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
extern  void LLF_INT_DISABLE(void);

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
extern  void LLF_INT_ENABLE(void);

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
extern  void LLF_DISABLE_INTERRUPTS_ALL_CORES(void);

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
extern  void LLF_WAIT_FOR_INTERRUPT(void);
#endif /* _LLD_INTERRUPT_H_ */
