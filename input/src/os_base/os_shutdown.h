#ifndef _os_shutdown_h_
#define _os_shutdown_h_
typedef enum os_reset_type_s
{
   os_reset_hardreset = 0,
   os_reset_powerdown = 1,
   os_reset_exit
} os_reset_type_t;
extern void OS_Shutdown(os_reset_type_t reset_typ);
#endif /*_os_shutdown_h_*/
