#ifndef  _os_exception_isr_handler_h_
#define  _os_exception_isr_handler_h_

#define ISR void
extern void OS_ExceptionSetup(void);

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
extern ISR TCMP1(void);
extern ISR TCMP2(void);
extern ISR TCMP3(void);
extern ISR TCMP4(void);
extern ISR ISOK_RECV(void);
extern ISR ISOK_TRANS(void);
extern void OS_ISRHANDLERC0(void);
extern void OS_ISRHANDLERC1(void);
extern void OS_ISRHANDLERC2(void);
extern void OS_ISRHANDLERC3(void);
#endif /* _os_exception_isr_handler_h_ */