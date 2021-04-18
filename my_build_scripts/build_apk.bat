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


cp %SRC_DIR%\Telegram-code\build\output\apk\arm64\release   %SRC_DIR%\apk
echo ****************************************************************************************
echo ****************************************************************************************
echo build complete.......
echo now, manually copy "\Telegram-code\TMessagesProj\build\outputs\apk" folder to root 
echo source rolder, and push to git
echo ****************************************************************************************
echo ****************************************************************************************


cd %ORIGINAL_FOLDER%

echo exit......