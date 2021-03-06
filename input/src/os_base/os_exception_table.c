#include "os_firstinc.h"
#include "os_exception_isr_handler.h"
#pragma GCC diagnostic ignored "-Wpedantic"
#pragma GCC diagnostic ignored "-Wpointer-arith"
/*
isr_vec_table concept seems to be usable for ARM and PowerPC MCUs
(perhaps different tables needed)
needs to be linked by default to adresse 0x0 -> linker command file needed
*/
/*
2.1.2. Stacks

The processor uses a full descending stack.
 This means the stack pointer holds the address
 of the last stacked item in memory.
 When the processor pushes a new item onto the stack,
 it decrements the stack pointer and then writes the
 item to the new memory location.
 The processor implements two stacks,
 the main stack and the process stack,
 with a pointer for each held in independent registers,
 see Stack Pointer.
*/

/* the amount of IRQn entries is implementation specific for STM32F4 = 240 */

func_ptr_t isr_vec_table[] =
{
   (func_ptr_t)((uint8*)&OS_MAIN_STACK+OS_MAIN_STACK_SIZE-1u),   /* 0x0000 initial StackPointer value */
   &OS_EXCEPTION_RESET+1u,			   /* 0x0004 Reset                      */
   &OS_EXCEPTION_NMI+1u,		      /* 0x0008 Non Maskable Interrupt     */
   &OS_EXCEPTION_HARDFAULT+1u,      /* 0x000C Hardfault                  */
   &OS_EXCEPTION_MEM_MANAG_FAULT+1u,/* 0x0010 Memory management fault    */
   &OS_EXCEPTION_BUS_FAULT+1u,      /* 0x0014 Bus fault                  */
   &OS_EXCEPTION_USAGE_FAULT+1u,    /* 0x0018 usage fault                */
   0u,                            /* 0x001C reservered                 */
   0u,                            /* 0x0020 reservered                 */
   0u,                            /* 0x0024 reservered                 */
   0u,                            /* 0x0028 reservered                 */
   &OS_EXCEPTION_SVC+1u,          /* 0x002C Supervisor Call            */
   0u,/*&OS_EXCEPTION_DEBUG+1u,*/ /* 0x0030 reserved for debug         *//* not used in STM32F4 according to spec en.DM00046982.pdf page 37*/
   0u,                            /* 0x0034 reserved                   */
   &OS_EXCEPTION_PEND_SV+1u,        /* 0x0038 PendSV                     */
   &OS_EXCEPTION_SYSTICK+1u,      /* 0x003C Systick                    */
   &OS_EXCEPTION_IRQ+1u,          /* 0x0040 IRQ0                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ1                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ2                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ3                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ4                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ5                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ6                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ7                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ8                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ9                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ10                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ11                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ12                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ13                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ14                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ15                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ16                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ17                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ18                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ19                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ20                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ21                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ22                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ23                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ24                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ25                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ26                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ27                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ28                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ29                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ30                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ31                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ32                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ33                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ34                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ35                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ36                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ37                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ38                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ39                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ40                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ41                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ42                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ43                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ44                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ45                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ46                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ47                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ48                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ49                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ50                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ51                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ52                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ53                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ54                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ55                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ56                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ57                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ58                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ59                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ60                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ61                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ62                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ63                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ64                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ65                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ66                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ67                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ68                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ69                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ70                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ71                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ72                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ73                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ74                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ75                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ76                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ77                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ78                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ79                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ80                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ81                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ82                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ83                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ84                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ85                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ86                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ87                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ88                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ89                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ90                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ91                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ92                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ93                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ94                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ95                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ96                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ97                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ98                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ99                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ100                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ101                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ102                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ103                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ104                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ105                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ106                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ107                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ108                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ109                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ110                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ111                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ112                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ113                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ114                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ115                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ116                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ117                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ118                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ119                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ120                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ121                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ122                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ123                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ124                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ125                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ126                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ127                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ128                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ129                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ130                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ131                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ132                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ133                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ134                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ135                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ136                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ137                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ138                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ139                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ140                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ141                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ142                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ143                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ144                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ145                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ146                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ147                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ148                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ149                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ150                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ151                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ152                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ153                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ154                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ155                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ156                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ157                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ158                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ159                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ160                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ161                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ162                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ163                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ164                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ165                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ166                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ167                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ168                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ169                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ170                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ171                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ172                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ173                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ174                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ175                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ176                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ177                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ178                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ179                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ180                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ181                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ182                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ183                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ184                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ185                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ186                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ187                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ188                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ189                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ190                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ191                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ192                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ193                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ194                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ195                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ196                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ197                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ198                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ199                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ200                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ201                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ202                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ203                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ204                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ205                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ206                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ207                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ208                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ209                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ210                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ211                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ212                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ213                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ214                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ215                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ216                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ217                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ218                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ219                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ220                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ221                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ222                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ223                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ224                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ225                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ226                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ227                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ228                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ229                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ230                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ231                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ232                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ233                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ234                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ235                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ236                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ237                       */
   &OS_EXCEPTION_IRQ+1u,          /*        IRQ238                       */
   &OS_EXCEPTION_IRQ+1u           /*        IRQ239                       */
};
