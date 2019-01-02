/*
It depends on the ABI for the platform you are compiling for. On Linux, there are two ARM ABIs; the old one and the new one. AFAIK, the new one (EABI) is in fact ARM's AAPCS. The complete EABI definitions currently live here on ARM's infocenter.

From the AAPCS, Â§5.1.1:

    r0-r3 are the argument and scratch registers; r0-r1 are also the result registers
    r4-r8 are callee-save registers
    r9 might be a callee-save register or not (on some variants of AAPCS it is a special register)
    r10-r11 are callee-save registers
    r12-r15 are special registers

*/        
        .thumb
        .syntax unified
        .text
        .global GET_CORE_ID
        .global LLF_SAVE_TASK_STACK
        .global LLF_SAVE_REGISTERS
        .global LLF_RESTORE_TASK_STACK
        .global LLF_RESTORE_REGISTERS
        .global LLF_RESTORE_SYSTEM_STACK
        .global LLF_SAVE_SYSTEM_STACK
        .global LLF_CLEAR_ALL_GP_REGISTERS
        .global LLF_PERFORM_RAM_CHECK
        .global LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE

GET_CORE_ID:
        # the Cortex M4 process has just one core-> use static assignement of core id
        #
        # 14.1.1. Determining which core the code is running on
        #
        # Some software operations are dependent on which core the code is running on. For example, global initialization is typically performed by code running on a single core, followed by local initialization on all cores.
        #
        # The Multi-Processor Affinity Register (MPIDR_EL1) enables software to determine on which core it is executing, both within a cluster and in a system with multiple clusters, where it determines on which core and in which cluster it is executing.
        #
        # The U bit in some processor configurations indicates whether this is a single core or a multi-core cluster. The affinity fields give a hierarchical description of the core’s location relative to other cores. Typically, Affinity 0 is the core ID within the cluster, and Affinity 1 is the cluster ID.
        # Note
        #
        # Software running at EL1 may be running inside a virtual machine managed by a hypervisor. In order to configure a virtual machine, EL2 or EL3 can set MPIDR_EL1 to different values at run-time, so that a particular virtual machine sees a consistent, unique value for each virtual core. The relationship between virtual and physical cores is controlled by the hypervisor, and may change over time.
        #
        # MIPDR_EL3 contains the unchangeable ID of each physical core. No two cores share the same MPIDR_EL3 value.
        #
        # Cortex M7 seems to be always single core
        #
        #r0 is assumed to be used by the calling convention as the first MOV R15, R14urn value
   #   CoreID_t ret_val = 0;
   #   return (ret_val);
   MOV r0,#0
   MOV R15,R14

LLF_SAVE_TASK_STACK:
   # 1. read the stack pointer register
   #   2. save it the correct task context
   #   3. invalidate the register (==0)
   STR R13, [r0]
   MOV R15,R14
   
LLF_SAVE_REGISTERS:
   # r0-r3 are the argument and scratch registers; r0-r1 are also the result registers
   # r4-r8 are callee-save registers
   # r9 might be a callee-save register or not (on some variants of AAPCS it is a special register)
   # r10-r11 are callee-save registers
   #
   # R0 is needed for writing all the others....
   PUSH {R0} 
   LDR R0,=REGISTER_R1 
   STR R1,[R0]
   LDR R0,=REGISTER_R2 
   STR R2,[R0]
   LDR R0,=REGISTER_R3 
   STR R3,[R0]
   LDR R0,=REGISTER_R4 
   STR R4,[R0]
   LDR R0,=REGISTER_R5 
   STR R5,[R0]
   LDR R0,=REGISTER_R6 
   STR R6,[R0]
   LDR R0,=REGISTER_R7 
   STR R7,[R0]
   LDR R0,=REGISTER_R8 
   STR R8,[R0]
   LDR R0,=REGISTER_R9 
   STR R9,[R0]
   LDR R0,=REGISTER_R10 
   STR R10,[R0]
   LDR R0,=REGISTER_R11 
   STR R11,[R0]   
   POP {R0}
   MOV R15,R14
   
LLF_RESTORE_TASK_STACK:
   LDR r13,[r0]
   MOV R15,R14
   
LLF_RESTORE_REGISTERS:
   # r0-r3 are the argument and scratch registers; r0-r1 are also the result registers
   # r4-r8 are callee-save registers
   # r9 might be a callee-save register or not (on some variants of AAPCS it is a special register)
   # r10-r11 are callee-save registers
   #   
   #
   LDR R0,=REGISTER_R0 
   LDR R1,=REGISTER_R1
   LDR R2,=REGISTER_R2
   LDR R3,=REGISTER_R3
   LDR R4,=REGISTER_R4
   LDR R5,=REGISTER_R5
   LDR R6,=REGISTER_R6
   LDR R7,=REGISTER_R7
   LDR R8,=REGISTER_R8
   LDR R9,=REGISTER_R9
   LDR R10,=REGISTER_R10
   LDR R11,=REGISTER_R11
   MOV R15,R14
   
LLF_RESTORE_SYSTEM_STACK:
   LDR r13,[r0]
   MOV R15,R14
   
LLF_SAVE_SYSTEM_STACK:
   STR R13, [r0]
   MOV R15,R14
   
LLF_CLEAR_ALL_GP_REGISTERS:
   # r0-r3 are the argument and scratch registers; r0-r1 are also the result registers
   # r4-r8 are callee-save registers
   # r9 might be a callee-save register or not (on some variants of AAPCS it is a special register)
   # r10-r11 are callee-save registers
   #
   MOV R0,#0x00
   MOV R1,#0x00
   MOV R2,#0x00
   MOV R3,#0x00
   MOV R4,#0x00
   MOV R5,#0x00
   MOV R6,#0x00
   MOV R7,#0x00
   MOV R8,#0x00
   MOV R9,#0x00
   MOV R10,#0x00
   MOV R11,#0x00
   MOV R15,R14
   
LLF_PERFORM_RAM_CHECK:
        B LLF_INT_DISABLE
#uint8 test_pattern1 = 0x00;
#uint8 test_pattern2 = 0xFF;
#volatile uint8* curr_pos_ptr = (volatile*) _ram_start_addr_;
#volatile uint8* ram_end_ptr =  (volatile*) _ram_end_addr_;
#uint8 res1, res2;
#uint8 ram_check_failed = False;
#
#LLF_INT_DISABLE();
#while(curr_pos_ptr < ram_end_ptr)
#{
#   *curr_pos_ptr = test_pattern1;
#   res1 = *curr_pos_ptr;
#   *curr_pos_ptr = test_pattern2;
#   res2 = *curr_pos_ptr;
#   if(res1!=0x00 || res2 != 0xFF)
#   {
#      failed_pos_ptr = curr_pos_ptr;
#      ram_check_failed = True;
#   }
#   curr_pos_ptr++;
#}
#LLF_INT_ENABLE();
#
        # r0-curr_pos_ptr
        # r1-ram_end_ptr
        # r2-test_pattern1
        # r3-test_pattern2
        # r4-res1
        # r5-res2
        # r6-ram_check_failed
        # r7-failed_pos_ptr
        #volatile uint8* curr_pos_ptr = (volatile*) _ram_start_addr_;
        LDR r0, =_ram_start
        #volatile uint8* ram_end_ptr =  (volatile*) _ram_end_addr_;
        LDR r1, =_ram_end
        #uint8 test_pattern1 = 0x00;
        MOV r2, #0x00
        #uint8 test_pattern2 = 0xFF;
        MOV r3, #0xFF
        #uint8 ram_check_failed = False;
        MOV r6, #0
        #LLF_INT_DISABLE();
        B LLF_INT_DISABLE            
loop_start:        
        #while(curr_pos_ptr < ram_end_ptr)
        CMP r0, r1
        BEQ loop_finished
        #{
        #   *curr_pos_ptr = test_pattern1;
        STR r2,[r0]
        #   res1 = *curr_pos_ptr;
        LDR r4,[r0]
        #   *curr_pos_ptr = test_pattern2;
        STR r3,[r0]
        #   res2 = *curr_pos_ptr;
        LDR r5,[r0]
        #   if(res1!=0x00 || res2 != 0xFF)
        CMP r4,#0
        BNE ram_check_failed
        CMP r5,#0
        BNE ram_check_failed
        # continue the loop in case no violation found
        B loop_start
ram_check_failed:
        #      ram_check_failed = True;
        MOV r6,#1   
        #      failed_pos_ptr = curr_pos_ptr;
        MOV r7,r0      
        # continue with loop_finished after detecting ram failure
        B loop_finished
loop_finished:
        #store failure marker and address
        LDR R8,=RAM_CHECK_FAILURE_DETECTED
        LDR R9,=RAM_CHECK_FAILURE_ADDR
        STRB R6,[R8]
        STRB R7,[R9]
        #LLF_INT_ENABLE();
        B LLF_INT_ENABLE
        #; Move R14 (LR) into R15 (PC)
        MOV R15, R14
   
LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE:    
   MRS r0,CONTROL
   MOV r1,#0x01
   ORR r0,r0,r1
   MSR CONTROL,r0
   MOV R15, R14

