#ifndef _lld_core_h_
#define _lld_core_h_
#include "..\os_base\os_firstinc.h"
enum CoreID_e
{
   Core0 = 0,
   Core1,
   Core2,
   Core3
};
typedef  enum CoreID_e CoreID_t;

extern CoreID_t GET_CORE_ID(void);
extern void LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE(void);

enum privilige_mode_e
{
   ePriviligeMode_unpriviliged_thread_mode = 0,
   ePriviligeMode_priviliged_thread_mode,
   ePriviligeMode_priviliged_handler_mode
};
typedef  enum privilige_mode_e privilige_mode_t;
#endif /* _lld_core_h_ */
