package com.diycovid19mask.testrest;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.os.StrictMode;
import android.widget.EditText;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class MainActivity extends AppCompatActivity {
    private EditText et1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        et1=(EditText)findViewById(R.id.et1);
        //et1.setText("Hola Android.\nHolaaaa");
        /*
        String text="[\n" +
                "  {\n" +
                "    \"nombre\": \"Agronomía\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Almagro\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Balvanera\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Barracas\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Belgrano\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Boedo\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Caballito\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Chacarita\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Coghlan\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Colegiales\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Constitución\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Flores\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Floresta\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"La Boca\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"La Paternal\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Liniers\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Mataderos\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Monserrat\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Monte Castro\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Nueva Pompeya\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Núñez\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Palermo\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Parque Avellaneda\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Parque Chacabuco\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Parque Chas\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Parque Patricios\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Puerto Madero\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Recoleta\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Retiro\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Saavedra\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"San Cristóbal\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"San Nicolás\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"San Telmo\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Versalles\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Crespo\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Devoto\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa General Mitre\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Lugano\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Luro\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Ortúzar\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Pueyrredón\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Real\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Riachuelo\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Santa Rita\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Soldati\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa Urquiza\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Villa del Parque\"\n" +
                "  },\n" +
                "  {\n" +
                "    \"nombre\": \"Vélez Sársfield\"\n" +
                "  }\n" +
                "]";
        et1.setText(text);
        */
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();

        StrictMode.setThreadPolicy(policy);
        try {
            String texto="";
            //String ruta = "https://ns1.nrgdns.net/~medmask/medMaskCore/geografia/barriosCABA/v1/";
            String ruta="https://diycovid19mask.com/medMaskCore/geografia/barriosCABA/v1/";
            URL url = new URL(ruta);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            //URLConnection conexion = url.openConnection();
            //conexion.setDoOutput(true);
            String linea = "";
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            //reader.lines().forEach(System.out::println);
            while ((linea = reader.readLine()) != null) {
                //System.out.println(linea);
                texto+=linea+"\n";
            }
            et1.setText(texto);
        }catch(Exception e){
            et1.setText(e.toString());
        }
    }
}