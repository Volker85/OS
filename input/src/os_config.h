#ifndef _OS_CONFIG_H_
#define _OS_CONFIG_H_

/* integer model */
#define INTEGER_LLP64_IL32P64 1u
#define INTEGER_LP64_I32LP64  2u
#define INTEGER_ILP64         3u
#define INTEGER_SILP64        4u
#define INTEGER_MODEL INTEGER_LLP64_IL32P64

/* cpp version */
#define CPP_VERSION_NONE 0u
#define CPP_VERSION_1998 1u
#define CPP_VERSION_2003 2u
#define CPP_VERSION_2007 3u
#define CPP_VERSION_2011 4u
#define ISO_CPP_VERSION CPP_VERSION_1998

/* big_int */
#define BIG_INT_SIZE 16u

/*only 1 core is currently supported!!*/
#define NR_OF_CORES 1u


/* frequency */
#define MCU_CLOCK_IN_HZ ((uint32)168000000u)

#define DYNAMIC_MEMORY_USED FALSE
#define LOOPTIME_IN_USEC ((uint32)10000u)

/* heap */
#define HEAP_SIZE              10000u
#define MIN_BLOCK_SIZE_HEAP        8u
#define HEAP_OFFSET_FOR_SIZE       0u
#define HEAP_OFFSET_FOR_USED_SIZE  4u
#define HEAP_OFFSET_FOR_CHUNK      8u

/* value for OS_STACK_SIZE needs to be equal to be value defined in os_exception_reset.s */
#define OS_MAIN_STACK_SIZE 0x400u
#define OS_PROCESS_STACK_TASK1_SIZE 0x200u
#define OS_PROCESS_STACK_TASK2_SIZE 0x200u
#define OS_PROCESS_STACK_TASK3_SIZE 0x200u
#define OS_PROCESS_STACK_TASK4_SIZE 0x200u

#endif /* _os_config_h_ */