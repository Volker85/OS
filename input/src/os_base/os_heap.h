#ifndef _os_heap_h_
#define _os_heap_h_
#include "os_firstinc.h"

#define HEAP_SIZE              10000
#define MIN_BLOCK_SIZE_HEAP        8


#define HEAP_OFFSET_FOR_SIZE       0
#define HEAP_OFFSET_FOR_USED_SIZE  4
#define HEAP_OFFSET_FOR_CHUNK      8



extern void* os_calloc(uint32 num, uint32 size);
extern void* os_realloc(void* ptr_old, uint32 size_new);
extern void* os_malloc(uint32 size);
extern void  os_free(void* ptr);
#endif
