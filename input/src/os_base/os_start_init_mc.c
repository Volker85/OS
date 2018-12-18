#include "os_firstinc.h"

void OS_INIT_MC(void)
{
   /* the basic MCU init needs to be done at the very start before C-Code is called...-> moved out of os_start_init_mc.c */


   /* 2. all MCU IO*/
   /* configure  SPI, GPIO, UART, CAN,  etc */
   /*TODO "TODO low prio" */

   /* test SPI, I2C,  GPIO, etc */
   /*TODO "TODO low prio" */



}
