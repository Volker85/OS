REM 29-Jan-2018 Volker Jordis
REM Remark: OpenOCD does not work with USB3 ports!!
REM
REM
REM
REM change the working dir
SET OPENOCD_DIR=E:/NeuOrga/Programmieren/c_cpp/github_os/input/tools/misc/openocd-0.10.0
SET WRK_DIR="D:\Programm\GNU Tools ARM Embedded\4.9 2015q1\bin"
SET SRC_DIR="E:\NeuOrga\Programmieren\c_cpp\github_os\output\VERSION_ARM"

cd /D %OPENOCD_DIR%
%OPENOCD_DIR%\bin-x64\openocd.exe -f %OPENOCD_DIR%/scripts/board/stm32f4discovery.cfg -c gdb_port 3333 -c telnet_port 3334 -c init -c reset init
REM netstat -an
pause