@SETLOCAL
REM 1. compile all c files in folder
REM 2. execute linker file 
REM
REM change the working dir
SET WRK_DIR=D:\Programm\MinGW\bin
cd /D %WRK_DIR%
REM
set PATH=%PATH%;D:\Programm\MinGW\bin
SET BASE_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os
SET INPUT_DIR=%BASE_DIR%\input
SET OUTPUT_DIR=%BASE_DIR%\output
SET SRC_DIR=%INPUT_DIR%\src
SET TOOLS_DIR=%INPUT_DIR%\tools
SET LIB_DIR=D:\Programm\MinGW\lib
REM
echo "clear existing log x86"
IF EXIST %OUTPUT_DIR% (
   rmdir /S /Q %OUTPUT_DIR%\os_base\ppc_x86
   rmdir /S /Q %OUTPUT_DIR%\os_base\obj_x86
   rmdir /S /Q %OUTPUT_DIR%\os_sim\ppc_x86
   rmdir /S /Q %OUTPUT_DIR%\os_sim\obj_x86
) ELSE (
   echo ""
)

REM
echo "create folders x86"
mkdir %OUTPUT_DIR%\os_base\ppc_x86
mkdir %OUTPUT_DIR%\os_base\obj_x86
mkdir %OUTPUT_DIR%\os_sim\ppc_x86
mkdir %OUTPUT_DIR%\os_sim\obj_x86
REM
echo "Target_x86" > %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log
echo %DATE% %TIME% >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log
REM
echo "preprocess it" >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_common_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_common_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_const_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_const_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_isr_handler_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_exception_isr_handler_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_table_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_exception_table_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_exception_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_heap_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_heap_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_init_task_system_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_init_task_system_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_main_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_main_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_memory_mmu_setup_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_memory_mmu_setup_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_shared_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_ram_shared_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_stack_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_ram_stack_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_ram_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_shutdown_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_shutdown_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_stack_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_stack_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_ext_prg_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_start_ext_prg_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_hw_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_start_init_hw_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_mc_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_start_init_mc_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_sw_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_start_init_sw_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_os_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_start_os_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_common_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_task_common_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_queue_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_task_queue_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_scheduler_test.c -o %OUTPUT_DIR%\os_base\ppc_x86\os_task_scheduler_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_global_test.c -o %OUTPUT_DIR%\os_sim\ppc_x86\lld_global_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_interrupt_test.c -o %OUTPUT_DIR%\os_sim\ppc_x86\lld_interrupt_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_mmu_test.c -o %OUTPUT_DIR%\os_sim\ppc_x86\lld_mmu_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_power_test.c -o %OUTPUT_DIR%\os_sim\ppc_x86\lld_power_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_ram_test.c -o %OUTPUT_DIR%\os_sim\ppc_x86\lld_ram_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_timer_test.c -o %OUTPUT_DIR%\os_sim\ppc_x86\lld_timer_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\os_sim_main_test.c -o %OUTPUT_DIR%\os_sim\ppc_x86\os_sim_main_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_user_code\led_test.c -o %OUTPUT_DIR%\os_user_code\ppc_x86\led_test.ppc >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
REM
echo "create assembly listings" >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_common_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_common_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_const_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_const_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_isr_handler_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_exception_isr_handler_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_table_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_exception_table_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_exception_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_heap_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_heap_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_init_task_system_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_init_task_system_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_main_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_main_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_memory_mmu_setup_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_memory_mmu_setup_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_shared_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_ram_shared_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_stack_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_ram_stack_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_ram_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_shutdown_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_shutdown_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_stack_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_stack_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_ext_prg_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_start_ext_prg_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_hw_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_start_init_hw_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_mc_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_start_init_mc_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_sw_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_start_init_sw_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_os_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_start_os_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_common_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_task_common_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_queue_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_task_queue_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_scheduler_test.c >> %OUTPUT_DIR%\os_base\ppc_x86\os_task_scheduler_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_global_test.c >> %OUTPUT_DIR%\os_sim\ppc_x86\lld_global_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_interrupt_test.c >> %OUTPUT_DIR%\os_sim\ppc_x86\lld_interrupt_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_mmu_test.c >> %OUTPUT_DIR%\os_sim\ppc_x86\lld_mmu_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_power_test.c >> %OUTPUT_DIR%\os_sim\ppc_x86\lld_power_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_ram_test.c >> %OUTPUT_DIR%\os_sim\ppc_x86\lld_ram_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_timer_test.c >> %OUTPUT_DIR%\os_sim\ppc_x86\lld_timer_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_sim\os_sim_main_test.c >> %OUTPUT_DIR%\os_sim\ppc_x86\os_sim_main_test.lst 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_user_code\led_test.c >> %OUTPUT_DIR%\os_user_code\ppc_x86\led_test.lst 2>&1
REM
echo "compile it" >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_common_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_common_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_const_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_const_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_isr_handler_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_exception_isr_handler_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_table_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_exception_table_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_exception_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_heap_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_heap_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_init_task_system_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_init_task_system_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_main_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_main_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_memory_mmu_setup_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_memory_mmu_setup_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_shared_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_ram_shared_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_stack_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_ram_stack_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_ram_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_shutdown_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_shutdown_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_stack_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_stack_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_ext_prg_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_ext_prg_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_hw_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_init_hw_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_mc_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_init_mc_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_sw_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_init_sw_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_os_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_os_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_common_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_task_common_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_queue_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_task_queue_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_scheduler_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_task_scheduler_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_global_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_global_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_interrupt_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_interrupt_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_mmu_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_mmu_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_power_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_power_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_ram_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_ram_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_timer_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_timer_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\os_sim_main_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\os_sim_main_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_user_code\led_test.c -o %OUTPUT_DIR%\os_user_code\obj_x86\led_test.o>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
REM
echo "assemble it" >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_common_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_common_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_const_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_const_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_isr_handler_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_exception_isr_handler_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_table_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_exception_table_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_exception_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_exception_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_heap_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_heap_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_init_task_system_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_init_task_system_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_main_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_main_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_memory_mmu_setup_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_memory_mmu_setup_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_shared_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_ram_shared_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_stack_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_ram_stack_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_ram_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_ram_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_shutdown_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_shutdown_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_stack_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_stack_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_ext_prg_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_ext_prg_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_hw_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_init_hw_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_mc_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_init_mc_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_init_sw_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_init_sw_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_start_os_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_start_os_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_common_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_task_common_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_queue_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_task_queue_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_base\os_task_scheduler_test.c -o %OUTPUT_DIR%\os_base\obj_x86\os_task_scheduler_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_global_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_global_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_interrupt_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_interrupt_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_mmu_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_mmu_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_power_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_power_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_ram_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_ram_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\lld_timer_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\lld_timer_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_sim\os_sim_main_test.c -o %OUTPUT_DIR%\os_sim\obj_x86\os_sim_main_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_user_code\led_test.c -o %OUTPUT_DIR%\os_user_code\obj_x86\led_test.s>>%OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1
echo "link it" >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log
REM %OUTPUT_DIR%\os_base\obj_x86\os_exception_table.o not linked for x86
mingw32-g++.exe -march=i386 -g3 -static -Xlinker -Map=%OUTPUT_DIR%\VERSION_X86\operating_system_test_exe.map -O0  %OUTPUT_DIR%\os_base\obj_x86\os_common_test.o %OUTPUT_DIR%\os_base\obj_x86\os_exception_test.o %OUTPUT_DIR%\os_base\obj_x86\os_exception_isr_handler_test.o %OUTPUT_DIR%\os_base\obj_x86\os_init_task_system_test.o %OUTPUT_DIR%\os_base\obj_x86\os_main_test.o %OUTPUT_DIR%\os_base\obj_x86\os_memory_mmu_setup_test.o %OUTPUT_DIR%\os_base\obj_x86\os_shutdown_test.o %OUTPUT_DIR%\os_base\obj_x86\os_start_ext_prg_test.o %OUTPUT_DIR%\os_base\obj_x86\os_start_init_hw_test.o %OUTPUT_DIR%\os_base\obj_x86\os_start_init_mc_test.o %OUTPUT_DIR%\os_base\obj_x86\os_start_init_sw_test.o %OUTPUT_DIR%\os_base\obj_x86\os_start_os_test.o %OUTPUT_DIR%\os_base\obj_x86\os_task_common_test.o %OUTPUT_DIR%\os_base\obj_x86\os_task_queue_test.o %OUTPUT_DIR%\os_base\obj_x86\os_task_scheduler_test.o %OUTPUT_DIR%\os_sim\obj_x86\os_sim_main_test.o %OUTPUT_DIR%\os_base\obj_x86\os_ram_test.o %OUTPUT_DIR%\os_base\obj_x86\os_ram_stack_test.o %OUTPUT_DIR%\os_base\obj_x86\os_ram_shared_test.o %OUTPUT_DIR%\os_base\obj_x86\os_stack_test.o %OUTPUT_DIR%\os_base\obj_x86\os_heap_test.o %OUTPUT_DIR%\os_sim\obj_x86\lld_global_test.o %OUTPUT_DIR%\os_sim\obj_x86\lld_interrupt_test.o %OUTPUT_DIR%\os_sim\obj_x86\lld_mmu_test.o %OUTPUT_DIR%\os_sim\obj_x86\lld_ram_test.o %OUTPUT_DIR%\os_sim\obj_x86\lld_timer_test.o %OUTPUT_DIR%\os_sim\obj_x86\lld_power_test.o %OUTPUT_DIR%\os_user_code\obj_x86\led_test.o -o %OUTPUT_DIR%\VERSION_X86\operating_system_test.exe  >> %OUTPUT_DIR%\VERSION_X86\Build_x86_test.log 2>&1	
@ENDLOCAL
pause