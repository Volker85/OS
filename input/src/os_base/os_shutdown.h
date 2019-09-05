#ifndef _OS_SHUTDOWN_H_
#define _OS_SHUTDOWN_H_
typedef enum os_reset_type_s
{
   E_OS_RESET_HARDRESET = 0,
   E_OS_RESET_POWERDOWN = 1,
   E_OS_RESET_EXIT
} os_reset_type_t;
extern void OS_SHUTDOWN(os_reset_type_t reset_typ);
#endif /*_OS_SHUTDOWN_H_*/
