#ifndef _OS_START_EXT_PRG_H_
#define _OS_START_EXT_PRG_H_

#include "os_firstinc.h"

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
extern void OS_START_EXT_PRG(func_ptr_t LoadProgAddr, uint32 PrgSignatur, uint32 PrgSize);
#endif /* _OS_START_EXT_PRG_H_  */

