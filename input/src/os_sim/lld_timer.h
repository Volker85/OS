#ifndef _lld_timer_h_
#define _lld_timer_h_
#include "..\os_base\os_firstinc.h"
extern uint32 LLF_UP_CNT_TIMER_32(void);
extern void LLF_TCMP1_CONFIG(void);
extern void LLF_ADD_2_TCMP(unsigned_int32_t value_us);
#endif /* _lld_timer_h_ */