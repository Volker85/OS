#ifndef _os_task_queue_h_
#define _os_task_queue_h_
#include "os_task_common.h"

/* last possible task */
#define First_task   (0)
#define Last_task    (MAX_RUN_QUEUE_SIZE-1)

#define For_all_tasks_in_queue(var) for((var) = First_task; (var) <= Last_task; (var)++)

extern task_t* GetRunningTask(void);
extern task_t** GetRunningSchedulingQueueElementPtr(void);

extern task_t* AddToTaskQueue(task_t* task);
extern void AddToIdleTaskQueue(task_t* task);
extern void DeleteFromTaskQueue(task_t* task);
extern task_t* GetFromTaskQueue(scheduling_t* scheduling_task_ptr);
extern task_t* GetIdleTask(void);
extern scheduling_t* GetFromSchedulingQueue(unsigned_char_t element_nr);
extern void DeleteFromSchedulingQueue(scheduling_t* scheduling_queue_element);
extern void AddToSchedulingQueue(task_t* task);
extern void SET_RUNNING_TASK(task_t* task, scheduling_t* scheduling_task);
extern void OS_INIT_TASK_QUEUE(void);
#endif /* _os_task_queue_h_ */
