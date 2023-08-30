package com.example.iwipe;

import io.flutter.embedding.android.FlutterActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
public class CertTestPage extends FlutterActivity {
    Button homeButton;
    Button progressButton;
    Button settingsButton;
    Button paymentButton;
    Button answer1;
    Button answer2;
    Button answer3;
    Button retryButton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //setContentView(R.layout.CertTestPage);
        homeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                switchHome();
            }
        });
        paymentButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                switchPayment();
            }
        });
        settingsButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                switchsettings();
            }
        });
        progressButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                switchProgress();
            }
        });

    }
    public void switchHome(){
       // Intent SwitchHomeScreen = new Intent(this, HomePage.class);
       // startActivity(SwitchHomeScreen);
    }
    public void switchPayment(){
       // Intent SwitchPayment = new Intent(this, paymentScreen.class);
       // startActivity(SwitchPayment);
    }
    public void switchsettings(){
        //Intent SwitchSettings = new Intent(this, SettingsScreen.class);
        //startActivity(SwitchSettings);
    }
    public void switchProgress(){
        //Intent Switchprogress = new Intent(this, ProgressScreen.class);
        //startActivity(Switchprogress);
    }
}