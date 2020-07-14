package com.diycovid19mask.medmask.repository.interfaces;
import com.diycovid19mask.medmask.entidades.Usuario;
import java.util.List;
public interface I_UsuarioRepository {
    void alta(Usuario usuario);
    void baja(Usuario usuario);
    void update(Usuario usuario);
    String session(String email, String pass);
    String byLocalidad(String localidad);
    String byEmail(String email);
    int byId(int id);
    List<Usuario> all();
}