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
        .global LLF_CHANGE_TO_USER_MODE
        //.extern OS_START_OS
        
      
LLF_CHANGE_TO_USER_MODE:
   MRS r0,CONTROL
   MOV r1,#0x01
   ORR r0,r0,r1
   MSR CONTROL,r0
   MOV R15, R14
   