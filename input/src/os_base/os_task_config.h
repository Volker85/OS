#ifndef _OS_TASK_CONFIG_H_
#define _OS_TASK_CONFIG_H_

/* Scheduler Configuration: */
#define TASK_MIN_TIME       (1e0) /* minimum task time for each task, overrules the fairness.... */
#define TASK_MAX_TIME       (0xFFFFFFFF) //TODO: not used / supported yet
#define NUMBER_OF_TASKS     10u
#define MAX_RUN_QUEUE_SIZE  (NUMBER_OF_TASKS)
#define MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE
/* Stack Configuration: Maximum Stack Size per Task */
#define TASK0_STACK_SIZE 2000u
#define TASK1_STACK_SIZE 2000u
#define TASK2_STACK_SIZE 2000u
#define TASK3_STACK_SIZE 2000u
#define TASK4_STACK_SIZE 2000u


/* general */
#define MS_PER_SEC 1000u
#define USE_STATIC_CREATED_TASKS TRUE

#endif /* _OS_TASK_CONFIG_H_  */
