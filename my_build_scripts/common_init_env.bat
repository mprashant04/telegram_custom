echo off
cls

set ROOT=d:\t1
set ANDROID_API_LEVEL=android-30
set ANDROID_BUILD_TOOLS_VERSION=30.0.3
set ANDROID_HOME=%ROOT%\android-sdk
set ANDROID_NDK_VERSION=21.1.6352462
set ANDROID_VERSION=30
set ANDROID_NDK_HOME=%ANDROID_HOME%\ndk\%ANDROID_NDK_VERSION%\


set GRADLE_HOME=%ROOT%\gradle

set PATH=%PATH%;%ANDROID_HOME%\tools;%ANDROID_HOME%\platform-tools;%GRADLE_HOME%\gradle-6.5\bin
set PATH=%ANDROID_NDK_HOME%;%PATH%
set PATH=%ANDROID_NDK_HOME%\prebuilt\linux-x86_64\bin\;%PATH%

REM source code directory
set SRC_DIR=%cd%\..\Telegram-code


rem set ANDROID_SDK_ROOT=%ANDROID_HOME%