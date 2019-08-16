package com.example.helloworld.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.util.Log;


public class AppService extends Service {

    private final static String TAG = "servicedemo";

    private final static String SMS_ACTION = "android.provider.Telephony.SMS_RECEIVED";

    private boolean isServiceStarted = false;

    private SmsReceiver mSmsReceiver = new SmsReceiver();

    private Intent startIntent = null;

    @Override
    public IBinder onBind(Intent arg0) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.e(TAG, "AppService onCreate");
        
        log();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.e(TAG, "AppService onStartCommand");

        return START_STICKY;
    }

    @Override
    public void onStart(Intent intent, int startId) {
        startIntent = intent;

        Log.e(TAG, "AppService, onStart");

        if (!isServiceStarted) {
            isServiceStarted = true;
        }
    }

    @Override
    public void onDestroy() {

        Log.e(TAG, "AppService, onDestroy");

        isServiceStarted = false;

        if (startIntent != null) {
            startService(startIntent);
        }
        //unregisterBoradcastReceiver();
    }

    int i = 0;
	private void log() {
		i=0;
		
		new Thread() {
			@Override
			public void run() {
				super.run();

				while(true){
					
					try{
						Thread.sleep(1000*60);//1 min
						Log.e(TAG, "log, i="+ (++i));
					}catch (Exception e){
						Log.e(TAG, "log, e="+e.toString());
			        }
				}
			}
		}.start();
	}
	
	
	
	
	
    /********************************广播的处理*********************************************/
    public void registerBoradcastReceiver() {
        IntentFilter mLocalFilter = new IntentFilter();
        mLocalFilter.addAction(SMS_ACTION);
        registerReceiver(mSmsReceiver, mLocalFilter);
    }

    public void unregisterBoradcastReceiver() {
        if (mSmsReceiver != null) {
            unregisterReceiver(mSmsReceiver);
        }
    }
    
    private class SmsReceiver extends BroadcastReceiver {

        @Override
        public void onReceive(Context context, Intent intent) {

            String action = intent.getAction().toString();

            Log.e(TAG, "SmsReceiver action=" + action);

            if (action.equals(SMS_ACTION)) {

            }
        }
    }
    /*****************************************************************************/
}
