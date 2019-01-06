#ifndef _os_heap_h_
#define _os_heap_h_
#include "os_firstinc.h"

#define HEAP_SIZE              10000
#define MIN_BLOCK_SIZE_HEAP        8


#define HEAP_OFFSET_FOR_SIZE       0
#define HEAP_OFFSET_FOR_USED_SIZE  4
#define HEAP_OFFSET_FOR_CHUNK      8



extern void* OS_Calloc(uint32 num, uint32 size);
extern void* OS_Realloc(void* ptr_old, uint32 size_new);
extern void* OS_Malloc(uint32 size);
extern void  OS_Free(void* ptr);
#endif
