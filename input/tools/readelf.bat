@SETLOCAL
REM 1. compile all c files in folder
REM 2. execute linker file 
REM
REM change the working dir
SET WRK_DIR="D:\Programm\GNU Tools ARM Embedded\4.9 2015q1\bin"
cd /D %WRK_DIR%
REM
set PATH=%PATH%;"D:\Programm\GNU Tools ARM Embedded\4.9 2015q1\bin"
SET BASE_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os
SET INPUT_DIR=%BASE_DIR%\input
SET OUTPUT_DIR=%BASE_DIR%\output
SET SRC_DIR=%INPUT_DIR%\src
SET TOOLS_DIR=%INPUT_DIR%\tools
SET LIB_DIR=D:\Programm\MinGW\lib
call arm-none-eabi-readelf.exe -a %OUTPUT_DIR%\VERSION_ARM\operating_system.elf
pause