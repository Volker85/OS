#include "os_firstinc.h"
#include "..\os_base\os_heap.h"

#if(DYNAMIC_MEMORY_USED != FALSE)
/* Allocate and zero-initialize array
--------------------------------------------------------------------
Allocates a block of memory for an array of num elements,
each of them size bytes long, and initializes all its bits to zero. */
void* OS_CALLOC(uint32 num, uint32 size)
{
   uint8* ptr = (uint8*) OS_MALLOC(num*size);
   /* zero initialize the RAM*/
   uint32 i;
   for(i = 0u; i < (size*num); i++)
   {
      *((uint8*)ptr + (uint32)i) = 0x00u;
   }
   return (void*) ptr;
}
/*
Reallocate memory block
--------------------------------------------------------------------
Changes the size of the memory block pointed to by ptr.
The function may move the memory block to a new location
 (whose address is returned by the function). The content of the memory
 block is preserved up to the lesser of the new and old sizes,
 even if the block is moved to a new location. If the new size is larger,
 the value of the newly allocated portion is indeterminate.
In case that ptr is a null pointer, the function behaves like malloc,
assigning a new block of size bytes and returning a pointer to its beginning.
*/
void* OS_REALLOC(void* ptr_old, uint32 size_new)
{
   uint32 i;
   void* ptr_new = 0u;
   if(ptr_old == 0u)/* just allocate the new RAM */
   {
      ptr_new = (void*) OS_MALLOC(size_new);
   }
   else if(size_new != 0u)/*reallocate*/
   {
      void* ptr_new = (void*) OS_MALLOC(size_new);
      if(ptr_new != 0u)/* memory to store the data ok? */
      {
         for(i = 0u; i < size_new; i++)
         {
            *((uint8*)ptr_new + (uint32)i) = *((uint8*)ptr_old + (uint32)i);
         }
      }
   }
   else /*deallocate */
   {
      if(ptr_old != 0u)
      {
         OS_FREE(ptr_old);
      }
      ptr_new = 0u;
   }
   return ptr_new;
}

/* malloc and free shall be the ONLY!!! functions accessing the data structures of the heap directly */
void* OS_MALLOC(uint32 size)
{
   /*uint32    used_size = 0;*/
   uint8*    chunk_ptr = 0u;
   uint8*    heap_ptr  = 0u; /* current byte of the heap to be accessed */
   uint32    chunk_uint32o_allocate = 0u;

   /* search through the heap for free chunk ....
   e.g. for memory layout

   UINT32 for size of chunk
   0x00000008,
   UINT32 for used size of chunk
   0x00000001,
   chunk (here 8 bytes)
   0x00000000,0x00000000
   UINT32 for size of chunk
   0x00000010,
   UINT32 for used size of chunk
   0x00000009,
   chunk (here 16 bytes)
   0x00000000,0x00000000,
   0x00000000,0x00000000
   */

   /* expand the size to MIN_BLOCK_SIZE_HEAP if necessary */
   if(size < MIN_BLOCK_SIZE_HEAP)
   {
      chunk_uint32o_allocate = MIN_BLOCK_SIZE_HEAP;
   }
   else
   {
      chunk_uint32o_allocate = size;
   }
   for( heap_ptr = (uint8*) &HEAP;/* init on the start of the heap */
         ((heap_ptr + (uint32)HEAP_OFFSET_FOR_CHUNK + (uint32)chunk_uint32o_allocate) <= ((uint8*)&HEAP + (uint32)sizeof(HEAP))) && (chunk_ptr == 0);/* prevent out of bounds access in case remaining heap does not provide enough space, and not yet already found */
         heap_ptr = heap_ptr + (uint32)HEAP_OFFSET_FOR_CHUNK + size/* set the heap_ptr to the next element in this list */
      )
   {
      size      = GET_UINT32_OF_4_UINT8(heap_ptr + HEAP_OFFSET_FOR_SIZE);
      /*used_size = GET_UINT32_OF_4_UINT8(heap_ptr + HEAP_OFFSET_FOR_USED_SIZE);*/

      chunk_ptr     = (heap_ptr + HEAP_OFFSET_FOR_CHUNK);
   }
   return (void*)chunk_ptr;
}
void OS_FREE(void* ptr)
{
   uint32  size = 0u;
   /*uint32  used_size = 0;*/
   uint8* chunk_ptr = 0u;
   uint8* heap_ptr  = 0u;
   /* clear used size info in list */
   for( heap_ptr = (uint8*)&HEAP;/* init on the start of the heap */
         (heap_ptr + (uint32)HEAP_OFFSET_FOR_CHUNK  <= ((uint8*)&HEAP + (uint32)sizeof(HEAP)));/* at least the size and used_size info is available!! */
         heap_ptr = heap_ptr + HEAP_OFFSET_FOR_CHUNK + size/* set the heap_ptr to the next element in this list */
      )
   {
      size      = GET_UINT32_OF_4_UINT8(heap_ptr + HEAP_OFFSET_FOR_SIZE);
      /*used_size = GET_UINT32_OF_4_UINT8(heap_ptr + HEAP_OFFSET_FOR_USED_SIZE);*/

      chunk_ptr     = (void*) ((uint8*)heap_ptr + (uint32)HEAP_OFFSET_FOR_CHUNK);

      if(chunk_ptr == ptr) /*block found which shall be cleared... */
      {
         set_4_uint8_to_uint32((uint8*)heap_ptr + (uint32)HEAP_OFFSET_FOR_USED_SIZE, 0u);/* set the used_size info the 0*/
      }
   }
}
#endif