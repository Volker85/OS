#ifndef  _OS_EXCEPTION_ISR_HANDLER_H_
#define  _OS_EXCEPTION_ISR_HANDLER_H_

#define SVC_00 0x00   /* Tag: SVC */

extern void OS_EXCEPTION_RESET(void);
extern void OS_EXCEPTION_NMI(void);
extern void OS_EXCEPTION_HARDFAULT(void);
extern void OS_EXCEPTION_MEM_MANAG_FAULT(void);
extern void OS_EXCEPTION_BUS_FAULT(void);
extern void OS_EXCEPTION_USAGE_FAULT(void);

extern void OS_EXCEPTION_SVC(void);
extern void OS_EXCEPTION_DEBUG(void);

extern void OS_EXCEPTION_PEND_SV(void);
extern void OS_EXCEPTION_SYSTICK(void);
extern void OS_EXCEPTION_IRQ(void);
extern void OS_ISRHANDLERC0(uint32 svc_number);
#endif /* _OS_EXCEPTION_ISR_HANDLER_H_ */
