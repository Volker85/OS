        .text
        
        .global OS_Exception_RESET 
        .global clear_ram
        .global start_os
        .extern OS_START_OS
        
      
OS_Exception_RESET:
        MOV r0, #0/*Step 1:  init general purpose registers: r0...r12: general purpose */
        MOV r1, #0
        MOV r2, #0
        MOV r3, #0
        MOV r4, #0
        MOV r5, #0
        MOV r6, #0
        #MOV r7, #0 /* frame pointer for GCC */
        #MOV r8, #0
        #MOV r9, #0
        #MOV r10, #0
        #MOV r11, #0
        #MOV r12, #0
        #MOV r13, OS_STACK[0][0] #/* step 2: init system stack */
        #r13        Stack pointer*/
        #r14        Link register*/
        #/*r15        program counter*/
clear_ram:                 /* step 3: init system memory*/
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
        BNE clear_ram         /* continue loop until all RAM clear*/
        B start_os
start_os:        
        #/* 3a -> page tables                         */
        #/* not existing in STM32F407VGT6             */
        #/* 3b -> enable caches                       */
        #/* not existing in STM32F407VGT6             */
        #/* 3c -> MMU                                 */
        #/* not existing in STM32F407VGT6             */
        #/* 4. set the new PLL clock freq             */
        #/*.... TODO                                  */
        #elif(CFG_PROCESSOR == cMCU_X86)
        #else
        #error not supported mcu init
        #endif
        #
        #
        #/* 4 -> executing main program */
        # OS_START_OS(void)
        bl OS_START_OS 
        