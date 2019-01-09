#ifndef _os_task_config_h_
#define _os_task_config_h_

/* Scheduler Configuration: */
#define SchedulerFrequency  (1.0e3)
#define MinTimeSlice_s      (1.0/SchedulerFrequency) /*Minimum Time Slice (1/f_scheduler) in s*/
#define MinTimeSlice_us     ((1.0/SchedulerFrequency)*1e6)
#define Task_min_time       (1e0) /* minimum task time for each task, overrules the fairness.... */
#define NUMBER_OF_TASKS     10
#define MAX_RUN_QUEUE_SIZE  (NUMBER_OF_TASKS)
#define MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE
/* Stack Configuration: Maximum Stack Size per Task */
#define TASK_STACK_SIZE 2000

/* general */
#define MS_PER_SEC (1000)
#define USE_STATIC_CREATED_TASKS True

#endif /* _os_task_config_h_  */
