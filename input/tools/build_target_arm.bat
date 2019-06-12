@SETLOCAL
REM 1. compile all c files in folder
REM 2. execute linker file 
REM
REM change the working dir
SET WRK_DIR="D:\Programm\GNU Tools ARM Embedded\7 2018-q2-update\bin"
cd /D %WRK_DIR%
REM
set PATH=%PATH%;"D:\Programm\GNU Tools ARM Embedded\7 2018-q2-update\bin"
SET BASE_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os
SET INPUT_DIR=%BASE_DIR%\input
SET OUTPUT_DIR=%BASE_DIR%\output
SET SRC_DIR=%INPUT_DIR%\src
SET TOOLS_DIR=%INPUT_DIR%\tools
SET LIB_DIR=D:\Programm\MinGW\lib
REM
echo "clear existing log ARM"
IF EXIST %OUTPUT_DIR% (
   rmdir /S /Q %OUTPUT_DIR%\os_base\ppc_arm
   rmdir /S /Q %OUTPUT_DIR%\os_base\obj_arm
   rmdir /S /Q %OUTPUT_DIR%\os_drivers\ppc_arm
   rmdir /S /Q %OUTPUT_DIR%\os_drivers\obj_arm
   rmdir /S /Q %OUTPUT_DIR%\os_sim\ppc_arm
   rmdir /S /Q %OUTPUT_DIR%\os_sim\obj_arm
   rmdir /S /Q %OUTPUT_DIR%\os_user_code\ppc_arm
   rmdir /S /Q %OUTPUT_DIR%\os_user_code\obj_arm   
   rmdir /S /Q %OUTPUT_DIR%\VERSION_arm
) ELSE (
   echo ""
)
REM
echo "create folders ARM"
mkdir %OUTPUT_DIR%\os_base\ppc_arm
mkdir %OUTPUT_DIR%\os_base\obj_arm
mkdir %OUTPUT_DIR%\os_drivers\ppc_arm
mkdir %OUTPUT_DIR%\os_drivers\obj_arm
mkdir %OUTPUT_DIR%\os_sim\ppc_arm
mkdir %OUTPUT_DIR%\os_sim\obj_arm
mkdir %OUTPUT_DIR%\os_user_code\ppc_arm
mkdir %OUTPUT_DIR%\os_user_code\obj_arm
mkdir %OUTPUT_DIR%\VERSION_ARM
REM
echo "Target_ARM" > %OUTPUT_DIR%\VERSION_ARM\Build_ARM.log
echo %DATE% %TIME% >> %OUTPUT_DIR%\VERSION_ARM\Build_ARM.log
REM
echo "preprocess it" >> %OUTPUT_DIR%\VERSION_ARM\Build_ARM.log
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_common.c				-o %OUTPUT_DIR%\os_base\ppc_arm\os_common.ppc      >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=gnu90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_exception.c			-o %OUTPUT_DIR%\os_base\ppc_arm\os_exception.ppc       >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_exception_isr_handler.c	-o %OUTPUT_DIR%\os_base\ppc_arm\os_exception_isr_handler.ppc >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_exception_table.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_exception_table.ppc       >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_init_task_system.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_init_task_system.ppc      >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_main.c					-o %OUTPUT_DIR%\os_base\ppc_arm\os_main.ppc                  >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1	
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_memory_mmu_setup.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_memory_mmu_setup.ppc      >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_shutdown.c				-o %OUTPUT_DIR%\os_base\ppc_arm\os_shutdown.ppc              >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_ext_prg.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_start_ext_prg.ppc             >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_init_hw.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_start_init_hw.ppc             >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_init_mc.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_start_init_mc.ppc             >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_init_sw.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_start_init_sw.ppc             >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_os.c				-o %OUTPUT_DIR%\os_base\ppc_arm\os_start_os.ppc              >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_task_common.c			-o %OUTPUT_DIR%\os_base\ppc_arm\os_task_common.ppc           >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_task_queue.c			-o %OUTPUT_DIR%\os_base\ppc_arm\os_task_queue.ppc            >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_task_scheduler.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_task_scheduler.ppc        >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_ram.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_ram.ppc                               >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_shared_ram.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_shared_ram.ppc                               >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_const.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_const.ppc                               >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_stack.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_stack.ppc                             >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_heap.c		-o %OUTPUT_DIR%\os_base\ppc_arm\os_heap.ppc                             >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -E -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_user_code\led.c			-o %OUTPUT_DIR%\os_user_code\ppc_arm\led.ppc                             >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1


REM
echo "create assembly listings" >> %OUTPUT_DIR%\VERSION_ARM\Build_ARM.log
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_common.c			     >> %OUTPUT_DIR%\os_base\ppc_arm\os_common.lst	                2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=gnu90 -c %SRC_DIR%\os_base\os_exception.c			     >> %OUTPUT_DIR%\os_base\ppc_arm\os_exception.lst	            2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_exception_isr_handler.c	 >> %OUTPUT_DIR%\os_base\ppc_arm\os_exception_isr_handler.lst	2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_exception_table.c		 >> %OUTPUT_DIR%\os_base\ppc_arm\os_exception_table.lst	        2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_init_task_system.c		 >> %OUTPUT_DIR%\os_base\ppc_arm\os_init_task_system.lst      	2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_main.c		             >> %OUTPUT_DIR%\os_base\ppc_arm\os_main.lst                    2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_memory_mmu_setup.c		 >> %OUTPUT_DIR%\os_base\ppc_arm\os_memory_mmu_setup.lst	    2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_shutdown.c				 >> %OUTPUT_DIR%\os_base\ppc_arm\os_shutdown.lst                2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_start_ext_prg.c			 >> %OUTPUT_DIR%\os_base\ppc_arm\os_start_ext_prg.lst           2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_start_init_hw.c			 >> %OUTPUT_DIR%\os_base\ppc_arm\os_start_init_hw.lst           2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_start_init_mc.c			 >> %OUTPUT_DIR%\os_base\ppc_arm\os_start_init_mc.lst           2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_start_init_sw.c			 >> %OUTPUT_DIR%\os_base\ppc_arm\os_start_init_sw.lst           2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_start_os.c				 >> %OUTPUT_DIR%\os_base\ppc_arm\os_start_os.lst                2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_task_common.c			 >> %OUTPUT_DIR%\os_base\ppc_arm\os_task_common.lst             2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_task_queue.c			 >> %OUTPUT_DIR%\os_base\ppc_arm\os_task_queue.lst              2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_task_scheduler.c		 >> %OUTPUT_DIR%\os_base\ppc_arm\os_task_scheduler.lst	        2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_ram.c				     >> %OUTPUT_DIR%\os_base\ppc_arm\os_ram.lst                     2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_shared_ram.c		     >> %OUTPUT_DIR%\os_base\ppc_arm\os_shared_ram.lst                     2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_const.c				     >> %OUTPUT_DIR%\os_base\ppc_arm\os_const.lst                     2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_stack.c				     >> %OUTPUT_DIR%\os_base\ppc_arm\os_stack.lst                   2>&1		
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_base\os_heap.c				     >> %OUTPUT_DIR%\os_base\ppc_arm\os_heap.lst                   2>&1		
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-adhls  -mcpu=cortex-m4 -mthumb -g3 -O3 -std=c90 -c %SRC_DIR%\os_user_code\led.c			     >> %OUTPUT_DIR%\os_user_code\ppc_arm\led.lst                  2>&1
REM
echo "compile it" >> %OUTPUT_DIR%\VERSION_ARM\Build_ARM.log
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_common.c 					-o %OUTPUT_DIR%\os_base\obj_arm\os_common.o			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=gnu90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_exception.c 					-o %OUTPUT_DIR%\os_base\obj_arm\os_exception.o 		>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_exception_isr_handler.c		-o %OUTPUT_DIR%\os_base\obj_arm\os_exception_isr_handler.o		>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_exception_table.c	 		-o %OUTPUT_DIR%\os_base\obj_arm\os_exception_table.o 	>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_init_task_system.c	 		-o %OUTPUT_DIR%\os_base\obj_arm\os_init_task_system.o	>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_main.c			 			-o %OUTPUT_DIR%\os_base\obj_arm\os_main.o				>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_memory_mmu_setup.c	 		-o %OUTPUT_DIR%\os_base\obj_arm\os_memory_mmu_setup.o 	>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_shutdown.c					-o %OUTPUT_DIR%\os_base\obj_arm\os_shutdown.o			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_ext_prg.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_start_ext_prg.o		>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_init_hw.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_start_init_hw.o		>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_init_mc.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_start_init_mc.o		>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_init_sw.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_start_init_sw.o		>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_os.c					-o %OUTPUT_DIR%\os_base\obj_arm\os_start_os.o			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_task_common.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_task_common.o		>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_task_queue.c					-o %OUTPUT_DIR%\os_base\obj_arm\os_task_queue.o		>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_task_scheduler.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_task_scheduler.o	>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_ram.c					    -o %OUTPUT_DIR%\os_base\obj_arm\os_ram.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_shared_ram.c					    -o %OUTPUT_DIR%\os_base\obj_arm\os_shared_ram.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_const.c					    -o %OUTPUT_DIR%\os_base\obj_arm\os_const.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_stack.c					    -o %OUTPUT_DIR%\os_base\obj_arm\os_stack.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_heap.c					    -o %OUTPUT_DIR%\os_base\obj_arm\os_heap.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-as                     -mcpu=cortex-m4 -mthumb                       -c  -ggdb              %SRC_DIR%\os_base\os_exception_reset.s			-o %OUTPUT_DIR%\os_drivers\obj_arm\os_exception_reset.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-as                     -mcpu=cortex-m4 -mthumb                       -c  -ggdb              %SRC_DIR%\os_drivers\lld_global.s			-o %OUTPUT_DIR%\os_drivers\obj_arm\lld_global.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-as                     -mcpu=cortex-m4 -mthumb                       -c  -ggdb              %SRC_DIR%\os_drivers\lld_interrupt.s			-o %OUTPUT_DIR%\os_drivers\obj_arm\lld_interrupt.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-as                     -mcpu=cortex-m4 -mthumb                       -c  -ggdb             %SRC_DIR%\os_drivers\lld_mmu.s			-o %OUTPUT_DIR%\os_drivers\obj_arm\lld_mmu.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-as                     -mcpu=cortex-m4 -mthumb                       -c  -ggdb             %SRC_DIR%\os_drivers\lld_power.s			-o %OUTPUT_DIR%\os_drivers\obj_arm\lld_power.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-as                     -mcpu=cortex-m4 -mthumb                       -c  -ggdb             %SRC_DIR%\os_drivers\lld_ram.s			-o %OUTPUT_DIR%\os_drivers\obj_arm\lld_ram.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-as                     -mcpu=cortex-m4 -mthumb                       -c  -ggdb             %SRC_DIR%\os_drivers\lld_timer.s			-o %OUTPUT_DIR%\os_drivers\obj_arm\lld_timer.o   			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -g3 -ggdb  -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_user_code\led.c					-o %OUTPUT_DIR%\os_user_code\obj_arm\led.o			>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1

REM
echo "assemble it" >> %OUTPUT_DIR%\VERSION_ARM\Build_ARM.log
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_common.c 					-o %OUTPUT_DIR%\os_base\obj_arm\os_common.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_exception.c 				-o %OUTPUT_DIR%\os_base\obj_arm\os_exception.s	>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_exception_isr_handler.c	-o %OUTPUT_DIR%\os_base\obj_arm\os_exception_isr_handler.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_exception_table.c	 		-o %OUTPUT_DIR%\os_base\obj_arm\os_exception_table.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_init_task_system.c	 	-o %OUTPUT_DIR%\os_base\obj_arm\os_init_task_system.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_main.c			 		-o %OUTPUT_DIR%\os_base\obj_arm\os_main.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_memory_mmu_setup.c	 	-o %OUTPUT_DIR%\os_base\obj_arm\os_memory_mmu_setup.s	>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_shutdown.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_shutdown.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_ext_prg.c			-o %OUTPUT_DIR%\os_base\obj_arm\os_start_ext_prg.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_init_hw.c			-o %OUTPUT_DIR%\os_base\obj_arm\os_start_init_hw.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_init_mc.c			-o %OUTPUT_DIR%\os_base\obj_arm\os_start_init_mc.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_init_sw.c			-o %OUTPUT_DIR%\os_base\obj_arm\os_start_init_sw.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_start_os.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_start_os.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_task_common.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_task_common.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_task_queue.c				-o %OUTPUT_DIR%\os_base\obj_arm\os_task_queue.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-acdhlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -fverbose-asm -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_task_scheduler.c			-o %OUTPUT_DIR%\os_base\obj_arm\os_task_scheduler.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1

arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_ram.c          			-o %OUTPUT_DIR%\os_base\obj_arm\os_ram.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_shared_ram.c          			-o %OUTPUT_DIR%\os_base\obj_arm\os_shared_ram.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_const.c          			-o %OUTPUT_DIR%\os_base\obj_arm\os_const.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_stack.c          			-o %OUTPUT_DIR%\os_base\obj_arm\os_stack.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_base\os_heap.c          			-o %OUTPUT_DIR%\os_base\obj_arm\os_heap.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -Wa,-achlns -S -mcpu=cortex-m4 -mthumb -g3 -Wall -Wextra -Wpedantic -O3 -std=c90 -c -DSTM32F407VG %SRC_DIR%\os_user_code\led.c			-o %OUTPUT_DIR%\os_user_code\obj_arm\led.s>>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1
REM
echo "link it" >> %OUTPUT_DIR%\VERSION_ARM\Build_ARM.log
arm-none-eabi-gcc -D CFG_PROCESSOR=4 -mcpu=cortex-m4 -mthumb -nostartfiles -g3 -Wl,-g -Wl,-Map=%OUTPUT_DIR%\VERSION_ARM\operating_system_elf.map -O3 -Wl,--no-gc-sections  -Wl,-T %TOOLS_DIR%\link_arm.lnk -L%OUTPUT_DIR%\os_base\obj_arm -L%OUTPUT_DIR%\os_drivers\obj_arm -L%OUTPUT_DIR%\os_user_code\obj_arm -o %OUTPUT_DIR%\VERSION_ARM\operating_system.elf  >>%OUTPUT_DIR%\VERSION_ARM\Build_ARM.log 2>&1	
IF EXIST %OUTPUT_DIR%\VERSION_ARM\operating_system.elf (
   arm-none-eabi-objcopy.exe -O binary --only-section=.text %OUTPUT_DIR%\VERSION_ARM\operating_system.elf %OUTPUT_DIR%\VERSION_ARM\operating_system.bin
)
@ENDLOCAL