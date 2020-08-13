package com.diycovid19mask.medmask.repository.interfaces;
import com.diycovid19mask.medmask.entidades.Armador;
import java.util.List;
public interface I_ArmadorRepository {
    void alta(Armador armador);
    void baja(Armador armador);
    void update(Armador armador);
    String byEmail(String email);
    String byLocalidad(String localidad);
    int byId(int id);
    List<Armador> all();
}