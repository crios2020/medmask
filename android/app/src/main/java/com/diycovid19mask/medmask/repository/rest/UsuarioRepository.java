package com.diycovid19mask.medmask.repository.rest;
import android.os.StrictMode;
import com.diycovid19mask.medmask.entidades.ProvinciaArgentina;
import com.diycovid19mask.medmask.entidades.Usuario;
import com.diycovid19mask.medmask.repository.interfaces.I_UsuarioRepository;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
public class UsuarioRepository implements I_UsuarioRepository {
    private String ruta;
    private String mensaje="";
    public UsuarioRepository(String ruta) {
        this.ruta=ruta;
    }
    public String getRuta(){ return ruta; }
    public String getMensaje(){ return mensaje; }
    @Override
    public void alta(Usuario usuario) {

    }

    @Override
    public void baja(Usuario usuario) {

    }

    @Override
    public void update(Usuario usuario) {

    }

    @Override
    public String session(String email, String pass) {
        return null;
    }

    @Override
    public String byLocalidad(String localidad) {
        return null;
    }

    @Override
    public String byEmail(String email) {
        return null;
    }

    @Override
    public int byId(int id) {
        return 0;
    }

    @Override
    public List<Usuario> all() {
        List<Usuario> list=new ArrayList();
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
        String texto="";
        try{
            URL url = new URL(ruta);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            texto=reader.readLine();
            Type listType = new TypeToken<List<Usuario>>(){}.getType();
            list=new Gson().fromJson(texto,listType);
        }catch(Exception e){
            mensaje=e.toString();
        }
        return list;
    }
}