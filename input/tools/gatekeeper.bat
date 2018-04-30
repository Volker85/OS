@SETLOCAL
REM 1. compile all c files in folder
REM 2. execute linker file 
REM
REM change the working dir
SET WRK_DIR=D:\Programm\MinGW\bin
cd /D %WRK_DIR%
REM
set PATH=%PATH%;D:\Programm\MinGW\bin
SET BASE_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os\input\tools
SET SRC_DIR=%BASE_DIR%\gatekeeper
SET OUTPUT_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os\output\gatekeeper\VERSION_X86
SET LIB_DIR=D:\Programm\MinGW\lib
REM
echo "clear existing log x86"
IF EXIST %OUTPUT_DIR% (
   rmdir /S /Q %OUTPUT_DIR%
) ELSE (
   echo ""
)

REM
echo "create folders x86"
mkdir %OUTPUT_DIR%
REM
echo "Target_x86" > %OUTPUT_DIR%\Build_x86.log
echo %DATE% %TIME% >> %OUTPUT_DIR%\Build_x86.log
REM
echo "preprocess it" >> %OUTPUT_DIR%\Build_X86.log
mingw32-g++ -D CFG_PROCESSOR=3 -E -march=i386 -g3 -O0 -c %SRC_DIR%\gatekeeper.cpp				     -o %OUTPUT_DIR%\os_base\ppc_x86\gatekeeper.ppc                     >>%OUTPUT_DIR%\Build_X86.log 2>&1
REM
echo "create assembly listings" >> %OUTPUT_DIR%\Build_X86.log
mingw32-g++ -D CFG_PROCESSOR=3 -Wa,-adhls -march=i386 -g3 -O0 -c %SRC_DIR%\gatekeeper.cpp				     >> %OUTPUT_DIR%\os_base\ppc_x86\gatekeeper.lst                     2>&1
REM
echo "compile it" >> %OUTPUT_DIR%\Build_X86.log
mingw32-g++ -D CFG_PROCESSOR=3 -march=i386 -g3 -Wall -Wextra -pedantic -O0 -c %SRC_DIR%\gatekeeper.cpp 					-o %OUTPUT_DIR%\os_base\obj_x86\gatekeeper.o	>>%OUTPUT_DIR%\Build_x86.log 2>&1

REM
echo "assemble it" >> %OUTPUT_DIR%\Build_X86.log
mingw32-g++ -D CFG_PROCESSOR=3 -Wa,-ahlms -S -march=i386 -g3 -Wall -Wextra -pedantic -O0 -c %SRC_DIR%\gatekeeper.cpp 					-o %OUTPUT_DIR%\os_base\obj_x86\gatekeeper.s	>>%OUTPUT_DIR%\Build_x86.log 2>&1

echo "link it" >> %OUTPUT_DIR%\Build_X86.log
mingw32-g++.exe -march=i386 -g3 -static -Xlinker -Map=%OUTPUT_DIR%\gatekeeper.map -O0  %OUTPUT_DIR%\gatekeeper.o -o %OUTPUT_DIR%\gatekeeper.exe  >> %OUTPUT_DIR%\Build_x86.log 2>&1	
@ENDLOCAL