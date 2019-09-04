#ifndef  _os_memory_mmu_h_
#define  _os_memory_mmu_h_


#define MPU_RNR  ((volatile uint32*)0xE000ED98)
#define MPU_RBAR ((volatile uint32*)0xE000ED9C)
#define MPU_RASR ((volatile uint32*)0xE000EDA0)

#define MPU_ASR_NON_CACHABLE                    0x00080000
#define MPU_ASR_STRONGLY_ORDERED                0x00000000

#define MPU_ASR_ACCESS_PRIV_NOACCESS_UNPRIV_NOACCESS 0x00000000
#define MPU_ASR_ACCESS_PRIV_RO_UNPRIV_RO        0x07000000
#define MPU_ASR_ACCESS_PRIV_RW_UNPRIV_RW        0x03000000
#define MPU_ASR_ACCESS_PRIV_RW_UNPRIV_NOACCESS  0x01000000

#define MPU_ASR_REGION_SIZE_FLASH        0x20000000
#define MPU_ASR_REGION_SIZE_RAM          0x20000000
#define MPU_ASR_REGION_SIZE_PERIPHERIE   0x20000000
#define MPU_ASR_REGION_SIZE_STACK_COOKIE 0x00000010
#define MPU_ASR_REGION_ENABLE            0x00000001


extern void OS_MmuSetup(void);
#endif /* _os_memory_mmu_h_ */