REM 29-Jan-2018 Volker Jordis
REM Remark: OpenOCD does not work with USB3 ports!!
REM
REM
REM
REM change the working dir
SET OPENOCD_DIR="E:\NeuOrga\Programmieren\c_cpp\git_repro__os\input\tools\misc\openocd-0.10.0"
SET WRK_DIR="D:\Programm\GNU Tools ARM Embedded\4.9 2015q1\bin"
SET SRC_DIR="E:\NeuOrga\Programmieren\c_cpp\git_repro__os\output\VERSION_ARM"
cd /D %WRK_DIR%
REM C:\Users\matik\AppData\Local\VisualGDB\EmbeddedDebugPackages\com.sysprogs.arm.openocd\bin\openocd.exe -f interface/stlink-v2-1.cfg -f target/stm32l4x.cfg -c init -c “reset init” -c “gdb_port 49624” -c “telnet_port 49623” 
%OPENOCD_DIR%\bin-x64\openocd.exe -f %OPENOCD_DIR%\scripts\board\stm32f4discovery.cfg -f %OPENOCD_DIR%\scripts\target\stm32f4x.cfg -c init -c “reset init” -c “gdb_port 49624” -c “telnet_port 49623” 
%WRK_DIR%\arm-none-eabi-gdb.exe %SRC_DIR%\operating_system.elf

REM %OPENOCD_DIR%\scripts\board\stm32f4discovery.cfg
%OPENOCD_DIR%\bin-x64\openocd.exe -f stm32f4discovery.cfg
pause