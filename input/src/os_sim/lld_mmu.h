#ifndef _LLD_MMU_H_
#define _LLD_MMU_H_
#include "..\os_base\os_firstinc.h"

extern void LLF_MPU_DISABLE(void);
extern void LLF_MPU_ENABLE(void);
extern uint32 LLF_GET_MPU_PRESENT(void);
extern void LLF_MMU_SET_REGION(void* startAddr, void* endAddr);
#endif /* _LLD_MMU_H_ */