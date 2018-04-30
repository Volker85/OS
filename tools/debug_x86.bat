REM change the working dir
SET WRK_DIR="D:\Programm\MinGW\bin"
SET OUT_DIR="E:\NeuOrga\Programmieren\c_cpp\git_repro__os\output\VERSION_X86"
SET SRC_DIR="E:\NeuOrga\Programmieren\c_cpp\git_repro__os\input\src"
cd /D %WRK_DIR%
%WRK_DIR%\gdb.exe -nx -fullname -quiet -args --directory=%SRC_DIR% --se=%OUT_DIR%\operating_system.exe 

REM
REM with "step" in the gdb windows, you can step through the program
REM
pause