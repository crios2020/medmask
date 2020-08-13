package com.diycovid19mask.medmask;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.EditText;

import com.diycovid19mask.medmask.entidades.BarrioCABA;
import com.diycovid19mask.medmask.entidades.Material;
import com.diycovid19mask.medmask.entidades.PartidoBuenosAires;
import com.diycovid19mask.medmask.entidades.ProvinciaArgentina;
import com.diycovid19mask.medmask.entidades.Usuario;
import com.diycovid19mask.medmask.repository.interfaces.I_PartidoBuenosAiresRepository;
import com.diycovid19mask.medmask.repository.interfaces.I_ProvinciaArgentinaRepository;
import com.diycovid19mask.medmask.repository.interfaces.I_UsuarioRepository;
import com.diycovid19mask.medmask.repository.rest.BarrioCABARepository;
import com.diycovid19mask.medmask.repository.rest.MaterialRepository;
import com.diycovid19mask.medmask.repository.rest.PartidoBuenosAiresRepository;
import com.diycovid19mask.medmask.repository.rest.ProvinciaArgentinaRepository;
import com.diycovid19mask.medmask.repository.rest.UsuarioRepository;

import java.util.List;

public class MainActivity extends AppCompatActivity {
    private EditText et1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        et1=(EditText)findViewById(R.id.et1);

        String url="https://diycovid19mask.com/medMaskCore/";
        println("MedMaskApp");
        println("- Barrios CABA ------------");
        //BarrioCABARepository barrioR=new BarrioCABARepository(url+"geografia/barriosCABA/v1/");
        //List<BarrioCABA> list=barrioR.all();
        //println(url);
        //println(barrioR.getRuta());
        //println(barrioR.getMensaje());
        //println(list.size()+"");
        //for(BarrioCABA b:list){ println(b.toString()); }
        //println(list.get(0).toString());
        //println(list.get(list.size()-1).toString());

        println("- Partidos Buenos Aires ------------");
        //I_PartidoBuenosAiresRepository partidoR=new PartidoBuenosAiresRepository(url+"geografia/partidosBuenosAires/v1/");
        //List<PartidoBuenosAires> listP=partidoR.all();
        //for(PartidoBuenosAires p:listP) println(p.toString());

        println("- Provincias Argentinas ------------");
        //I_ProvinciaArgentinaRepository provinciaR=new ProvinciaArgentinaRepository(url+"geografia/provinciasArgentinas/v1/");
        //List<ProvinciaArgentina> listProvincias=provinciaR.all();
        //for(ProvinciaArgentina p:listProvincias) println(p.toString());

        println("- Materiales ------------");
        //MaterialRepository materialeR=new MaterialRepository(url+"entidades/materiales/v1/all/");
        //List<Material> listM=materialeR.all();
        //println(listM.size()+"");
        //println(materialeR.getRuta());
        //println(materialeR.getMensaje());
        //for(Material m:listM) println(m.toString());

        println("- Usuarios ------------");
        UsuarioRepository usuarioR=new UsuarioRepository(url+"entidades/usuarios/v1/all/");
        List<Usuario> listU=usuarioR.all();
        println(usuarioR.getRuta());
        println(usuarioR.getMensaje());
        println(listU.size()+"");
        for(Usuario u:listU) println(u.toString());

    }

    private void println(String text){
        et1.append(text+"\n");
    }


}