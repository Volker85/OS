#
#It depends on the ABI for the platform you are compiling for. On Linux, there are two ARM ABIs; the old one and the new one. AFAIK, the new one (EABI) is in fact ARM's AAPCS. The complete EABI definitions currently live here on ARM's infocenter.
#
#From the AAPCS, §5.1.1:
#
#    r0-r3 are the argument and scratch registers; r0-r1 are also the result registers
#    r4-r8 are callee-save registers
#    r9 might be a callee-save register or not (on some variants of AAPCS it is a special register)
#    r10-r11 are callee-save registers
#    r12-r15 are special registers
#
#
        .thumb
        .syntax unified
        .text

        .global OS_EXCEPTION_RESET
        .global OS_GET_CORE_ID
        .extern LLF_CLEAR_ALL_RAM
        .extern OS_START_OS
        .extern INIT_OS_MAIN_STACK 
        .global LLF_PERFORM_RAM_CHECK
        .extern _ram_start
        .extern _ram_end
        .extern RAM_CHECK_FAILURE_DETECTED
        .extern RAM_CHECK_FAILURE_ADDR
        #value for OS_MAIN_STACK_SIZE needs to be equal to be value defined in os_stack.h
        .equ OS_MAIN_STACK_SIZE, 0x400u 
        

OS_EXCEPTION_RESET:
        MOV r0, #0/*Step 1:  init general purpose registers: r0...r12: general purpose */
        MOV r1, #0
        MOV r2, #0
        MOV r3, #0
        MOV r4, #0
        MOV r5, #0
        MOV r6, #0
        #MOV r7, #0 # frame pointer for GCC
        #MOV r8, #0
        #MOV r9, #0
        #MOV r10, #0
        #MOV r11, #0
        #MOV r12, #0
        #MOV r13, #step 2: init system stack
        #r13        Stack pointer
        #r14        Link register
        #r15        program counter
        #;  read the start address 0x20000000
        MOV  r4, #0x20
        MOV  r5, #0x00
        MOV  r6, #0x00
        MOV  r7, #0x00
        MOV  r8,  #0x18
        MOV  r9,  #0x10
        MOV  r10, #0x08
        LSL  r4,r4,r8
        LSL  r5,r5,r9
        LSL  r6,r6,r10
        #
        #;  ram start
        MOV  r11, #0x00
        #;  ram end
        MOV  r12, #0x00
        #;  build ram start variable
        ADD  r11,r11,r4
        ADD  r11,r11,r5
        ADD  r11,r11,r6
        ADD  r11,r11,r7
        #;  read the end address 0x2001BFFF
        MOV  r4, #0x20
        MOV  r5, #0x01
        MOV  r6, #0xBF
        MOV  r7, #0xFF
        MOV  r8,  #0x18
        MOV  r9,  #0x10
        MOV  r10, #0x08
        LSL  r4,r4,r8
        LSL  r5,r5,r9
        LSL  r6,r6,r10
        #;  build ram end variable
        ADD  r12,r12,r4
        ADD  r12,r12,r5
        ADD  r12,r12,r6
        ADD  r12,r12,r7
        #;  loop from ram start to ram end and clear (0x00) the RAM
        #;for(addr = ram_start, addr < ram_end, addr++)
        #;{
        #;  *addr = 0x00;
        #;}
        #;  if the ram end reached
        #;  input: ram_start: r11, ram_end: r12,
        #;  addr: r0
        #;  value: r1
        #;  addr = ram_start;
        MOV  r0,r11
        #; r12 points to last element -> due to BEQ usage the r12 shall point to first not included element
        ADD  r12,r12,#1
Loop_start:
        CMP  r0,r12
        #;  addr < ram_end
        BEQ  Loop_end
        #
        #;loop body-start...
        #;  *addr=0x00
        MOV  r1,#0
        #;  *addr=0x00
        STRB  r1,[r0]
        #;loop body-end
        #
        #;  addr++
        ADD  r0,r0,#1
        #
        B  Loop_start
Loop_end:
         B INIT_OS_MAIN_STACK     
         #/* 3a -> page tables                         */
         #/* not existing in STM32F407VGT6             */
         #/* 3b -> enable caches                       */
         #/* not existing in STM32F407VGT6             */
         #/* 3c -> MMU                                 */
         #/* existing in STM32F407VGT6                 */
         #/* 4. set the new PLL clock freq             */
         #/* done in OS_INIT_MC()                      */
         #
         #/* 4 -> executing main program */
         # OS_START_OS(void)
         B OS_START_OS
