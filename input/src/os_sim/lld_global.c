#include "..\os_base\os_firstinc.h"
coreid_t OS_GET_CORE_ID(void)
{
   /* the Coretex M4 process has just one core-> use static assignement of core id */
   /*
   14.1.1. Determining which core the code is running on

   Some software operations are dependent on which core the code is running on. For example, global initialization is typically performed by code running on a single core, followed by local initialization on all cores.

   The Multi-Processor Affinity Register (MPIDR_EL1) enables software to determine on which core it is executing, both within a cluster and in a system with multiple clusters, where it determines on which core and in which cluster it is executing.

   The U bit in some processor configurations indicates whether this is a single core or a multi-core cluster. The affinity fields give a hierarchical description of the core�s location relative to other cores. Typically, Affinity 0 is the core ID within the cluster, and Affinity 1 is the cluster ID.
   Note

   Software running at EL1 may be running inside a virtual machine managed by a hypervisor. In order to configure a virtual machine, EL2 or EL3 can set MPIDR_EL1 to different values at run-time, so that a particular virtual machine sees a consistent, unique value for each virtual core. The relationship between virtual and physical cores is controlled by the hypervisor, and may change over time.

   MIPDR_EL3 contains the unchangeable ID of each physical core. No two cores share the same MPIDR_EL3 value.
   */
   /* Cortex M7 seems to be always single core */
   coreid_t ret_val = 0u;
   return (ret_val);
}
void LLF_SAVE_TASK_STACK(unsigned_char_t* StackPointer)
{
   /* 1. read the stack pointer register
      2. save it the correct task context
      3. invalidate the register (==0)
   */
   REFERENCE_UNUSED_PARAMETER(StackPointer);
   /* no need to set the stack pointer in the simulation, because x86 Simulation does not preempt the running task .... */
}
void LLF_SAVE_REGISTERS(uint32 r0, uint32 r1, uint32 r2, uint32 r3)
{
   REFERENCE_UNUSED_PARAMETER(r0);
   REFERENCE_UNUSED_PARAMETER(r1);
   REFERENCE_UNUSED_PARAMETER(r2);
   REFERENCE_UNUSED_PARAMETER(r3);
   /* no need to save the registers in the simulation, because x86 Simulation does not preempt the running task .... */
}
void LLF_RESTORE_TASK_STACK(uint8* StackPointer)
{
   REFERENCE_UNUSED_PARAMETER(StackPointer);
   /* no need to set the stack pointer in the simulation, because x86 Simulation does not preempt the running task .... */
}
void LLF_RESTORE_REGISTERS(task_t* task)
{
   REFERENCE_UNUSED_PARAMETER(task);
   /* no need to restore the registers in the simulation, because x86 Simulation does not preempt the running task .... */
}
void LLF_RESTORE_SYSTEM_STACK(uint8* system_stack_ptr)
{
   REFERENCE_UNUSED_PARAMETER(system_stack_ptr);
   /* no need to set the stack pointer in the simulation, because x86 Simulation does not preempt the running task .... */
}
void LLF_SAVE_SYSTEM_STACK(uint8* system_stack_ptr)
{
   REFERENCE_UNUSED_PARAMETER(system_stack_ptr);
   /* no need to set the stack pointer in the simulation, because x86 Simulation does not preempt the running task .... */
}
void LLF_CLEAR_ALL_GP_REGISTERS(void)
{
   /* no need to clear all general purpose registers because main() is called with valid mcu registers already */
}
void LLF_PERFORM_RAM_CHECK(void)
{
   /* RAM check not supported by simulation because RAM layout is different in simulation */
}
void LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE(void)
{
   /* "change to user mode" is not supported in simulation */
}
