echo ============================= started ============================================

echo setting environment variables...
ROOT=/d/t1
ANDROID_SDK_URL=https://dl.google.com/android/repository/sdk-tools-windows-3859397.zip
#ANDROID_SDK_URL=https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
ANDROID_API_LEVEL=android-30
ANDROID_BUILD_TOOLS_VERSION=30.0.3
ANDROID_HOME=${ROOT}/android-sdk
ANDROID_NDK_VERSION=21.1.6352462
ANDROID_VERSION=30
ANDROID_NDK_HOME=${ANDROID_HOME}/ndk/${ANDROID_NDK_VERSION}/

GRADLE_URL=https://downloads.gradle-dn.com/distributions/gradle-6.5-bin.zip
GRADLE_HOME=${ROOT}/gradle

PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${GRADLE_HOME}/gradle-6.5/bin
PATH=${ANDROID_NDK_HOME}:$PATH
PATH=${ANDROID_NDK_HOME}/prebuilt/linux-x86_64/bin/:$PATH


#echo removing old folders....
#rm -rf "$ROOT"


#download if gradle folder does not exist, to redownload, manually delete folder and run script
if [ ! -d "$GRADLE_HOME" ]; then      
	echo downloading gradle ....
	mkdir -p "$GRADLE_HOME"
	cd "$GRADLE_HOME"
	pwd
	curl -o gradle.zip $GRADLE_URL
	echo unzipping....
	unzip gradle.zip
	rm gradle.zip
fi



#download if gradle folder does not exist, to redownload, manually delete folder and run script
if [ ! -d "$ANDROID_HOME" ]; then      
	echo downloading sdk....
	mkdir -p "$ANDROID_HOME"
	cd "$ANDROID_HOME"
	pwd
	curl -o sdk.zip $ANDROID_SDK_URL
	echo unzipping....
	unzip sdk.zip
	rm sdk.zip	
fi

echo done......