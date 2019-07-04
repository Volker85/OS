REM wechseln ist das Zielverzeichnis
REM
SET BATDIR="E:\NeuOrga\Programmieren\c_cpp\github_os\input"
cd /D %BATDIR%\tools
ECHO "build target x86"
call "build_target_x86.bat"
REM
cd /D %BATDIR%\tools
ECHO "build target arm"
call "build_target_arm.bat"
REM
cd /D %BATDIR%\tools
ECHO "build target x86 sput"
call "build_target_x86_sput.bat"
REM