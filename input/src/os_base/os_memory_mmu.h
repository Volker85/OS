#ifndef  _OS_MEMORY_MMU_H_
#define  _OS_MEMORY_MMU_H_


#define MPU_RNR  ((volatile uint32*)0xE000ED98u)
#define MPU_RBAR ((volatile uint32*)0xE000ED9Cu)
#define MPU_RASR ((volatile uint32*)0xE000EDA0u)

#define MPU_ASR_NON_CACHABLE                    0x00080000u
#define MPU_ASR_STRONGLY_ORDERED                0x00000000u

#define MPU_ASR_ACCESS_PRIV_NOACCESS_UNPRIV_NOACCESS 0x00000000u
#define MPU_ASR_ACCESS_PRIV_RO_UNPRIV_RO        0x07000000u
#define MPU_ASR_ACCESS_PRIV_RW_UNPRIV_RW        0x03000000u
#define MPU_ASR_ACCESS_PRIV_RW_UNPRIV_NOACCESS  0x01000000u

#define MPU_ASR_REGION_SIZE_FLASH        0x20000000u
#define MPU_ASR_REGION_SIZE_RAM          0x20000000u
#define MPU_ASR_REGION_SIZE_PERIPHERIE   0x20000000u
#define MPU_ASR_REGION_SIZE_STACK_COOKIE 0x00000010u
#define MPU_ASR_REGION_ENABLE            0x00000001u



/**
 * \brief Exemplarische Funktion TODO
 *
 *     Diese Funktion gibt den übergebenen Parameter
 *     auf der Konsole aus. TODO
 *
 * \param	parameter  Auszugebender Parameter TODO
 * \return	      Status-Code TODO
 *
 */
extern void OS_MMU_SETUP(void);
#endif /* _OS_MEMORY_MMU_H_ */