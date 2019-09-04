#ifndef _os_config_h_
#define _os_config_h_

/* integer model */
#define INTEGER_LLP64_IL32P64 1
#define INTEGER_LP64_I32LP64  2
#define INTEGER_ILP64         3
#define INTEGER_SILP64        4
#define INTEGER_MODEL INTEGER_LLP64_IL32P64

/* cpp version */
#define CPP_VERSION_NONE 0
#define CPP_VERSION_1998 1
#define CPP_VERSION_2003 2
#define CPP_VERSION_2007 3
#define CPP_VERSION_2011 4
#define ISO_CPP_VERSION CPP_VERSION_1998

/* BigInt */
#define BigIntSize 16

/*only 1 core is currently supported!!*/
#define NR_OF_CORES 1


/* frequency */
#define MCU_CLOCK_IN_HZ ((uint32)168000000u)

#define DynamicMemoryUsed False
#define LOOPTIME_IN_USEC ((uint32)10000u)

/* heap */
#define HEAP_SIZE              10000
#define MIN_BLOCK_SIZE_HEAP        8
#define HEAP_OFFSET_FOR_SIZE       0
#define HEAP_OFFSET_FOR_USED_SIZE  4
#define HEAP_OFFSET_FOR_CHUNK      8

/* value for OS_STACK_SIZE needs to be equal to be value defined in os_exception_reset.s */
#define OS_STACK_SIZE 0x200u

#endif /* _os_config_h_ */