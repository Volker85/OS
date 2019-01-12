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

        .global OS_Exception_RESET
        .global OS_GetCoreId
        .extern LLF_CLEAR_ALL_RAM
        .extern OS_StartOs
        .global LLF_PERFORM_RAM_CHECK
        .global START_OS
        .extern _ram_start
        .extern _ram_end
        .extern RAM_CHECK_FAILURE_DETECTED
        .extern RAM_CHECK_FAILURE_ADDR

OS_Exception_RESET:
        MOV r0, #0/*Step 1:  init general purpose registers: r0...r12: general purpose */
        MOV r1, #0
        MOV r2, #0
        MOV r3, #0
        MOV r4, #0
        MOV r5, #0
        MOV r6, #0
        /*
        #MOV r7, #0 # frame pointer for GCC
        #MOV r8, #0
        #MOV r9, #0
        #MOV r10, #0
        #MOV r11, #0
        #MOV r12, #0
        #MOV r13, OS_STACK[0][0] #step 2: init system stack
        #r13        Stack pointer
        #r14        Link register
        #r15        program counter
        */
        B START_OS
       
START_OS:
        #/* 3a -> page tables                         */
        #/* not existing in STM32F407VGT6             */
        #/* 3b -> enable caches                       */
        #/* not existing in STM32F407VGT6             */
        #/* 3c -> MMU                                 */
        #/* not existing in STM32F407VGT6             */
        #/* 4. set the new PLL clock freq             */
        #/* done in OS_INIT_MC()                      */
        #
        #/* 4 -> executing main program */
        # OS_StartOs(void)
        BL LLF_CLEAR_ALL_RAM
        BL INIT_OS_STACK
        B OS_StartOs
