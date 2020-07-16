package com.diycovid19mask.medmask;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

public class Pantalla13_donante extends AppCompatActivity {
    private Spinner spDesplegable;
    private EditText txtNumeroCantidad;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pantalla13_donante);

        spDesplegable=(Spinner)findViewById(R.id.spDeplegable);
        txtNumeroCantidad=(EditText)findViewById(R.id.txtNumeroCantidad);
        String [] opciones={"* Seleccione",
                            "Zunchos plásticos 15 mm de espesor mínimo",
                            "Precintos plásticos 3 mm de espesor máximo",
                            "Radiografías",
                            "Placa Acetato"};
        ArrayAdapter<String> adapter=new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item,opciones);
        spDesplegable.setAdapter(adapter);
    }

    public void donar(View view) {
        String material = spDesplegable.getSelectedItem().toString();
        String cantidad = txtNumeroCantidad.getText().toString();

        if (spDesplegable.getSelectedItem().toString() != "* Seleccione") {
            AlertDialog.Builder dialogo1 = new AlertDialog.Builder(this);
            dialogo1.setTitle("Importante");
            dialogo1.setMessage("¿ Desea donar " + cantidad + " " + material + " ?");
            dialogo1.setCancelable(false);
            dialogo1.setPositiveButton("Confirmar", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogo1, int id) {
                    aceptar();
                }
            });
            dialogo1.setNegativeButton("Cancelar", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogo1, int id) {
                    cancelar();
                }
            });
            dialogo1.show();
        }
    }

    public void aceptar () {
        Toast t = Toast.makeText(this, "Donación ENVIADA", Toast.LENGTH_SHORT);
        t.show();
        spDesplegable.setSelection(0);
        txtNumeroCantidad.setText("");
    }

    public void cancelar () {
        Toast t = Toast.makeText(this, "Donación CANCELADA", Toast.LENGTH_SHORT);
        t.show();
    }
}
