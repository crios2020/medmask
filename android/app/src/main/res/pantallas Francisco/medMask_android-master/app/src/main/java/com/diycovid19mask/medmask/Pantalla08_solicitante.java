package com.diycovid19mask.medmask;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.EditText;

public class Pantalla08_solicitante extends AppCompatActivity {
    private EditText txtMensaje;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pantalla08_solicitante);

        txtMensaje=(EditText)findViewById(R.id.txtMensaje);
    }
}