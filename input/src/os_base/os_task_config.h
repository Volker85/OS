#ifndef _OS_TASK_CONFIG_H_
#define _OS_TASK_CONFIG_H_

/* Scheduler Configuration: */
#define SCHEDULER_FREQUENCY  (1.0e3)
#define MINTIMESLICE_S      (1.0/SCHEDULER_FREQUENCY) /*Minimum Time Slice (1/f_scheduler) in s*/
#define MINTIMESLICE_US     ((1.0/SCHEDULER_FREQUENCY)*1e6)
#define TASK_MIN_TIME       (1e0) /* minimum task time for each task, overrules the fairness.... */
#define NUMBER_OF_TASKS     10
#define MAX_RUN_QUEUE_SIZE  (NUMBER_OF_TASKS)
#define MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE
/* Stack Configuration: Maximum Stack Size per Task */
#define TASK_STACK_SIZE 2000

/* general */
#define MS_PER_SEC (1000)
#define USE_STATIC_CREATED_TASKS TRUE

#endif /* _OS_TASK_CONFIG_H_  */
