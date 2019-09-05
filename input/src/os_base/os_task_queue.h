#ifndef _OS_TASK_QUEUE_H_
#define _OS_TASK_QUEUE_H_
#include "os_task_common.h"

/* last possible task */
#define FIRST_TASK   (0)
#define LAST_TASK    (MAX_RUN_QUEUE_SIZE-1)

#define FOR_ALL_TASKS_IN_QUEUE(var) for((var) = FIRST_TASK; (var) <= LAST_TASK; (var)++)

extern task_t* GET_RUNNING_TASK(void);
extern task_t** GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR(void);

extern task_t* ADD_TO_TASK_QUEUE(task_t* task);
extern void ADD_TO_IDLE_TASK_QUEUE(task_t* task);
extern void DELETE_FROM_TASK_QUEUE(task_t* task);
extern task_t* GET_FROM_TASK_QUEUE(scheduling_t* scheduling_task_ptr);
extern task_t* GET_IDLE_TASK(void);
extern scheduling_t* GET_FROM_SCHEDULING_QUEUE(unsigned_char_t element_nr);
extern void DELETE_FROM_SCHEDULING_QUEUE(scheduling_t* scheduling_queue_element);
extern void ADD_TO_SCHEDULING_QUEUE(task_t* task);
extern void SET_RUNNING_TASK(task_t* task, scheduling_t* scheduling_task);
extern void OS_INIT_TASK_QUEUE(void);
#endif /* _OS_TASK_QUEUE_H_ */
