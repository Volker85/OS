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
        .global LLF_INT_DISABLE
        .global LLF_INT_ENABLE
        .global LLF_DISABLE_INTERRUPTS_ALL_CORES
        .global LLF_MPU_SWITCH_OFF_ALL_REGIONS
        .global LLF_GET_MPU_PRESENT
        //.extern OS_START_OS
        
      
LLF_MPU_DISABLE:
        #"LLF_MPU_DISABLE not yet implemented"
        MOV R15, R14

LLF_MPU_ENABLE:
        #"LLF_MPU_ENABLE not yet implemented"
        MOV R15, R14

        
LLF_INT_ENABLE:
        CPSIE i
        MOV R15, R14

LLF_DISABLE_INTERRUPTS_ALL_CORES:
        B LLF_INT_DISABLE
        MOV R15, R14

LLF_MPU_SWITCH_OFF_ALL_REGIONS:
        #"LLF_MPU_SWITCH_OFF_ALL_REGIONS not yet implemented"
        MOV R15, R14

LLF_GET_MPU_PRESENT:
        #if(0)
        #  unsigned_char_t MOV R15, R14_val;
        #    #if(CFG_PROCESSOR == cMCU_X86)
        #       ret_val = False;
        #   #else
        #    #define MPU_TYPE ((unsigned_char_t*)0xE000ED90)
        #       if( *MPU_TYPE != 0)
        #       {
        #          ret_val = True;
        #       }
        #       else
        #       {
        #          ret_val = False;
        #       }
        #    #endif
        #       return ret_val;
        #endif
        MOV R15, R14
        
