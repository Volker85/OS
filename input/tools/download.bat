REM download file
SET WORK_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os
SET DOWNLOAD_DIR=D:\Programm\CoIDE\bin
SET EXE_DIR=%WORK_DIR%\output\VERSION_ARM
SET EXE_NAME=operating_system.elf
SET FLASH_DRIVER_DIR=D:/Programm/CoIDE/flash
SET DOWNLOAD_LOG_DIR=%EXE_DIR%
REM
REM clear current log file
echo "Download the file:%EXE_NAME%" > %DOWNLOAD_LOG_DIR%\Download.log
REM
cd /D %DOWNLOAD_DIR%
REM start coflash program STM32F407VG %EXE_DIR%\%EXE_NAME% --adapter-name=ST-Link --port=SWD --adapter-clk=1000000 --erase=affected --reset=SYSRESETREQ --driver=%FLASH_DRIVER_DIR%\STM32F4xx_1024.elf>>%DOWNLOAD_LOG_DIR%\Download.log 2>&1
echo "Download_Start">>%DOWNLOAD_LOG_DIR%\Download.log 2>&1
date /t >>%DOWNLOAD_LOG_DIR%\Download.log 2>&1
time /t >>%DOWNLOAD_LOG_DIR%\Download.log 2>&1
coflash program STM32F407VG %EXE_DIR%\%EXE_NAME% --adapter-name=ST-Link --port=SWD --adapter-clk=1000000 --erase=affected --reset=SYSRESETREQ --driver=%FLASH_DRIVER_DIR%\STM32F4xx_1024.elf>>%DOWNLOAD_LOG_DIR%\Download.log 2>&1
echo "Download_End">>%DOWNLOAD_LOG_DIR%\Download.log 2>&1
date /t >>%DOWNLOAD_LOG_DIR%\Download.log 2>&1
time /t >>%DOWNLOAD_LOG_DIR%\Download.log 2>&1
pause


