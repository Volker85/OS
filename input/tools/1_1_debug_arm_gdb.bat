REM 29-Jan-2018 Volker Jordis
REM
REM
REM
REM change the working dir
SET WRK_DIR="D:\Programm\GNU Tools ARM Embedded\4.9 2015q1\bin"
SET SRC_DIR="E:\NeuOrga\Programmieren\c_cpp\github_os\output\VERSION_ARM"
cd /D %WRK_DIR%
%WRK_DIR%\arm-none-eabi-gdb.exe %SRC_DIR%\operating_system.elf
pause