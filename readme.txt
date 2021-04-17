code copied from https://github.com/DrKLO/Telegram with following updates to them
after code changes, using scripts in "my_build_scripts" for building apk


(all code changes are prefixed with TODO-PM note/comment)


generate ap_id and and api_hash from https://my.telegram.org/apps, and config in BuildVars.java  
	public static int APP_ID = 2711803;
    public static String APP_HASH = "3ae29bcf50d28c5fbb89c4770e41fa39";



added intent sending code in GcmPushListenerService.java file


in TMessagesProj\build.gradle, commented out unnecessary product flavors to speed up compilation, later enable selectively when required for new phone model
(for oneplus 7 pro phone, 'arm64' profile required)


registered new project with application id 'org.telegram.messenger' in  https://console.firebase.google.com/, and copied generated google-services.json to code folder
set FCM API key (https://stackoverflow.com/questions/37337512/where-can-i-find-the-api-key-for-firebase-cloud-messaging) as "GCM API key" in  https://my.telegram.org/apps


NOTE: observed that sometimes for this custom telegram app, i did not receive sms token on first registration. In that case intall "telegram x", login to it. and then try to login to custom telegram app. login code will be sent to telegram x
