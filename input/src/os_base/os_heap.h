#ifndef _OS_HEAP_H_
#define _OS_HEAP_H_
#include "os_firstinc.h"
extern void* OS_CALLOC(uint32 num, uint32 size);
extern void* OS_REALLOC(void* ptr_old, uint32 size_new);
extern void* OS_MALLOC(uint32 size);
extern void  OS_free(void* ptr);
#endif /* _OS_HEAP_H_ */
