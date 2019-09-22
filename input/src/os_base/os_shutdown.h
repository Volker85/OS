#ifndef _OS_SHUTDOWN_H_
#define _OS_SHUTDOWN_H_
typedef enum os_reset_type_s
{
   E_OS_RESET_HARDRESET = 0,
   E_OS_RESET_POWERDOWN = 1,
   E_OS_RESET_EXIT
} os_reset_type_t;

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
extern void OS_SHUTDOWN(os_reset_type_t reset_typ, func_ptr_t addr);
#endif /*_OS_SHUTDOWN_H_*/
