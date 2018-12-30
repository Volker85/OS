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
        .global LLF_MPU_SWITCH_OFF_ALL_REGIONS
        .global LLF_GET_MPU_PRESENT
        .global LLF_MPU_DISABLE
        //.extern OS_START_OS
        
      
LLF_MPU_DISABLE:
        # the STM32F407VGT6 eval board does not have an MPU... 
        MOV R15, R14

LLF_MPU_ENABLE:
        # the STM32F407VGT6 eval board does not have an MPU... 
        MOV R15, R14

      
LLF_MPU_SWITCH_OFF_ALL_REGIONS:
        # the STM32F407VGT6 eval board does not have an MPU... 
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
        # 
        #return (False = 0)
        MOV R0,#0
        MOV R15, R14
        
