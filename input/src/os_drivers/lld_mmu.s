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
        .global LLF_GET_MPU_PRESENT
        .global LLF_MPU_DISABLE
        .global LLF_MPU_ENABLE
        //.extern OS_START_OS
        
      
LLF_MPU_DISABLE:
        # the STM32F407VGT6 eval board has an MPU... 
        MOV  r4, #0xE0
        MOV  r5, #0x00
        MOV  r6, #0xED
        MOV  r7, #0x94
        MOV  r8,  #0x18
        MOV  r9,  #0x10
        MOV  r10, #0x08
        LSL  r4,r4,r8
        LSL  r5,r5,r9
        LSL  r6,r6,r10
        #;  build MPU_CTRL variable
        ADD  r12,r12,r4
        ADD  r12,r12,r5
        ADD  r12,r12,r6
        ADD  r12,r12,r7
        # r13 = *r12 = *0xE000ED94
        LDR  r11,[r12]
        # *r13 = *r13 & 0x06 
        AND r11,r11,#0x06
        # *r12 = r13
        STR r11,[r12]
        MOV R15, R14

LLF_MPU_ENABLE:
        # the STM32F407VGT6 eval board has an MPU... 
        MOV  r4, #0xE0
        MOV  r5, #0x00
        MOV  r6, #0xED
        MOV  r7, #0x94
        MOV  r8,  #0x18
        MOV  r9,  #0x10
        MOV  r10, #0x08
        LSL  r4,r4,r8
        LSL  r5,r5,r9
        LSL  r6,r6,r10
        #;  build MPU_CTRL variable
        ADD  r12,r12,r4
        ADD  r12,r12,r5
        ADD  r12,r12,r6
        ADD  r12,r12,r7
        # r13 = *r12 = *0xE000ED94
        LDR  r11,[r12]
        # *r13 = *r13 | 0x01 
        ORR r11,r11,#0x01
        # *r12 = r13
        STR r11,[r12]
        MOV R15, R14

LLF_GET_MPU_PRESENT:
        #if(0)
        #  unsigned_char_t MOV R15, R14_val;
        #    #if(CFG_PROCESSOR == MCU_X86)
        #       ret_val = FALSE;
        #   #else
        #    #define MPU_TYPE ((unsigned_char_t*)0xE000ED90)
        #       if( *MPU_TYPE != 0)
        #       {
        #          ret_val = TRUE;
        #       }
        #       else
        #       {
        #          ret_val = FALSE;
        #       }
        #    #endif
        #       return ret_val;
        #endif
        # 
        #return (FALSE = 0)
        #;  read the MPU_TYPE addr 0xE000ED90
        MOV  r4, #0xE0
        MOV  r5, #0x00
        MOV  r6, #0xED
        MOV  r7, #0x90
        MOV  r8,  #0x18
        MOV  r9,  #0x10
        MOV  r10, #0x08
        LSL  r4,r4,r8
        LSL  r5,r5,r9
        LSL  r6,r6,r10
        #;  build MPU_TYPE variable
        ADD  r12,r12,r4
        ADD  r12,r12,r5
        ADD  r12,r12,r6
        ADD  r12,r12,r7
        # r13 = *r12 = *0xE000ED90
        LDR  r13,[r12]
        # r0: return = r13
        MOV r0,r13        
        MOV R15, R14
        
