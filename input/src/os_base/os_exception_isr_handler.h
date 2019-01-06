#ifndef  _os_exception_isr_handler_h_
#define  _os_exception_isr_handler_h_
extern void OS_Exception_RESET();
extern void OS_Exception_NMI();
extern void OS_Exception_HARDFAULT();
extern void OS_Exception_SWI();
extern void OS_Exception_BUS_FAULT();
extern void OS_Exception_MEM_MANAG_FAULT();
extern void OS_Exception_IRQ();
extern void OS_Exception_FIQ();
extern void OS_ExceptionHandler(void);
extern void OS_Exception_DEBUG(void);
extern void OS_Exception_USAGE_FAULT(void);
extern void OS_Exception_PendSV(void);
extern void OS_Exception_Systick(void);
#endif /* _os_exception_isr_handler_h_ */
