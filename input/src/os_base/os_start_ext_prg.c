#include "os_firstinc.h"
/*
   os_StartExtPrg: to be called with supervisor rights!!
*/
LOCAL unsigned_char_t os_signatur_valid(func_ptr_t LoadProgAddr, uint32 PrgSignatur, uint32 PrgSize);

unsigned_char_t os_signatur_valid(func_ptr_t LoadProgAddr, uint32 PrgSignatur, uint32 PrgSize)
{
   /* no signature check currently wanted, because
   1. Asymetric Signature calculation takes lots of time
   2. Sym Hash + Asym Signature lack of official embedded implementation free to use
   3. Signature not in the scope of the project
   */
   REFERENCE_UNUSED_PARAMETER(LoadProgAddr);
   REFERENCE_UNUSED_PARAMETER(PrgSignatur);
   REFERENCE_UNUSED_PARAMETER(PrgSize);
   return TRUE;
}
void OS_START_EXT_PRG(func_ptr_t LoadProgAddr, uint32 PrgSignatur, uint32 PrgSize)
{
   /* 1. Check Program Signatur and size -> is it a signed Programm? (Chain of Trust) */
   if(os_signatur_valid(LoadProgAddr, PrgSignatur, PrgSize) == FALSE)
   {
      return;
   }

   /* 2. Switch off MMU (system mpu and core mpu, perhaps more mpu parts need to be switched off...) (reset also regions)  and allow reconfig by ExtPrg */
   /*LLF_MPU_DISABLE(); -> already done in os_deinit_mc(); */

   /* 3. Start ExtPrg */
   /*
   call function:
   different processors have different alignment requirements... be aware!!
   Might cause non alignment failures, in case the code in not aligned correctly
   */
   LoadProgAddr();
}
