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

extern coreid_t OS_GET_CORE_ID(void);
extern void LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE(void);

enum privilige_mode_e
{
   E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE = 0,
   E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE,
   E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE
};
typedef  enum privilige_mode_e privilige_mode_t;
#endif /* _LLD_CORE_H_ */
