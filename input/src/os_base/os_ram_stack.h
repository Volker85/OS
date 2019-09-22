#ifndef _OS_RAM_STACK_H_
#define _OS_RAM_STACK_H_

#include "os_firstinc.h"
#include "os_stack.h"
#include "os_heap.h"
#include "os_main.h"
#include "os_task_config.h"
#include "os_task_common.h"

/* stack related RAM  */

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
extern unsigned_char_t OS_MAIN_STACK[OS_MAIN_STACK_SIZE];
#endif
