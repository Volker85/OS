#ifndef _OS_ACL_H_
#define _OS_ACL_H_
#include "os_firstinc.h"


#define NR_OF_SYS_CALLS (3)        /*TODO*/
#define NR_OF_CONFIGURED_TASKS (5) /*TODO*/

#define PERMISSION_GRANTED 0x11
#define PERMISSION_DENIED  0x22

#define SYS_CALL_NR_READ_FILE         0x00000001u
#define SYS_CALL_NR_WRITE_FILE        0x00000002u
#define SYS_CALL_NR_READ_FILE_RIGHTS  0x00000003u
#define SYS_CALL_NR_WRITE_FILE_RIGHTS 0x00000004u

/*extern __svc(0) void SVC(unsigned_char_t number);*/
extern void SYSTEM_CALL(uint32 REQUEST_ID, uint32 NR_PARAMETERS, ...);

/*extern __asm void SVCHandler(void);
extern void SVCHandler_main(unsigned int * svc_args);*/

typedef struct sys_call
{
   uint32 SYS_CALL_NR;
   void* TASK_PERMISSION;/* pointer to an array of integers */
   void (*func_ptr)(void);
}sys_call_t;


#endif /* _OS_ACL_H_ */