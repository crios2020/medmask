package com.diycovid19mask.medmask.repository.rest;
import android.os.StrictMode;
import com.diycovid19mask.medmask.entidades.Material;
import com.diycovid19mask.medmask.repository.interfaces.I_MaterialRepository;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
public class MaterialRepository implements I_MaterialRepository {
    private String ruta;
    private String mensaje="";
    public MaterialRepository(String ruta) {
        this.ruta=ruta;
    }
    @Override
    public int byId(int id) {
        return 0;
    }
    @Override
    public List<Material> all() {
        List<Material> list=new ArrayList();
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
        String texto="";
        try{
            URL url = new URL(ruta);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            texto=reader.readLine();
            Type listType = new TypeToken<List<Material>>(){}.getType();
            list=new Gson().fromJson(texto,listType);
        }catch(Exception e){
            mensaje=e.toString();
        }
        return list;
    }
    public String getRuta(){ return ruta; }
    public String getMensaje(){ return mensaje; }
}