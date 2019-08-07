package com.example.helloworld;

import com.example.helloworld.service.AppService;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends Activity implements View.OnClickListener{

	public Button button_test;
	private void initView() {
		button_test = (Button) findViewById(R.id.button_test);
		button_test.setOnClickListener(this);
	}
	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		initView();
	}

	
	public void onClick(View v) {
		switch (v.getId()) {
			case R.id.button_test:
				Toast.makeText(getApplicationContext(), "Äãµã»÷ÁË°´Å¥",Toast.LENGTH_SHORT).show();
				
		         Intent i = new Intent(this, AppService.class);
		         i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		         this.startService(i);
				break;
	
			default:
				break;
		}
	}
}
