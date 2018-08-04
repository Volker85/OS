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
        .global LLF_CLEAR_ALL_RAM
        .global LLF_CLEAR_RAM
        //.extern OS_START_OS
        
LLF_CLEAR_ALL_RAM:
        B LLF_CLEAR_RAM
        MOV R15, R14

LLF_CLEAR_RAM:                 /* step 3: init system memory*/
        MOV  r0, #0x0000 /* load RAM start into r0 - LSBytes */
        MOV  r1, #0x0004/* load RAM start into r0 - MSBytes */
        MOV  r2, #16
        MOV  r3, #12
        LSL  r0, r0,r2
        LSL  r1, r1,r3
        ADD  r0, r1
        STRB r1,[r0]           /* r0 - used as address counter, r1 holds the 0*/
        ADD r0,#1              /* select the next byte*/
        MOV  r0, #0x00EE /* load RAM start into r0 - LSBytes */
        MOV  r1, #0x0004/* load RAM start into r0 - MSBytes */
        MOV  r2, #8
        MOV  r3, #12
        LSL  r0, r0,r2
        LSL  r1, r1,r3
        ADD  r0, r1        
        CMP r0, r2   /* is the next byte still RAM?*/
        BNE LLF_CLEAR_RAM         /* continue loop until all RAM clear*/
        MOV R15, R14
        
        