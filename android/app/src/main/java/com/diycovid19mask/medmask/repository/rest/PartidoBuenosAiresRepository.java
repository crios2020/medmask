package com.diycovid19mask.medmask.repository.rest;
import android.os.StrictMode;
import com.diycovid19mask.medmask.entidades.PartidoBuenosAires;
import com.diycovid19mask.medmask.repository.interfaces.I_PartidoBuenosAiresRepository;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
public class PartidoBuenosAiresRepository implements I_PartidoBuenosAiresRepository {
    private String ruta;
    private String mensaje="";
    public PartidoBuenosAiresRepository(String ruta) {
        this.ruta=ruta;
    }
    @Override
    public List<PartidoBuenosAires> all() {
        List<PartidoBuenosAires> list=new ArrayList();
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
        String texto="";
        try{
            URL url = new URL(ruta);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            texto=reader.readLine();
            Type listType = new TypeToken<List<PartidoBuenosAires>>(){}.getType();
            list=new Gson().fromJson(texto,listType);
        }catch(Exception e){
            mensaje=e.toString();
        }
        return list;
    }
    public String getRuta(){ return ruta; }
    public String getMensaje(){ return mensaje; }
}
