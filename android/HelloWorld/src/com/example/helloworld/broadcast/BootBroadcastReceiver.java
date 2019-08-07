package com.example.helloworld.broadcast;

import com.example.helloworld.service.AppService;
import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

@SuppressLint("NewApi")
public class BootBroadcastReceiver extends BroadcastReceiver {

	private final String TAG = "dengying";
	private static Context mContext;
	
	@Override
	public void onReceive(Context context, Intent intent) {
		
		mContext = context;
		
		String action = intent.getAction();

		Log.e("dengying", "BootBroadcastReceiver action  = " + action);
		
		if (action == null) {
			return;
		}
		
		if (action.equals("android.intent.action.BOOT_COMPLETED")) {
			 Log.i(TAG, "BOOT_COMPLETED");
			 
	         Intent i = new Intent(context, AppService.class);
	         i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
	         context.startService(i);
		}
	}
}