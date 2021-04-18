echo off
cls

Set ORIGINAL_FOLDER=%cd% 

call common_init_env.bat

echo source folder = %SRC_DIR%


rem if not exist "%SRC_DIR%\TMessagesProj\build\outputs\apk" mkdir %SRC_DIR%\TMessagesProj\build\outputs\apk
rem if not exist "%SRC_DIR%\TMessagesProj\build\outputs\native-debug-symbols" mkdir %SRC_DIR%\TMessagesProj\build\outputs\native-debug-symbols

cd %SRC_DIR%

REM echo %ANDROID_HOME%
rem echo %ANDROID_NDK_HOME%



call gradle clean assembleRelease
REM call gradle assembleStandalone


timeout 10 >nul
xcopy /y %SRC_DIR%\TMessagesProj\build\outputs\apk\arm64\release\app.apk   %SRC_DIR%\..\apk\
rem echo ****************************************************************************************
rem echo ****************************************************************************************
rem echo build complete.......
rem echo now, manually copy "\Telegram-code\TMessagesProj\build\outputs\apk" folder to root 
rem echo source rolder, and push to git
rem echo ****************************************************************************************
rem echo ****************************************************************************************


cd %ORIGINAL_FOLDER%

echo exit......