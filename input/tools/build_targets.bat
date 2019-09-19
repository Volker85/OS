REM wechseln ist das Zielverzeichnis
REM
SET BATDIR="C:\Users\president\Desktop\sbx\input"
time /t
cd /D %BATDIR%\tools
ECHO "build target x86"
call "build_target_x86.bat"
REM
time /t
cd /D %BATDIR%\tools
ECHO "build target arm"
call "build_target_arm.bat"
REM
time /t
cd /D %BATDIR%\tools
ECHO "build target x86 sput"
call "build_target_x86_sput.bat"
REM
time /t
cd /D %BATDIR%\tools
ECHO "build target x86 static code analysis"
call "build_target_x86_static_code_analysis.bat"
REM
time /t
pause