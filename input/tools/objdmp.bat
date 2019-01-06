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
call arm-none-eabi-objdump.exe -D %OUTPUT_DIR%\os_base\obj_arm\os_task_scheduler.o > %OUTPUT_DIR%\VERSION_ARM\os_task_scheduler.dump
pause