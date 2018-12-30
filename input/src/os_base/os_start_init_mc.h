#ifndef _os_start_init_mc_h_
#define _os_start_init_mc_h_
#include "os_firstinc.h"
extern void OS_INIT_MC(void);

/*TODO: do not use CMSIS code by STM32F4 testpackage... */ 
typedef struct
{
  volatile uint32 CR;
  volatile uint32 CFGR;
  volatile uint32 CIR;
  volatile uint32 APB2RSTR;
  volatile uint32 APB1RSTR;
  volatile uint32 AHBENR;
  volatile uint32 APB2ENR;
  volatile uint32 APB1ENR;
  volatile uint32 BDCR;
  volatile uint32 CSR;

#ifdef STM32F10X_CL  
  volatile uint32 AHBRSTR;
  volatile uint32 CFGR2;
#endif /* STM32F10X_CL */ 

#if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)   
  uint32 RESERVED0;
  volatile uint32 CFGR2;
#endif /* STM32F10X_LD_VL || STM32F10X_MD_VL || STM32F10X_HD_VL */ 
} RCC_TypeDef;   
#define PERIPH_BASE           ((uint32)0x40000000) /*!< Peripheral base address in the alias region */
#define AHBPERIPH_BASE        (PERIPH_BASE + 0x20000)
#define RCC_BASE              (AHBPERIPH_BASE + 0x1000)
#define RCC                 ((RCC_TypeDef *) RCC_BASE)
 

#endif /* (_os_start_init_mc_h_) */