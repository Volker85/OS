#ifndef _os_task_queue_h_
#define _os_task_queue_h_
#include "os_task_common.h"

/* last possible task */
#define First_task   (0)
#define Last_task    (MAX_RUN_QUEUE_SIZE-1)

#define For_all_tasks_in_queue(var) for((var) = First_task; (var) <= Last_task; (var)++)

typedef void* link_list_t;
extern task_t* GetRunningTask(void);

extern void* AddToTaskQueue(task_t* task);
extern void AddToIdleTaskQueue(task_t* task);
extern void UpdateLinkList(void);
extern void* AddToLinkList(task_t* task);
extern void DeleteFromLinkList(unsigned_char_t element_nr);
extern void DeleteFromTaskQueue(task_t* task);
extern task_t* GetFromTaskQueue(link_list_t* link);
extern task_t* GetIdleTask(void);
extern link_list_t* GetFromLinkList(unsigned_char_t element_nr);
extern void SET_RUNNING_TASK(task_t* task);
extern void OS_INIT_TASK_QUEUE(void);
#endif /* _os_task_queue_h_ */
