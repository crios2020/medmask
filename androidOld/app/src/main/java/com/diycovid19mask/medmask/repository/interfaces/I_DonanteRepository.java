package com.diycovid19mask.medmask.repository.interfaces;
import com.diycovid19mask.medmask.entidades.Donante;
import java.util.List;
public interface I_DonanteRepository {
    void alta(Donante donante);
    void baja(Donante donante);
    void update(Donante donante);
    String byLocalidad(String localidad);
    int byId(int id);
    String byEmail(String email);
    List<Donante> all();
}