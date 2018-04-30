REM determine section sizes of ARM target
REM
REM change the working dir
cd /D "D:\Programm\GNU Tools ARM Embedded\4.9 2015q1\bin"
REM
SET WORK_DIR="E:\NeuOrga\Programmieren\c_cpp\git_repro__os\output"
REM 
arm-none-eabi-size.exe %WORK_DIR%\VERSION_ARM\operating_system.elf > %WORK_DIR%\VERSION_ARM\Build_ARM_size.log 2>&1
REM
REM change the working dir
cd /D "D:\Programm\MinGW\bin"
REM
size.exe %WORK_DIR%\VERSION_X86\operating_system.exe > %WORK_DIR%\VERSION_X86\Build_x86_size.log 2>&1
