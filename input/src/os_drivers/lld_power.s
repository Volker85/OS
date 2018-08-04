/*
It depends on the ABI for the platform you are compiling for. On Linux, there are two ARM ABIs; the old one and the new one. AFAIK, the new one (EABI) is in fact ARM's AAPCS. The complete EABI definitions currently live here on ARM's infocenter.

From the AAPCS, ยง5.1.1:

    r0-r3 are the argument and scratch registers; r0-r1 are also the result registers
    r4-r8 are callee-save registers
    r9 might be a callee-save register or not (on some variants of AAPCS it is a special register)
    r10-r11 are callee-save registers
    r12-r15 are special registers

*/        
        .text
        .global LLF_MCU_SWITCH_OFF_POWER
        .global LLF_MCU_RESET_POWER
        //.extern OS_START_OS
        
      
LLF_MCU_SWITCH_OFF_POWER:
        B LLF_MCU_RESET_POWER
        MOV R15, R14

LLF_MCU_RESET_POWER:
        /* 
        System Control Block (SCB): AIPCR register: 0xE000ED0C, Sys Reset: 0x00000002
        */
        #AIRCR = AIRCR | APP_SYS_RESET_REQ; 
        MOV r0, #0xE000ED0C
        ORR [r0], #0x00000002        
        MOV R15, R14

LLF_DISABLE_INTERRUPTS_ALL_CORES:
        B LLF_INT_DISABLE
        MOV R15, R14
        
