SET BASE_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os\input\src
SET OUTPUT_DIR=E:\NeuOrga\Programmieren\c_cpp\github_os\output\code_analysis
SET CHECKER_DIR="C:\Program Files\Cppcheck"
REM
ECHO ON
cd /D %CHECKER_DIR%

IF EXIST %OUTPUT_DIR% (
   rmdir /S /Q %OUTPUT_DIR%
) ELSE (
   echo ""
)
mkdir %OUTPUT_DIR%
echo "CppCheck" > %OUTPUT_DIR%\code_analysis_error.txt
echo %DATE% %TIME% >> %OUTPUT_DIR%\code_analysis_error.txt

cppcheck %BASE_DIR% --enable=warning,style,performance,portability 2>> %OUTPUT_DIR%\code_analysis_error.txt
pause

