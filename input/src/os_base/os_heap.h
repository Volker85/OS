#ifndef _os_heap_h_
#define _os_heap_h_
#include "os_firstinc.h"
extern void* OS_Calloc(uint32 num, uint32 size);
extern void* OS_Realloc(void* ptr_old, uint32 size_new);
extern void* OS_Malloc(uint32 size);
extern void  OS_Free(void* ptr);
#endif
