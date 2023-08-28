package com.example.iwipe;

import io.flutter.embedding.android.FlutterActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
public class ModuleTemplate extends FlutterActivity {
    Button content1Button:
    Button content2;
    Button content3;
    Button PaymentButton;
    Button homeButton;
    Button progressbutton;
    Button settingsButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.ModuleTemplate);
        homeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                switchHome();
            }
        });
        PaymentButton.setOnClickListener(new View.OnClickListener() {
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
        progressbutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                switchProgress();
            }
        });
    }
    public void switchHome(){
        Intent SwitchHomeScreen = new Intent(this, HomePage.class);
        startActivity(SwitchHomeScreen);
    }
    public void switchProgress(){
        Intent SwitchProgress = new Intent(this, progressScreen.class);
        startActivity(SwitchProgress);
    }
    public void switchPayment(){
        Intent SwitchPayment = new Intent(this, paymentScreen.class);
        startActivity(SwitchPayment);
    }
    public void switchsettings(){
        Intent SwitchSettings = new Intent(this, SettingsScreen.class);
        startActivity(SwitchSettings);
    }
}