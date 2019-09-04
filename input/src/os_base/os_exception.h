#ifndef  _os_exception_h_
#define  _os_exception_h_

/* define the Cortex M4 Exception regiters */
#define HARDFAULT_STATUS_REG ((volatile uint32*)0xE000ED2Cu)
#define MEM_MANAG_FAULT_STATUS_REG     ((volatile uint8*)0xE000ED28u)
#define BUS_FAULT_STATUS_REG     ((volatile uint8*)0xE000ED29u)
#define USAGE_FAULT_STATUS_REG     ((volatile uint16*)0xE000ED2Au)
#define MEM_FAULT_ADDR_REG   ((volatile uint32*)0xE000ED34u)
#define BUS_FAULT_ADDR_REG   ((volatile uint32*)0xE000ED38u)
#define AUX_FAULT_STATUS_REG ((volatile uint32*)0xE000ED3Cu)

/* systick related registers */
#define SYSTICK_CTRL_STAT_REG ((uint32*)0xE000E010)
#define SYSTICK_RLD_VAL_REG   ((uint32*)0xE000E014)
#define SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018)
#define SYSTICK_CALIB_VAL_REG ((uint32*)0xE000E01C)
#define SYSTICK_STAT_REG_CLKSRC_AHB ((uint32)0x00000004)
#define SYSTICK_STAT_REG_CLKSRC_AHB_8 ((uint32)0x00000000)
#define SYSTICK_STAT_REG_TICKINT ((uint32)0x00000002)
#define SYSTICK_STAT_REG_ENABLE  ((uint32)0x00000001)

#define SYS_HANDLER_CTRL_STATE_REG ((uint32*)0xE000ED24)
#define SYS_HANDLER_CTRL_STATE_BIT_MASK_USGFAULTENA ((uint32)0x00040000)
#define SYS_HANDLER_CTRL_STATE_BIT_MASK_BUSFAULTENA ((uint32)0x00020000)
#define SYS_HANDLER_CTRL_STATE_BIT_MASK_MEMFAULTENA ((uint32)0x00010000)
#define SYS_HANDLER_CTRL_STATE_ENA_ALL_EXCEP (*SYS_HANDLER_CTRL_STATE_REG = *SYS_HANDLER_CTRL_STATE_REG | SYS_HANDLER_CTRL_STATE_BIT_MASK_USGFAULTENA | SYS_HANDLER_CTRL_STATE_BIT_MASK_BUSFAULTENA | SYS_HANDLER_CTRL_STATE_BIT_MASK_MEMFAULTENA)

#endif /* _os_exception_h_ */
