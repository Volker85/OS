REM astyle 
SET SRC_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os\input\src
SET TOOL_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os\input\tools\misc\AStyle\bin
REM
cd /D %SRC_DIR%
%TOOL_DIR%\astyle.exe  --style=allman --indent=spaces=3 --recursive  %SRC_DIR%\*.c  %SRC_DIR%\*.h
del /s /q %SRC_DIR%\*.orig
pause