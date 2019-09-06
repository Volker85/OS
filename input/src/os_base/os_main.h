#ifndef _OS_MAIN_H_
#define _OS_MAIN_H_

enum os_state_e
{
   OS_STATE_INIT = 0,
   OS_STATE_RUNNING,
   OS_STATE_SHUTDOWN
};
typedef enum os_state_e os_state_t;
extern void OS_STATE_HANDLER(void);

#endif /* _OS_MAIN_H_ */
