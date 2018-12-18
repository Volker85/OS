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
        .global LLF_UP_CNT_TIMER_32
        .global LLF_INT_ENABLE
        .global LLF_DISABLE_INTERRUPTS_ALL_CORES
        .global LLF_MPU_SWITCH_OFF_ALL_REGIONS
        .global LLF_GET_MPU_PRESENT
        .global LLF_ADD_2_TCMP
        .global LLF_TCMP1_CONFIG
       
      
LLF_UP_CNT_TIMER_32:
        #TODO "LLF_UP_CNT_TIMER_32 not implemented yet"
        LDR R0, =0x00 
        MOV R15, R14

LLF_ADD_2_TCMP:
        #TODO "LLF_UP_CNT_TIMER_32 not implemented yet"
        # R0 holds the value_us
        MOV R15, R14

LLF_TCMP1_CONFIG:
        #TODO "LLF_TCMP1_CONFIG not implemented yet"   
        #error "needs to be implemented to allow task dispatcher to run"
        #setup the sys tick timer 
        MOV R15, R14
        
