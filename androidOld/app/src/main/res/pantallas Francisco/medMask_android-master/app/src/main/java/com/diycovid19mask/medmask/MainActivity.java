package com.diycovid19mask.medmask;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void pantalla8(View view){
        startActivity(new Intent(this, Pantalla08_solicitante.class));
    }

    public void pantalla11(View view){
        startActivity(new Intent(this, Pantalla11_solicitante.class));
    }

    public void pantalla13(View view){
        startActivity(new Intent(this, Pantalla13_donante.class));
    }
}