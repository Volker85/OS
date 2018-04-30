#include "..\os_base\os_firstinc.h"
CoreID_t Get_core_id(void)
{
   /* the Coretex M4 process has just one core-> use static assignement of core id */
   /*
   14.1.1. Determining which core the code is running on

   Some software operations are dependent on which core the code is running on. For example, global initialization is typically performed by code running on a single core, followed by local initialization on all cores.

   The Multi-Processor Affinity Register (MPIDR_EL1) enables software to determine on which core it is executing, both within a cluster and in a system with multiple clusters, where it determines on which core and in which cluster it is executing.

   The U bit in some processor configurations indicates whether this is a single core or a multi-core cluster. The affinity fields give a hierarchical description of the core’s location relative to other cores. Typically, Affinity 0 is the core ID within the cluster, and Affinity 1 is the cluster ID.
   Note

   Software running at EL1 may be running inside a virtual machine managed by a hypervisor. In order to configure a virtual machine, EL2 or EL3 can set MPIDR_EL1 to different values at run-time, so that a particular virtual machine sees a consistent, unique value for each virtual core. The relationship between virtual and physical cores is controlled by the hypervisor, and may change over time.

   MIPDR_EL3 contains the unchangeable ID of each physical core. No two cores share the same MPIDR_EL3 value.
   */
   /* Cortex M7 seems to be always single core */
   CoreID_t ret_val = 0;
   return (ret_val);
}
void LLF_SAVE_TASK_STACK(unsigned_char_t* StackPointer)
{
   /* 1. read the stack pointer register
      2. save it the correct task context
      3. invalidate the register (==0)
   */
/*TODO*/
}
void LLF_SAVE_REGISTERS(task_t* task)
{
/*TODO*/
}
void LLF_RESTORE_TASK_STACK(uint8* StackPointer)
{
/*TODO*/
}
void LLF_RESTORE_REGISTERS(task_t* task)
{
/*TODO*/
}
void LLF_RESTORE_SYSTEM_STACK(uint8* system_stack_ptr)
{
/*TODO*/
}
void LLF_SAVE_SYSTEM_STACK(uint8* system_stack_ptr)
{
/*TODO*/
}
void LLF_CLEAR_ALL_GP_REGISTERS(uint8* system_stack_ptr)
{ 
/*TODO*/
}
void LLF_PERFORM_RAM_CHECK(void)
{
   /*TODO*/
}