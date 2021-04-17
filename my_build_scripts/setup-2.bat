echo off
cls

call common_init_env.bat

REM echo %PATH%

echo updating 1......
call %ANDROID_HOME%/tools/bin/sdkmanager --update
	
echo updating 2......
call %ANDROID_HOME%/tools/bin/sdkmanager "build-tools;%ANDROID_BUILD_TOOLS_VERSION%"
echo updating 3......
call %ANDROID_HOME%/tools/bin/sdkmanager "platforms;android-%ANDROID_VERSION%"
echo updating 4......
call %ANDROID_HOME%/tools/bin/sdkmanager "platform-tools"
echo updating 5......
call %ANDROID_HOME%/tools/bin/sdkmanager "ndk;%ANDROID_NDK_VERSION%"


echo exit......