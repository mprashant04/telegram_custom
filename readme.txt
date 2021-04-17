code copied from https://github.com/DrKLO/Telegram with following updates to them
after code changes, using scripts in "my_build_scripts" for building apk


(all code changes are prefixed with TODO-PM note/comment)


generate ap_id and and api_hash from https://my.telegram.org/apps, and config in BuildVars.java  
	public static int APP_ID = 2711803;
    public static String APP_HASH = "3ae29bcf50d28c5fbb89c4770e41fa39";



added intent sending code in GcmPushListenerService.java file

