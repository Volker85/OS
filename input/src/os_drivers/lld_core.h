#ifndef _LLD_CORE_H_
#define _LLD_CORE_H_
#include "..\os_base\os_firstinc.h"
enum coreid_e
{
   E_CORE0 = 0,
   E_CORE1,
   E_CORE2,
   E_CORE3
};
typedef  enum coreid_e coreid_t;


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
extern coreid_t OS_GET_CORE_ID(void);

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
extern void LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE(void);

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
extern void LLF_EXCEPTION_TO_HANDLER_MODE(void);

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
extern void LLF_EXCEPTION_TO_THREAD_MODE_PRIV(void);

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
extern void LLF_EXCEPTION_TO_THREAD_MODE_UNPRIV(void);

enum privilige_mode_e
{
   E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE = 0,
   E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE,
   E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE
};
typedef  enum privilige_mode_e privilige_mode_t;
#endif /* _LLD_CORE_H_ */
