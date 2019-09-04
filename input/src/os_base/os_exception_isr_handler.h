#ifndef  _os_exception_isr_handler_h_
#define  _os_exception_isr_handler_h_

#define SVC_00 0x00

extern void OS_Exception_RESET(void);
extern void OS_Exception_NMI(void);
extern void OS_Exception_HARDFAULT(void);
extern void OS_Exception_MEM_MANAG_FAULT(void);
extern void OS_Exception_BUS_FAULT(void);
extern void OS_Exception_USAGE_FAULT(void);

extern void OS_Exception_SVC(void);
extern void OS_Exception_DEBUG(void);

extern void OS_Exception_PendSV(void);
extern void OS_Exception_Systick(void);
extern void OS_Exception_IRQ(void);
extern void OS_ISRHANDLERC0(uint32 svc_number);
#endif /* _os_exception_isr_handler_h_ */
