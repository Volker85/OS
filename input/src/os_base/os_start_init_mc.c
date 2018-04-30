#include "os_firstinc.h"

void OS_INIT_MC(void)
{
   /* the basic MCU init needs to be done at the very start before C-Code is called...-> moved out of os_start_init_mc.c */
   /* 1. all basic internal MCU parts */
   /* exception handler */  
   /* -> this is done via linking the exception_table.o to the correct place in FLASH */
   
   /* disable cache */
   /* -> cache of instruction or data not available in STM32F407VGT6 */

   /* reset all general purpose registers: r0..r31,... */
   LLF_CLEAR_ALL_GP_REGISTERS();

   /* reset all RAM */
   LLF_CLEAR_ALL_RAM();

   /* perform initial RAM check */
   LLF_PERFORM_RAM_CHECK();

   /* 2. all MCU IO*/
   /* configure  SPI, GPIO, UART, CAN,  etc */
   /*TODO*/
      
   /* test SPI, I2C,  GPIO, etc */
   /*TODO*/
   
   /* 3. setup mpu */
   /*TODO*/
   
   /* 4. set the new PLL clock freq */
   /*TODO*/

   /* 5. enable the cache */
   /* -> cache of instruction or data not available in STM32F407VGT6 */
   
   /* 6. enable interrupts */
   LLF_INT_ENABLE();
}
