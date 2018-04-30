#ifndef _lld_mmu_h_
#define _lld_mmu_h_
#include "..\os_base\os_firstinc.h"
#include "lld_global.h"
extern void LLF_SMPU_DISABLE(void);
extern void LLF_CMPU_DISABLE(void);
extern void LLF_SMPU_ENABLE(void);
extern void LLF_CMPU_ENABLE(void);
extern void LLF_SMPU_SWITCH_OFF_ALL_REGIONS(void);
extern void LLF_CMPU_SWITCH_OFF_ALL_REGIONS(void);
extern void LLF_MMU_SET_REGION(CoreID_t core_id, void* startAddr, void* endAddr);
#endif /* _lld_mmu_h_ */