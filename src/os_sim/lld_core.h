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

extern CoreID_t Get_core_id(void);
#endif /* _lld_core_h_ */
