#/*
#It depends on the ABI for the platform you are compiling for. On Linux, there are two ARM ABIs; the old one and the new one. AFAIK, the new one (EABI) is in fact ARM's AAPCS. The complete EABI definitions currently live here on ARM's infocenter.
#
#From the AAPCS, ยง5.1.1:
#
#    r0-r3 are the argument and scratch registers; r0-r1 are also the result registers
#    r4-r8 are callee-save registers
#    r9 might be a callee-save register or not (on some variants of AAPCS it is a special register)
#    r10-r11 are callee-save registers
#    r12-r15 are special registers#
#
#*/        
        .thumb
        .syntax unified
        .text
        .global LLF_CLEAR_ALL_RAM
        .global INIT_OS_STACK
        .extern OS_MAIN_STACK
        
INIT_OS_STACK:
         # r0 = stack variable start addr
         LDR r0, =OS_MAIN_STACK
         # r2 = Stack size
         MOV r2, #0x5000
         #
         # r1 = OS_MAIN_STACK +STACK_SIZE-1
         #
         # r1 = stack end addr
         # r1 = OS_MAIN_STACK
         MOV r1,r0
         # r1 = r1 + STACK_SIZE
         ADD r1,r2
         # r1 = r1 - 1
         #SUB r1,#1 -> r1 points to first byte not part of Stack
         # Stack pattern
         MOV r3,#0xAA
Stack_write:  
         # *r0 = 0xAA 
         STRB r3,[r0]
         # r0++
         ADD r0,#1
         CMP r1,r0
         BNE Stack_write         
         MOV R15, R14
        
LLF_CLEAR_ALL_RAM:
			#;		read the start address 0x20000000
			MOV		r4, #0x20
			MOV		r5, #0x00
			MOV		r6, #0x00
			MOV		r7, #0x00
			MOV		r8,  #0x18
			MOV		r9,  #0x10
			MOV		r10, #0x08
			LSL		r4,r4,r8
			LSL		r5,r5,r9
			LSL		r6,r6,r10
			#
			#;		ram start
			MOV		r11, #0x00
			#;		ram end
			MOV		r12, #0x00
			#;		build ram start variable
			ADD		r11,r11,r4
			ADD		r11,r11,r5
			ADD		r11,r11,r6
			ADD		r11,r11,r7
			#;		read the end address 0x2002EDFF
			MOV		r4, #0x20
			MOV		r5, #0x02
			MOV		r6, #0xED
			MOV		r7, #0xFF
			MOV		r8,  #0x18
			MOV		r9,  #0x10
			MOV		r10, #0x08
			LSL		r4,r4,r8
			LSL		r5,r5,r9
			LSL		r6,r6,r10
			#;		build ram end variable
			ADD		r12,r12,r4
			ADD		r12,r12,r5
			ADD		r12,r12,r6
			ADD		r12,r12,r7
			#;		loop from ram start to ram end and clear (0x00) the RAM
			#;for(addr	= ram_start, addr < ram_end, addr++)
			#;{
			#;		*addr = 0x00;
			#;}
			#;		if the ram end reached
			#;		input: ram_start: r11, ram_end: r12,
			#;		addr: r0
			#;		value: r1
			#;		addr = ram_start;
			MOV		r0,r11
			#; r12 points to last element -> due to BEQ usage the r12 shall point to first not included element
			ADD		r12,r12,#1
Loop_start:
			CMP		r0,r12
			#;		addr < ram_end
			BEQ		Loop_end
			#
			#;loop	body-start...
			#;		*addr=0x00
			MOV		r1,#1
			#;		*addr=0x00
			STRB		r1,[r0]
			#;loop	body-end
			#
			#;		addr++
			ADD		r0,r0,#1
			#
			B		Loop_start
Loop_end:
         MOV R15, R14
        
        