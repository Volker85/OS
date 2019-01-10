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
SET VERSION_DIR=%OUTPUT_DIR%\VERSION_X86_TEST
SET OS_TEST_DIR=%OUTPUT_DIR%\os_test
REM
echo "clear existing log x86"
IF EXIST %VERSION_DIR% (
   rmdir /S /Q %VERSION_DIR%
) ELSE (
   echo ""
)
IF EXIST %OS_TEST_DIR% (
   rmdir /S /Q %OS_TEST_DIR%
) ELSE (
   echo ""
)
REM
echo "create folders x86"
mkdir %VERSION_DIR%
mkdir %OS_TEST_DIR%
mkdir %OS_TEST_DIR%\ppc_x86
mkdir %OS_TEST_DIR%\obj_x86


REM
echo "Target_x86" > %OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log
echo %DATE% %TIME% >> %OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log
REM
echo "preprocess it" >> %OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_test\mcu_start.c			     -o %OUTPUT_DIR%\os_test\ppc_x86\mcu_start.ppc	                >>%OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log 2>&1
REM
echo "create assembly listings" >> %OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_test\mcu_start.c			     >> %OUTPUT_DIR%\os_test\ppc_x86\mcu_start.lst	                2>&1
REM
echo "compile it" >> %OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_test\mcu_start.c 					-o %OUTPUT_DIR%\os_test\obj_x86\mcu_start.o>>%OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log 2>&1
REM
echo "assemble it" >> %OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_test\mcu_start.c 					-o %OUTPUT_DIR%\os_test\obj_x86\mcu_start.s>>%OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log 2>&1
echo "link it" >> %OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log
REM %OUTPUT_DIR%\os_test\obj_x86\os_exception_table.o not linked for x86
mingw32-g++.exe -march=i386 -g3 -static -Xlinker -Map=%OUTPUT_DIR%\VERSION_X86_TEST\operating_system_test_exe.map -O0  %OUTPUT_DIR%\os_test\obj_x86\mcu_start.o  -o %OUTPUT_DIR%\VERSION_X86_TEST\operating_system_test_exe.exe  >> %OUTPUT_DIR%\VERSION_X86_TEST\Build_test_x86.log 2>&1	
@ENDLOCAL
pause
pause