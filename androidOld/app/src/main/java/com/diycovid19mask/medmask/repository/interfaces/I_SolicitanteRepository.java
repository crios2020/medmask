package com.diycovid19mask.medmask.repository.interfaces;
import com.diycovid19mask.medmask.entidades.Solicitante;
import java.util.List;
public interface I_SolicitanteRepository {
    void alta(Solicitante solicitante);
    void baja(Solicitante solicitante);
    void update(Solicitante solicitante);
    int byId(int id);
    String byEmail(String email);
    String byLocalidad(String localidad);
    List<Solicitante> all();
}