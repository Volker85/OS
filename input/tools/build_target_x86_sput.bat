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
   rmdir /S /Q %OUTPUT_DIR%\os_test\ppc_x86
   rmdir /S /Q %OUTPUT_DIR%\os_test\obj_x86
   rmdir /S /Q %OUTPUT_DIR%\TEST_X86
) ELSE (
   echo ""
)

REM
echo "create folders x86"
mkdir %OUTPUT_DIR%\os_test\ppc_x86
mkdir %OUTPUT_DIR%\os_test\obj_x86
mkdir %OUTPUT_DIR%\TEST_X86
REM
echo "Target_x86" > %OUTPUT_DIR%\TEST_X86\Build_x86_test.log
echo %DATE% %TIME% >> %OUTPUT_DIR%\TEST_X86\Build_x86_test.log
REM
echo "preprocess it" >> %OUTPUT_DIR%\TEST_X86\Build_X86.log
mingw32-gcc -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_test\example.c			     -o %OUTPUT_DIR%\os_test\ppc_x86\example.ppc	                >>%OUTPUT_DIR%\TEST_X86\Build_X86.log 2>&1
REM
echo "create assembly listings" >> %OUTPUT_DIR%\TEST_X86\Build_X86.log
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-adhls  -march=i386 -g3 -O0 -std=c90 -c %SRC_DIR%\os_test\example.c			     >> %OUTPUT_DIR%\os_test\ppc_x86\example.lst	                2>&1
REM
echo "compile it" >> %OUTPUT_DIR%\TEST_X86\Build_X86.log
mingw32-gcc -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_test\example.c 					-o %OUTPUT_DIR%\os_test\obj_x86\example.o>>%OUTPUT_DIR%\TEST_X86\Build_x86_test.log 2>&1
REM
echo "assemble it" >> %OUTPUT_DIR%\TEST_X86\Build_X86.log
mingw32-gcc -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -std=c90 -c %SRC_DIR%\os_test\example.c 					-o %OUTPUT_DIR%\os_test\obj_x86\example.s>>%OUTPUT_DIR%\TEST_X86\Build_x86_test.log 2>&1
echo "link it" >> %OUTPUT_DIR%\TEST_X86\Build_X86.log
REM %OUTPUT_DIR%\os_test\obj_x86\os_exception_table.o not linked for x86
mingw32-g++.exe -march=i386 -g3 -static -Xlinker -Map=%OUTPUT_DIR%\TEST_X86\operating_system_exe.map -O0  %OUTPUT_DIR%\os_test\obj_x86\example.o -o %OUTPUT_DIR%\TEST_X86\operating_system_test.exe  >> %OUTPUT_DIR%\TEST_X86\Build_x86_test.log 2>&1	
@ENDLOCAL
pause