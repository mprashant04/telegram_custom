echo off
cls

Set ORIGINAL_FOLDER=%cd% 

call common_init_env.bat



if not exist "%SRC_DIR%\TMessagesProj\build\outputs\apk" mkdir %SRC_DIR%\TMessagesProj\build\outputs\apk
if not exist "%SRC_DIR%\TMessagesProj\build\outputs\native-debug-symbols" mkdir %SRC_DIR%\TMessagesProj\build\outputs\native-debug-symbols

cd %SRC_DIR%

REM echo %ANDROID_HOME%
rem echo %ANDROID_NDK_HOME%


call gradle assembleRelease
#call gradle assembleStandalone


cd %ORIGINAL_FOLDER%

echo exit......