#ifndef _lld_mmu_h_
#define _lld_mmu_h_
#include "..\os_base\os_firstinc.h"
#include "lld_global.h"
extern void LLF_MPU_DISABLE(void);
extern void LLF_MPU_ENABLE(void);
extern void LLF_MPU_SWITCH_OFF_ALL_REGIONS(void);
extern void LLF_MMU_SET_REGION(void* startAddr, void* endAddr);
#endif /* _lld_mmu_h_ */