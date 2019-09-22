#ifndef _LLD_GLOBAL_H_
#define _LLD_GLOBAL_H_

#include "lld_core.h"
#include "lld_interrupt.h"
#include "lld_mmu.h"
#include "lld_timer.h"
#include "lld_power.h"
#include "lld_ram.h"
#include "..\os_base\os_task_common.h"


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
extern  void LLF_SAVE_TASK_STACK(unsigned_char_t* StackPointer);


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
extern  void LLF_SAVE_REGISTERS(uint32 r0, uint32 r1, uint32 r2, uint32 r3);


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
extern  void LLF_RESTORE_TASK_STACK(unsigned_char_t* StackPointer);


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
extern  void LLF_RESTORE_REGISTERS(task_t* task);


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
extern  void LLF_RESTORE_SYSTEM_STACK(uint8* system_stack_ptr);


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
extern  void LLF_SAVE_SYSTEM_STACK(uint8* system_stack_ptr);


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
extern  void LLF_CLEAR_ALL_GP_REGISTERS(void);


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
extern  void LLF_PERFORM_RAM_CHECK(void);
#endif /* _LLD_GLOBAL_H_ */
