#ifndef _os_firstinc_h_
#define _os_firstinc_h_

#include "..\os_base\os_base_types.h"
#include "..\os_base\os_common.h"
#if(CFG_PROCESSOR == cMCU_X86)
#include "..\os_sim\lld_global.h"
#else
#include "..\os_drivers\lld_global.h"
#endif

#endif /* _os_firstinc_h_ */