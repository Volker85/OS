#ifndef _OS_FIRSTINC_H_
#define _OS_FIRSTINC_H_

#include "..\os_config.h"
#include "..\os_base\os_base_types.h"
#include "..\os_base\os_common.h"

#if(CFG_PROCESSOR == MCU_X86)
#include "..\os_sim\lld_global.h"
#else
#include "..\os_drivers\lld_global.h"
#endif
#include "..\os_user_code\led.h"

#include "..\os_base\os_ram.h"
#include "..\os_base\os_ram_stack.h"

#endif /* _OS_FIRSTINC_H_ */