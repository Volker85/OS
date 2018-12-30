/*
It depends on the ABI for the platform you are compiling for. On Linux, there are two ARM ABIs; the old one and the new one. AFAIK, the new one (EABI) is in fact ARM's AAPCS. The complete EABI definitions currently live here on ARM's infocenter.

From the AAPCS, §5.1.1:

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
        .global LLF_CHANGE_TO_USER_MODE

GET_CORE_ID:
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
   STR R0,=REGISTER_R0 
   STR R1,=REGISTER_R1
   STR R2,=REGISTER_R2
   STR R3,=REGISTER_R3
   STR R4,=REGISTER_R4
   STR R5,=REGISTER_R5
   STR R6,=REGISTER_R6
   STR R7,=REGISTER_R7
   STR R8,=REGISTER_R8
   STR R9,=REGISTER_R9
   STR R10,=REGISTER_R10
   STR R11,=REGISTER_R11
   MOV R15,R14
   
LLF_RESTORE_TASK_STACK:
   LDR r13,r0
   MOV R15,R14
   
LLF_RESTORE_REGISTERS
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
   
LLF_RESTORE_SYSTEM_STACK
   LDR r13,r0
   MOV R15,R14
   
LLF_SAVE_SYSTEM_STACK
   STR R13, [r0]
   MOV R15,R14
   
LLF_CLEAR_ALL_GP_REGISTERS
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
   
LLF_PERFORM_RAM_CHECK
   #TODO
   MOV R15,R14
   
LLF_CHANGE_TO_USER_MODE:    
   MRS r0,CONTROL
   MOV r1,#0x01
   ORR r0,r0,r1
   MSR CONTROL,r0
   MOV R15, R14

