package com.diycovid19mask.medmask.repository.interfaces;
import com.diycovid19mask.medmask.entidades.Donacion;
import java.util.List;
public interface I_DonacionRepository {
    void alta(Donacion donacion);
    void baja(Donacion donacion);
    void update(Donacion donacion);
    int donado(int id, int cantidad);
    String byEstado(String estado);
    List<Donacion> all();
}